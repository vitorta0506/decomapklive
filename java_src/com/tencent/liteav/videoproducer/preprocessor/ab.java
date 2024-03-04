package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videobase.base.GLConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33011a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33012b;

    /* renamed from: c  reason: collision with root package name */
    private final com.tencent.liteav.videobase.videobase.a f33013c;

    /* renamed from: d  reason: collision with root package name */
    private final GLConstants.PixelBufferType f33014d;

    /* renamed from: e  reason: collision with root package name */
    private final GLConstants.PixelFormatType f33015e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f33016f;

    /* renamed from: g  reason: collision with root package name */
    private final ah f33017g;

    private ab(VideoPreprocessor videoPreprocessor, int i9, com.tencent.liteav.videobase.videobase.a aVar, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, boolean z10, ah ahVar) {
        this.f33011a = videoPreprocessor;
        this.f33012b = i9;
        this.f33013c = aVar;
        this.f33014d = pixelBufferType;
        this.f33015e = pixelFormatType;
        this.f33016f = z10;
        this.f33017g = ahVar;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, int i9, com.tencent.liteav.videobase.videobase.a aVar, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, boolean z10, ah ahVar) {
        return new ab(videoPreprocessor, i9, aVar, pixelBufferType, pixelFormatType, z10, ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoPreprocessor.lambda$registerVideoProcessedListener$3(this.f33011a, this.f33012b, this.f33013c, this.f33014d, this.f33015e, this.f33016f, this.f33017g);
    }
}
