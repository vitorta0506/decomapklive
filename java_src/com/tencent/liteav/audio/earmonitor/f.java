package com.tencent.liteav.audio.earmonitor;
/* loaded from: classes4.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f30798a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30799b;

    private f(a aVar, int i9) {
        this.f30798a = aVar;
        this.f30799b = i9;
    }

    public static Runnable a(a aVar, int i9) {
        return new f(aVar, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.b(this.f30798a, this.f30799b);
    }
}
