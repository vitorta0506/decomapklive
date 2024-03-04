package mg;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.ConnectTimeoutException;
import io.grpc.netty.shaded.io.netty.channel.a;
import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.channel.i;
import io.grpc.netty.shaded.io.netty.channel.j;
import io.grpc.netty.shaded.io.netty.channel.l0;
import io.grpc.netty.shaded.io.netty.channel.y;
import java.io.IOException;
import java.net.SocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ConnectionPendingException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.util.concurrent.TimeUnit;
import kg.k;
import kg.n;
import kg.s0;
import ug.q;
import ug.r;
/* loaded from: classes5.dex */
public abstract class b extends io.grpc.netty.shaded.io.netty.channel.a {
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b A = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(b.class);

    /* renamed from: s  reason: collision with root package name */
    private final SelectableChannel f55077s;

    /* renamed from: t  reason: collision with root package name */
    protected final int f55078t;

    /* renamed from: u  reason: collision with root package name */
    volatile SelectionKey f55079u;

    /* renamed from: v  reason: collision with root package name */
    boolean f55080v;

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f55081w;

    /* renamed from: x  reason: collision with root package name */
    private y f55082x;

    /* renamed from: y  reason: collision with root package name */
    private q<?> f55083y;

    /* renamed from: z  reason: collision with root package name */
    private SocketAddress f55084z;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.M0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: mg.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public abstract class AbstractC0573b extends a.AbstractC0473a implements c {

        /* renamed from: mg.b$b$a */
        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SocketAddress f55087a;

            a(SocketAddress socketAddress) {
                this.f55087a = socketAddress;
            }

            @Override // java.lang.Runnable
            public void run() {
                y yVar = b.this.f55082x;
                if (yVar == null || yVar.isDone()) {
                    return;
                }
                if (yVar.z(new ConnectTimeoutException("connection timed out: " + this.f55087a))) {
                    AbstractC0573b abstractC0573b = AbstractC0573b.this;
                    abstractC0573b.L(abstractC0573b.N());
                }
            }
        }

        /* renamed from: mg.b$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0574b implements j {
            C0574b() {
            }

            @Override // ug.r
            /* renamed from: a */
            public void e(i iVar) throws Exception {
                if (iVar.isCancelled()) {
                    if (b.this.f55083y != null) {
                        b.this.f55083y.cancel(false);
                    }
                    b.this.f55082x = null;
                    AbstractC0573b abstractC0573b = AbstractC0573b.this;
                    abstractC0573b.L(abstractC0573b.N());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractC0573b() {
            super();
        }

        private void A(y yVar, Throwable th2) {
            if (yVar == null) {
                return;
            }
            yVar.z(th2);
            l();
        }

        private void B(y yVar, boolean z10) {
            if (yVar == null) {
                return;
            }
            boolean isActive = b.this.isActive();
            boolean I = yVar.I();
            if (!z10 && isActive) {
                b.this.J().q();
            }
            if (I) {
                return;
            }
            L(N());
        }

        private boolean C() {
            SelectionKey T0 = b.this.T0();
            return T0.isValid() && (T0.interestOps() & 4) != 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void D() {
            SelectionKey T0 = b.this.T0();
            if (T0.isValid()) {
                int interestOps = T0.interestOps();
                int i9 = b.this.f55078t;
                if ((interestOps & i9) != 0) {
                    T0.interestOps(interestOps & (~i9));
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final void Q(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
            if (yVar.g() && p(yVar)) {
                try {
                    if (b.this.f55082x == null) {
                        boolean isActive = b.this.isActive();
                        if (b.this.N0(socketAddress, socketAddress2)) {
                            B(yVar, isActive);
                            return;
                        }
                        b.this.f55082x = yVar;
                        b.this.f55084z = socketAddress;
                        int c10 = b.this.b0().c();
                        if (c10 > 0) {
                            b bVar = b.this;
                            bVar.f55083y = bVar.a0().schedule((Runnable) new a(socketAddress), c10, TimeUnit.MILLISECONDS);
                        }
                        yVar.c((r<? extends q<? super Void>>) new C0574b());
                        return;
                    }
                    throw new ConnectionPendingException();
                } catch (Throwable th2) {
                    yVar.z(i(th2, socketAddress));
                    l();
                }
            }
        }

        @Override // mg.b.c
        public final void a() {
            super.r();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
            if (r5.f55086f.f55083y == null) goto L7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
            return;
         */
        @Override // mg.b.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void b() {
            /*
                r5 = this;
                r0 = 0
                r1 = 0
                mg.b r2 = mg.b.this     // Catch: java.lang.Throwable -> L2d
                boolean r2 = r2.isActive()     // Catch: java.lang.Throwable -> L2d
                mg.b r3 = mg.b.this     // Catch: java.lang.Throwable -> L2d
                r3.P0()     // Catch: java.lang.Throwable -> L2d
                mg.b r3 = mg.b.this     // Catch: java.lang.Throwable -> L2d
                io.grpc.netty.shaded.io.netty.channel.y r3 = mg.b.E0(r3)     // Catch: java.lang.Throwable -> L2d
                r5.B(r3, r2)     // Catch: java.lang.Throwable -> L2d
                mg.b r2 = mg.b.this
                ug.q r2 = mg.b.I0(r2)
                if (r2 == 0) goto L27
            L1e:
                mg.b r2 = mg.b.this
                ug.q r2 = mg.b.I0(r2)
                r2.cancel(r0)
            L27:
                mg.b r0 = mg.b.this
                mg.b.F0(r0, r1)
                goto L4a
            L2d:
                r2 = move-exception
                mg.b r3 = mg.b.this     // Catch: java.lang.Throwable -> L4b
                io.grpc.netty.shaded.io.netty.channel.y r3 = mg.b.E0(r3)     // Catch: java.lang.Throwable -> L4b
                mg.b r4 = mg.b.this     // Catch: java.lang.Throwable -> L4b
                java.net.SocketAddress r4 = mg.b.G0(r4)     // Catch: java.lang.Throwable -> L4b
                java.lang.Throwable r2 = r5.i(r2, r4)     // Catch: java.lang.Throwable -> L4b
                r5.A(r3, r2)     // Catch: java.lang.Throwable -> L4b
                mg.b r2 = mg.b.this
                ug.q r2 = mg.b.I0(r2)
                if (r2 == 0) goto L27
                goto L1e
            L4a:
                return
            L4b:
                r2 = move-exception
                mg.b r3 = mg.b.this
                ug.q r3 = mg.b.I0(r3)
                if (r3 == 0) goto L5d
                mg.b r3 = mg.b.this
                ug.q r3 = mg.b.I0(r3)
                r3.cancel(r0)
            L5d:
                mg.b r0 = mg.b.this
                mg.b.F0(r0, r1)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: mg.b.AbstractC0573b.b():void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a
        public final void r() {
            if (C()) {
                return;
            }
            super.r();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends e.a {
        void a();

        void b();

        void read();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(io.grpc.netty.shaded.io.netty.channel.e eVar, SelectableChannel selectableChannel, int i9) {
        super(eVar);
        this.f55081w = new a();
        this.f55077s = selectableChannel;
        this.f55078t = i9;
        try {
            selectableChannel.configureBlocking(false);
        } catch (IOException e10) {
            try {
                selectableChannel.close();
            } catch (IOException e11) {
                A.warn("Failed to close a partially initialized socket.", (Throwable) e11);
            }
            throw new ChannelException("Failed to enter non-blocking mode.", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M0() {
        this.f55080v = false;
        ((AbstractC0573b) k0()).D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void L0() {
        if (O()) {
            d a02 = a0();
            if (a02.Y()) {
                M0();
                return;
            } else {
                a02.execute(this.f55081w);
                return;
            }
        }
        this.f55080v = false;
    }

    protected abstract boolean N0(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception;

    protected abstract void P0() throws Exception;

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: Q0 */
    public d a0() {
        return (d) super.a0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SelectableChannel R0() {
        return this.f55077s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final kg.j S0(kg.j jVar) {
        int P1 = jVar.P1();
        if (P1 == 0) {
            io.grpc.netty.shaded.io.netty.util.r.c(jVar);
            return s0.f53902d;
        }
        k P = P();
        if (P.e()) {
            kg.j h10 = P.h(P1);
            h10.z2(jVar, jVar.Q1(), P1);
            io.grpc.netty.shaded.io.netty.util.r.c(jVar);
            return h10;
        }
        kg.j N = n.N();
        if (N != null) {
            N.z2(jVar, jVar.Q1(), P1);
            io.grpc.netty.shaded.io.netty.util.r.c(jVar);
            return N;
        }
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SelectionKey T0() {
        return this.f55079u;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: U0 */
    public c k0() {
        return (c) super.k0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    public void g0() throws Exception {
        SelectionKey selectionKey = this.f55079u;
        if (selectionKey.isValid()) {
            this.f55080v = true;
            int interestOps = selectionKey.interestOps();
            int i9 = this.f55078t;
            if ((interestOps & i9) == 0) {
                selectionKey.interestOps(interestOps | i9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    public void h0() throws Exception {
        y yVar = this.f55082x;
        if (yVar != null) {
            yVar.z(new ClosedChannelException());
            this.f55082x = null;
        }
        q<?> qVar = this.f55083y;
        if (qVar != null) {
            qVar.cancel(false);
            this.f55083y = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    public void i0() throws Exception {
        a0().d1(T0());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean isOpen() {
        return this.f55077s.isOpen();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void l0() throws Exception {
        boolean z10 = false;
        while (true) {
            try {
                this.f55079u = R0().register(a0().v1(), 0, this);
                return;
            } catch (CancelledKeyException e10) {
                if (!z10) {
                    a0().t1();
                    z10 = true;
                } else {
                    throw e10;
                }
            }
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected boolean u0(l0 l0Var) {
        return l0Var instanceof d;
    }
}
