package com.tencent.ugc;

import android.graphics.Bitmap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34765a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34766b;

    /* renamed from: c  reason: collision with root package name */
    private final float f34767c;

    /* renamed from: d  reason: collision with root package name */
    private final float f34768d;

    /* renamed from: e  reason: collision with root package name */
    private final Bitmap f34769e;

    /* renamed from: f  reason: collision with root package name */
    private final Bitmap f34770f;

    private bl(TXVideoEditer tXVideoEditer, float f10, float f11, float f12, Bitmap bitmap, Bitmap bitmap2) {
        this.f34765a = tXVideoEditer;
        this.f34766b = f10;
        this.f34767c = f11;
        this.f34768d = f12;
        this.f34769e = bitmap;
        this.f34770f = bitmap2;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, float f10, float f11, float f12, Bitmap bitmap, Bitmap bitmap2) {
        return new bl(tXVideoEditer, f10, f11, f12, bitmap, bitmap2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setFilter$7(this.f34765a, this.f34766b, this.f34767c, this.f34768d, this.f34769e, this.f34770f);
    }
}
