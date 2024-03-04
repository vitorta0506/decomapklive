package io.grpc.netty.shaded.io.netty.channel;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes5.dex */
public final class k0 implements y, j {

    /* renamed from: c  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43711c = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(k0.class);

    /* renamed from: a  reason: collision with root package name */
    private final y f43712a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f43713b;

    public k0(y yVar) {
        this(yVar, !(yVar instanceof e1));
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    public boolean I() {
        return this.f43712a.I();
    }

    @Override // ug.q
    public Throwable L() {
        return this.f43712a.L();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.i
    public boolean N() {
        return this.f43712a.N();
    }

    @Override // java.util.concurrent.Future
    /* renamed from: a */
    public Void get() throws InterruptedException, ExecutionException {
        return this.f43712a.get();
    }

    @Override // java.util.concurrent.Future
    /* renamed from: b */
    public Void get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f43712a.get(j10, timeUnit);
    }

    @Override // ug.q, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return this.f43712a.cancel(z10);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y, io.grpc.netty.shaded.io.netty.channel.i
    public e d() {
        return this.f43712a.d();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    public y f0() {
        return N() ? new k0(this.f43712a.f0()) : this;
    }

    @Override // ug.x
    public boolean g() {
        return this.f43712a.g();
    }

    @Override // ug.q
    /* renamed from: h */
    public Void Q() {
        return this.f43712a.Q();
    }

    @Override // ug.r
    /* renamed from: i */
    public void e(i iVar) throws Exception {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = this.f43713b ? f43711c : null;
        if (iVar.p0()) {
            io.grpc.netty.shaded.io.netty.util.internal.x.c(this.f43712a, iVar.get(), bVar);
        } else if (iVar.isCancelled()) {
            io.grpc.netty.shaded.io.netty.util.internal.x.a(this.f43712a, bVar);
        } else {
            io.grpc.netty.shaded.io.netty.util.internal.x.b(this.f43712a, iVar.L(), bVar);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f43712a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f43712a.isDone();
    }

    @Override // ug.x
    /* renamed from: j */
    public boolean B(Void r22) {
        return this.f43712a.B(r22);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    public y m() {
        this.f43712a.m();
        return this;
    }

    @Override // ug.q
    public boolean p0() {
        return this.f43712a.p0();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.y
    public y u(Throwable th2) {
        this.f43712a.u(th2);
        return this;
    }

    @Override // ug.x
    /* renamed from: x */
    public y m0(Void r22) {
        this.f43712a.x(r22);
        return this;
    }

    @Override // ug.x
    public boolean z(Throwable th2) {
        return this.f43712a.z(th2);
    }

    public k0(y yVar, boolean z10) {
        this.f43712a = (y) io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "delegate");
        this.f43713b = z10;
    }

    @Override // ug.q
    /* renamed from: f */
    public ug.q<Void> f2(ug.r<? extends ug.q<? super Void>> rVar) {
        this.f43712a.f(rVar);
        return this;
    }

    @Override // ug.q, io.grpc.netty.shaded.io.netty.channel.i
    public ug.q<Void> c(ug.r<? extends ug.q<? super Void>> rVar) {
        this.f43712a.c(rVar);
        return this;
    }
}
