package com.tencent.liteav.txcvodplayer.renderer;
/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31650a;

    private e(d dVar) {
        this.f31650a = dVar;
    }

    public static Runnable a(d dVar) {
        return new e(dVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.b(this.f31650a);
    }
}
