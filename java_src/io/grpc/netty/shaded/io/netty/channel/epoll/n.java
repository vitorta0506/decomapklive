package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.f1;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Map;
/* loaded from: classes5.dex */
public final class n extends l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar) {
        super(mVar);
        j0(true);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: A0 */
    public n y(r0 r0Var) {
        super.g0(r0Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.l
    /* renamed from: B0 */
    public n h0(int i9) {
        super.h0(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: C0 */
    public n A(v0 v0Var) {
        super.i0(v0Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.l
    /* renamed from: D0 */
    public n j0(boolean z10) {
        super.j0(z10);
        return this;
    }

    public n E0(boolean z10) {
        try {
            ((m) this.f43557a).f43634s.S(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public n F0(int i9) {
        try {
            ((m) this.f43557a).f43634s.t0(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public n G0(Map<InetAddress, byte[]> map) {
        try {
            ((m) this.f43557a).l1(map);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: H0 */
    public n C(int i9) {
        super.l0(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: I0 */
    public n D(int i9) {
        super.m0(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: J0 */
    public n E(f1 f1Var) {
        super.n0(f1Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: K0 */
    public n F(int i9) {
        super.o0(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.l, io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        if (rVar == io.grpc.netty.shaded.io.netty.channel.unix.g.K) {
            return (T) Boolean.valueOf(s0());
        }
        if (rVar == lg.b.f54327a1) {
            return (T) Boolean.valueOf(q0());
        }
        if (rVar == lg.b.V1) {
            return (T) Boolean.valueOf(r0());
        }
        if (rVar == lg.b.V3) {
            return (T) Integer.valueOf(p0());
        }
        return (T) super.b(rVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.l, io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == io.grpc.netty.shaded.io.netty.channel.unix.g.K) {
            E0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == lg.b.f54327a1) {
            x0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == lg.b.V1) {
            y0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == lg.b.F4) {
            G0((Map) t10);
            return true;
        } else if (rVar == lg.b.V3) {
            F0(((Integer) t10).intValue());
            return true;
        } else {
            return super.k(rVar, t10);
        }
    }

    public int p0() {
        try {
            return ((m) this.f43557a).f43634s.b0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean q0() {
        try {
            return ((m) this.f43557a).f43634s.h0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean r0() {
        try {
            return ((m) this.f43557a).f43634s.i0();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean s0() {
        try {
            return ((m) this.f43557a).f43634s.E();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: t0 */
    public n s(kg.k kVar) {
        super.a0(kVar);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: u0 */
    public n u(boolean z10) {
        super.b0(z10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.l
    /* renamed from: v0 */
    public n c0(int i9) {
        super.c0(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: w0 */
    public n v(int i9) {
        super.d0(i9);
        return this;
    }

    public n x0(boolean z10) {
        try {
            ((m) this.f43557a).f43634s.p0(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public n y0(boolean z10) {
        try {
            ((m) this.f43557a).f43634s.q0(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: z0 */
    public n w(int i9) {
        super.f0(i9);
        return this;
    }
}
