package com.tencent.liteav.videoproducer.capture.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32651a;

    private b(a aVar) {
        this.f32651a = aVar;
    }

    public static Runnable a(a aVar) {
        return new b(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f32651a);
    }
}
