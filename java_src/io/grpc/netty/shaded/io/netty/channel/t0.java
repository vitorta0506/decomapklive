package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.r0;
/* loaded from: classes5.dex */
abstract class t0 implements r0.a {

    /* renamed from: a  reason: collision with root package name */
    private final r0.a f43782a;

    /* loaded from: classes5.dex */
    private static final class b extends t0 {

        /* renamed from: b  reason: collision with root package name */
        private final s f43783b;

        b(s sVar, r0.a aVar) {
            super(aVar);
            this.f43783b = sVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t0
        public void a(long j10) {
            this.f43783b.h(j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t0
        public void b(long j10) {
            this.f43783b.n(j10);
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends t0 {

        /* renamed from: b  reason: collision with root package name */
        private final e0 f43784b;

        c(e0 e0Var) {
            super(e0Var.k1());
            this.f43784b = e0Var;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t0
        public void a(long j10) {
            this.f43784b.g1(j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t0
        public void b(long j10) {
            this.f43784b.u1(j10);
        }
    }

    /* loaded from: classes5.dex */
    private static final class d extends t0 {
        d(r0.a aVar) {
            super(aVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t0
        public void a(long j10) {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t0
        public void b(long j10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t0 c(e eVar) {
        if (eVar.J() instanceof e0) {
            return new c((e0) eVar.J());
        }
        s S = eVar.k0().S();
        r0.a a10 = eVar.b0().j().a();
        return S == null ? new d(a10) : new b(S, a10);
    }

    public abstract void a(long j10);

    public abstract void b(long j10);

    @Override // io.grpc.netty.shaded.io.netty.channel.r0.a
    public final int size(Object obj) {
        return this.f43782a.size(obj);
    }

    private t0(r0.a aVar) {
        this.f43782a = (r0.a) io.grpc.netty.shaded.io.netty.util.internal.s.h(aVar, "estimatorHandle");
    }
}
