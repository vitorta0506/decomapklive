package com.tencent.liteav.videoproducer.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ay implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32864a;

    private ay(ah ahVar) {
        this.f32864a = ahVar;
    }

    public static Runnable a(ah ahVar) {
        return new ay(ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.e(this.f32864a);
    }
}
