package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f33247a;

    private c(a aVar) {
        this.f33247a = aVar;
    }

    public static Runnable a(a aVar) {
        return new c(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f33247a;
        aVar.a(aVar.f33151b);
    }
}
