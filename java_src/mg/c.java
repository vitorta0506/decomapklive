package mg;

import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.channel.w;
import io.grpc.netty.shaded.io.netty.channel.z0;
import java.io.IOException;
import java.net.PortUnreachableException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.List;
import mg.b;
/* loaded from: classes5.dex */
public abstract class c extends mg.b {
    boolean B;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends b.AbstractC0573b {

        /* renamed from: g  reason: collision with root package name */
        private final List<Object> f55090g;

        private b() {
            super();
            this.f55090g = new ArrayList();
        }

        @Override // mg.b.c
        public void read() {
            boolean z10;
            boolean z11;
            io.grpc.netty.shaded.io.netty.channel.f b02 = c.this.b0();
            w J = c.this.J();
            v0.c R = c.this.k0().R();
            R.c(b02);
            Throwable th2 = null;
            do {
                try {
                    int Z0 = c.this.Z0(this.f55090g);
                    if (Z0 == 0) {
                        break;
                    } else if (Z0 < 0) {
                        z10 = true;
                        break;
                    } else {
                        R.e(Z0);
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                }
            } while (c.this.Y0(R));
            z10 = false;
            try {
                int size = this.f55090g.size();
                for (int i9 = 0; i9 < size; i9++) {
                    c.this.f55080v = false;
                    J.p(this.f55090g.get(i9));
                }
                this.f55090g.clear();
                R.d();
                J.k();
                if (th2 != null) {
                    z10 = c.this.V0(th2);
                    J.v(th2);
                }
                if (z10) {
                    c cVar = c.this;
                    cVar.B = true;
                    if (cVar.isOpen()) {
                        L(N());
                    }
                }
                if (z11) {
                    return;
                }
            } finally {
                if (!c.this.f55080v && !b02.l()) {
                    D();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(io.grpc.netty.shaded.io.netty.channel.e eVar, SelectableChannel selectableChannel, int i9) {
        super(eVar, selectableChannel, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean V0(Throwable th2) {
        if (isActive()) {
            if (th2 instanceof PortUnreachableException) {
                return false;
            }
            if (th2 instanceof IOException) {
                return !(this instanceof z0);
            }
            return true;
        }
        return true;
    }

    protected boolean X0() {
        return false;
    }

    protected boolean Y0(v0.c cVar) {
        return cVar.g();
    }

    protected abstract int Z0(List<Object> list) throws Exception;

    protected abstract boolean a1(Object obj, s sVar) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: b1 */
    public b.AbstractC0573b A0() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mg.b, io.grpc.netty.shaded.io.netty.channel.a
    public void g0() throws Exception {
        if (this.B) {
            return;
        }
        super.g0();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void p0(s sVar) throws Exception {
        SelectionKey T0 = T0();
        int interestOps = T0.interestOps();
        int w02 = w0();
        while (w02 > 0) {
            Object g10 = sVar.g();
            if (g10 != null) {
                boolean z10 = false;
                try {
                    int i9 = b0().i() - 1;
                    while (true) {
                        if (i9 < 0) {
                            break;
                        } else if (a1(g10, sVar)) {
                            z10 = true;
                            break;
                        } else {
                            i9--;
                        }
                    }
                } catch (Exception e10) {
                    if (X0()) {
                        w02--;
                        sVar.y(e10);
                    } else {
                        throw e10;
                    }
                }
                if (!z10) {
                    break;
                }
                w02--;
                sVar.x();
            } else {
                break;
            }
        }
        if (sVar.p()) {
            if ((interestOps & 4) != 0) {
                T0.interestOps(interestOps & (-5));
            }
        } else if ((interestOps & 4) == 0) {
            T0.interestOps(interestOps | 4);
        }
    }
}
