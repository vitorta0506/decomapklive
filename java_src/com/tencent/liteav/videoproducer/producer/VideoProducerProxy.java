package com.tencent.liteav.videoproducer.producer;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.HandlerThread;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.SnapshotSourceType;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
import com.tencent.liteav.videoproducer.capture.CameraCaptureParams;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.ScreenCapturer;
import com.tencent.liteav.videoproducer.capture.VirtualCamera;
import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor;
import com.tencent.liteav.videoproducer.preprocessor.VideoPreprocessor;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VideoProducerProxy {
    private final f mProducer;

    @CalledByNative
    public VideoProducerProxy(boolean z10, @NonNull IVideoReporter iVideoReporter) {
        this(ContextUtils.getApplicationContext(), z10, iVideoReporter);
    }

    @CalledByNative
    public static VideoEncoderDef.EncodeAbility getEncodeAbility() {
        return f.a();
    }

    @CalledByNative
    public void ackRPSRecvFrameIndex(VideoProducerDef.StreamType streamType, int i9, int i10) {
        f fVar = this.mProducer;
        fVar.a(v.a(fVar, streamType, i9, i10));
    }

    @CalledByNative
    public void appendCustomCaptureFrame(PixelFrame pixelFrame) {
        f fVar = this.mProducer;
        if (pixelFrame != null && pixelFrame.isFrameDataValid()) {
            int width = pixelFrame.getWidth();
            int height = pixelFrame.getHeight();
            pixelFrame.retain();
            if (fVar.a(ad.a(fVar, pixelFrame, width, height))) {
                return;
            }
            pixelFrame.release();
            return;
        }
        LiteavLog.w(fVar.f33265a, "appendCustomCaptureFrame: frame is not valid.");
    }

    @CalledByNative
    public BeautyProcessor getBeautyProcessor() {
        return this.mProducer.f33268d;
    }

    @CalledByNative
    public VideoPreprocessor getVideoPreprocessor() {
        return this.mProducer.f33267c;
    }

    @CalledByNative
    public void initialize() {
        f fVar = this.mProducer;
        synchronized (fVar) {
            if (fVar.f33270f) {
                LiteavLog.w(fVar.f33265a, "videoproducer already initialized.");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("videoProducer_" + fVar.hashCode());
            handlerThread.start();
            fVar.f33269e = new CustomHandler(handlerThread.getLooper());
            fVar.f33270f = true;
            fVar.f33269e.a(g.a(fVar));
        }
    }

    @CalledByNative
    public void pauseCapture() {
        f fVar = this.mProducer;
        fVar.a(av.a(fVar));
    }

    @CalledByNative
    public void requestKeyFrame(VideoProducerDef.StreamType streamType) {
        f fVar = this.mProducer;
        fVar.a(w.a(fVar, streamType));
    }

    @CalledByNative
    public void resumeCapture() {
        f fVar = this.mProducer;
        fVar.a(aw.a(fVar));
    }

    @CalledByNative
    public int setCameraFocusPosition(int i9, int i10) {
        f fVar = this.mProducer;
        fVar.a(o.a(fVar, i9, i10));
        return 0;
    }

    @CalledByNative
    public void setCaptureParams(CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        f fVar = this.mProducer;
        fVar.a(at.a(fVar, sourceType, producerMode, captureParams));
    }

    @CalledByNative
    public void setCustomRenderListener(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, VideoRenderListener videoRenderListener) {
        f fVar = this.mProducer;
        fVar.a(af.a(fVar, pixelFormatType, pixelBufferType, videoRenderListener));
    }

    @CalledByNative
    public void setCustomVideoProcessListener(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, CustomVideoProcessListener customVideoProcessListener) {
        f fVar = this.mProducer;
        fVar.a(ah.a(fVar, pixelFormatType, pixelBufferType, customVideoProcessListener));
    }

    @CalledByNative
    public void setDisplayView(DisplayTarget displayTarget) {
        f fVar = this.mProducer;
        fVar.a(h.a(fVar, displayTarget));
    }

    @CalledByNative
    public void setEncodeMirrorEnabled(boolean z10) {
        f fVar = this.mProducer;
        fVar.a(l.a(fVar, z10));
    }

    @CalledByNative
    public void setEncodeParams(VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams, GLConstants.Orientation orientation) {
        f fVar = this.mProducer;
        fVar.a(s.a(fVar, orientation, streamType, videoEncodeParams));
    }

    @CalledByNative
    public void setEncodeRotation(Rotation rotation) {
        f fVar = this.mProducer;
        fVar.a(m.a(fVar, rotation));
    }

    @CalledByNative
    public void setEncodeStrategy(VideoProducerDef.StreamType streamType, VideoEncoderDef.EncodeStrategy encodeStrategy) {
        f fVar = this.mProducer;
        fVar.a(k.a(fVar, streamType, encodeStrategy));
    }

    @CalledByNative
    public void setGSensorMode(VideoProducerDef.GSensorMode gSensorMode) {
        f fVar = this.mProducer;
        fVar.a(p.a(fVar, gSensorMode));
    }

    @CalledByNative
    public void setHWEncoderDeviceRelatedParams(String str) {
        f fVar = this.mProducer;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        fVar.a(n.a(fVar, str));
    }

    @CalledByNative
    public void setHomeOrientation(VideoProducerDef.HomeOrientation homeOrientation) {
        f fVar = this.mProducer;
        fVar.a(q.a(fVar, homeOrientation));
    }

    @CalledByNative
    public void setPausedImage(Bitmap bitmap, int i9) {
        f fVar = this.mProducer;
        fVar.a(au.a(fVar, bitmap, i9));
    }

    @CalledByNative
    public void setRPSIFrameFPS(VideoProducerDef.StreamType streamType, int i9) {
        f fVar = this.mProducer;
        fVar.a(t.a(fVar, i9, streamType));
    }

    @CalledByNative
    public void setRPSNearestREFSize(VideoProducerDef.StreamType streamType, int i9) {
        f fVar = this.mProducer;
        fVar.a(u.a(fVar, i9, streamType));
    }

    @CalledByNative
    public void setRenderMirrorMode(GLConstants.MirrorMode mirrorMode) {
        f fVar = this.mProducer;
        fVar.a(x.a(fVar, mirrorMode));
    }

    @CalledByNative
    public void setRenderRotation(Rotation rotation) {
        f fVar = this.mProducer;
        fVar.a(z.a(fVar, rotation));
    }

    @CalledByNative
    public void setRenderScaleType(GLConstants.GLScaleType gLScaleType) {
        f fVar = this.mProducer;
        fVar.a(y.a(fVar, gLScaleType));
    }

    @CalledByNative
    public void setServerConfig(ServerVideoProducerConfig serverVideoProducerConfig) {
        f fVar = this.mProducer;
        fVar.a(ac.a(fVar, serverVideoProducerConfig));
    }

    @CalledByNative
    public void setWatermark(Bitmap bitmap, float f10, float f11, float f12) {
        f fVar = this.mProducer;
        fVar.a(ag.a(fVar, bitmap, f10, f11, f12));
    }

    @CalledByNative
    public void startCapture(CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        f fVar = this.mProducer;
        CaptureSourceInterface.SourceType sourceType2 = CaptureSourceInterface.SourceType.CAMERA;
        if (sourceType != sourceType2 && sourceType != CaptureSourceInterface.SourceType.SCREEN && sourceType != CaptureSourceInterface.SourceType.VIRTUAL_CAMERA) {
            throw new IllegalArgumentException("type: ".concat(String.valueOf(sourceType)));
        }
        if (sourceType == sourceType2 && !(captureParams instanceof CameraCaptureParams)) {
            throw new IllegalArgumentException("CaptureParams is not CameraCaptureParams");
        }
        if (sourceType == CaptureSourceInterface.SourceType.SCREEN) {
            if (captureParams instanceof ScreenCapturer.ScreenCaptureParams) {
                if (LiteavSystemInfo.getSystemOSVersionInt() < 21) {
                    fVar.f33266b.notifyError(h.a.ERR_VIDEO_CAPTURE_SCREEN_UNSUPPORTED, "not support screen capture", new Object[0]);
                }
            } else {
                throw new IllegalArgumentException("CaptureParams is not ScreenCaptureParams");
            }
        }
        if (sourceType == CaptureSourceInterface.SourceType.VIRTUAL_CAMERA && !(captureParams instanceof VirtualCamera.VirtualCameraParams)) {
            throw new IllegalArgumentException("CaptureParams is not VirtualCameraParams");
        }
        fVar.a(an.a(fVar, sourceType, producerMode, captureParams));
    }

    @CalledByNative
    public void startCustomCapture() {
        f fVar = this.mProducer;
        fVar.a(ab.a(fVar));
    }

    @CalledByNative
    public void startEncodeStream(VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        f fVar = this.mProducer;
        fVar.a(i.a(fVar, streamType, videoEncodeParams, videoEncoderDataListener));
    }

    @CalledByNative
    public void stopCapture() {
        f fVar = this.mProducer;
        fVar.a(as.a(fVar));
    }

    @CalledByNative
    public void stopCustomCapture() {
        f fVar = this.mProducer;
        fVar.a(ae.a(fVar));
    }

    @CalledByNative
    public void stopEncodeStream(VideoProducerDef.StreamType streamType) {
        f fVar = this.mProducer;
        fVar.a(j.a(fVar, streamType));
    }

    @CalledByNative
    public void takeSnapshot(SnapshotSourceType snapshotSourceType, TakeSnapshotListener takeSnapshotListener) {
        f fVar = this.mProducer;
        fVar.a(aa.a(fVar, snapshotSourceType, takeSnapshotListener));
    }

    @CalledByNative
    public void uninitialize() {
        f fVar = this.mProducer;
        fVar.a(r.a(fVar));
    }

    public VideoProducerProxy(@NonNull Context context, boolean z10, @NonNull IVideoReporter iVideoReporter) {
        this.mProducer = new f(context, z10, iVideoReporter);
    }
}
