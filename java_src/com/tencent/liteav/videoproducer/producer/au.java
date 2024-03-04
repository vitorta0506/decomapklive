package com.tencent.liteav.videoproducer.producer;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
final /* synthetic */ class au implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33224a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f33225b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33226c;

    private au(f fVar, Bitmap bitmap, int i9) {
        this.f33224a = fVar;
        this.f33225b = bitmap;
        this.f33226c = i9;
    }

    public static Runnable a(f fVar, Bitmap bitmap, int i9) {
        return new au(fVar, bitmap, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33224a, this.f33225b, this.f33226c);
    }
}
