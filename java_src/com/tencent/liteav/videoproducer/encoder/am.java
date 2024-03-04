package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
public final /* synthetic */ class am implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32838a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32839b;

    private am(ah ahVar, int i9) {
        this.f32838a = ahVar;
        this.f32839b = i9;
    }

    public static Runnable a(ah ahVar, int i9) {
        return new am(ahVar, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32838a, this.f32839b);
    }
}
