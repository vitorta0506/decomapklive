package com.tencent.ugc;

import android.os.HandlerThread;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.ugc.UGCFrameQueue;
import java.nio.ByteBuffer;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class VideoDemuxerFFmpeg implements UGCFrameQueue.UGCFrameQueueListener, VideoDemuxer {
    private static final int MAX_FRAME_SIZE = 20;
    private static final int OPEN_MEDIA_OUT_TIME = 3000;
    private static final String TAG = "VideoDemuxerFFmpeg";
    private long mNativeHandler;
    private CustomHandler mWorkHandler;
    private final UGCFrameQueue<EncodedVideoFrame> mFrameQueue = new UGCFrameQueue<>();
    private AtomicBoolean mOpenSuccess = new AtomicBoolean(false);

    private void clearFrameQueue() {
        for (EncodedVideoFrame encodedVideoFrame : this.mFrameQueue.dequeueAll()) {
            if (encodedVideoFrame != null) {
                encodedVideoFrame.release();
            }
        }
    }

    private void destroyNativeHandler() {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeClose(j10);
            nativeDestroy(this.mNativeHandler);
            this.mNativeHandler = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getNextEncodeVideoFrameInternal() {
        ByteBuffer byteBuffer;
        if (this.mNativeHandler == 0) {
            this.mFrameQueue.queue(VideoDemuxer.END_OF_STREAM);
        } else if (this.mFrameQueue.size() > 20) {
        } else {
            EncodedVideoFrame nativeGetNextEncodeVideoFrame = nativeGetNextEncodeVideoFrame(this.mNativeHandler);
            if (nativeGetNextEncodeVideoFrame != null && (byteBuffer = nativeGetNextEncodeVideoFrame.data) != null && byteBuffer.remaining() != 0) {
                this.mFrameQueue.queue(nativeGetNextEncodeVideoFrame);
            } else {
                this.mFrameQueue.queue(VideoDemuxer.END_OF_STREAM);
            }
            CustomHandler customHandler = this.mWorkHandler;
            if (customHandler != null) {
                customHandler.removeCallbacks(gs.a(this));
                this.mWorkHandler.post(gt.a(this));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$close$1(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        videoDemuxerFFmpeg.clearFrameQueue();
        videoDemuxerFFmpeg.mFrameQueue.queue(VideoDemuxer.END_OF_STREAM);
        videoDemuxerFFmpeg.mFrameQueue.setUGCFrameQueueListener(null);
        videoDemuxerFFmpeg.destroyNativeHandler();
        videoDemuxerFFmpeg.mOpenSuccess.set(false);
        CustomHandler customHandler = videoDemuxerFFmpeg.mWorkHandler;
        if (customHandler != null) {
            customHandler.a();
            videoDemuxerFFmpeg.mWorkHandler = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$open$0(VideoDemuxerFFmpeg videoDemuxerFFmpeg, String str) {
        long nativeCreate = nativeCreate(videoDemuxerFFmpeg);
        videoDemuxerFFmpeg.mNativeHandler = nativeCreate;
        if (nativeCreate == 0) {
            LiteavLog.e(TAG, "create native instance failed.");
            videoDemuxerFFmpeg.mFrameQueue.queue(VideoDemuxer.END_OF_STREAM);
        } else if (nativeOpen(nativeCreate, str) != 0) {
            LiteavLog.e(TAG, "native FFmpegDemuxerWrapper open failed.");
            videoDemuxerFFmpeg.destroyNativeHandler();
            videoDemuxerFFmpeg.mFrameQueue.queue(VideoDemuxer.END_OF_STREAM);
        } else {
            videoDemuxerFFmpeg.mOpenSuccess.set(true);
            videoDemuxerFFmpeg.mFrameQueue.setUGCFrameQueueListener(videoDemuxerFFmpeg);
            videoDemuxerFFmpeg.mFrameQueue.clear();
            videoDemuxerFFmpeg.runOnWorkThread(gv.a(videoDemuxerFFmpeg));
            LiteavLog.i(TAG, "demuxer open success.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Boolean lambda$seek$2(VideoDemuxerFFmpeg videoDemuxerFFmpeg, long j10) throws Exception {
        if (videoDemuxerFFmpeg.mNativeHandler == 0) {
            return Boolean.FALSE;
        }
        videoDemuxerFFmpeg.clearFrameQueue();
        boolean nativeSeek = nativeSeek(videoDemuxerFFmpeg.mNativeHandler, j10);
        videoDemuxerFFmpeg.getNextEncodeVideoFrameInternal();
        return Boolean.valueOf(nativeSeek);
    }

    private static native void nativeClose(long j10);

    private static native long nativeCreate(VideoDemuxerFFmpeg videoDemuxerFFmpeg);

    private static native void nativeDestroy(long j10);

    private static native EncodedVideoFrame nativeGetNextEncodeVideoFrame(long j10);

    private static native int nativeOpen(long j10, String str);

    private static native boolean nativeSeek(long j10, long j11);

    private void runOnWorkThread(Runnable runnable) {
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            customHandler.a(runnable, 0);
        }
    }

    @Override // com.tencent.ugc.VideoDemuxer
    public void close() {
        runOnWorkThread(gq.a(this));
    }

    @Override // com.tencent.ugc.VideoDemuxer
    public EncodedVideoFrame getNextEncodeVideoFrame() {
        return this.mFrameQueue.dequeue();
    }

    @Override // com.tencent.ugc.UGCFrameQueue.UGCFrameQueueListener
    public void onFrameDequeued() {
        runOnWorkThread(gu.a(this));
    }

    @Override // com.tencent.ugc.VideoDemuxer
    public boolean open(String str) {
        synchronized (this) {
            if (this.mWorkHandler != null) {
                LiteavLog.w(TAG, "demuxer is already open!");
                return false;
            }
            HandlerThread handlerThread = new HandlerThread("ugc-media-list-source");
            handlerThread.start();
            CustomHandler customHandler = new CustomHandler(handlerThread.getLooper());
            this.mWorkHandler = customHandler;
            customHandler.a(gp.a(this, str), 3000L);
            return this.mOpenSuccess.get();
        }
    }

    @Override // com.tencent.ugc.VideoDemuxer
    public boolean seek(long j10) {
        FutureTask futureTask = new FutureTask(gr.a(this, j10));
        runOnWorkThread(futureTask);
        try {
            return ((Boolean) futureTask.get(500L, TimeUnit.MILLISECONDS)).booleanValue();
        } catch (Exception e10) {
            LiteavLog.w(TAG, "seek future task exception: ".concat(String.valueOf(e10)));
            return false;
        }
    }
}
