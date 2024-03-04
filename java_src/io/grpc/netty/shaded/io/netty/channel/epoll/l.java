package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.a1;
import io.grpc.netty.shaded.io.netty.channel.f1;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.IOException;
/* loaded from: classes5.dex */
public class l extends d implements ng.h {

    /* renamed from: p  reason: collision with root package name */
    private volatile int f43681p;

    /* renamed from: q  reason: collision with root package name */
    private volatile int f43682q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(a aVar) {
        super(aVar, new a1());
        this.f43681p = io.grpc.netty.shaded.io.netty.util.n.f45226e;
    }

    public int W() {
        return this.f43681p;
    }

    public int X() {
        try {
            return ((a) this.f43557a).f43634s.u();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public int Y() {
        return this.f43682q;
    }

    public boolean Z() {
        try {
            return ((a) this.f43557a).f43634s.D();
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public l a0(kg.k kVar) {
        super.K(kVar);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        if (rVar == r.f43741v) {
            return (T) Integer.valueOf(X());
        }
        if (rVar == r.f43742w) {
            return (T) Boolean.valueOf(Z());
        }
        if (rVar == r.f43744y) {
            return (T) Integer.valueOf(W());
        }
        if (rVar == r.H) {
            return (T) Integer.valueOf(Y());
        }
        return (T) super.b(rVar);
    }

    public l b0(boolean z10) {
        super.L(z10);
        return this;
    }

    public l c0(int i9) {
        s.n(i9, "backlog");
        this.f43681p = i9;
        return this;
    }

    public l d0(int i9) {
        super.M(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d
    /* renamed from: e0 */
    public l N(EpollMode epollMode) {
        super.N(epollMode);
        return this;
    }

    @Deprecated
    public l f0(int i9) {
        super.P(i9);
        return this;
    }

    public l g0(r0 r0Var) {
        super.Q(r0Var);
        return this;
    }

    public l h0(int i9) {
        try {
            ((a) this.f43557a).f43634s.Q(i9);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    public l i0(v0 v0Var) {
        super.R(v0Var);
        return this;
    }

    public l j0(boolean z10) {
        try {
            ((a) this.f43557a).f43634s.R(z10);
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == r.f43741v) {
            h0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43742w) {
            j0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43744y) {
            c0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.H) {
            k0(((Integer) t10).intValue());
            return true;
        } else {
            return super.k(rVar, t10);
        }
    }

    public l k0(int i9) {
        s.n(this.f43682q, "pendingFastOpenRequestsThreshold");
        this.f43682q = i9;
        return this;
    }

    @Deprecated
    public l l0(int i9) {
        super.S(i9);
        return this;
    }

    @Deprecated
    public l m0(int i9) {
        super.T(i9);
        return this;
    }

    public l n0(f1 f1Var) {
        super.U(f1Var);
        return this;
    }

    public l o0(int i9) {
        super.V(i9);
        return this;
    }
}
