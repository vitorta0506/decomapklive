package com.tencent.liteav.txcvodplayer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31651a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f31652b;

    private f(d dVar, boolean z10) {
        this.f31651a = dVar;
        this.f31652b = z10;
    }

    public static Runnable a(d dVar, boolean z10) {
        return new f(dVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f31651a, this.f31652b);
    }
}
