package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
public final /* synthetic */ class ak implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32835a;

    private ak(ah ahVar) {
        this.f32835a = ahVar;
    }

    public static Runnable a(ah ahVar) {
        return new ak(ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.b(this.f32835a);
    }
}
