package com.tencent.liteav.videobase.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final e f31726a;

    private f(e eVar) {
        this.f31726a = eVar;
    }

    public static Runnable a(e eVar) {
        return new f(eVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        e.b(this.f31726a);
    }
}
