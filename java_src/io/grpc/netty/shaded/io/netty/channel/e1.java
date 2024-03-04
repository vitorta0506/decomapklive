package io.grpc.netty.shaded.io.netty.channel;

import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class e1 extends ug.c<Void> implements y {

    /* renamed from: a  reason: collision with root package name */
    private final e f43614a;

    /* renamed from: b  reason: collision with root package name */
    private final j f43615b;

    /* loaded from: classes5.dex */
    class a implements j {
        a() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(i iVar) throws Exception {
            Throwable L = iVar.L();
            if (L != null) {
                e1.this.o(L);
            }
        }
    }

    public e1(e eVar, boolean z10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "channel");
        this.f43614a = eVar;
        if (z10) {
            this.f43615b = new a();
        } else {
            this.f43615b = null;
        }
    }

    private static void l() {
        throw new IllegalStateException("void future");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Throwable th2) {
        if (this.f43615b == null || !this.f43614a.O()) {
            return;
        }
        this.f43614a.J().v(th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    public boolean I() {
        return false;
    }

    @Override // ug.q
    public Throwable L() {
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.i
    public boolean N() {
        return true;
    }

    @Override // ug.q
    public boolean await(long j10, TimeUnit timeUnit) {
        l();
        return false;
    }

    @Override // ug.q, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y, io.grpc.netty.shaded.io.netty.channel.i
    public e d() {
        return this.f43614a;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    public y f0() {
        f0 f0Var = new f0(this.f43614a);
        j jVar = this.f43615b;
        if (jVar != null) {
            f0Var.c((ug.r<? extends ug.q<? super Void>>) jVar);
        }
        return f0Var;
    }

    @Override // ug.x
    public boolean g() {
        return true;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return false;
    }

    @Override // ug.q, io.grpc.netty.shaded.io.netty.channel.i
    /* renamed from: j */
    public e1 c(ug.r<? extends ug.q<? super Void>> rVar) {
        l();
        return this;
    }

    @Override // ug.q
    /* renamed from: k */
    public e1 c0() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return this;
    }

    @Override // ug.q
    /* renamed from: p */
    public Void Q() {
        return null;
    }

    @Override // ug.q
    public boolean p0() {
        return false;
    }

    @Override // ug.q
    /* renamed from: q */
    public e1 f2(ug.r<? extends ug.q<? super Void>> rVar) {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    /* renamed from: r */
    public e1 u(Throwable th2) {
        o(th2);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    /* renamed from: s */
    public e1 m() {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    /* renamed from: t */
    public e1 x(Void r12) {
        return this;
    }

    @Override // ug.x
    /* renamed from: v */
    public boolean B(Void r12) {
        return false;
    }

    @Override // ug.x
    public boolean z(Throwable th2) {
        o(th2);
        return false;
    }
}
