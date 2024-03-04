package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33312a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33313b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33314c;

    private o(f fVar, int i9, int i10) {
        this.f33312a = fVar;
        this.f33313b = i9;
        this.f33314c = i10;
    }

    public static Runnable a(f fVar, int i9, int i10) {
        return new o(fVar, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33312a, this.f33313b, this.f33314c);
    }
}
