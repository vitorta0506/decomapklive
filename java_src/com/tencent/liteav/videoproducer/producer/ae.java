package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33177a;

    private ae(f fVar) {
        this.f33177a = fVar;
    }

    public static Runnable a(f fVar) {
        return new ae(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33177a);
    }
}
