package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
final /* synthetic */ class ar implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32847a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32848b;

    private ar(ah ahVar, String str) {
        this.f32847a = ahVar;
        this.f32848b = str;
    }

    public static Runnable a(ah ahVar, String str) {
        return new ar(ahVar, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32847a, this.f32848b);
    }
}
