package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class av implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33227a;

    private av(f fVar) {
        this.f33227a = fVar;
    }

    public static Runnable a(f fVar) {
        return new av(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.e(this.f33227a);
    }
}
