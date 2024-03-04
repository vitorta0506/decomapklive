package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.k;
import io.grpc.internal.k1;
import io.grpc.internal.s;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class y0 implements io.grpc.f0<Object>, o2 {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.g0 f43120a;

    /* renamed from: b  reason: collision with root package name */
    private final String f43121b;

    /* renamed from: c  reason: collision with root package name */
    private final String f43122c;

    /* renamed from: d  reason: collision with root package name */
    private final k.a f43123d;

    /* renamed from: e  reason: collision with root package name */
    private final j f43124e;

    /* renamed from: f  reason: collision with root package name */
    private final s f43125f;

    /* renamed from: g  reason: collision with root package name */
    private final ScheduledExecutorService f43126g;

    /* renamed from: h  reason: collision with root package name */
    private final io.grpc.c0 f43127h;

    /* renamed from: i  reason: collision with root package name */
    private final io.grpc.internal.m f43128i;

    /* renamed from: j  reason: collision with root package name */
    private final o f43129j;

    /* renamed from: k  reason: collision with root package name */
    private final ChannelLogger f43130k;

    /* renamed from: l  reason: collision with root package name */
    private final io.grpc.d1 f43131l;

    /* renamed from: m  reason: collision with root package name */
    private final k f43132m;

    /* renamed from: n  reason: collision with root package name */
    private volatile List<io.grpc.x> f43133n;

    /* renamed from: o  reason: collision with root package name */
    private io.grpc.internal.k f43134o;

    /* renamed from: p  reason: collision with root package name */
    private final com.google.common.base.u f43135p;

    /* renamed from: q  reason: collision with root package name */
    private d1.c f43136q;

    /* renamed from: r  reason: collision with root package name */
    private d1.c f43137r;

    /* renamed from: s  reason: collision with root package name */
    private k1 f43138s;

    /* renamed from: v  reason: collision with root package name */
    private u f43141v;

    /* renamed from: w  reason: collision with root package name */
    private volatile k1 f43142w;

    /* renamed from: y  reason: collision with root package name */
    private Status f43144y;

    /* renamed from: t  reason: collision with root package name */
    private final Collection<u> f43139t = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    private final w0<u> f43140u = new a();

    /* renamed from: x  reason: collision with root package name */
    private volatile io.grpc.q f43143x = io.grpc.q.a(ConnectivityState.IDLE);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends w0<u> {
        a() {
        }

        @Override // io.grpc.internal.w0
        protected void b() {
            y0.this.f43124e.a(y0.this);
        }

        @Override // io.grpc.internal.w0
        protected void c() {
            y0.this.f43124e.b(y0.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y0.this.f43136q = null;
            y0.this.f43130k.a(ChannelLogger.ChannelLogLevel.INFO, "CONNECTING after backoff");
            y0.this.Q(ConnectivityState.CONNECTING);
            y0.this.W();
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.this.f43143x.c() == ConnectivityState.IDLE) {
                y0.this.f43130k.a(ChannelLogger.ChannelLogLevel.INFO, "CONNECTING as requested");
                y0.this.Q(ConnectivityState.CONNECTING);
                y0.this.W();
            }
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f43148a;

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                k1 k1Var = y0.this.f43138s;
                y0.this.f43137r = null;
                y0.this.f43138s = null;
                k1Var.g(Status.f41719u.r("InternalSubchannel closed transport due to address change"));
            }
        }

        d(List list) {
            this.f43148a = list;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r7 = this;
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.internal.y0$k r0 = io.grpc.internal.y0.J(r0)
                java.net.SocketAddress r0 = r0.a()
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.y0$k r1 = io.grpc.internal.y0.J(r1)
                java.util.List r2 = r7.f43148a
                r1.h(r2)
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                java.util.List r2 = r7.f43148a
                io.grpc.internal.y0.K(r1, r2)
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.q r1 = io.grpc.internal.y0.j(r1)
                io.grpc.ConnectivityState r1 = r1.c()
                io.grpc.ConnectivityState r2 = io.grpc.ConnectivityState.READY
                r3 = 0
                if (r1 == r2) goto L39
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.q r1 = io.grpc.internal.y0.j(r1)
                io.grpc.ConnectivityState r1 = r1.c()
                io.grpc.ConnectivityState r4 = io.grpc.ConnectivityState.CONNECTING
                if (r1 != r4) goto L91
            L39:
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.y0$k r1 = io.grpc.internal.y0.J(r1)
                boolean r0 = r1.g(r0)
                if (r0 != 0) goto L91
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.q r0 = io.grpc.internal.y0.j(r0)
                io.grpc.ConnectivityState r0 = r0.c()
                if (r0 != r2) goto L6d
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.internal.k1 r0 = io.grpc.internal.y0.k(r0)
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.y0.l(r1, r3)
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.y0$k r1 = io.grpc.internal.y0.J(r1)
                r1.f()
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.ConnectivityState r2 = io.grpc.ConnectivityState.IDLE
                io.grpc.internal.y0.F(r1, r2)
                goto L92
            L6d:
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.internal.u r0 = io.grpc.internal.y0.m(r0)
                io.grpc.Status r1 = io.grpc.Status.f41719u
                java.lang.String r2 = "InternalSubchannel closed pending transport due to address change"
                io.grpc.Status r1 = r1.r(r2)
                r0.g(r1)
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.internal.y0.n(r0, r3)
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.internal.y0$k r0 = io.grpc.internal.y0.J(r0)
                r0.f()
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.internal.y0.G(r0)
            L91:
                r0 = r3
            L92:
                if (r0 == 0) goto Le1
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.d1$c r1 = io.grpc.internal.y0.o(r1)
                if (r1 == 0) goto Lc0
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.k1 r1 = io.grpc.internal.y0.q(r1)
                io.grpc.Status r2 = io.grpc.Status.f41719u
                java.lang.String r4 = "InternalSubchannel closed transport early due to address change"
                io.grpc.Status r2 = r2.r(r4)
                r1.g(r2)
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.d1$c r1 = io.grpc.internal.y0.o(r1)
                r1.a()
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.y0.p(r1, r3)
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.y0.r(r1, r3)
            Lc0:
                io.grpc.internal.y0 r1 = io.grpc.internal.y0.this
                io.grpc.internal.y0.r(r1, r0)
                io.grpc.internal.y0 r0 = io.grpc.internal.y0.this
                io.grpc.d1 r1 = io.grpc.internal.y0.t(r0)
                io.grpc.internal.y0$d$a r2 = new io.grpc.internal.y0$d$a
                r2.<init>()
                r3 = 5
                java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.SECONDS
                io.grpc.internal.y0 r6 = io.grpc.internal.y0.this
                java.util.concurrent.ScheduledExecutorService r6 = io.grpc.internal.y0.s(r6)
                io.grpc.d1$c r1 = r1.d(r2, r3, r5, r6)
                io.grpc.internal.y0.p(r0, r1)
            Le1:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.y0.d.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f43151a;

        e(Status status) {
            this.f43151a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConnectivityState c10 = y0.this.f43143x.c();
            ConnectivityState connectivityState = ConnectivityState.SHUTDOWN;
            if (c10 == connectivityState) {
                return;
            }
            y0.this.f43144y = this.f43151a;
            k1 k1Var = y0.this.f43142w;
            u uVar = y0.this.f43141v;
            y0.this.f43142w = null;
            y0.this.f43141v = null;
            y0.this.Q(connectivityState);
            y0.this.f43132m.f();
            if (y0.this.f43139t.isEmpty()) {
                y0.this.S();
            }
            y0.this.L();
            if (y0.this.f43137r != null) {
                y0.this.f43137r.a();
                y0.this.f43138s.g(this.f43151a);
                y0.this.f43137r = null;
                y0.this.f43138s = null;
            }
            if (k1Var != null) {
                k1Var.g(this.f43151a);
            }
            if (uVar != null) {
                uVar.g(this.f43151a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y0.this.f43130k.a(ChannelLogger.ChannelLogLevel.INFO, "Terminated");
            y0.this.f43124e.d(y0.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u f43154a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f43155b;

        g(u uVar, boolean z10) {
            this.f43154a = uVar;
            this.f43155b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            y0.this.f43140u.e(this.f43154a, this.f43155b);
        }
    }

    /* loaded from: classes5.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f43157a;

        h(Status status) {
            this.f43157a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (k1 k1Var : new ArrayList(y0.this.f43139t)) {
                k1Var.b(this.f43157a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class i extends l0 {

        /* renamed from: a  reason: collision with root package name */
        private final u f43159a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.internal.m f43160b;

        /* loaded from: classes5.dex */
        class a extends i0 {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ q f43161a;

            /* renamed from: io.grpc.internal.y0$i$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class C0472a extends j0 {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ ClientStreamListener f43163a;

                C0472a(ClientStreamListener clientStreamListener) {
                    this.f43163a = clientStreamListener;
                }

                @Override // io.grpc.internal.j0, io.grpc.internal.ClientStreamListener
                public void d(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
                    i.this.f43160b.a(status.p());
                    super.d(status, rpcProgress, s0Var);
                }

                @Override // io.grpc.internal.j0
                protected ClientStreamListener e() {
                    return this.f43163a;
                }
            }

            a(q qVar) {
                this.f43161a = qVar;
            }

            @Override // io.grpc.internal.i0, io.grpc.internal.q
            public void o(ClientStreamListener clientStreamListener) {
                i.this.f43160b.b();
                super.o(new C0472a(clientStreamListener));
            }

            @Override // io.grpc.internal.i0
            protected q p() {
                return this.f43161a;
            }
        }

        /* synthetic */ i(u uVar, io.grpc.internal.m mVar, a aVar) {
            this(uVar, mVar);
        }

        @Override // io.grpc.internal.l0
        protected u a() {
            return this.f43159a;
        }

        @Override // io.grpc.internal.l0, io.grpc.internal.r
        public q e(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
            return new a(super.e(methodDescriptor, s0Var, cVar, kVarArr));
        }

        private i(u uVar, io.grpc.internal.m mVar) {
            this.f43159a = uVar;
            this.f43160b = mVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class j {
        void a(y0 y0Var) {
        }

        void b(y0 y0Var) {
        }

        abstract void c(y0 y0Var, io.grpc.q qVar);

        abstract void d(y0 y0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        private List<io.grpc.x> f43165a;

        /* renamed from: b  reason: collision with root package name */
        private int f43166b;

        /* renamed from: c  reason: collision with root package name */
        private int f43167c;

        public k(List<io.grpc.x> list) {
            this.f43165a = list;
        }

        public SocketAddress a() {
            return this.f43165a.get(this.f43166b).a().get(this.f43167c);
        }

        public io.grpc.a b() {
            return this.f43165a.get(this.f43166b).b();
        }

        public void c() {
            int i9 = this.f43167c + 1;
            this.f43167c = i9;
            if (i9 >= this.f43165a.get(this.f43166b).a().size()) {
                this.f43166b++;
                this.f43167c = 0;
            }
        }

        public boolean d() {
            return this.f43166b == 0 && this.f43167c == 0;
        }

        public boolean e() {
            return this.f43166b < this.f43165a.size();
        }

        public void f() {
            this.f43166b = 0;
            this.f43167c = 0;
        }

        public boolean g(SocketAddress socketAddress) {
            for (int i9 = 0; i9 < this.f43165a.size(); i9++) {
                int indexOf = this.f43165a.get(i9).a().indexOf(socketAddress);
                if (indexOf != -1) {
                    this.f43166b = i9;
                    this.f43167c = indexOf;
                    return true;
                }
            }
            return false;
        }

        public void h(List<io.grpc.x> list) {
            this.f43165a = list;
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class l implements k1.a {

        /* renamed from: a  reason: collision with root package name */
        final u f43168a;

        /* renamed from: b  reason: collision with root package name */
        final SocketAddress f43169b;

        /* renamed from: c  reason: collision with root package name */
        boolean f43170c = false;

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                y0.this.f43134o = null;
                if (y0.this.f43144y != null) {
                    com.google.common.base.o.A(y0.this.f43142w == null, "Unexpected non-null activeTransport");
                    l lVar = l.this;
                    lVar.f43168a.g(y0.this.f43144y);
                    return;
                }
                u uVar = y0.this.f43141v;
                l lVar2 = l.this;
                u uVar2 = lVar2.f43168a;
                if (uVar == uVar2) {
                    y0.this.f43142w = uVar2;
                    y0.this.f43141v = null;
                    y0.this.Q(ConnectivityState.READY);
                }
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f43173a;

            b(Status status) {
                this.f43173a = status;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (y0.this.f43143x.c() == ConnectivityState.SHUTDOWN) {
                    return;
                }
                k1 k1Var = y0.this.f43142w;
                l lVar = l.this;
                if (k1Var == lVar.f43168a) {
                    y0.this.f43142w = null;
                    y0.this.f43132m.f();
                    y0.this.Q(ConnectivityState.IDLE);
                    return;
                }
                u uVar = y0.this.f43141v;
                l lVar2 = l.this;
                if (uVar == lVar2.f43168a) {
                    com.google.common.base.o.D(y0.this.f43143x.c() == ConnectivityState.CONNECTING, "Expected state is CONNECTING, actual state is %s", y0.this.f43143x.c());
                    y0.this.f43132m.c();
                    if (!y0.this.f43132m.e()) {
                        y0.this.f43141v = null;
                        y0.this.f43132m.f();
                        y0.this.V(this.f43173a);
                        return;
                    }
                    y0.this.W();
                }
            }
        }

        /* loaded from: classes5.dex */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                y0.this.f43139t.remove(l.this.f43168a);
                if (y0.this.f43143x.c() == ConnectivityState.SHUTDOWN && y0.this.f43139t.isEmpty()) {
                    y0.this.S();
                }
            }
        }

        l(u uVar, SocketAddress socketAddress) {
            this.f43168a = uVar;
            this.f43169b = socketAddress;
        }

        @Override // io.grpc.internal.k1.a
        public void a(Status status) {
            y0.this.f43130k.b(ChannelLogger.ChannelLogLevel.INFO, "{0} SHUTDOWN with {1}", this.f43168a.c(), y0.this.U(status));
            this.f43170c = true;
            y0.this.f43131l.execute(new b(status));
        }

        @Override // io.grpc.internal.k1.a
        public void b() {
            y0.this.f43130k.a(ChannelLogger.ChannelLogLevel.INFO, "READY");
            y0.this.f43131l.execute(new a());
        }

        @Override // io.grpc.internal.k1.a
        public void c(boolean z10) {
            y0.this.T(this.f43168a, z10);
        }

        @Override // io.grpc.internal.k1.a
        public void d() {
            com.google.common.base.o.A(this.f43170c, "transportShutdown() must be called before transportTerminated().");
            y0.this.f43130k.b(ChannelLogger.ChannelLogLevel.INFO, "{0} Terminated", this.f43168a.c());
            y0.this.f43127h.i(this.f43168a);
            y0.this.T(this.f43168a, false);
            y0.this.f43131l.execute(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class m extends ChannelLogger {

        /* renamed from: a  reason: collision with root package name */
        io.grpc.g0 f43176a;

        m() {
        }

        @Override // io.grpc.ChannelLogger
        public void a(ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
            n.d(this.f43176a, channelLogLevel, str);
        }

        @Override // io.grpc.ChannelLogger
        public void b(ChannelLogger.ChannelLogLevel channelLogLevel, String str, Object... objArr) {
            n.e(this.f43176a, channelLogLevel, str, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0(List<io.grpc.x> list, String str, String str2, k.a aVar, s sVar, ScheduledExecutorService scheduledExecutorService, com.google.common.base.w<com.google.common.base.u> wVar, io.grpc.d1 d1Var, j jVar, io.grpc.c0 c0Var, io.grpc.internal.m mVar, o oVar, io.grpc.g0 g0Var, ChannelLogger channelLogger) {
        com.google.common.base.o.t(list, "addressGroups");
        com.google.common.base.o.e(!list.isEmpty(), "addressGroups is empty");
        M(list, "addressGroups contains null entry");
        List<io.grpc.x> unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f43133n = unmodifiableList;
        this.f43132m = new k(unmodifiableList);
        this.f43121b = str;
        this.f43122c = str2;
        this.f43123d = aVar;
        this.f43125f = sVar;
        this.f43126g = scheduledExecutorService;
        this.f43135p = wVar.get();
        this.f43131l = d1Var;
        this.f43124e = jVar;
        this.f43127h = c0Var;
        this.f43128i = mVar;
        this.f43129j = (o) com.google.common.base.o.t(oVar, "channelTracer");
        this.f43120a = (io.grpc.g0) com.google.common.base.o.t(g0Var, "logId");
        this.f43130k = (ChannelLogger) com.google.common.base.o.t(channelLogger, "channelLogger");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        this.f43131l.e();
        d1.c cVar = this.f43136q;
        if (cVar != null) {
            cVar.a();
            this.f43136q = null;
            this.f43134o = null;
        }
    }

    private static void M(List<?> list, String str) {
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            com.google.common.base.o.t(it.next(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(ConnectivityState connectivityState) {
        this.f43131l.e();
        R(io.grpc.q.a(connectivityState));
    }

    private void R(io.grpc.q qVar) {
        this.f43131l.e();
        if (this.f43143x.c() != qVar.c()) {
            boolean z10 = this.f43143x.c() != ConnectivityState.SHUTDOWN;
            com.google.common.base.o.A(z10, "Cannot transition out of SHUTDOWN to " + qVar);
            this.f43143x = qVar;
            this.f43124e.c(this, qVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        this.f43131l.execute(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(u uVar, boolean z10) {
        this.f43131l.execute(new g(uVar, z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String U(Status status) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(status.n());
        if (status.o() != null) {
            sb2.append("(");
            sb2.append(status.o());
            sb2.append(")");
        }
        if (status.m() != null) {
            sb2.append("[");
            sb2.append(status.m());
            sb2.append("]");
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(Status status) {
        this.f43131l.e();
        R(io.grpc.q.b(status));
        if (this.f43134o == null) {
            this.f43134o = this.f43123d.get();
        }
        long a10 = this.f43134o.a();
        com.google.common.base.u uVar = this.f43135p;
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        long d10 = a10 - uVar.d(timeUnit);
        this.f43130k.b(ChannelLogger.ChannelLogLevel.INFO, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns", U(status), Long.valueOf(d10));
        com.google.common.base.o.A(this.f43136q == null, "previous reconnectTask is not done");
        this.f43136q = this.f43131l.d(new b(), d10, timeUnit, this.f43126g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        InetSocketAddress inetSocketAddress;
        HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress;
        this.f43131l.e();
        com.google.common.base.o.A(this.f43136q == null, "Should have no reconnectTask scheduled");
        if (this.f43132m.d()) {
            this.f43135p.f().g();
        }
        SocketAddress a10 = this.f43132m.a();
        if (a10 instanceof HttpConnectProxiedSocketAddress) {
            httpConnectProxiedSocketAddress = (HttpConnectProxiedSocketAddress) a10;
            inetSocketAddress = httpConnectProxiedSocketAddress.getTargetAddress();
        } else {
            inetSocketAddress = a10;
            httpConnectProxiedSocketAddress = null;
        }
        io.grpc.a b10 = this.f43132m.b();
        String str = (String) b10.b(io.grpc.x.f45469d);
        s.a aVar = new s.a();
        if (str == null) {
            str = this.f43121b;
        }
        s.a g10 = aVar.e(str).f(b10).h(this.f43122c).g(httpConnectProxiedSocketAddress);
        m mVar = new m();
        mVar.f43176a = c();
        i iVar = new i(this.f43125f.h1(inetSocketAddress, g10, mVar), this.f43128i, null);
        mVar.f43176a = iVar.c();
        this.f43127h.c(iVar);
        this.f43141v = iVar;
        this.f43139t.add(iVar);
        Runnable h10 = iVar.h(new l(iVar, inetSocketAddress));
        if (h10 != null) {
            this.f43131l.b(h10);
        }
        this.f43130k.b(ChannelLogger.ChannelLogLevel.INFO, "Started transport {0}", mVar.f43176a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<io.grpc.x> N() {
        return this.f43133n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String O() {
        return this.f43121b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r P() {
        return this.f43142w;
    }

    public void X(List<io.grpc.x> list) {
        com.google.common.base.o.t(list, "newAddressGroups");
        M(list, "newAddressGroups contains null entry");
        com.google.common.base.o.e(!list.isEmpty(), "newAddressGroups is empty");
        this.f43131l.execute(new d(Collections.unmodifiableList(new ArrayList(list))));
    }

    @Override // io.grpc.internal.o2
    public r a() {
        k1 k1Var = this.f43142w;
        if (k1Var != null) {
            return k1Var;
        }
        this.f43131l.execute(new c());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Status status) {
        g(status);
        this.f43131l.execute(new h(status));
    }

    @Override // io.grpc.l0
    public io.grpc.g0 c() {
        return this.f43120a;
    }

    public void g(Status status) {
        this.f43131l.execute(new e(status));
    }

    public String toString() {
        return com.google.common.base.j.c(this).c("logId", this.f43120a.d()).d("addressGroups", this.f43133n).toString();
    }
}
