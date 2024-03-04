package ng;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.a1;
import io.grpc.netty.shaded.io.netty.channel.c0;
import io.grpc.netty.shaded.io.netty.channel.f1;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import io.grpc.netty.shaded.io.netty.util.n;
import java.net.ServerSocket;
import java.net.SocketException;
import kg.k;
/* loaded from: classes5.dex */
public class d extends c0 implements h {

    /* renamed from: o  reason: collision with root package name */
    protected final ServerSocket f55365o;

    /* renamed from: p  reason: collision with root package name */
    private volatile int f55366p;

    public d(g gVar, ServerSocket serverSocket) {
        super(gVar, new a1());
        this.f55366p = n.f45226e;
        this.f55365o = (ServerSocket) s.h(serverSocket, "javaSocket");
    }

    public int H() {
        return this.f55366p;
    }

    public int I() {
        try {
            return this.f55365o.getReceiveBufferSize();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean J() {
        try {
            return this.f55365o.getReuseAddress();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: K */
    public h s(k kVar) {
        super.s(kVar);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: L */
    public h u(boolean z10) {
        super.u(z10);
        return this;
    }

    public h M(int i9) {
        s.n(i9, "backlog");
        this.f55366p = i9;
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: N */
    public h v(int i9) {
        super.v(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: O */
    public h w(int i9) {
        super.w(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: P */
    public h y(r0 r0Var) {
        super.y(r0Var);
        return this;
    }

    public h Q(int i9) {
        try {
            this.f55365o.setReceiveBufferSize(i9);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: R */
    public h A(v0 v0Var) {
        super.A(v0Var);
        return this;
    }

    public h S(boolean z10) {
        try {
            this.f55365o.setReuseAddress(z10);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: T */
    public h C(int i9) {
        super.C(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: U */
    public h D(int i9) {
        super.D(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: V */
    public h E(f1 f1Var) {
        super.E(f1Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: W */
    public h F(int i9) {
        super.F(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        if (rVar == r.f43741v) {
            return (T) Integer.valueOf(I());
        }
        if (rVar == r.f43742w) {
            return (T) Boolean.valueOf(J());
        }
        if (rVar == r.f43744y) {
            return (T) Integer.valueOf(H());
        }
        return (T) super.b(rVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == r.f43741v) {
            Q(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43742w) {
            S(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43744y) {
            M(((Integer) t10).intValue());
            return true;
        } else {
            return super.k(rVar, t10);
        }
    }
}
