package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.ConnectTimeoutException;
import io.grpc.netty.shaded.io.netty.channel.a;
import io.grpc.netty.shaded.io.netty.channel.l0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.channel.y;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.AlreadyConnectedException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ConnectionPendingException;
import java.nio.channels.NotYetConnectedException;
import java.nio.channels.UnresolvedAddressException;
import java.util.concurrent.TimeUnit;
import kg.s0;
import ug.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class a extends io.grpc.netty.shaded.io.netty.channel.a {
    private static final io.grpc.netty.shaded.io.netty.channel.q C = new io.grpc.netty.shaded.io.netty.channel.q(false);
    boolean A;
    protected volatile boolean B;

    /* renamed from: s  reason: collision with root package name */
    final LinuxSocket f43634s;

    /* renamed from: t  reason: collision with root package name */
    private y f43635t;

    /* renamed from: u  reason: collision with root package name */
    private ug.q<?> f43636u;

    /* renamed from: v  reason: collision with root package name */
    private SocketAddress f43637v;

    /* renamed from: w  reason: collision with root package name */
    private volatile SocketAddress f43638w;

    /* renamed from: x  reason: collision with root package name */
    private volatile SocketAddress f43639x;

    /* renamed from: y  reason: collision with root package name */
    protected int f43640y;

    /* renamed from: z  reason: collision with root package name */
    boolean f43641z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.grpc.netty.shaded.io.netty.channel.epoll.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0479a implements Runnable {
        RunnableC0479a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.i0();
            } catch (Throwable th2) {
                a.this.J().v(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f43643a;

        b(c cVar) {
            this.f43643a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f43643a.f43645f || a.this.b0().l()) {
                return;
            }
            this.f43643a.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public abstract class c extends a.AbstractC0473a {

        /* renamed from: f  reason: collision with root package name */
        boolean f43645f;

        /* renamed from: g  reason: collision with root package name */
        boolean f43646g;

        /* renamed from: h  reason: collision with root package name */
        private j f43647h;

        /* renamed from: i  reason: collision with root package name */
        private final Runnable f43648i;

        /* renamed from: io.grpc.netty.shaded.io.netty.channel.epoll.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0480a implements Runnable {
            RunnableC0480a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                a.this.A = false;
                cVar.F();
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SocketAddress f43651a;

            b(SocketAddress socketAddress) {
                this.f43651a = socketAddress;
            }

            @Override // java.lang.Runnable
            public void run() {
                y yVar = a.this.f43635t;
                if (yVar == null || yVar.isDone()) {
                    return;
                }
                if (yVar.z(new ConnectTimeoutException("connection timed out: " + this.f43651a))) {
                    c cVar = c.this;
                    cVar.L(cVar.N());
                }
            }
        }

        /* renamed from: io.grpc.netty.shaded.io.netty.channel.epoll.a$c$c  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0481c implements io.grpc.netty.shaded.io.netty.channel.j {
            C0481c() {
            }

            @Override // ug.r
            /* renamed from: a */
            public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
                if (iVar.isCancelled()) {
                    if (a.this.f43636u != null) {
                        a.this.f43636u.cancel(false);
                    }
                    a.this.f43635t = null;
                    c cVar = c.this;
                    cVar.L(cVar.N());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public c() {
            super();
            this.f43648i = new RunnableC0480a();
        }

        private void B() {
            try {
                a.this.P0(Native.f43622d);
            } catch (IOException e10) {
                a.this.J().v(e10);
                L(N());
            }
        }

        private boolean C() throws Exception {
            if (a.this.f43634s.t()) {
                a.this.P0(Native.f43621c);
                if (a.this.f43637v instanceof InetSocketAddress) {
                    a aVar = a.this;
                    aVar.f43639x = io.grpc.netty.shaded.io.netty.channel.unix.h.a((InetSocketAddress) aVar.f43637v, a.this.f43634s.K());
                }
                a.this.f43637v = null;
                return true;
            }
            a.this.e1(Native.f43621c);
            return false;
        }

        private void O(Object obj) {
            a.this.J().s(obj);
            L(N());
        }

        private void P(y yVar, Throwable th2) {
            if (yVar == null) {
                return;
            }
            yVar.z(th2);
            l();
        }

        private void W(y yVar, boolean z10) {
            if (yVar == null) {
                return;
            }
            a.this.B = true;
            boolean isActive = a.this.isActive();
            boolean I = yVar.I();
            if (!z10 && isActive) {
                a.this.J().q();
            }
            if (I) {
                return;
            }
            L(N());
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
            if (r5.f43649j.f43636u == null) goto L11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void b() {
            /*
                r5 = this;
                r0 = 0
                r1 = 0
                io.grpc.netty.shaded.io.netty.channel.epoll.a r2 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this     // Catch: java.lang.Throwable -> L2f
                boolean r2 = r2.isActive()     // Catch: java.lang.Throwable -> L2f
                boolean r3 = r5.C()     // Catch: java.lang.Throwable -> L2f
                if (r3 != 0) goto Lf
                return
            Lf:
                io.grpc.netty.shaded.io.netty.channel.epoll.a r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this     // Catch: java.lang.Throwable -> L2f
                io.grpc.netty.shaded.io.netty.channel.y r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.E0(r3)     // Catch: java.lang.Throwable -> L2f
                r5.W(r3, r2)     // Catch: java.lang.Throwable -> L2f
                io.grpc.netty.shaded.io.netty.channel.epoll.a r2 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this
                ug.q r2 = io.grpc.netty.shaded.io.netty.channel.epoll.a.I0(r2)
                if (r2 == 0) goto L29
            L20:
                io.grpc.netty.shaded.io.netty.channel.epoll.a r2 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this
                ug.q r2 = io.grpc.netty.shaded.io.netty.channel.epoll.a.I0(r2)
                r2.cancel(r0)
            L29:
                io.grpc.netty.shaded.io.netty.channel.epoll.a r0 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this
                io.grpc.netty.shaded.io.netty.channel.epoll.a.F0(r0, r1)
                goto L4c
            L2f:
                r2 = move-exception
                io.grpc.netty.shaded.io.netty.channel.epoll.a r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this     // Catch: java.lang.Throwable -> L4d
                io.grpc.netty.shaded.io.netty.channel.y r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.E0(r3)     // Catch: java.lang.Throwable -> L4d
                io.grpc.netty.shaded.io.netty.channel.epoll.a r4 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this     // Catch: java.lang.Throwable -> L4d
                java.net.SocketAddress r4 = io.grpc.netty.shaded.io.netty.channel.epoll.a.G0(r4)     // Catch: java.lang.Throwable -> L4d
                java.lang.Throwable r2 = r5.i(r2, r4)     // Catch: java.lang.Throwable -> L4d
                r5.P(r3, r2)     // Catch: java.lang.Throwable -> L4d
                io.grpc.netty.shaded.io.netty.channel.epoll.a r2 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this
                ug.q r2 = io.grpc.netty.shaded.io.netty.channel.epoll.a.I0(r2)
                if (r2 == 0) goto L29
                goto L20
            L4c:
                return
            L4d:
                r2 = move-exception
                io.grpc.netty.shaded.io.netty.channel.epoll.a r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this
                ug.q r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.I0(r3)
                if (r3 == 0) goto L5f
                io.grpc.netty.shaded.io.netty.channel.epoll.a r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this
                ug.q r3 = io.grpc.netty.shaded.io.netty.channel.epoll.a.I0(r3)
                r3.cancel(r0)
            L5f:
                io.grpc.netty.shaded.io.netty.channel.epoll.a r0 = io.grpc.netty.shaded.io.netty.channel.epoll.a.this
                io.grpc.netty.shaded.io.netty.channel.epoll.a.F0(r0, r1)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.epoll.a.c.b():void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void A() {
            try {
                this.f43645f = false;
                a.this.P0(Native.f43620b);
            } catch (IOException e10) {
                a.this.J().v(e10);
                a.this.k0().L(a.this.k0().N());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void D() {
            this.f43646g = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void E(io.grpc.netty.shaded.io.netty.channel.f fVar) {
            boolean z10;
            this.f43646g = this.f43647h.o();
            if (!this.f43647h.n() && (!(z10 = this.f43645f) || !this.f43646g)) {
                if (z10 || fVar.l()) {
                    return;
                }
                a.this.N0();
                return;
            }
            J(fVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void F();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void G() {
            if (a.this.f43635t != null) {
                b();
            } else if (a.this.f43634s.C()) {
            } else {
                super.r();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void I() {
            R().p();
            if (a.this.isActive()) {
                F();
            } else {
                Z(true);
            }
            B();
        }

        final void J(io.grpc.netty.shaded.io.netty.channel.f fVar) {
            a aVar = a.this;
            if (aVar.A || !aVar.isActive() || a.this.f1(fVar)) {
                return;
            }
            a aVar2 = a.this;
            aVar2.A = true;
            aVar2.a0().execute(this.f43648i);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public void Q(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
            if (yVar.g() && p(yVar)) {
                try {
                    if (a.this.f43635t == null) {
                        boolean isActive = a.this.isActive();
                        if (a.this.R0(socketAddress, socketAddress2)) {
                            W(yVar, isActive);
                            return;
                        }
                        a.this.f43635t = yVar;
                        a.this.f43637v = socketAddress;
                        int c10 = a.this.b0().c();
                        if (c10 > 0) {
                            a aVar = a.this;
                            aVar.f43636u = aVar.a0().schedule((Runnable) new b(socketAddress), c10, TimeUnit.MILLISECONDS);
                        }
                        yVar.c((r<? extends ug.q<? super Void>>) new C0481c());
                        return;
                    }
                    throw new ConnectionPendingException();
                } catch (Throwable th2) {
                    l();
                    yVar.z(i(th2, socketAddress));
                }
            }
        }

        j X(v0.b bVar) {
            return new j(bVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a, io.grpc.netty.shaded.io.netty.channel.e.a
        /* renamed from: Y */
        public j R() {
            if (this.f43647h == null) {
                this.f43647h = X((v0.b) super.R());
            }
            return this.f43647h;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void Z(boolean z10) {
            if (a.this.f43634s.A()) {
                if (z10) {
                    return;
                }
                a aVar = a.this;
                aVar.f43641z = true;
                aVar.J().s(ng.b.f55363a);
            } else if (a.X0(a.this.b0())) {
                try {
                    a.this.f43634s.X(true, false);
                } catch (IOException unused) {
                    O(ng.a.f55362a);
                    return;
                } catch (NotYetConnectedException unused2) {
                }
                a.this.N0();
                a.this.J().s(ng.a.f55362a);
            } else {
                L(N());
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a
        public final void r() {
            if (a.this.Y0(Native.f43621c)) {
                return;
            }
            super.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.grpc.netty.shaded.io.netty.channel.e eVar, LinuxSocket linuxSocket, boolean z10) {
        super(eVar);
        this.f43640y = Native.f43623e;
        this.f43634s = (LinuxSocket) s.h(linuxSocket, "fd");
        this.B = z10;
        if (z10) {
            this.f43638w = linuxSocket.G();
            this.f43639x = linuxSocket.K();
        }
    }

    protected static void M0(InetSocketAddress inetSocketAddress) {
        if (inetSocketAddress.isUnresolved()) {
            throw new UnresolvedAddressException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean X0(io.grpc.netty.shaded.io.netty.channel.f fVar) {
        if (fVar instanceof f) {
            return ((f) fVar).e();
        }
        return (fVar instanceof ng.j) && ((ng.j) fVar).e();
    }

    private void Z0() throws IOException {
        if (isOpen() && O()) {
            ((h) a0()).m1(this);
        }
    }

    private static kg.j c1(Object obj, kg.j jVar, kg.k kVar, int i9) {
        kg.j h10 = kVar.h(i9);
        h10.z2(jVar, jVar.Q1(), i9);
        io.grpc.netty.shaded.io.netty.util.r.c(obj);
        return h10;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress B0() {
        return this.f43639x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void N0() {
        if (O()) {
            l0 a02 = a0();
            c cVar = (c) k0();
            if (a02.Y()) {
                cVar.A();
                return;
            } else {
                a02.execute(new b(cVar));
                return;
            }
        }
        this.f43640y &= ~Native.f43620b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P0(int i9) throws IOException {
        if (Y0(i9)) {
            this.f43640y = (~i9) & this.f43640y;
            Z0();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: Q0 */
    public abstract d b0();

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public io.grpc.netty.shaded.io.netty.channel.q R() {
        return C;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean R0(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        if (socketAddress2 instanceof InetSocketAddress) {
            M0((InetSocketAddress) socketAddress2);
        }
        InetSocketAddress inetSocketAddress = socketAddress instanceof InetSocketAddress ? (InetSocketAddress) socketAddress : null;
        if (inetSocketAddress != null) {
            M0(inetSocketAddress);
        }
        if (this.f43639x == null) {
            if (socketAddress2 != null) {
                this.f43634s.r(socketAddress2);
            }
            boolean S0 = S0(socketAddress);
            if (S0) {
                if (inetSocketAddress != null) {
                    socketAddress = io.grpc.netty.shaded.io.netty.channel.unix.h.a(inetSocketAddress, this.f43634s.K());
                }
                this.f43639x = socketAddress;
            }
            this.f43638w = this.f43634s.G();
            return S0;
        }
        throw new AlreadyConnectedException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean S0(SocketAddress socketAddress) throws Exception {
        try {
            boolean s10 = this.f43634s.s(socketAddress);
            if (!s10) {
                e1(Native.f43621c);
            }
            return s10;
        } catch (Throwable th2) {
            h0();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int T0(kg.j jVar) throws Exception {
        int k10;
        int K2 = jVar.K2();
        k0().R().b(jVar.t2());
        if (jVar.b1()) {
            k10 = this.f43634s.l(jVar.p1(), K2, jVar.F());
        } else {
            ByteBuffer e12 = jVar.e1(K2, jVar.t2());
            k10 = this.f43634s.k(e12, e12.position(), e12.limit());
        }
        if (k10 > 0) {
            jVar.L2(K2 + k10);
        }
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int U0(io.grpc.netty.shaded.io.netty.channel.s sVar, kg.j jVar) throws Exception {
        if (jVar.b1()) {
            int n9 = this.f43634s.n(jVar.p1(), jVar.Q1(), jVar.K2());
            if (n9 > 0) {
                sVar.A(n9);
                return 1;
            }
            return Integer.MAX_VALUE;
        }
        ByteBuffer e12 = jVar.s1() == 1 ? jVar.e1(jVar.Q1(), jVar.P1()) : jVar.q1();
        int m10 = this.f43634s.m(e12, e12.position(), e12.limit());
        if (m10 > 0) {
            e12.position(e12.position() + m10);
            sVar.A(m10);
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long V0(kg.j jVar, InetSocketAddress inetSocketAddress, boolean z10) throws IOException {
        if (jVar.b1()) {
            long p12 = jVar.p1();
            if (inetSocketAddress == null) {
                return this.f43634s.n(p12, jVar.Q1(), jVar.K2());
            }
            return this.f43634s.N(p12, jVar.Q1(), jVar.K2(), inetSocketAddress.getAddress(), inetSocketAddress.getPort(), z10);
        } else if (jVar.s1() > 1) {
            io.grpc.netty.shaded.io.netty.channel.unix.a e12 = ((h) a0()).e1();
            e12.c(jVar, jVar.Q1(), jVar.P1());
            int e10 = e12.e();
            if (inetSocketAddress == null) {
                return this.f43634s.p(e12.i(0), e10);
            }
            return this.f43634s.O(e12.i(0), e10, inetSocketAddress.getAddress(), inetSocketAddress.getPort(), z10);
        } else {
            ByteBuffer e13 = jVar.e1(jVar.Q1(), jVar.P1());
            if (inetSocketAddress == null) {
                return this.f43634s.m(e13, e13.position(), e13.limit());
            }
            return this.f43634s.M(e13, e13.position(), e13.limit(), inetSocketAddress.getAddress(), inetSocketAddress.getPort(), z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean Y0(int i9) {
        return (i9 & this.f43640y) != 0;
    }

    protected final kg.j a1(Object obj, kg.j jVar) {
        int P1 = jVar.P1();
        if (P1 == 0) {
            io.grpc.netty.shaded.io.netty.util.r.a(obj);
            return s0.f53902d;
        }
        kg.k P = P();
        if (P.e()) {
            return c1(obj, jVar, P, P1);
        }
        kg.j N = kg.n.N();
        if (N == null) {
            return c1(obj, jVar, P, P1);
        }
        N.z2(jVar, jVar.Q1(), P1);
        io.grpc.netty.shaded.io.netty.util.r.c(obj);
        return N;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final kg.j b1(kg.j jVar) {
        return a1(jVar, jVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: d1 */
    public abstract c A0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e1(int i9) throws IOException {
        if (Y0(i9)) {
            return;
        }
        this.f43640y = i9 | this.f43640y;
        Z0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f1(io.grpc.netty.shaded.io.netty.channel.f fVar) {
        return this.f43634s.A() && (this.f43641z || !X0(fVar));
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected final void g0() throws Exception {
        c cVar = (c) k0();
        cVar.f43645f = true;
        e1(Native.f43620b);
        if (cVar.f43646g) {
            cVar.J(b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    public void h0() throws Exception {
        this.B = false;
        this.f43641z = true;
        try {
            y yVar = this.f43635t;
            if (yVar != null) {
                yVar.z(new ClosedChannelException());
                this.f43635t = null;
            }
            ug.q<?> qVar = this.f43636u;
            if (qVar != null) {
                qVar.cancel(false);
                this.f43636u = null;
            }
            if (O()) {
                l0 a02 = a0();
                if (a02.Y()) {
                    i0();
                } else {
                    a02.execute(new RunnableC0479a());
                }
            }
        } finally {
            this.f43634s.b();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void i0() throws Exception {
        ((h) a0()).q1(this);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean isActive() {
        return this.B;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean isOpen() {
        return this.f43634s.g();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void j0() throws Exception {
        h0();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void l0() throws Exception {
        this.A = false;
        ((h) a0()).d1(this);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected boolean u0(l0 l0Var) {
        return l0Var instanceof h;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress v0() {
        return this.f43638w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.grpc.netty.shaded.io.netty.channel.e eVar, LinuxSocket linuxSocket, SocketAddress socketAddress) {
        super(eVar);
        this.f43640y = Native.f43623e;
        this.f43634s = (LinuxSocket) s.h(linuxSocket, "fd");
        this.B = true;
        this.f43639x = socketAddress;
        this.f43638w = linuxSocket.G();
    }
}
