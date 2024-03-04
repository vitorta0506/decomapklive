package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public abstract class VideoRenderInterface {
    @CalledByNative
    static VideoRenderInterface create(CustomHandler customHandler) {
        return new p(customHandler.getLooper(), new com.tencent.liteav.videobase.videobase.e());
    }

    @CalledByNative
    static Rotation createRotation(int i9) {
        return Rotation.a(i9);
    }

    @CalledByNative
    static GLConstants.GLScaleType createScaleType(int i9) {
        return GLConstants.GLScaleType.a(i9);
    }

    @CalledByNative
    public abstract void enableTapToFocusGesture(boolean z10);

    @CalledByNative
    public abstract void enableZoomGesture(boolean z10);

    @CalledByNative
    public abstract void renderFrame(PixelFrame pixelFrame);

    @CalledByNative
    public abstract void setDisplayView(DisplayTarget displayTarget, boolean z10);

    @CalledByNative
    public abstract void setHorizontalMirror(boolean z10);

    @CalledByNative
    public abstract void setRenderRotation(Rotation rotation);

    @CalledByNative
    public abstract void setScaleType(GLConstants.GLScaleType gLScaleType);

    @CalledByNative
    public abstract void setVerticalMirror(boolean z10);

    @CalledByNative
    public abstract void start(VideoRenderListener videoRenderListener);

    @CalledByNative
    public abstract void stop(boolean z10);

    @CalledByNative
    public abstract void takeSnapshot(TakeSnapshotListener takeSnapshotListener);
}
