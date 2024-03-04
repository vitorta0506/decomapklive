package com.tencent.liteav.audio.earmonitor;
/* loaded from: classes4.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f30795a;

    private c(a aVar) {
        this.f30795a = aVar;
    }

    public static Runnable a(a aVar) {
        return new c(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.c(this.f30795a);
    }
}
