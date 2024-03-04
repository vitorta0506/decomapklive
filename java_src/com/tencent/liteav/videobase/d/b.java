package com.tencent.liteav.videobase.d;
/* loaded from: classes4.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f31814a;

    private b(a aVar) {
        this.f31814a = aVar;
    }

    public static Runnable a(a aVar) {
        return new b(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f31814a);
    }
}
