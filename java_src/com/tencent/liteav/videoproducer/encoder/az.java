package com.tencent.liteav.videoproducer.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class az implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32865a;

    private az(ah ahVar) {
        this.f32865a = ahVar;
    }

    public static Runnable a(ah ahVar) {
        return new az(ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32865a.g();
    }
}
