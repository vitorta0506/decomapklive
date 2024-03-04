package com.tencent.liteav.audio.earmonitor;
/* loaded from: classes4.dex */
final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f30800a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30801b;

    private g(a aVar, int i9) {
        this.f30800a = aVar;
        this.f30801b = i9;
    }

    public static Runnable a(a aVar, int i9) {
        return new g(aVar, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f30800a, this.f30801b);
    }
}
