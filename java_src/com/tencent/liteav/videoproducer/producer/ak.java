package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class ak implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33194a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33195b;

    private ak(f fVar, boolean z10) {
        this.f33194a = fVar;
        this.f33195b = z10;
    }

    public static Runnable a(f fVar, boolean z10) {
        return new ak(fVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.b(this.f33194a, this.f33195b);
    }
}
