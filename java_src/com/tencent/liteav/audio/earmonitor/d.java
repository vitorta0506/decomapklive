package com.tencent.liteav.audio.earmonitor;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f30796a;

    private d(a aVar) {
        this.f30796a = aVar;
    }

    public static Runnable a(a aVar) {
        return new d(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.b(this.f30796a);
    }
}
