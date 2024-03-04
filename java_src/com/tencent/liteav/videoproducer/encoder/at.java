package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
final /* synthetic */ class at implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32851a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32852b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32853c;

    private at(ah ahVar, boolean z10, int i9) {
        this.f32851a = ahVar;
        this.f32852b = z10;
        this.f32853c = i9;
    }

    public static Runnable a(ah ahVar, boolean z10, int i9) {
        return new at(ahVar, z10, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32851a, this.f32852b, this.f32853c);
    }
}
