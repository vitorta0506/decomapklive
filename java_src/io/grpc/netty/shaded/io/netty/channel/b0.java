package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
abstract class b0 extends ug.e<Void> implements i {

    /* renamed from: b  reason: collision with root package name */
    private final e f43549b;

    /* JADX INFO: Access modifiers changed from: protected */
    public b0(e eVar, ug.j jVar) {
        super(jVar);
        this.f43549b = (e) io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "channel");
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.i
    public boolean N() {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.i
    public e d() {
        return this.f43549b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ug.e
    public ug.j i() {
        ug.j i9 = super.i();
        return i9 == null ? d().a0() : i9;
    }

    @Override // ug.e, ug.q
    /* renamed from: j */
    public i c0() throws InterruptedException {
        return this;
    }

    @Override // ug.q
    /* renamed from: k */
    public Void Q() {
        return null;
    }

    @Override // ug.e, ug.q
    /* renamed from: l */
    public i f(ug.r<? extends ug.q<? super Void>> rVar) {
        super.f(rVar);
        return this;
    }

    @Override // ug.e, ug.q, io.grpc.netty.shaded.io.netty.channel.i
    /* renamed from: c */
    public ug.q<Void> c2(ug.r<? extends ug.q<? super Void>> rVar) {
        super.c((ug.r) rVar);
        return this;
    }
}
