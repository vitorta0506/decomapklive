package com.tencent.liteav.videoproducer.capture;

import android.graphics.Bitmap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class an implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final al f32585a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f32586b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32587c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32588d;

    /* renamed from: e  reason: collision with root package name */
    private final int f32589e;

    private an(al alVar, Bitmap bitmap, int i9, int i10, int i11) {
        this.f32585a = alVar;
        this.f32586b = bitmap;
        this.f32587c = i9;
        this.f32588d = i10;
        this.f32589e = i11;
    }

    public static Runnable a(al alVar, Bitmap bitmap, int i9, int i10, int i11) {
        return new an(alVar, bitmap, i9, i10, i11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        al.a(this.f32585a, this.f32586b, this.f32587c, this.f32588d, this.f32589e);
    }
}
