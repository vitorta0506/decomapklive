package com.tencent.liteav.videoproducer2;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
/* loaded from: classes4.dex */
public class FrameTransformerProxy {

    /* renamed from: a  reason: collision with root package name */
    private final FrameTransformer f33342a;

    @CalledByNative
    public FrameTransformerProxy(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, long j10) {
        this.f33342a = new FrameTransformer(pixelFormatType, pixelBufferType, j10);
    }

    @CalledByNative
    private static GLConstants.PixelBufferType createPixelBufferType(int i9) {
        return GLConstants.PixelBufferType.a(i9);
    }

    @CalledByNative
    private static GLConstants.PixelFormatType createPixelFormatType(int i9) {
        return GLConstants.PixelFormatType.a(i9);
    }

    @CalledByNative
    private static Rotation createRotation(int i9) {
        return Rotation.a(i9);
    }

    @CalledByNative
    public void release() {
        this.f33342a.release();
    }

    @CalledByNative
    public void renderFrame(PixelFrame pixelFrame) {
        this.f33342a.renderFrame(pixelFrame);
    }

    @CalledByNative
    public void setHorizontalMirror(boolean z10) {
        this.f33342a.setHorizontalMirror(z10);
    }

    @CalledByNative
    public void setRenderRotation(Rotation rotation) {
        this.f33342a.setRenderRotation(rotation);
    }

    @CalledByNative
    public void setVerticalMirror(boolean z10) {
        this.f33342a.setVerticalMirror(z10);
    }
}
