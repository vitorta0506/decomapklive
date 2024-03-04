package com.tencent.liteav.txcvodplayer.renderer;
/* loaded from: classes4.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31655a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31656b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31657c;

    private h(d dVar, int i9, int i10) {
        this.f31655a = dVar;
        this.f31656b = i9;
        this.f31657c = i10;
    }

    public static Runnable a(d dVar, int i9, int i10) {
        return new h(dVar, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f31655a, this.f31656b, this.f31657c);
    }
}
