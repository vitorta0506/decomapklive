package com.tencent.liteav.audio.earmonitor;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f30797a;

    private e(a aVar) {
        this.f30797a = aVar;
    }

    public static Runnable a(a aVar) {
        return new e(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f30797a);
    }
}
