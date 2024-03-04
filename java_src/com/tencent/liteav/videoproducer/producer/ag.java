package com.tencent.liteav.videoproducer.producer;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33182a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f33183b;

    /* renamed from: c  reason: collision with root package name */
    private final float f33184c;

    /* renamed from: d  reason: collision with root package name */
    private final float f33185d;

    /* renamed from: e  reason: collision with root package name */
    private final float f33186e;

    private ag(f fVar, Bitmap bitmap, float f10, float f11, float f12) {
        this.f33182a = fVar;
        this.f33183b = bitmap;
        this.f33184c = f10;
        this.f33185d = f11;
        this.f33186e = f12;
    }

    public static Runnable a(f fVar, Bitmap bitmap, float f10, float f11, float f12) {
        return new ag(fVar, bitmap, f10, f11, f12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33182a.f33267c.setWatermark(this.f33183b, this.f33184c, this.f33185d, this.f33186e);
    }
}
