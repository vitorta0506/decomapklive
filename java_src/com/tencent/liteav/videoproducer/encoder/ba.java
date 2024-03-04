package com.tencent.liteav.videoproducer.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ba implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32912a;

    private ba(ah ahVar) {
        this.f32912a = ahVar;
    }

    public static Runnable a(ah ahVar) {
        return new ba(ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.c(this.f32912a);
    }
}
