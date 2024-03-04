package com.tencent.liteav.videoproducer.preprocessor;

import android.graphics.Bitmap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33105a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33106b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap f33107c;

    /* renamed from: d  reason: collision with root package name */
    private final float f33108d;

    /* renamed from: e  reason: collision with root package name */
    private final Bitmap f33109e;

    /* renamed from: f  reason: collision with root package name */
    private final float f33110f;

    private r(VideoPreprocessor videoPreprocessor, float f10, Bitmap bitmap, float f11, Bitmap bitmap2, float f12) {
        this.f33105a = videoPreprocessor;
        this.f33106b = f10;
        this.f33107c = bitmap;
        this.f33108d = f11;
        this.f33109e = bitmap2;
        this.f33110f = f12;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, float f10, Bitmap bitmap, float f11, Bitmap bitmap2, float f12) {
        return new r(videoPreprocessor, f10, bitmap, f11, bitmap2, f12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33105a.mPreprocessor.a(this.f33106b, this.f33107c, this.f33108d, this.f33109e, this.f33110f);
    }
}
