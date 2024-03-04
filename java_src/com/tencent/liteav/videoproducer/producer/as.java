package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class as implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33219a;

    private as(f fVar) {
        this.f33219a = fVar;
    }

    public static Runnable a(f fVar) {
        return new as(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33219a.b();
    }
}
