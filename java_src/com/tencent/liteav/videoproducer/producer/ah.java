package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.base.GLConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33187a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.PixelFormatType f33188b;

    /* renamed from: c  reason: collision with root package name */
    private final GLConstants.PixelBufferType f33189c;

    /* renamed from: d  reason: collision with root package name */
    private final CustomVideoProcessListener f33190d;

    private ah(f fVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, CustomVideoProcessListener customVideoProcessListener) {
        this.f33187a = fVar;
        this.f33188b = pixelFormatType;
        this.f33189c = pixelBufferType;
        this.f33190d = customVideoProcessListener;
    }

    public static Runnable a(f fVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, CustomVideoProcessListener customVideoProcessListener) {
        return new ah(fVar, pixelFormatType, pixelBufferType, customVideoProcessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33187a, this.f33188b, this.f33189c, this.f33190d);
    }
}
