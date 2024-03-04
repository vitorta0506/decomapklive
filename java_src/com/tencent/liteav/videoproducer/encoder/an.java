package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
public final /* synthetic */ class an implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32840a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32841b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32842c;

    private an(ah ahVar, int i9, int i10) {
        this.f32840a = ahVar;
        this.f32841b = i9;
        this.f32842c = i10;
    }

    public static Runnable a(ah ahVar, int i9, int i10) {
        return new an(ahVar, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32840a, this.f32841b, this.f32842c);
    }
}
