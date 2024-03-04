package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
public final /* synthetic */ class al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32836a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32837b;

    private al(ah ahVar, int i9) {
        this.f32836a = ahVar;
        this.f32837b = i9;
    }

    public static Runnable a(ah ahVar, int i9) {
        return new al(ahVar, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.b(this.f32836a, this.f32837b);
    }
}
