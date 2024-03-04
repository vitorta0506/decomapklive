package io.grpc.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.d;
import io.grpc.internal.m1;
import io.grpc.s0;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public abstract class a extends d implements q, m1.d {

    /* renamed from: g  reason: collision with root package name */
    private static final Logger f42368g = Logger.getLogger(a.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final p2 f42369a;

    /* renamed from: b  reason: collision with root package name */
    private final q0 f42370b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f42371c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f42372d;

    /* renamed from: e  reason: collision with root package name */
    private io.grpc.s0 f42373e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f42374f;

    /* renamed from: io.grpc.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private class C0466a implements q0 {

        /* renamed from: a  reason: collision with root package name */
        private io.grpc.s0 f42375a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f42376b;

        /* renamed from: c  reason: collision with root package name */
        private final i2 f42377c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f42378d;

        public C0466a(io.grpc.s0 s0Var, i2 i2Var) {
            this.f42375a = (io.grpc.s0) com.google.common.base.o.t(s0Var, "headers");
            this.f42377c = (i2) com.google.common.base.o.t(i2Var, "statsTraceCtx");
        }

        @Override // io.grpc.internal.q0
        public q0 a(io.grpc.o oVar) {
            return this;
        }

        @Override // io.grpc.internal.q0
        public void b(InputStream inputStream) {
            com.google.common.base.o.A(this.f42378d == null, "writePayload should not be called multiple times");
            try {
                this.f42378d = com.google.common.io.c.e(inputStream);
                this.f42377c.i(0);
                i2 i2Var = this.f42377c;
                byte[] bArr = this.f42378d;
                i2Var.j(0, bArr.length, bArr.length);
                this.f42377c.k(this.f42378d.length);
                this.f42377c.l(this.f42378d.length);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // io.grpc.internal.q0
        public void close() {
            this.f42376b = true;
            com.google.common.base.o.A(this.f42378d != null, "Lack of request message. GET request is only supported for unary requests");
            a.this.u().g(this.f42375a, this.f42378d);
            this.f42378d = null;
            this.f42375a = null;
        }

        @Override // io.grpc.internal.q0
        public void d(int i9) {
        }

        @Override // io.grpc.internal.q0
        public void flush() {
        }

        @Override // io.grpc.internal.q0
        public boolean isClosed() {
            return this.f42376b;
        }
    }

    /* loaded from: classes5.dex */
    protected interface b {
        void e(Status status);

        void f(q2 q2Var, boolean z10, boolean z11, int i9);

        void g(io.grpc.s0 s0Var, byte[] bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static abstract class c extends d.a {

        /* renamed from: i  reason: collision with root package name */
        private final i2 f42380i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f42381j;

        /* renamed from: k  reason: collision with root package name */
        private ClientStreamListener f42382k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f42383l;

        /* renamed from: m  reason: collision with root package name */
        private io.grpc.v f42384m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f42385n;

        /* renamed from: o  reason: collision with root package name */
        private Runnable f42386o;

        /* renamed from: p  reason: collision with root package name */
        private volatile boolean f42387p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f42388q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f42389r;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.internal.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0467a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f42390a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ClientStreamListener.RpcProgress f42391b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f42392c;

            RunnableC0467a(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
                this.f42390a = status;
                this.f42391b = rpcProgress;
                this.f42392c = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.D(this.f42390a, this.f42391b, this.f42392c);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public c(int i9, i2 i2Var, p2 p2Var) {
            super(i9, i2Var, p2Var);
            this.f42384m = io.grpc.v.c();
            this.f42385n = false;
            this.f42380i = (i2) com.google.common.base.o.t(i2Var, "statsTraceCtx");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void D(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
            if (this.f42381j) {
                return;
            }
            this.f42381j = true;
            this.f42380i.m(status);
            o().d(status, rpcProgress, s0Var);
            if (m() != null) {
                m().f(status.p());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void K(io.grpc.v vVar) {
            com.google.common.base.o.A(this.f42382k == null, "Already called start");
            this.f42384m = (io.grpc.v) com.google.common.base.o.t(vVar, "decompressorRegistry");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void L(boolean z10) {
            this.f42383l = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void N() {
            this.f42387p = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void E(v1 v1Var) {
            com.google.common.base.o.t(v1Var, TypedValues.AttributesType.S_FRAME);
            try {
                if (this.f42388q) {
                    a.f42368g.log(Level.INFO, "Received data on closed stream");
                    v1Var.close();
                    return;
                }
                k(v1Var);
            } catch (Throwable th2) {
                if (1 != 0) {
                    v1Var.close();
                }
                throw th2;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void F(io.grpc.s0 r6) {
            /*
                r5 = this;
                boolean r0 = r5.f42388q
                r1 = 1
                r0 = r0 ^ r1
                java.lang.String r2 = "Received headers on closed stream"
                com.google.common.base.o.A(r0, r2)
                io.grpc.internal.i2 r0 = r5.f42380i
                r0.a()
                io.grpc.s0$i<java.lang.String> r0 = io.grpc.internal.GrpcUtil.f42347f
                java.lang.Object r0 = r6.k(r0)
                java.lang.String r0 = (java.lang.String) r0
                boolean r2 = r5.f42383l
                r3 = 0
                if (r2 == 0) goto L4f
                if (r0 == 0) goto L4f
                java.lang.String r2 = "gzip"
                boolean r2 = r0.equalsIgnoreCase(r2)
                if (r2 == 0) goto L2f
                io.grpc.internal.s0 r0 = new io.grpc.internal.s0
                r0.<init>()
                r5.x(r0)
                r0 = 1
                goto L50
            L2f:
                java.lang.String r2 = "identity"
                boolean r2 = r0.equalsIgnoreCase(r2)
                if (r2 != 0) goto L4f
                io.grpc.Status r6 = io.grpc.Status.f41718t
                java.lang.Object[] r1 = new java.lang.Object[r1]
                r1[r3] = r0
                java.lang.String r0 = "Can't find full stream decompressor for %s"
                java.lang.String r0 = java.lang.String.format(r0, r1)
                io.grpc.Status r6 = r6.r(r0)
                io.grpc.StatusRuntimeException r6 = r6.d()
                r5.c(r6)
                return
            L4f:
                r0 = 0
            L50:
                io.grpc.s0$i<java.lang.String> r2 = io.grpc.internal.GrpcUtil.f42345d
                java.lang.Object r2 = r6.k(r2)
                java.lang.String r2 = (java.lang.String) r2
                if (r2 == 0) goto L99
                io.grpc.v r4 = r5.f42384m
                io.grpc.u r4 = r4.e(r2)
                if (r4 != 0) goto L7a
                io.grpc.Status r6 = io.grpc.Status.f41718t
                java.lang.Object[] r0 = new java.lang.Object[r1]
                r0[r3] = r2
                java.lang.String r1 = "Can't find decompressor for %s"
                java.lang.String r0 = java.lang.String.format(r1, r0)
                io.grpc.Status r6 = r6.r(r0)
                io.grpc.StatusRuntimeException r6 = r6.d()
                r5.c(r6)
                return
            L7a:
                io.grpc.l r1 = io.grpc.l.b.f43352a
                if (r4 == r1) goto L99
                if (r0 == 0) goto L96
                io.grpc.Status r6 = io.grpc.Status.f41718t
                java.lang.Object[] r0 = new java.lang.Object[r3]
                java.lang.String r1 = "Full stream and gRPC message encoding cannot both be set"
                java.lang.String r0 = java.lang.String.format(r1, r0)
                io.grpc.Status r6 = r6.r(r0)
                io.grpc.StatusRuntimeException r6 = r6.d()
                r5.c(r6)
                return
            L96:
                r5.w(r4)
            L99:
                io.grpc.internal.ClientStreamListener r0 = r5.o()
                r0.b(r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.a.c.F(io.grpc.s0):void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void H(io.grpc.s0 s0Var, Status status) {
            com.google.common.base.o.t(status, "status");
            com.google.common.base.o.t(s0Var, "trailers");
            if (this.f42388q) {
                a.f42368g.log(Level.INFO, "Received trailers on closed stream:\n {1}\n {2}", new Object[]{status, s0Var});
                return;
            }
            this.f42380i.b(s0Var);
            P(status, false, s0Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final boolean I() {
            return this.f42387p;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.internal.d.a
        /* renamed from: J */
        public final ClientStreamListener o() {
            return this.f42382k;
        }

        public final void M(ClientStreamListener clientStreamListener) {
            com.google.common.base.o.A(this.f42382k == null, "Already called setListener");
            this.f42382k = (ClientStreamListener) com.google.common.base.o.t(clientStreamListener, "listener");
        }

        public final void O(Status status, ClientStreamListener.RpcProgress rpcProgress, boolean z10, io.grpc.s0 s0Var) {
            com.google.common.base.o.t(status, "status");
            com.google.common.base.o.t(s0Var, "trailers");
            if (!this.f42388q || z10) {
                this.f42388q = true;
                this.f42389r = status.p();
                t();
                if (this.f42385n) {
                    this.f42386o = null;
                    D(status, rpcProgress, s0Var);
                    return;
                }
                this.f42386o = new RunnableC0467a(status, rpcProgress, s0Var);
                j(z10);
            }
        }

        public final void P(Status status, boolean z10, io.grpc.s0 s0Var) {
            O(status, ClientStreamListener.RpcProgress.PROCESSED, z10, s0Var);
        }

        @Override // io.grpc.internal.l1.b
        public void d(boolean z10) {
            com.google.common.base.o.A(this.f42388q, "status should have been reported on deframer closed");
            this.f42385n = true;
            if (this.f42389r && z10) {
                P(Status.f41718t.r("Encountered end-of-stream mid-frame"), true, new io.grpc.s0());
            }
            Runnable runnable = this.f42386o;
            if (runnable != null) {
                runnable.run();
                this.f42386o = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(r2 r2Var, i2 i2Var, p2 p2Var, io.grpc.s0 s0Var, io.grpc.c cVar, boolean z10) {
        com.google.common.base.o.t(s0Var, "headers");
        this.f42369a = (p2) com.google.common.base.o.t(p2Var, "transportTracer");
        this.f42371c = GrpcUtil.p(cVar);
        this.f42372d = z10;
        if (!z10) {
            this.f42370b = new m1(this, r2Var, i2Var);
            this.f42373e = s0Var;
            return;
        }
        this.f42370b = new C0466a(s0Var, i2Var);
    }

    @Override // io.grpc.internal.q
    public void c(int i9) {
        t().y(i9);
    }

    @Override // io.grpc.internal.q
    public void d(int i9) {
        this.f42370b.d(i9);
    }

    @Override // io.grpc.internal.q
    public final void e(Status status) {
        com.google.common.base.o.e(!status.p(), "Should not cancel with OK status");
        this.f42374f = true;
        u().e(status);
    }

    @Override // io.grpc.internal.q
    public final void g(io.grpc.v vVar) {
        t().K(vVar);
    }

    @Override // io.grpc.internal.d, io.grpc.internal.j2
    public final boolean isReady() {
        return super.isReady() && !this.f42374f;
    }

    @Override // io.grpc.internal.q
    public final void j(boolean z10) {
        t().L(z10);
    }

    @Override // io.grpc.internal.q
    public final void l(x0 x0Var) {
        x0Var.b("remote_addr", f().b(io.grpc.a0.f41748a));
    }

    @Override // io.grpc.internal.q
    public final void m() {
        if (t().I()) {
            return;
        }
        t().N();
        q();
    }

    @Override // io.grpc.internal.q
    public void n(io.grpc.t tVar) {
        io.grpc.s0 s0Var = this.f42373e;
        s0.i<Long> iVar = GrpcUtil.f42344c;
        s0Var.i(iVar);
        this.f42373e.t(iVar, Long.valueOf(Math.max(0L, tVar.i(TimeUnit.NANOSECONDS))));
    }

    @Override // io.grpc.internal.q
    public final void o(ClientStreamListener clientStreamListener) {
        t().M(clientStreamListener);
        if (this.f42372d) {
            return;
        }
        u().g(this.f42373e, null);
        this.f42373e = null;
    }

    @Override // io.grpc.internal.m1.d
    public final void p(q2 q2Var, boolean z10, boolean z11, int i9) {
        com.google.common.base.o.e(q2Var != null || z10, "null frame before EOS");
        u().f(q2Var, z10, z11, i9);
    }

    @Override // io.grpc.internal.d
    protected final q0 r() {
        return this.f42370b;
    }

    protected abstract b u();

    /* JADX INFO: Access modifiers changed from: protected */
    public p2 w() {
        return this.f42369a;
    }

    public final boolean x() {
        return this.f42371c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.internal.d
    /* renamed from: y */
    public abstract c t();
}
