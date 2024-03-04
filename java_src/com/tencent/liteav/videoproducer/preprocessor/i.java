package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33079a;

    /* renamed from: b  reason: collision with root package name */
    private final com.tencent.liteav.videobase.a.a f33080b;

    private i(h hVar, com.tencent.liteav.videobase.a.a aVar) {
        this.f33079a = hVar;
        this.f33080b = aVar;
    }

    public static Runnable a(h hVar, com.tencent.liteav.videobase.a.a aVar) {
        return new i(hVar, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = this.f33079a;
        hVar.f33049f = this.f33080b;
        hVar.b();
    }
}
