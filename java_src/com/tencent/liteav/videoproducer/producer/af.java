package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
/* loaded from: classes4.dex */
final /* synthetic */ class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33178a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.PixelFormatType f33179b;

    /* renamed from: c  reason: collision with root package name */
    private final GLConstants.PixelBufferType f33180c;

    /* renamed from: d  reason: collision with root package name */
    private final VideoRenderListener f33181d;

    private af(f fVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, VideoRenderListener videoRenderListener) {
        this.f33178a = fVar;
        this.f33179b = pixelFormatType;
        this.f33180c = pixelBufferType;
        this.f33181d = videoRenderListener;
    }

    public static Runnable a(f fVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, VideoRenderListener videoRenderListener) {
        return new af(fVar, pixelFormatType, pixelBufferType, videoRenderListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33178a, this.f33179b, this.f33180c, this.f33181d);
    }
}
