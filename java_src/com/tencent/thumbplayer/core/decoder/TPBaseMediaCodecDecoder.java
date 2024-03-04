package com.tencent.thumbplayer.core.decoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.thumbplayer.core.common.TPCodecUtils;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.g.a;
import com.tencent.thumbplayer.g.b;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.UByte;
@RequiresApi(api = 16)
/* loaded from: classes4.dex */
public abstract class TPBaseMediaCodecDecoder implements ITPMediaCodecDecoder {
    private static final int DUMP_BYTE_BUFFER_BYTES = 100;
    private static final int DUMP_ONE_LINE_BYTES = 20;
    private static final int MEDIA_CODEC_ERROR_INDEX = -1000;
    private static long MEDIA_CODEC_INPUT_TIMEOUT_US = 2000;
    private static long MEDIA_CODEC_OUTPUT_TIMEOUT_US = 2000;
    private static final int MSG_FLUSH = 1002;
    private static final int MSG_RELEASE = 1003;
    private static final int MSG_RELEASE_OUTPUT_BUFFER = 1000;
    private static final int MSG_SET_OUTPUT_SURFACE = 1001;
    private static boolean sTMediaCodecInited = false;
    protected int mCodecId;
    private b mCodec = null;
    protected Surface mSurface = null;
    protected boolean mStarted = false;
    private TPFrameInfo mFrameInfo = new TPFrameInfo();
    private boolean mEnableSetOutputSurfaceApi = false;
    private MediaCodec.CryptoInfo mCryptoInfo = null;
    protected MediaCrypto mMediaCrypto = null;
    protected boolean mEnableAsyncMode = false;
    private HandlerThread mDecodeThread = null;
    private AsyncDecodeHandler mDecoderHandler = null;
    private BlockingQueue<Integer> mInputQueue = new LinkedBlockingQueue();
    private BlockingQueue<TPFrameInfo> mOutputQueue = new LinkedBlockingQueue();
    private boolean mRestartCodecOnException = false;
    protected int mDrmType = -1;
    private boolean mEnableAudioPassThrough = false;
    protected boolean mEnableMediaCodecReuse = false;
    private final Object mThreadLock = new Object();
    private int mHandlerResult = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class AsyncDecodeHandler extends Handler {
        AsyncDecodeHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (TPBaseMediaCodecDecoder.this.mThreadLock) {
                int onReleaseOutputBuffer = 0;
                switch (message.what) {
                    case 1000:
                        onReleaseOutputBuffer = TPBaseMediaCodecDecoder.this.onReleaseOutputBuffer(message.arg1, message.arg2 == 1);
                        break;
                    case 1001:
                        onReleaseOutputBuffer = TPBaseMediaCodecDecoder.this.onSetOutputSurface((Surface) message.obj);
                        break;
                    case 1002:
                        onReleaseOutputBuffer = TPBaseMediaCodecDecoder.this.onFlush();
                        break;
                    case 1003:
                        onReleaseOutputBuffer = TPBaseMediaCodecDecoder.this.onRelease();
                        break;
                }
                TPBaseMediaCodecDecoder.this.handleMessageComplete(onReleaseOutputBuffer);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(api = 21)
    /* loaded from: classes4.dex */
    public class BufferCallback extends b.a {
        private BufferCallback() {
        }

        @Override // com.tencent.thumbplayer.g.b.a
        public void onError(@NonNull b bVar, @NonNull MediaCodec.CodecException codecException) {
            String logTag = TPBaseMediaCodecDecoder.this.getLogTag();
            TPNativeLog.printLog(4, logTag, "onError: " + TPBaseMediaCodecDecoder.this.getStackTrace(codecException));
            TPBaseMediaCodecDecoder.this.handleRelease();
        }

        @Override // com.tencent.thumbplayer.g.b.a
        public void onInputBufferAvailable(@NonNull b bVar, int i9) {
            try {
                TPBaseMediaCodecDecoder.this.mInputQueue.put(Integer.valueOf(i9));
            } catch (Exception e10) {
                TPNativeLog.printLog(3, TPBaseMediaCodecDecoder.this.getLogTag(), TPBaseMediaCodecDecoder.this.getStackTrace(e10));
            }
        }

        @Override // com.tencent.thumbplayer.g.b.a
        public void onOutputBufferAvailable(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo) {
            try {
                TPFrameInfo tPFrameInfo = new TPFrameInfo();
                tPFrameInfo.errCode = 0;
                tPFrameInfo.bufferIndex = i9;
                tPFrameInfo.ptsUs = bufferInfo.presentationTimeUs;
                TPBaseMediaCodecDecoder.this.processOutputBuffer(bVar, i9, bufferInfo, tPFrameInfo);
                TPBaseMediaCodecDecoder.this.mOutputQueue.put(tPFrameInfo);
            } catch (Exception e10) {
                TPNativeLog.printLog(3, TPBaseMediaCodecDecoder.this.getLogTag(), TPBaseMediaCodecDecoder.this.getStackTrace(e10));
            }
        }

        @Override // com.tencent.thumbplayer.g.b.a
        public void onOutputFormatChanged(@NonNull b bVar, @NonNull MediaFormat mediaFormat) {
            TPBaseMediaCodecDecoder.this.processOutputFormatChanged(mediaFormat);
        }
    }

    public TPBaseMediaCodecDecoder(int i9) {
        this.mCodecId = i9;
        initTMediaCodec();
    }

    private void bufferSizeCheck(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() < bArr.length) {
            String logTag = getLogTag();
            TPNativeLog.printLog(4, logTag, "decodeAsync, not enough space, byteBuffer.remaining:" + byteBuffer.remaining() + ", buffer size:" + bArr.length);
            try {
                dumpByteArray(bArr, 0, 100, 20);
            } catch (Exception e10) {
                TPNativeLog.printLog(4, getLogTag(), e10.toString());
            }
        }
    }

    @RequiresApi(api = 21)
    private int decodeAsync(byte[] bArr, boolean z10, long j10, boolean z11) {
        Integer poll = this.mInputQueue.poll();
        if (poll == null) {
            return 1;
        }
        try {
            ByteBuffer c10 = this.mCodec.c(poll.intValue());
            if (c10 != null) {
                bufferSizeCheck(c10, bArr);
                c10.put(bArr);
            }
            if (!z11 || this.mCryptoInfo == null) {
                this.mCodec.a(poll.intValue(), 0, bArr.length, j10, z10 ? 1 : 0);
            } else {
                this.mCodec.a(poll.intValue(), 0, this.mCryptoInfo, j10, z10 ? 1 : 0);
            }
            return 0;
        } catch (Exception e10) {
            return onMediaCodecException(e10);
        }
    }

    private TPFrameInfo dequeueOutputBufferAsync() {
        this.mFrameInfo.errCode = 1;
        TPFrameInfo poll = this.mOutputQueue.poll();
        return poll == null ? this.mFrameInfo : poll;
    }

    private void dumpByteArray(byte[] bArr, int i9, int i10, int i11) {
        if (bArr == null || i9 < 0 || i10 <= 0 || i9 >= bArr.length || i9 >= i10 || i11 <= 0) {
            throw new IllegalArgumentException();
        }
        if (bArr.length <= i10) {
            i10 = bArr.length;
        }
        int min = Math.min(i10 - i9, 100) + i9;
        StringBuilder sb2 = new StringBuilder();
        TPNativeLog.printLog(2, getLogTag(), "dumpByteArray begin:");
        int i12 = 0;
        while (i9 < min) {
            String hexString = Integer.toHexString(bArr[i9] & UByte.MAX_VALUE);
            if (hexString.length() == 1) {
                hexString = "0".concat(hexString);
            }
            sb2.append(hexString.toUpperCase());
            i12++;
            if (i12 % i11 == 0) {
                TPNativeLog.printLog(2, getLogTag(), sb2.toString());
                sb2.setLength(0);
            } else {
                sb2.append(" ");
            }
            i9++;
        }
        TPNativeLog.printLog(2, getLogTag(), "dumpByteArray end.");
    }

    private void exitDecodeThread() {
        HandlerThread handlerThread = this.mDecodeThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            try {
                this.mDecodeThread.join();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
    }

    private int flushAsync() {
        TPNativeLog.printLog(2, getLogTag(), "flushAsync: ");
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1002;
        return waitingForHandleMessage(obtainMessage);
    }

    private int handleFlush() {
        TPNativeLog.printLog(2, getLogTag(), "handleFlush: ");
        b bVar = this.mCodec;
        if (bVar == null) {
            return 104;
        }
        try {
            bVar.h();
            return 0;
        } catch (Exception e10) {
            return onMediaCodecException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessageComplete(int i9) {
        this.mHandlerResult = i9;
        this.mThreadLock.notify();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleRelease() {
        b bVar = this.mCodec;
        if (bVar == null) {
            return 101;
        }
        this.mStarted = false;
        try {
            try {
                bVar.f();
                return 0;
            } catch (Exception e10) {
                String logTag = getLogTag();
                TPNativeLog.printLog(4, logTag, "stop: failed!" + getStackTrace(e10));
                this.mCodec.g();
                this.mCodec = null;
                return 3;
            }
        } finally {
            this.mCodec.g();
            this.mCodec = null;
        }
    }

    private int handleReleaseOutputBuffer(int i9, boolean z10) {
        b bVar = this.mCodec;
        if (bVar == null || i9 < 0) {
            return 3;
        }
        try {
            bVar.a(i9, z10);
            return 0;
        } catch (Exception e10) {
            return onMediaCodecException(e10);
        }
    }

    private int handleSetOutputSurface(Surface surface) {
        TPNativeLog.printLog(2, getLogTag(), "setOutputSurface: ".concat(String.valueOf(surface)));
        Surface surface2 = this.mSurface;
        if (surface2 == surface) {
            TPNativeLog.printLog(3, getLogTag(), "setOutputSurface: set the same surface.");
            return 0;
        }
        this.mSurface = surface;
        if (this.mCodec != null) {
            if (surface2 == null || surface == null) {
                return 3;
            }
            try {
                if (!surface.isValid() || Build.VERSION.SDK_INT < 23 || !this.mEnableSetOutputSurfaceApi) {
                    return 3;
                }
                this.mCodec.a(surface);
            } catch (Exception e10) {
                String logTag = getLogTag();
                TPNativeLog.printLog(4, logTag, "setOutputSurface onMediaCodecException:\n" + getStackTrace(e10));
                return 3;
            }
        }
        return 0;
    }

    private int handleSignalEndOfStream(int i9) {
        try {
            this.mCodec.a(i9, 0, 0, 0L, 4);
            return 0;
        } catch (Exception e10) {
            String logTag = getLogTag();
            TPNativeLog.printLog(4, logTag, "handleSignalEndOfStream: failed!" + getStackTrace(e10));
            return 3;
        }
    }

    private boolean initMediaCodecInternal() {
        try {
            List<String> mimeCandidates = getMimeCandidates();
            String str = null;
            String str2 = null;
            boolean z10 = false;
            for (int i9 = 0; i9 < mimeCandidates.size() && str == null; i9++) {
                str2 = mimeCandidates.get(i9);
                TPNativeLog.printLog(2, getLogTag(), "initMediaCodec with mime:" + str2 + " mDrmType:" + this.mDrmType);
                MediaCrypto mediaCrypto = this.mMediaCrypto;
                boolean requiresSecureDecoderComponent = mediaCrypto != null ? mediaCrypto.requiresSecureDecoderComponent(str2) : false;
                if (requiresSecureDecoderComponent && TPCodecUtils.isInDRMLevel1Blacklist(this.mDrmType)) {
                    TPNativeLog.printLog(2, getLogTag(), "Device " + TPSystemInfo.getDeviceName() + " DrmType " + this.mDrmType + " fallback to L3.");
                    z10 = false;
                } else {
                    z10 = requiresSecureDecoderComponent;
                }
                str = getCodecName(str2, z10);
                TPNativeLog.printLog(2, getLogTag(), "initMediaCodec got codecName:" + str + " secureComponent " + z10);
            }
            if (str == null) {
                TPNativeLog.printLog(4, getLogTag(), "initMediaCodec failed, codecName is null.");
                return false;
            }
            if ("audio/vnd.dts".equals(str2)) {
                TPNativeLog.printLog(2, getLogTag(), "initMediaCodec current mime type:" + str2 + " is audio dts, need set input timeout to 0!");
                MEDIA_CODEC_INPUT_TIMEOUT_US = 0L;
                MEDIA_CODEC_OUTPUT_TIMEOUT_US = 0L;
            }
            b a10 = b.a(str);
            this.mCodec = a10;
            a10.a(this.mEnableMediaCodecReuse && !this.mEnableAsyncMode);
            this.mCodec.a(new com.tencent.thumbplayer.g.a.b() { // from class: com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder.2
                @Override // com.tencent.thumbplayer.g.a.b, com.tencent.thumbplayer.g.a.a
                public void onReuseCodecAPIException(String str3, Throwable th2) {
                    super.onReuseCodecAPIException(str3, th2);
                    TPMediaCodecManager.onMediaCodecException(TPBaseMediaCodecDecoder.this.mCodecId, str3);
                }

                @Override // com.tencent.thumbplayer.g.a.b, com.tencent.thumbplayer.g.a.a
                public void onStarted(Boolean bool, String str3) {
                    super.onStarted(bool, str3);
                    TPMediaCodecManager.onMediaCodecReady(TPBaseMediaCodecDecoder.this.mCodecId, str3);
                }
            });
            TPNativeLog.printLog(2, getLogTag(), "initMediaCodec codec name: ".concat(str));
            if (this.mEnableAsyncMode && Build.VERSION.SDK_INT >= 23) {
                TPNativeLog.printLog(2, getLogTag(), "MediaCodec EnableAsyncMode！");
                HandlerThread handlerThread = new HandlerThread("MediaCodecThread");
                this.mDecodeThread = handlerThread;
                handlerThread.start();
                this.mDecoderHandler = new AsyncDecodeHandler(this.mDecodeThread.getLooper());
                this.mCodec.a(new BufferCallback(), this.mDecoderHandler);
            }
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 1);
            configCodec(this.mCodec, str2);
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 2);
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 3);
            TPNativeLog.printLog(2, getLogTag(), "initMediaCodec, start codec start");
            this.mCodec.e();
            TPNativeLog.printLog(2, getLogTag(), "initMediaCodec, start codec finished");
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 4);
            this.mStarted = true;
            if (this.mDrmType != -1) {
                boolean z11 = TPCodecUtils.getDecoderName(str2, true) != null;
                TPMediaDrmInfo tPMediaDrmInfo = new TPMediaDrmInfo();
                tPMediaDrmInfo.supportSecureDecoder = z11;
                tPMediaDrmInfo.supportSecureDecrypt = z10;
                tPMediaDrmInfo.componentName = str;
                tPMediaDrmInfo.drmType = this.mDrmType;
                TPNativeLog.printLog(2, getLogTag(), "DRM Info: supportSecureDecoder: " + tPMediaDrmInfo.supportSecureDecoder + " supportSecureDecrypt:" + tPMediaDrmInfo.supportSecureDecrypt + " componentName: " + tPMediaDrmInfo.componentName + " drmType: " + tPMediaDrmInfo.drmType);
                TPMediaCodecManager.onMediaDrmInfo(this.mCodecId, tPMediaDrmInfo);
            }
            return true;
        } catch (Exception e10) {
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 4);
            TPNativeLog.printLog(4, getLogTag(), getStackTrace(e10));
            return false;
        }
    }

    private static synchronized void initTMediaCodec() {
        synchronized (TPBaseMediaCodecDecoder.class) {
            if (sTMediaCodecInited) {
                return;
            }
            a.b();
            a.a().a(true);
            a.a().a(new com.tencent.thumbplayer.g.h.a() { // from class: com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder.1
                @Override // com.tencent.thumbplayer.g.h.a
                public final void d(@NonNull String str, @NonNull String str2) {
                    TPNativeLog.printLog(1, str, str2);
                }

                @Override // com.tencent.thumbplayer.g.h.a
                public final void e(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
                    TPNativeLog.printLog(4, str, str2);
                }

                @Override // com.tencent.thumbplayer.g.h.a
                public final void i(@NonNull String str, @NonNull String str2) {
                    TPNativeLog.printLog(2, str, str2);
                }

                @Override // com.tencent.thumbplayer.g.h.a
                public final void v(@NonNull String str, @NonNull String str2) {
                    TPNativeLog.printLog(0, str, str2);
                }

                @Override // com.tencent.thumbplayer.g.h.a
                public final void w(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
                    TPNativeLog.printLog(3, str, str2);
                }
            });
            sTMediaCodecInited = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onFlush() {
        this.mInputQueue.clear();
        this.mOutputQueue.clear();
        int handleFlush = handleFlush();
        this.mCodec.e();
        return handleFlush;
    }

    private int onMediaCodecException(Exception exc) {
        String logTag = getLogTag();
        TPNativeLog.printLog(4, logTag, "onMediaCodecException!\n" + getStackTrace(exc));
        resetFrameInfo();
        processMediaCodecException(exc);
        if (this.mRestartCodecOnException) {
            initMediaCodecInternal();
            return 4;
        }
        handleRelease();
        return 103;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onRelease() {
        this.mInputQueue.clear();
        this.mOutputQueue.clear();
        return handleRelease();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onReleaseOutputBuffer(int i9, boolean z10) {
        return handleReleaseOutputBuffer(i9, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onSetOutputSurface(Surface surface) {
        return handleSetOutputSurface(surface);
    }

    private int queueInputBuffer(byte[] bArr, long j10, boolean z10) {
        MediaCodec.CryptoInfo cryptoInfo;
        try {
            ByteBuffer[] j11 = this.mCodec.j();
            int a10 = this.mCodec.a(MEDIA_CODEC_INPUT_TIMEOUT_US);
            if (a10 < 0) {
                return a10 == -1 ? 1 : 103;
            }
            ByteBuffer byteBuffer = j11[a10];
            bufferSizeCheck(byteBuffer, bArr);
            byteBuffer.put(bArr);
            if (!z10 || (cryptoInfo = this.mCryptoInfo) == null) {
                this.mCodec.a(a10, 0, bArr.length, j10, 0);
            } else {
                this.mCodec.a(a10, 0, cryptoInfo, j10, 0);
            }
            return 0;
        } catch (Exception e10) {
            return onMediaCodecException(e10);
        }
    }

    private int releaseAsync() {
        TPNativeLog.printLog(2, getLogTag(), "releaseAsync: ");
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1003;
        int waitingForHandleMessage = waitingForHandleMessage(obtainMessage);
        exitDecodeThread();
        return waitingForHandleMessage;
    }

    private int releaseOutputBufferAsync(int i9, boolean z10) {
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1000;
        obtainMessage.arg1 = i9;
        obtainMessage.arg2 = z10 ? 1 : 0;
        return waitingForHandleMessage(obtainMessage);
    }

    private void resetFrameInfo() {
        TPFrameInfo tPFrameInfo = this.mFrameInfo;
        tPFrameInfo.bufferIndex = -1000;
        tPFrameInfo.ptsUs = -1L;
        tPFrameInfo.data = null;
        tPFrameInfo.errCode = 103;
    }

    private MediaCodecInfo selectCodec(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i9 = 0; i9 < codecCount; i9++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i9);
            if (!codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private int setOutputSurfaceAsync(Surface surface) {
        TPNativeLog.printLog(2, getLogTag(), "setOutputSurfaceAsync: ".concat(String.valueOf(surface)));
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1001;
        obtainMessage.obj = surface;
        return waitingForHandleMessage(obtainMessage);
    }

    private int signalEndOfStreamAsync() {
        Integer poll = this.mInputQueue.poll();
        if (poll == null) {
            return 1;
        }
        return handleSignalEndOfStream(poll.intValue());
    }

    private int waitingForHandleMessage(Message message) {
        synchronized (this.mThreadLock) {
            message.sendToTarget();
            try {
                this.mThreadLock.wait();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
        return this.mHandlerResult;
    }

    abstract void configCodec(@NonNull b bVar, @NonNull String str);

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int decode(byte[] bArr, boolean z10, long j10, boolean z11) {
        if (!this.mStarted || this.mCodec == null) {
            return 101;
        }
        return (!this.mEnableAsyncMode || Build.VERSION.SDK_INT < 23) ? queueInputBuffer(bArr, j10, z11) : decodeAsync(bArr, z10, j10, z11);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public TPFrameInfo dequeueOutputBuffer() {
        String logTag;
        String str;
        if (this.mCodec == null) {
            return this.mFrameInfo;
        }
        resetFrameInfo();
        if (this.mEnableAsyncMode) {
            return dequeueOutputBufferAsync();
        }
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        try {
            int a10 = this.mCodec.a(bufferInfo, MEDIA_CODEC_OUTPUT_TIMEOUT_US);
            if (a10 < 0) {
                if (a10 == -2) {
                    processOutputFormatChanged(this.mCodec.i());
                } else if (a10 != -1) {
                    if (a10 != -3) {
                        if (bufferInfo.flags != 4) {
                            TPNativeLog.printLog(4, getLogTag(), "dequeueOutputBuffer: TP_ERROR_DECODE_FAILED! index = ".concat(String.valueOf(a10)));
                            this.mFrameInfo.errCode = 103;
                            return this.mFrameInfo;
                        }
                        logTag = getLogTag();
                        str = "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM!";
                        TPNativeLog.printLog(2, logTag, str);
                        this.mFrameInfo.errCode = 2;
                        return this.mFrameInfo;
                    }
                    TPNativeLog.printLog(2, getLogTag(), "dequeueOutputBuffer: INFO_OUTPUT_BUFFERS_CHANGED!");
                }
                this.mFrameInfo.errCode = 1;
                return this.mFrameInfo;
            }
            int i9 = bufferInfo.flags;
            if (i9 == 4) {
                logTag = getLogTag();
                str = "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM";
                TPNativeLog.printLog(2, logTag, str);
                this.mFrameInfo.errCode = 2;
                return this.mFrameInfo;
            }
            if (i9 == 2 && this.mEnableAudioPassThrough) {
                TPNativeLog.printLog(2, getLogTag(), "dequeueOutputBuffer: BUFFER_FLAG_CODEC_CONFIG, AudioPassThrough");
                TPFrameInfo tPFrameInfo = this.mFrameInfo;
                tPFrameInfo.bufferIndex = a10;
                tPFrameInfo.ptsUs = bufferInfo.presentationTimeUs;
                processOutputConfigData(this.mCodec, a10, bufferInfo, tPFrameInfo);
            } else {
                TPFrameInfo tPFrameInfo2 = this.mFrameInfo;
                tPFrameInfo2.bufferIndex = a10;
                tPFrameInfo2.ptsUs = bufferInfo.presentationTimeUs;
                tPFrameInfo2.errCode = 0;
                processOutputBuffer(this.mCodec, a10, bufferInfo, tPFrameInfo2);
            }
            return this.mFrameInfo;
        } catch (Exception e10) {
            this.mFrameInfo.errCode = onMediaCodecException(e10);
            return this.mFrameInfo;
        }
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int flush() {
        TPNativeLog.printLog(2, getLogTag(), "flush: ");
        if (this.mCodec == null) {
            return 104;
        }
        return this.mEnableAsyncMode ? flushAsync() : handleFlush();
    }

    abstract String getCodecName(@NonNull String str, boolean z10);

    abstract String getLogTag();

    abstract List<String> getMimeCandidates();

    /* JADX INFO: Access modifiers changed from: protected */
    public String getStackTrace(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    abstract void processMediaCodecException(Exception exc);

    abstract void processOutputBuffer(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo, @NonNull TPFrameInfo tPFrameInfo);

    abstract void processOutputConfigData(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo, @NonNull TPFrameInfo tPFrameInfo);

    abstract void processOutputFormatChanged(@NonNull MediaFormat mediaFormat);

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int release() {
        return this.mEnableAsyncMode ? releaseAsync() : handleRelease();
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int releaseOutputBuffer(int i9, boolean z10) {
        if (this.mCodec == null || i9 < 0) {
            return 3;
        }
        return this.mEnableAsyncMode ? releaseOutputBufferAsync(i9, z10) : handleReleaseOutputBuffer(i9, z10);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public void setCryptoInfo(int i9, @NonNull int[] iArr, @NonNull int[] iArr2, @NonNull byte[] bArr, @NonNull byte[] bArr2, int i10) {
        if (this.mCryptoInfo == null) {
            this.mCryptoInfo = new MediaCodec.CryptoInfo();
        }
        this.mCryptoInfo.set(i9, iArr, iArr2, bArr, bArr2, i10);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOperateRate(float f10) {
        if (this.mCodec != null) {
            try {
                TPNativeLog.printLog(2, getLogTag(), "setOperateRate: ".concat(String.valueOf(f10)));
                Bundle bundle = new Bundle();
                bundle.putShort(RemoteMessageConst.Notification.PRIORITY, (short) 0);
                bundle.putFloat("operating-rate", f10);
                this.mCodec.a(bundle);
            } catch (Exception unused) {
                String logTag = getLogTag();
                TPNativeLog.printLog(3, logTag, "setOperateRate: " + f10 + " failed.");
            }
        }
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOutputSurface(Surface surface) {
        return this.mEnableAsyncMode ? setOutputSurfaceAsync(surface) : handleSetOutputSurface(surface);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBool(int i9, boolean z10) {
        if (i9 == 0) {
            this.mEnableSetOutputSurfaceApi = z10;
        } else if (i9 != 1) {
            if (i9 == 3) {
                this.mEnableAudioPassThrough = z10;
                String logTag = getLogTag();
                TPNativeLog.printLog(2, logTag, "BOOL_SET_IS_AUDIO_PASSTHROUGH mEnableAudioPassThrough:" + this.mEnableAudioPassThrough);
            } else if (i9 != 4) {
                TPNativeLog.printLog(3, getLogTag(), "Unknown paramKey: ".concat(String.valueOf(i9)));
                return false;
            } else {
                this.mEnableMediaCodecReuse = z10;
            }
        } else if (this.mStarted) {
            TPNativeLog.printLog(3, getLogTag(), "BOOL_ENABLE_ASYNC_MODE must setup before started!");
        } else {
            this.mEnableAsyncMode = z10;
        }
        return true;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBytes(int i9, byte[] bArr) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamInt(int i9, int i10) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamLong(int i9, long j10) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamObject(int i9, Object obj) {
        if (i9 == 300) {
            this.mMediaCrypto = (MediaCrypto) obj;
            return true;
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamString(int i9, String str) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int signalEndOfStream() {
        TPNativeLog.printLog(2, getLogTag(), "signalEndOfStream: ");
        b bVar = this.mCodec;
        if (bVar == null) {
            return 3;
        }
        if (this.mEnableAsyncMode) {
            return signalEndOfStreamAsync();
        }
        int a10 = bVar.a(MEDIA_CODEC_INPUT_TIMEOUT_US);
        return a10 >= 0 ? handleSignalEndOfStream(a10) : a10 == -1 ? 1 : 3;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean startDecoder() {
        return initMediaCodecInternal();
    }
}
