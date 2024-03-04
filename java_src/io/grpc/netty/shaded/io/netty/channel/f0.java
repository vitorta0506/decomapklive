package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
public class f0 extends ug.h<Void> implements y {

    /* renamed from: n  reason: collision with root package name */
    private final e f43686n;

    public f0(e eVar) {
        this.f43686n = (e) io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "channel");
    }

    public boolean I() {
        return B(null);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.i
    public boolean N() {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y, io.grpc.netty.shaded.io.netty.channel.i
    public e d() {
        return this.f43686n;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    public y f0() {
        return this;
    }

    @Override // ug.h
    /* renamed from: l0 */
    public y o() throws InterruptedException {
        super.c0();
        return this;
    }

    public y m() {
        return m0(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ug.h
    public void r() {
        if (d().O()) {
            super.r();
        }
    }

    public y u(Throwable th2) {
        super.d0(th2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ug.h
    public ug.j v() {
        ug.j v10 = super.v();
        return v10 == null ? d().a0() : v10;
    }

    @Override // ug.h, ug.x
    /* renamed from: x */
    public y m0(Void r12) {
        super.m0(r12);
        return this;
    }

    @Override // ug.h, ug.q
    /* renamed from: f */
    public ug.q<Void> f2(ug.r<? extends ug.q<? super Void>> rVar) {
        super.f(rVar);
        return this;
    }

    public f0(e eVar, ug.j jVar) {
        super(jVar);
        this.f43686n = (e) io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "channel");
    }

    @Override // ug.h, ug.q, io.grpc.netty.shaded.io.netty.channel.i
    public ug.q<Void> c(ug.r<? extends ug.q<? super Void>> rVar) {
        super.c((ug.r) rVar);
        return this;
    }
}
