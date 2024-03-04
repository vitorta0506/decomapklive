package ng;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.c0;
import io.grpc.netty.shaded.io.netty.channel.f1;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.net.Socket;
import java.net.SocketException;
import kg.k;
/* loaded from: classes5.dex */
public class e extends c0 implements j {

    /* renamed from: o  reason: collision with root package name */
    protected final Socket f55367o;

    /* renamed from: p  reason: collision with root package name */
    private volatile boolean f55368p;

    public e(i iVar, Socket socket) {
        super(iVar);
        this.f55367o = (Socket) s.h(socket, "javaSocket");
        if (t.n()) {
            try {
                a0(true);
            } catch (Exception unused) {
            }
        }
    }

    public int H() {
        try {
            return this.f55367o.getReceiveBufferSize();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public int I() {
        try {
            return this.f55367o.getSendBufferSize();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public int J() {
        try {
            return this.f55367o.getTrafficClass();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean K() {
        try {
            return this.f55367o.getKeepAlive();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean L() {
        try {
            return this.f55367o.getReuseAddress();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public boolean M() {
        try {
            return this.f55367o.getTcpNoDelay();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: N */
    public j s(k kVar) {
        super.s(kVar);
        return this;
    }

    public j O(boolean z10) {
        this.f55368p = z10;
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: P */
    public j t(boolean z10) {
        super.t(z10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: Q */
    public j u(boolean z10) {
        super.u(z10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: R */
    public j v(int i9) {
        super.v(i9);
        return this;
    }

    public j S(boolean z10) {
        try {
            this.f55367o.setKeepAlive(z10);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    @Deprecated
    /* renamed from: T */
    public j w(int i9) {
        super.w(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: U */
    public j y(r0 r0Var) {
        super.y(r0Var);
        return this;
    }

    public j V(int i9) {
        try {
            this.f55367o.setReceiveBufferSize(i9);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: W */
    public j A(v0 v0Var) {
        super.A(v0Var);
        return this;
    }

    public j X(boolean z10) {
        try {
            this.f55367o.setReuseAddress(z10);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public j Y(int i9) {
        try {
            this.f55367o.setSendBufferSize(i9);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public j Z(int i9) {
        try {
            if (i9 < 0) {
                this.f55367o.setSoLinger(false, 0);
            } else {
                this.f55367o.setSoLinger(true, i9);
            }
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    public j a0(boolean z10) {
        try {
            this.f55367o.setTcpNoDelay(z10);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        if (rVar == r.f43741v) {
            return (T) Integer.valueOf(H());
        }
        if (rVar == r.f43740u) {
            return (T) Integer.valueOf(I());
        }
        if (rVar == r.F) {
            return (T) Boolean.valueOf(M());
        }
        if (rVar == r.f43739t) {
            return (T) Boolean.valueOf(K());
        }
        if (rVar == r.f43742w) {
            return (T) Boolean.valueOf(L());
        }
        if (rVar == r.f43743x) {
            return (T) Integer.valueOf(h());
        }
        if (rVar == r.A) {
            return (T) Integer.valueOf(J());
        }
        if (rVar == r.f43735p) {
            return (T) Boolean.valueOf(e());
        }
        return (T) super.b(rVar);
    }

    public j b0(int i9) {
        try {
            this.f55367o.setTrafficClass(i9);
            return this;
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: c0 */
    public j C(int i9) {
        super.C(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: d0 */
    public j D(int i9) {
        super.D(i9);
        return this;
    }

    @Override // ng.f
    public boolean e() {
        return this.f55368p;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: e0 */
    public j E(f1 f1Var) {
        super.E(f1Var);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    /* renamed from: f0 */
    public j F(int i9) {
        super.F(i9);
        return this;
    }

    @Override // ng.j
    public int h() {
        try {
            return this.f55367o.getSoLinger();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == r.f43741v) {
            V(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43740u) {
            Y(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.F) {
            a0(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43739t) {
            S(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43742w) {
            X(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43743x) {
            Z(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.A) {
            b0(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43735p) {
            O(((Boolean) t10).booleanValue());
            return true;
        } else {
            return super.k(rVar, t10);
        }
    }
}
