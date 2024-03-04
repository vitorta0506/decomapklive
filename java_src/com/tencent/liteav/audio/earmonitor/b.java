package com.tencent.liteav.audio.earmonitor;
/* loaded from: classes4.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f30794a;

    private b(a aVar) {
        this.f30794a = aVar;
    }

    public static Runnable a(a aVar) {
        return new b(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.d(this.f30794a);
    }
}
