package og;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.p0;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.channel.y;
import io.grpc.netty.shaded.io.netty.util.internal.a0;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.concurrent.Executor;
import mg.a;
import mg.b;
import ng.e;
import ng.i;
import ng.j;
import ug.s;
/* loaded from: classes5.dex */
public class d extends mg.a implements i {
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b G = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(d.class);
    private static final SelectorProvider H = SelectorProvider.provider();
    private final j F;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y f55644a;

        a(y yVar) {
            this.f55644a = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.y1(this.f55644a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends e {

        /* renamed from: q  reason: collision with root package name */
        private volatile int f55646q;

        /* synthetic */ b(d dVar, d dVar2, Socket socket, og.c cVar) {
            this(dVar2, socket);
        }

        private void g0() {
            int I = I() << 1;
            if (I > 0) {
                j0(I);
            }
        }

        private SocketChannel i0() {
            return ((d) this.f43557a).R0();
        }

        @Override // ng.e, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
        public <T> T b(r<T> rVar) {
            if (t.l0() >= 7 && (rVar instanceof og.a)) {
                return (T) og.a.g(i0(), (og.a) rVar);
            }
            return (T) super.b(rVar);
        }

        int h0() {
            return this.f55646q;
        }

        void j0(int i9) {
            this.f55646q = i9;
        }

        @Override // ng.e, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
        public <T> boolean k(r<T> rVar, T t10) {
            if (t.l0() >= 7 && (rVar instanceof og.a)) {
                return og.a.h(i0(), (og.a) rVar, t10);
            }
            return super.k(rVar, t10);
        }

        @Override // ng.e
        /* renamed from: k0 */
        public b Y(int i9) {
            super.Y(i9);
            g0();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.c0
        protected void n() {
            d.this.L0();
        }

        private b(d dVar, Socket socket) {
            super(dVar, socket);
            this.f55646q = Integer.MAX_VALUE;
            g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c extends a.b {
        private c() {
            super();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a
        protected Executor v() {
            try {
                if (!d.this.R0().isOpen() || d.this.b0().h() <= 0) {
                    return null;
                }
                d.this.i0();
                return s.f58497q;
            } catch (Throwable unused) {
                return null;
            }
        }

        /* synthetic */ c(d dVar, og.c cVar) {
            this();
        }
    }

    public d() {
        this(H);
    }

    private void n1(int i9, int i10, int i11) {
        int i12;
        if (i9 == i10) {
            int i13 = i9 << 1;
            if (i13 > i11) {
                ((b) this.F).j0(i13);
            }
        } else if (i9 <= 4096 || i10 >= (i12 = i9 >>> 1)) {
        } else {
            ((b) this.F).j0(i12);
        }
    }

    private void p1(SocketAddress socketAddress) throws Exception {
        if (t.l0() >= 7) {
            a0.d(R0(), socketAddress);
        } else {
            a0.c(R0().socket(), socketAddress);
        }
    }

    private static SocketChannel t1(SelectorProvider selectorProvider) {
        try {
            return selectorProvider.openSocketChannel();
        } catch (IOException e10) {
            throw new ChannelException("Failed to open a socket.", e10);
        }
    }

    private void x1() throws Exception {
        if (t.l0() >= 7) {
            R0().shutdownInput();
        } else {
            R0().socket().shutdownInput();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y1(y yVar) {
        try {
            x1();
            yVar.m();
        } catch (Throwable th2) {
            yVar.u(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress B0() {
        return R0().socket().getRemoteSocketAddress();
    }

    @Override // mg.b
    protected boolean N0(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        if (socketAddress2 != null) {
            p1(socketAddress2);
        }
        try {
            boolean e10 = a0.e(R0(), socketAddress);
            if (!e10) {
                T0().interestOps(8);
            }
            return e10;
        } catch (Throwable th2) {
            h0();
            throw th2;
        }
    }

    @Override // mg.b
    protected void P0() throws Exception {
        if (!R0().finishConnect()) {
            throw new Error();
        }
    }

    @Override // mg.a
    protected int Z0(kg.j jVar) throws Exception {
        v0.c R = k0().R();
        R.b(jVar.t2());
        return jVar.v2(R0(), R.j());
    }

    @Override // mg.a
    protected int b1(kg.j jVar) throws Exception {
        return jVar.y1(R0(), jVar.P1());
    }

    @Override // mg.a
    protected long c1(p0 p0Var) throws Exception {
        return p0Var.g(R0(), p0Var.d());
    }

    @Override // mg.a
    protected boolean g1() {
        return q1();
    }

    @Override // mg.b, io.grpc.netty.shaded.io.netty.channel.a
    protected void h0() throws Exception {
        super.h0();
        R0().close();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean isActive() {
        SocketChannel R0 = R0();
        return R0.isOpen() && R0.isConnected();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void j0() throws Exception {
        h0();
    }

    @Override // mg.a
    public io.grpc.netty.shaded.io.netty.channel.i j1() {
        return w1(F());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected final void o0() throws Exception {
        if (t.l0() >= 7) {
            R0().shutdownOutput();
        } else {
            R0().socket().shutdownOutput();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: o1 */
    public j b0() {
        return this.F;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void p0(io.grpc.netty.shaded.io.netty.channel.s sVar) throws Exception {
        SocketChannel R0 = R0();
        int i9 = b0().i();
        while (!sVar.p()) {
            int h02 = ((b) this.F).h0();
            ByteBuffer[] v10 = sVar.v(1024, h02);
            int s10 = sVar.s();
            if (s10 != 0) {
                if (s10 != 1) {
                    long t10 = sVar.t();
                    long write = R0.write(v10, 0, s10);
                    if (write <= 0) {
                        e1(true);
                        return;
                    } else {
                        n1((int) t10, (int) write, h02);
                        sVar.A(write);
                    }
                } else {
                    ByteBuffer byteBuffer = v10[0];
                    int remaining = byteBuffer.remaining();
                    int write2 = R0.write(byteBuffer);
                    if (write2 <= 0) {
                        e1(true);
                        return;
                    } else {
                        n1(remaining, write2, h02);
                        sVar.A(write2);
                    }
                }
                i9--;
                continue;
            } else {
                i9 -= a1(sVar);
                continue;
            }
            if (i9 <= 0) {
                e1(i9 < 0);
                return;
            }
        }
        Y0();
    }

    public boolean q1() {
        return R0().socket().isInputShutdown() || !isActive();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mg.b
    /* renamed from: r1 */
    public SocketChannel R0() {
        return (SocketChannel) super.R0();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: s1 */
    public InetSocketAddress K() {
        return (InetSocketAddress) super.K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: u1 */
    public b.AbstractC0573b A0() {
        return new c(this, null);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress v0() {
        return R0().socket().getLocalSocketAddress();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: v1 */
    public InetSocketAddress H() {
        return (InetSocketAddress) super.H();
    }

    public io.grpc.netty.shaded.io.netty.channel.i w1(y yVar) {
        mg.d a02 = a0();
        if (a02.Y()) {
            y1(yVar);
        } else {
            a02.execute(new a(yVar));
        }
        return yVar;
    }

    public d(SelectorProvider selectorProvider) {
        this(t1(selectorProvider));
    }

    public d(SocketChannel socketChannel) {
        this(null, socketChannel);
    }

    public d(io.grpc.netty.shaded.io.netty.channel.e eVar, SocketChannel socketChannel) {
        super(eVar, socketChannel);
        this.F = new b(this, this, socketChannel.socket(), null);
    }
}
