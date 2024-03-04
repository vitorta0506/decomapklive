package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.DefaultFileRegion;
import io.grpc.netty.shaded.io.netty.channel.epoll.a;
import io.grpc.netty.shaded.io.netty.channel.p0;
import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.channel.unix.FileDescriptor;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.channel.w;
import io.grpc.netty.shaded.io.netty.channel.y;
import io.grpc.netty.shaded.io.netty.util.internal.b0;
import java.io.IOException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.WritableByteChannel;
import java.util.Queue;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public abstract class c extends io.grpc.netty.shaded.io.netty.channel.epoll.a {
    private static final io.grpc.netty.shaded.io.netty.channel.q I = new io.grpc.netty.shaded.io.netty.channel.q(false, 16);
    private static final String J = " (expected: " + b0.l(kg.j.class) + ", " + b0.l(DefaultFileRegion.class) + ')';
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b K = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(c.class);
    private final Runnable D;
    private volatile Queue<d> E;
    private FileDescriptor F;
    private FileDescriptor G;
    private WritableByteChannel H;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((a.c) c.this.k0()).r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends io.grpc.netty.shaded.io.netty.channel.unix.e {
        b() {
            super(c.this.f43634s);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.unix.e
        protected kg.k a() {
            return c.this.P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.grpc.netty.shaded.io.netty.channel.epoll.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0482c extends a.c {
        /* JADX INFO: Access modifiers changed from: package-private */
        public C0482c() {
            super();
        }

        private void a0(w wVar, kg.j jVar, Throwable th2, boolean z10, j jVar2) {
            if (jVar != null) {
                if (jVar.j1()) {
                    this.f43645f = false;
                    wVar.p(jVar);
                } else {
                    jVar.release();
                }
            }
            jVar2.d();
            wVar.k();
            wVar.v(th2);
            if (z10 || (th2 instanceof OutOfMemoryError) || (th2 instanceof IOException)) {
                Z(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
            if (r4 != null) goto L9;
         */
        /* JADX WARN: Removed duplicated region for block: B:39:0x009e A[Catch: all -> 0x00a2, TRY_LEAVE, TryCatch #0 {all -> 0x00a2, blocks: (B:28:0x007b, B:37:0x0096, B:39:0x009e), top: B:55:0x007b }] */
        @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void F() {
            /*
                r10 = this;
                io.grpc.netty.shaded.io.netty.channel.epoll.c r0 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this
                io.grpc.netty.shaded.io.netty.channel.epoll.d r0 = r0.b0()
                io.grpc.netty.shaded.io.netty.channel.epoll.c r1 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this
                boolean r1 = r1.f1(r0)
                if (r1 == 0) goto L12
                r10.A()
                return
            L12:
                io.grpc.netty.shaded.io.netty.channel.epoll.j r7 = r10.R()
                io.grpc.netty.shaded.io.netty.channel.epoll.c r1 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this
                int r2 = io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43623e
                boolean r1 = r1.Y0(r2)
                r7.m(r1)
                io.grpc.netty.shaded.io.netty.channel.epoll.c r1 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this
                io.grpc.netty.shaded.io.netty.channel.w r3 = r1.J()
                kg.k r1 = r0.a()
                r7.c(r0)
                r10.D()
                r2 = 0
                r4 = r2
            L33:
                r5 = 0
                if (r4 != 0) goto L3e
                io.grpc.netty.shaded.io.netty.channel.epoll.c r4 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this     // Catch: java.lang.Throwable -> Lab
                java.util.Queue r4 = io.grpc.netty.shaded.io.netty.channel.epoll.c.g1(r4)     // Catch: java.lang.Throwable -> Lab
                if (r4 == 0) goto L5a
            L3e:
                java.lang.Object r6 = r4.peek()     // Catch: java.lang.Throwable -> Lab
                io.grpc.netty.shaded.io.netty.channel.epoll.c$d r6 = (io.grpc.netty.shaded.io.netty.channel.epoll.c.d) r6     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L5a
                boolean r6 = r6.a(r7)     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L58
                io.grpc.netty.shaded.io.netty.channel.epoll.c r6 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this     // Catch: java.lang.Throwable -> Lab
                boolean r6 = r6.isActive()     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L8f
                r4.remove()     // Catch: java.lang.Throwable -> Lab
                goto L8f
            L58:
                r9 = 0
                goto L96
            L5a:
                kg.j r6 = r7.a(r1)     // Catch: java.lang.Throwable -> Lab
                io.grpc.netty.shaded.io.netty.channel.epoll.c r8 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this     // Catch: java.lang.Throwable -> La7
                int r8 = r8.T0(r6)     // Catch: java.lang.Throwable -> La7
                r7.h(r8)     // Catch: java.lang.Throwable -> La7
                int r8 = r7.k()     // Catch: java.lang.Throwable -> La7
                r9 = 1
                if (r8 > 0) goto L7e
                r6.release()     // Catch: java.lang.Throwable -> La7
                int r1 = r7.k()     // Catch: java.lang.Throwable -> Lab
                if (r1 >= 0) goto L78
                goto L79
            L78:
                r9 = 0
            L79:
                if (r9 == 0) goto L96
                r10.f43645f = r5     // Catch: java.lang.Throwable -> La2
                goto L96
            L7e:
                r7.e(r9)     // Catch: java.lang.Throwable -> La7
                r10.f43645f = r5     // Catch: java.lang.Throwable -> La7
                r3.p(r6)     // Catch: java.lang.Throwable -> La7
                io.grpc.netty.shaded.io.netty.channel.epoll.c r6 = io.grpc.netty.shaded.io.netty.channel.epoll.c.this     // Catch: java.lang.Throwable -> Lab
                boolean r6 = r6.f1(r0)     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L8f
                goto L58
            L8f:
                boolean r6 = r7.g()     // Catch: java.lang.Throwable -> Lab
                if (r6 != 0) goto L33
                goto L58
            L96:
                r7.d()     // Catch: java.lang.Throwable -> La2
                r3.k()     // Catch: java.lang.Throwable -> La2
                if (r9 == 0) goto Lb3
                r10.Z(r5)     // Catch: java.lang.Throwable -> La2
                goto Lb3
            La2:
                r1 = move-exception
                r5 = r1
                r4 = r2
                r6 = r9
                goto Laf
            La7:
                r1 = move-exception
                r5 = r1
                r4 = r6
                goto Lae
            Lab:
                r1 = move-exception
                r5 = r1
                r4 = r2
            Lae:
                r6 = 0
            Laf:
                r2 = r10
                r2.a0(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> Lb7
            Lb3:
                r10.E(r0)
                return
            Lb7:
                r1 = move-exception
                r10.E(r0)
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.epoll.c.C0482c.F():void");
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a.c
        j X(v0.b bVar) {
            return new k(bVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a
        public Executor v() {
            return super.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public abstract class d {

        /* renamed from: a  reason: collision with root package name */
        final y f43659a;

        abstract boolean a(v0.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class e {

        /* renamed from: a  reason: collision with root package name */
        private final c f43660a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f43661b;

        /* renamed from: c  reason: collision with root package name */
        private int f43662c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ c f43663d;

        public boolean a() throws Exception {
            try {
                int m10 = this.f43662c - Native.m(this.f43660a.F.d(), -1L, this.f43660a.f43634s.d(), -1L, this.f43662c);
                this.f43662c = m10;
                if (m10 == 0) {
                    if (this.f43661b) {
                        this.f43663d.b0().L(true);
                    }
                    return true;
                }
                return false;
            } catch (IOException e10) {
                if (this.f43661b) {
                    this.f43663d.b0().L(true);
                }
                throw e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(io.grpc.netty.shaded.io.netty.channel.e eVar, LinuxSocket linuxSocket, SocketAddress socketAddress) {
        super(eVar, linuxSocket, socketAddress);
        this.D = new a();
        this.f43640y |= Native.f43622d;
    }

    private void i1(long j10, long j11, long j12) {
        if (j10 == j11) {
            long j13 = j10 << 1;
            if (j13 > j12) {
                b0().O(j13);
            }
        } else if (j10 > 4096) {
            long j14 = j10 >>> 1;
            if (j11 < j14) {
                b0().O(j14);
            }
        }
    }

    private void j1() {
        Queue<d> queue = this.E;
        if (queue == null) {
            return;
        }
        ClosedChannelException closedChannelException = null;
        while (true) {
            d poll = queue.poll();
            if (poll == null) {
                return;
            }
            if (closedChannelException == null) {
                closedChannelException = new ClosedChannelException();
            }
            poll.f43659a.z(closedChannelException);
        }
    }

    private int k1(s sVar) throws Exception {
        long J2 = b0().J();
        io.grpc.netty.shaded.io.netty.channel.unix.a e12 = ((h) a0()).e1();
        e12.h(J2);
        sVar.m(e12);
        if (e12.e() >= 1) {
            return o1(sVar, e12);
        }
        sVar.A(0L);
        return 0;
    }

    private static void m1(FileDescriptor fileDescriptor) {
        if (fileDescriptor != null) {
            try {
                fileDescriptor.b();
            } catch (IOException e10) {
                K.warn("Error while closing a pipe", (Throwable) e10);
            }
        }
    }

    private int n1(s sVar, kg.j jVar) throws Exception {
        int P1 = jVar.P1();
        if (P1 == 0) {
            sVar.x();
            return 0;
        } else if (!jVar.b1() && jVar.s1() != 1) {
            ByteBuffer[] t12 = jVar.t1();
            return p1(sVar, t12, t12.length, P1, b0().J());
        } else {
            return U0(sVar, jVar);
        }
    }

    private int o1(s sVar, io.grpc.netty.shaded.io.netty.channel.unix.a aVar) throws IOException {
        long k10 = aVar.k();
        long p10 = this.f43634s.p(aVar.i(0), aVar.e());
        if (p10 > 0) {
            i1(k10, p10, aVar.g());
            sVar.A(p10);
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    private int p1(s sVar, ByteBuffer[] byteBufferArr, int i9, long j10, long j11) throws IOException {
        if (j10 > j11) {
            j10 = j11;
        }
        long o10 = this.f43634s.o(byteBufferArr, 0, i9, j10);
        if (o10 > 0) {
            i1(j10, o10, j11);
            sVar.A(o10);
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    private int q1(s sVar, DefaultFileRegion defaultFileRegion) throws Exception {
        long d10 = defaultFileRegion.d();
        long count = defaultFileRegion.count();
        if (d10 >= count) {
            sVar.x();
            return 0;
        }
        long o02 = this.f43634s.o0(defaultFileRegion, defaultFileRegion.e(), d10, count - d10);
        int i9 = (o02 > 0L ? 1 : (o02 == 0L ? 0 : -1));
        if (i9 <= 0) {
            if (i9 == 0) {
                C0(defaultFileRegion, d10);
                return Integer.MAX_VALUE;
            }
            return Integer.MAX_VALUE;
        }
        sVar.w(o02);
        if (defaultFileRegion.d() >= count) {
            sVar.x();
            return 1;
        }
        return 1;
    }

    private int r1(s sVar, p0 p0Var) throws Exception {
        if (p0Var.d() >= p0Var.count()) {
            sVar.x();
            return 0;
        }
        if (this.H == null) {
            this.H = new b();
        }
        long g10 = p0Var.g(this.H, p0Var.d());
        if (g10 > 0) {
            sVar.w(g10);
            if (p0Var.d() >= p0Var.count()) {
                sVar.x();
                return 1;
            }
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    public io.grpc.netty.shaded.io.netty.channel.q R() {
        return I;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: d1 */
    public a.c A0() {
        return new C0482c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    public void h0() throws Exception {
        try {
            super.h0();
        } finally {
            m1(this.F);
            m1(this.G);
            j1();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    public /* bridge */ /* synthetic */ boolean isActive() {
        return super.isActive();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    public /* bridge */ /* synthetic */ boolean isOpen() {
        return super.isOpen();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int l1(s sVar) throws Exception {
        Object g10 = sVar.g();
        if (g10 instanceof kg.j) {
            return n1(sVar, (kg.j) g10);
        }
        if (g10 instanceof DefaultFileRegion) {
            return q1(sVar, (DefaultFileRegion) g10);
        }
        if (g10 instanceof p0) {
            return r1(sVar, (p0) g10);
        }
        if (g10 instanceof e) {
            if (((e) g10).a()) {
                sVar.x();
                return 1;
            }
            return Integer.MAX_VALUE;
        }
        throw new Error();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected final void o0() throws Exception {
        this.f43634s.X(false, true);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void p0(s sVar) throws Exception {
        int l12;
        int i9 = b0().i();
        do {
            int G = sVar.G();
            if (G > 1 && (sVar.g() instanceof kg.j)) {
                l12 = k1(sVar);
            } else if (G == 0) {
                P0(Native.f43621c);
                return;
            } else {
                l12 = l1(sVar);
            }
            i9 -= l12;
        } while (i9 > 0);
        if (i9 == 0) {
            P0(Native.f43621c);
            a0().execute(this.D);
            return;
        }
        e1(Native.f43621c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.a
    public Object r0(Object obj) {
        if (obj instanceof kg.j) {
            kg.j jVar = (kg.j) obj;
            return io.grpc.netty.shaded.io.netty.channel.unix.h.b(jVar) ? b1(jVar) : jVar;
        } else if ((obj instanceof p0) || (obj instanceof e)) {
            return obj;
        } else {
            throw new UnsupportedOperationException("unsupported message type: " + b0.m(obj) + J);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(LinuxSocket linuxSocket, boolean z10) {
        super((io.grpc.netty.shaded.io.netty.channel.e) null, linuxSocket, z10);
        this.D = new a();
        this.f43640y |= Native.f43622d;
    }
}
