package com.tencent.liteav.videoproducer.preprocessor;

import android.graphics.Bitmap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33111a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f33112b;

    /* renamed from: c  reason: collision with root package name */
    private final float f33113c;

    /* renamed from: d  reason: collision with root package name */
    private final float f33114d;

    /* renamed from: e  reason: collision with root package name */
    private final float f33115e;

    private s(VideoPreprocessor videoPreprocessor, Bitmap bitmap, float f10, float f11, float f12) {
        this.f33111a = videoPreprocessor;
        this.f33112b = bitmap;
        this.f33113c = f10;
        this.f33114d = f11;
        this.f33115e = f12;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, Bitmap bitmap, float f10, float f11, float f12) {
        return new s(videoPreprocessor, bitmap, f10, f11, f12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33111a.mPreprocessor.a(this.f33112b, this.f33113c, this.f33114d, this.f33115e);
    }
}
