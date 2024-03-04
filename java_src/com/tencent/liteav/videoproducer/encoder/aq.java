package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
final /* synthetic */ class aq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32846a;

    private aq(ah ahVar) {
        this.f32846a = ahVar;
    }

    public static Runnable a(ah ahVar) {
        return new aq(ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32846a.h();
    }
}
