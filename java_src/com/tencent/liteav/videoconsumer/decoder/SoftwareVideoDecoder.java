package com.tencent.liteav.videoconsumer.decoder;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.liteav.videoconsumer.decoder.az;
import java.nio.ByteBuffer;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class SoftwareVideoDecoder implements az {
    private static final String TAG = "SoftwareVideoDecoder";
    private ba mListener;
    private long mNativeVideoDecoderWrapper = 0;
    private com.tencent.liteav.videobase.frame.i mPixelFramePool;
    @NonNull
    private final IVideoReporter mReporter;

    public SoftwareVideoDecoder(@NonNull IVideoReporter iVideoReporter) {
        this.mReporter = iVideoReporter;
    }

    @CalledByNative
    private ByteBuffer getByteBufferFromPixelFrame(PixelFrame pixelFrame) {
        return pixelFrame.getBuffer();
    }

    private void handleDecoderError(h.c cVar, String str, Object... objArr) {
        this.mReporter.notifyWarning(cVar, str, objArr);
        ba baVar = this.mListener;
        if (baVar != null) {
            baVar.onDecodeFailed();
        }
    }

    private static native void nativeAbandonDecodingFrames(long j10);

    private static native long nativeCreate(SoftwareVideoDecoder softwareVideoDecoder);

    private static native int nativeDecodeFrame(long j10, EncodedVideoFrame encodedVideoFrame, ByteBuffer byteBuffer, int i9, int i10, int i11, long j11, long j12);

    private static native void nativeDestroy(long j10);

    private static native int nativeStart(long j10);

    private static native int nativeStop(long j10);

    @CalledByNative
    private PixelFrame obtainPixelFrame(int i9, int i10, int i11, int i12, long j10) {
        GLConstants.PixelFormatType a10 = GLConstants.PixelFormatType.a(i9);
        if (a10 == null) {
            handleDecoderError(h.c.WARNING_VIDEO_DECODE_ERROR_NOT_SUPPORT_PIXEL_FORMAT_TYPE, "unknown format:".concat(String.valueOf(i9)), new Object[0]);
            LiteavLog.e(TAG, "obtainPixelFrame formatType: ".concat(String.valueOf(i9)));
            return null;
        }
        com.tencent.liteav.videobase.frame.i iVar = this.mPixelFramePool;
        if (iVar == null) {
            LiteavLog.i(TAG, "obtainPixelFrame mPixelFramePool is null.");
            return null;
        }
        PixelFrame a11 = iVar.a(i10, i11, GLConstants.PixelBufferType.BYTE_BUFFER, a10);
        a11.setRotation(Rotation.a(i12));
        a11.setTimestamp(j10);
        return a11;
    }

    @CalledByNative
    private void onDecodedFrame(PixelFrame pixelFrame, long j10) {
        if (j10 != 0) {
            handleDecoderError(h.c.WARNING_VIDEO_DECODE_RESTART_WHEN_DECODE_ERROR, "VideoDecode: decode error, errCode:".concat(String.valueOf(j10)), new Object[0]);
            LiteavLog.e(TAG, "decode failed.".concat(String.valueOf(j10)));
            if (pixelFrame != null) {
                pixelFrame.release();
            }
        } else if (pixelFrame != null) {
            ba baVar = this.mListener;
            if (baVar != null) {
                baVar.onDecodeFrame(pixelFrame, pixelFrame.getTimestamp());
            }
            pixelFrame.release();
        }
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public void abandonDecodingFrames() {
        long j10 = this.mNativeVideoDecoderWrapper;
        if (j10 == 0) {
            LiteavLog.w(TAG, "decoder has already stopped");
            return;
        }
        nativeAbandonDecodingFrames(j10);
        ba baVar = this.mListener;
        if (baVar != null) {
            baVar.onAbandonDecodingFramesCompleted();
        }
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public boolean decode(EncodedVideoFrame encodedVideoFrame) {
        ByteBuffer byteBuffer;
        ba baVar;
        if (encodedVideoFrame == null || (byteBuffer = encodedVideoFrame.data) == null || byteBuffer.remaining() == 0) {
            return false;
        }
        if (encodedVideoFrame.isEosFrame && (baVar = this.mListener) != null) {
            baVar.onDecodeCompleted();
            return true;
        }
        nativeDecodeFrame(this.mNativeVideoDecoderWrapper, encodedVideoFrame, encodedVideoFrame.data, encodedVideoFrame.nalType.mValue, encodedVideoFrame.codecType.mValue, encodedVideoFrame.rotation, encodedVideoFrame.pts, encodedVideoFrame.dts);
        encodedVideoFrame.release();
        ba baVar2 = this.mListener;
        if (baVar2 != null) {
            baVar2.onFrameEnqueuedToDecoder();
        }
        return true;
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public az.a getDecoderType() {
        return az.a.SOFTWARE;
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public void initialize() {
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public void setScene(VideoDecoderDef.ConsumerScene consumerScene) {
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public void setServerConfig(ServerVideoConsumerConfig serverVideoConsumerConfig) {
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public void start(Object obj, ba baVar) {
        if (this.mNativeVideoDecoderWrapper != 0) {
            LiteavLog.w(TAG, "decoder is already started!");
            return;
        }
        this.mPixelFramePool = new com.tencent.liteav.videobase.frame.i();
        this.mListener = baVar;
        long nativeCreate = nativeCreate(this);
        this.mNativeVideoDecoderWrapper = nativeCreate;
        if (nativeCreate == 0) {
            handleDecoderError(h.c.WARNING_VIDEO_DECODE_START_FAILED_OUT_OF_MEMORY, "VideoDecode: out of memory, Start decoder failed", new Object[0]);
            LiteavLog.e(TAG, "create native instance failed.");
        } else if (nativeStart(nativeCreate) != 0) {
            handleDecoderError(h.c.WARNING_VIDEO_DECODE_START_FAILED, "VideoDecode: Start decoder failed", new Object[0]);
            LiteavLog.e(TAG, "Start software decoder failed.");
        } else {
            this.mReporter.notifyEvent(h.b.EVT_VIDEO_DECODE_START_SUCCESS, "Start decoder success", new Object[0]);
            LiteavLog.i(TAG, "decoder Start success.");
        }
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public void stop() {
        if (this.mNativeVideoDecoderWrapper == 0) {
            LiteavLog.w(TAG, "decoder has already stopped");
            return;
        }
        com.tencent.liteav.videobase.frame.i iVar = this.mPixelFramePool;
        if (iVar != null) {
            iVar.b();
        }
        nativeStop(this.mNativeVideoDecoderWrapper);
        nativeDestroy(this.mNativeVideoDecoderWrapper);
        this.mNativeVideoDecoderWrapper = 0L;
        LiteavLog.i(TAG, "decoder stop.");
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public void uninitialize() {
    }
}
