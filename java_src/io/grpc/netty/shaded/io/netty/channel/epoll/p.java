package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.f1;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Map;
/* loaded from: classes5.dex */
public final class p extends d implements ng.j {

    /* renamed from: p  reason: collision with root package name */
    private volatile boolean f43684p;

    /* renamed from: q  reason: collision with root package name */
    private volatile boolean f43685q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar) {
        super(oVar);
        if (t.n()) {
            J0(true);
        }
        W();
    }

    private void W() {
        if ((Y() << 1) > 0) {
            O(Y() << 1);
        }
    }

    public p A0(int i9) {
        try {
            ((o) this.f43557a).f43634s.T(i9);
            W();
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p B0(int i9) {
        try {
            ((o) this.f43557a).f43634s.r0(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p C0(int i9) {
        try {
            ((o) this.f43557a).f43634s.U(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p D0(boolean z10) {
        try {
            ((o) this.f43557a).f43634s.s0(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p E0(boolean z10) {
        this.f43685q = z10;
        return this;
    }

    public p F0(int i9) {
        try {
            ((o) this.f43557a).f43634s.u0(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p G0(int i9) {
        try {
            ((o) this.f43557a).f43634s.v0(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p H0(int i9) {
        try {
            ((o) this.f43557a).f43634s.w0(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p I0(Map<InetAddress, byte[]> map) {
        try {
            ((o) this.f43557a).v1(map);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p J0(boolean z10) {
        try {
            ((o) this.f43557a).f43634s.V(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p K0(long j10) {
        try {
            ((o) this.f43557a).f43634s.y0(j10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p L0(boolean z10) {
        try {
            ((o) this.f43557a).f43634s.z0(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p M0(int i9) {
        try {
            ((o) this.f43557a).f43634s.A0(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p N0(int i9) {
        try {
            ((o) this.f43557a).f43634s.W(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: O0 */
    public p C(int i9) {
        super.S(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: P0 */
    public p D(int i9) {
        super.T(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: Q0 */
    public p E(f1 f1Var) {
        super.U(f1Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: R0 */
    public p F(int i9) {
        super.V(i9);
        return this;
    }

    public int X() {
        try {
            return ((o) this.f43557a).f43634s.u();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public int Y() {
        try {
            return ((o) this.f43557a).f43634s.v();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public int Z() {
        try {
            return ((o) this.f43557a).f43634s.a0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public int a0() {
        try {
            return ((o) this.f43557a).f43634s.c0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        if (rVar == r.f43741v) {
            return (T) Integer.valueOf(X());
        }
        if (rVar == r.f43740u) {
            return (T) Integer.valueOf(Y());
        }
        if (rVar == r.F) {
            return (T) Boolean.valueOf(l0());
        }
        if (rVar == r.f43739t) {
            return (T) Boolean.valueOf(h0());
        }
        if (rVar == r.f43742w) {
            return (T) Boolean.valueOf(i0());
        }
        if (rVar == r.f43743x) {
            return (T) Integer.valueOf(h());
        }
        if (rVar == r.A) {
            return (T) Integer.valueOf(f0());
        }
        if (rVar == r.f43735p) {
            return (T) Boolean.valueOf(e());
        }
        if (rVar == lg.b.M) {
            return (T) Boolean.valueOf(j0());
        }
        if (rVar == lg.b.N) {
            return (T) Long.valueOf(d0());
        }
        if (rVar == lg.b.O) {
            return (T) Integer.valueOf(b0());
        }
        if (rVar == lg.b.P) {
            return (T) Integer.valueOf(c0());
        }
        if (rVar == lg.b.Q) {
            return (T) Integer.valueOf(a0());
        }
        if (rVar == lg.b.R) {
            return (T) Integer.valueOf(e0());
        }
        if (rVar == lg.b.C4) {
            return (T) Boolean.valueOf(m0());
        }
        if (rVar == lg.b.V1) {
            return (T) Boolean.valueOf(g0());
        }
        if (rVar == r.G) {
            return (T) Boolean.valueOf(k0());
        }
        if (rVar == lg.b.D4) {
            return (T) Integer.valueOf(Z());
        }
        return (T) super.b(rVar);
    }

    public int b0() {
        try {
            return ((o) this.f43557a).f43634s.d0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public int c0() {
        try {
            return ((o) this.f43557a).f43634s.e0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public long d0() {
        try {
            return ((o) this.f43557a).f43634s.f0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ng.f
    public boolean e() {
        return this.f43684p;
    }

    public int e0() {
        try {
            return ((o) this.f43557a).f43634s.g0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public int f0() {
        try {
            return ((o) this.f43557a).f43634s.x();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean g0() {
        try {
            return ((o) this.f43557a).f43634s.i0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ng.j
    public int h() {
        try {
            return ((o) this.f43557a).f43634s.w();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean h0() {
        try {
            return ((o) this.f43557a).f43634s.B();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean i0() {
        try {
            return ((o) this.f43557a).f43634s.D();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean j0() {
        try {
            return ((o) this.f43557a).f43634s.j0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == r.f43741v) {
            x0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43740u) {
            A0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.F) {
            J0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43739t) {
            u0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43742w) {
            z0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43743x) {
            C0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.A) {
            N0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43735p) {
            o0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == lg.b.M) {
            D0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == lg.b.N) {
            K0(((Long) t10).longValue());
            return true;
        } else if (rVar == lg.b.O) {
            G0(((Integer) t10).intValue());
            return true;
        } else if (rVar == lg.b.Q) {
            F0(((Integer) t10).intValue());
            return true;
        } else if (rVar == lg.b.P) {
            H0(((Integer) t10).intValue());
            return true;
        } else if (rVar == lg.b.R) {
            M0(((Integer) t10).intValue());
            return true;
        } else if (rVar == lg.b.V1) {
            t0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == lg.b.F4) {
            I0((Map) t10);
            return true;
        } else if (rVar == lg.b.C4) {
            L0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.G) {
            E0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == lg.b.D4) {
            B0(((Integer) t10).intValue());
            return true;
        } else {
            return super.k(rVar, t10);
        }
    }

    public boolean k0() {
        return this.f43685q;
    }

    public boolean l0() {
        try {
            return ((o) this.f43557a).f43634s.F();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean m0() {
        try {
            return ((o) this.f43557a).f43634s.k0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: n0 */
    public p s(kg.k kVar) {
        super.K(kVar);
        return this;
    }

    public p o0(boolean z10) {
        this.f43684p = z10;
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: p0 */
    public p t(boolean z10) {
        super.t(z10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: q0 */
    public p u(boolean z10) {
        super.L(z10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: r0 */
    public p v(int i9) {
        super.M(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d
    /* renamed from: s0 */
    public p N(EpollMode epollMode) {
        super.N(epollMode);
        return this;
    }

    public p t0(boolean z10) {
        try {
            ((o) this.f43557a).f43634s.q0(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public p u0(boolean z10) {
        try {
            ((o) this.f43557a).f43634s.P(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: v0 */
    public p w(int i9) {
        super.P(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: w0 */
    public p y(r0 r0Var) {
        super.Q(r0Var);
        return this;
    }

    public p x0(int i9) {
        try {
            ((o) this.f43557a).f43634s.Q(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: y0 */
    public p A(v0 v0Var) {
        super.R(v0Var);
        return this;
    }

    public p z0(boolean z10) {
        try {
            ((o) this.f43557a).f43634s.R(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }
}
