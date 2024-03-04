package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videobase.base.GLConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32060a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.PixelFormatType f32061b;

    /* renamed from: c  reason: collision with root package name */
    private final GLConstants.PixelBufferType f32062c;

    private b(a aVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType) {
        this.f32060a = aVar;
        this.f32061b = pixelFormatType;
        this.f32062c = pixelBufferType;
    }

    public static Runnable a(a aVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType) {
        return new b(aVar, pixelFormatType, pixelBufferType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f32060a, this.f32061b, this.f32062c);
    }
}
