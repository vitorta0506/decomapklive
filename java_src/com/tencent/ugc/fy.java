package com.tencent.ugc;

import android.graphics.Bitmap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34967a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f34968b;

    /* renamed from: c  reason: collision with root package name */
    private final float f34969c;

    /* renamed from: d  reason: collision with root package name */
    private final Bitmap f34970d;

    /* renamed from: e  reason: collision with root package name */
    private final float f34971e;

    /* renamed from: f  reason: collision with root package name */
    private final float f34972f;

    private fy(UGCVideoProcessor uGCVideoProcessor, Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        this.f34967a = uGCVideoProcessor;
        this.f34968b = bitmap;
        this.f34969c = f10;
        this.f34970d = bitmap2;
        this.f34971e = f11;
        this.f34972f = f12;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        return new fy(uGCVideoProcessor, bitmap, f10, bitmap2, f11, f12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setFilter$12(this.f34967a, this.f34968b, this.f34969c, this.f34970d, this.f34971e, this.f34972f);
    }
}
