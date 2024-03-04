package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.f1;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.channel.unix.DomainSocketReadMode;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.IOException;
/* loaded from: classes5.dex */
public final class f extends d implements ng.f {

    /* renamed from: p  reason: collision with root package name */
    private volatile DomainSocketReadMode f43668p;

    /* renamed from: q  reason: collision with root package name */
    private volatile boolean f43669q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        super(aVar);
        this.f43668p = DomainSocketReadMode.BYTES;
    }

    public DomainSocketReadMode W() {
        return this.f43668p;
    }

    public int X() {
        try {
            return ((e) this.f43557a).f43634s.u();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public int Y() {
        try {
            return ((e) this.f43557a).f43634s.v();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: Z */
    public f s(kg.k kVar) {
        super.K(kVar);
        return this;
    }

    public f a0(boolean z10) {
        this.f43669q = z10;
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        if (rVar == io.grpc.netty.shaded.io.netty.channel.unix.g.L) {
            return (T) W();
        }
        if (rVar == r.f43735p) {
            return (T) Boolean.valueOf(e());
        }
        if (rVar == r.f43740u) {
            return (T) Integer.valueOf(Y());
        }
        if (rVar == r.f43741v) {
            return (T) Integer.valueOf(X());
        }
        return (T) super.b(rVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: b0 */
    public f t(boolean z10) {
        super.t(z10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: c0 */
    public f u(boolean z10) {
        super.L(z10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: d0 */
    public f v(int i9) {
        super.M(i9);
        return this;
    }

    @Override // ng.f
    public boolean e() {
        return this.f43669q;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d
    /* renamed from: e0 */
    public f N(EpollMode epollMode) {
        super.N(epollMode);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: f0 */
    public f w(int i9) {
        super.P(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: g0 */
    public f y(r0 r0Var) {
        super.Q(r0Var);
        return this;
    }

    public f h0(DomainSocketReadMode domainSocketReadMode) {
        this.f43668p = (DomainSocketReadMode) s.h(domainSocketReadMode, "mode");
        return this;
    }

    public f i0(int i9) {
        try {
            ((e) this.f43557a).f43634s.Q(i9);
            return this;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: j0 */
    public f A(v0 v0Var) {
        super.R(v0Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == io.grpc.netty.shaded.io.netty.channel.unix.g.L) {
            h0((DomainSocketReadMode) t10);
            return true;
        } else if (rVar == r.f43735p) {
            a0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43740u) {
            k0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43741v) {
            i0(((Integer) t10).intValue());
            return true;
        } else {
            return super.k(rVar, t10);
        }
    }

    public f k0(int i9) {
        try {
            ((e) this.f43557a).f43634s.T(i9);
            return this;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: l0 */
    public f C(int i9) {
        super.S(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: m0 */
    public f D(int i9) {
        super.T(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: n0 */
    public f E(f1 f1Var) {
        super.U(f1Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: o0 */
    public f F(int i9) {
        super.V(i9);
        return this;
    }
}
