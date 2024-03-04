package io.grpc.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.a;
import io.grpc.d0;
import io.grpc.d1;
import io.grpc.g;
import io.grpc.internal.j;
import io.grpc.internal.j1;
import io.grpc.internal.k;
import io.grpc.internal.k1;
import io.grpc.internal.m;
import io.grpc.internal.p;
import io.grpc.internal.y0;
import io.grpc.internal.z1;
import io.grpc.k;
import io.grpc.n0;
import io.grpc.t0;
import java.lang.Thread;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g1 extends io.grpc.q0 implements io.grpc.f0<Object> {

    /* renamed from: o0  reason: collision with root package name */
    static final Logger f42613o0 = Logger.getLogger(g1.class.getName());

    /* renamed from: p0  reason: collision with root package name */
    static final Pattern f42614p0 = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");

    /* renamed from: q0  reason: collision with root package name */
    static final Status f42615q0;

    /* renamed from: r0  reason: collision with root package name */
    static final Status f42616r0;

    /* renamed from: s0  reason: collision with root package name */
    static final Status f42617s0;

    /* renamed from: t0  reason: collision with root package name */
    private static final j1 f42618t0;

    /* renamed from: u0  reason: collision with root package name */
    private static final io.grpc.d0 f42619u0;

    /* renamed from: v0  reason: collision with root package name */
    private static final io.grpc.g<Object, Object> f42620v0;
    private final k.a A;
    private final io.grpc.d B;
    private final String C;
    private io.grpc.t0 D;
    private boolean E;
    private r F;
    private volatile n0.i G;
    private boolean H;
    private final Set<y0> I;
    private Collection<t.g<?, ?>> J;
    private final Object K;
    private final Set<q1> L;
    private final a0 M;
    private final x N;
    private final AtomicBoolean O;
    private boolean P;
    private boolean Q;
    private volatile boolean R;
    private final CountDownLatch S;
    private final m.b T;
    private final io.grpc.internal.m U;
    private final io.grpc.internal.o V;
    private final ChannelLogger W;
    private final io.grpc.c0 X;
    private final t Y;
    private u Z;

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.g0 f42621a;

    /* renamed from: a0  reason: collision with root package name */
    private j1 f42622a0;

    /* renamed from: b  reason: collision with root package name */
    private final String f42623b;

    /* renamed from: b0  reason: collision with root package name */
    private final j1 f42624b0;

    /* renamed from: c  reason: collision with root package name */
    private final String f42625c;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f42626c0;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.v0 f42627d;

    /* renamed from: d0  reason: collision with root package name */
    private final boolean f42628d0;

    /* renamed from: e  reason: collision with root package name */
    private final t0.d f42629e;

    /* renamed from: e0  reason: collision with root package name */
    private final z1.t f42630e0;

    /* renamed from: f  reason: collision with root package name */
    private final t0.b f42631f;

    /* renamed from: f0  reason: collision with root package name */
    private final long f42632f0;

    /* renamed from: g  reason: collision with root package name */
    private final io.grpc.internal.j f42633g;

    /* renamed from: g0  reason: collision with root package name */
    private final long f42634g0;

    /* renamed from: h  reason: collision with root package name */
    private final io.grpc.internal.s f42635h;

    /* renamed from: h0  reason: collision with root package name */
    private final boolean f42636h0;

    /* renamed from: i  reason: collision with root package name */
    private final io.grpc.e f42637i;

    /* renamed from: i0  reason: collision with root package name */
    private final k1.a f42638i0;

    /* renamed from: j  reason: collision with root package name */
    private final io.grpc.internal.s f42639j;

    /* renamed from: j0  reason: collision with root package name */
    final w0<Object> f42640j0;

    /* renamed from: k  reason: collision with root package name */
    private final io.grpc.internal.s f42641k;

    /* renamed from: k0  reason: collision with root package name */
    private d1.c f42642k0;

    /* renamed from: l  reason: collision with root package name */
    private final v f42643l;

    /* renamed from: l0  reason: collision with root package name */
    private io.grpc.internal.k f42644l0;

    /* renamed from: m  reason: collision with root package name */
    private final Executor f42645m;

    /* renamed from: m0  reason: collision with root package name */
    private final p.e f42646m0;

    /* renamed from: n  reason: collision with root package name */
    private final p1<? extends Executor> f42647n;

    /* renamed from: n0  reason: collision with root package name */
    private final y1 f42648n0;

    /* renamed from: o  reason: collision with root package name */
    private final p1<? extends Executor> f42649o;

    /* renamed from: p  reason: collision with root package name */
    private final o f42650p;

    /* renamed from: q  reason: collision with root package name */
    private final o f42651q;

    /* renamed from: r  reason: collision with root package name */
    private final m2 f42652r;

    /* renamed from: s  reason: collision with root package name */
    private final int f42653s;

    /* renamed from: t  reason: collision with root package name */
    final io.grpc.d1 f42654t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f42655u;

    /* renamed from: v  reason: collision with root package name */
    private final io.grpc.v f42656v;

    /* renamed from: w  reason: collision with root package name */
    private final io.grpc.p f42657w;

    /* renamed from: x  reason: collision with root package name */
    private final com.google.common.base.w<com.google.common.base.u> f42658x;

    /* renamed from: y  reason: collision with root package name */
    private final long f42659y;

    /* renamed from: z  reason: collision with root package name */
    private final io.grpc.internal.v f42660z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends io.grpc.d0 {
        a() {
        }

        @Override // io.grpc.d0
        public d0.b a(n0.f fVar) {
            throw new IllegalStateException("Resolution is pending");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g1.this.H0(true);
        }
    }

    /* loaded from: classes5.dex */
    final class c implements m.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m2 f42662a;

        c(m2 m2Var) {
            this.f42662a = m2Var;
        }

        @Override // io.grpc.internal.m.b
        public io.grpc.internal.m a() {
            return new io.grpc.internal.m(this.f42662a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class d extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        private final n0.e f42664a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f42665b;

        d(Throwable th2) {
            this.f42665b = th2;
            this.f42664a = n0.e.e(Status.f41718t.r("Panic! This is a bug!").q(th2));
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return this.f42664a;
        }

        public String toString() {
            return com.google.common.base.j.b(d.class).d("panicPickResult", this.f42664a).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g1.this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Entering SHUTDOWN state");
            g1.this.f42660z.a(ConnectivityState.SHUTDOWN);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g1.this.P) {
                return;
            }
            g1.this.P = true;
            g1.this.P0();
        }
    }

    /* loaded from: classes5.dex */
    class g implements Thread.UncaughtExceptionHandler {
        g() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th2) {
            Logger logger = g1.f42613o0;
            Level level = Level.SEVERE;
            logger.log(level, "[" + g1.this.c() + "] Uncaught exception in the SynchronizationContext. Panic!", th2);
            g1.this.R0(th2);
        }
    }

    /* loaded from: classes5.dex */
    class h implements Executor {
        h() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            g1.this.f42651q.a().execute(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class i extends o0 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f42671b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(io.grpc.t0 t0Var, String str) {
            super(t0Var);
            this.f42671b = str;
        }

        @Override // io.grpc.t0
        public String a() {
            return this.f42671b;
        }
    }

    /* loaded from: classes5.dex */
    class j extends io.grpc.g<Object, Object> {
        j() {
        }

        @Override // io.grpc.g
        public void a(String str, Throwable th2) {
        }

        @Override // io.grpc.g
        public void b() {
        }

        @Override // io.grpc.g
        public void c(int i9) {
        }

        @Override // io.grpc.g
        public void d(Object obj) {
        }

        @Override // io.grpc.g
        public void e(g.a<Object> aVar, io.grpc.s0 s0Var) {
        }
    }

    /* loaded from: classes5.dex */
    private final class k implements p.e {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g1.this.K0();
            }
        }

        /* loaded from: classes5.dex */
        final class b<ReqT> extends z1<ReqT> {
            final /* synthetic */ MethodDescriptor C;
            final /* synthetic */ io.grpc.s0 D;
            final /* synthetic */ io.grpc.c E;
            final /* synthetic */ a2 F;
            final /* synthetic */ t0 G;
            final /* synthetic */ z1.c0 H;
            final /* synthetic */ io.grpc.r I;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(MethodDescriptor methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, a2 a2Var, t0 t0Var, z1.c0 c0Var, io.grpc.r rVar) {
                super(methodDescriptor, s0Var, g1.this.f42630e0, g1.this.f42632f0, g1.this.f42634g0, g1.this.L0(cVar), g1.this.f42639j.o0(), a2Var, t0Var, c0Var);
                this.C = methodDescriptor;
                this.D = s0Var;
                this.E = cVar;
                this.F = a2Var;
                this.G = t0Var;
                this.H = c0Var;
                this.I = rVar;
            }

            @Override // io.grpc.internal.z1
            io.grpc.internal.q f0(io.grpc.s0 s0Var, k.a aVar, int i9, boolean z10) {
                io.grpc.c r10 = this.E.r(aVar);
                io.grpc.k[] g10 = GrpcUtil.g(r10, s0Var, i9, z10);
                io.grpc.internal.r c10 = k.this.c(new t1(this.C, s0Var, r10));
                io.grpc.r c11 = this.I.c();
                try {
                    return c10.e(this.C, s0Var, r10, g10);
                } finally {
                    this.I.k(c11);
                }
            }

            @Override // io.grpc.internal.z1
            void g0() {
                g1.this.N.d(this);
            }

            @Override // io.grpc.internal.z1
            Status h0() {
                return g1.this.N.a(this);
            }
        }

        private k() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public io.grpc.internal.r c(n0.f fVar) {
            n0.i iVar = g1.this.G;
            if (g1.this.O.get()) {
                return g1.this.M;
            }
            if (iVar == null) {
                g1.this.f42654t.execute(new a());
                return g1.this.M;
            }
            io.grpc.internal.r l10 = GrpcUtil.l(iVar.a(fVar), fVar.a().j());
            return l10 != null ? l10 : g1.this.M;
        }

        @Override // io.grpc.internal.p.e
        public io.grpc.internal.q a(MethodDescriptor<?, ?> methodDescriptor, io.grpc.c cVar, io.grpc.s0 s0Var, io.grpc.r rVar) {
            if (!g1.this.f42636h0) {
                io.grpc.internal.r c10 = c(new t1(methodDescriptor, s0Var, cVar));
                io.grpc.r c11 = rVar.c();
                try {
                    return c10.e(methodDescriptor, s0Var, cVar, GrpcUtil.g(cVar, s0Var, 0, false));
                } finally {
                    rVar.k(c11);
                }
            }
            z1.c0 g10 = g1.this.f42622a0.g();
            j1.b bVar = (j1.b) cVar.h(j1.b.f42812g);
            return new b(methodDescriptor, s0Var, cVar, bVar == null ? null : bVar.f42817e, bVar == null ? null : bVar.f42818f, g10, rVar);
        }

        /* synthetic */ k(g1 g1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class l<ReqT, RespT> extends io.grpc.y<ReqT, RespT> {

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.d0 f42674a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.d f42675b;

        /* renamed from: c  reason: collision with root package name */
        private final Executor f42676c;

        /* renamed from: d  reason: collision with root package name */
        private final MethodDescriptor<ReqT, RespT> f42677d;

        /* renamed from: e  reason: collision with root package name */
        private final io.grpc.r f42678e;

        /* renamed from: f  reason: collision with root package name */
        private io.grpc.c f42679f;

        /* renamed from: g  reason: collision with root package name */
        private io.grpc.g<ReqT, RespT> f42680g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a extends io.grpc.internal.x {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ g.a f42681b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Status f42682c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(g.a aVar, Status status) {
                super(l.this.f42678e);
                this.f42681b = aVar;
                this.f42682c = status;
            }

            @Override // io.grpc.internal.x
            public void b() {
                this.f42681b.a(this.f42682c, new io.grpc.s0());
            }
        }

        l(io.grpc.d0 d0Var, io.grpc.d dVar, Executor executor, MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar) {
            this.f42674a = d0Var;
            this.f42675b = dVar;
            this.f42677d = methodDescriptor;
            executor = cVar.e() != null ? cVar.e() : executor;
            this.f42676c = executor;
            this.f42679f = cVar.n(executor);
            this.f42678e = io.grpc.r.j();
        }

        private void h(g.a<RespT> aVar, Status status) {
            this.f42676c.execute(new a(aVar, status));
        }

        @Override // io.grpc.y, io.grpc.w0, io.grpc.g
        public void a(String str, Throwable th2) {
            io.grpc.g<ReqT, RespT> gVar = this.f42680g;
            if (gVar != null) {
                gVar.a(str, th2);
            }
        }

        @Override // io.grpc.y, io.grpc.g
        public void e(g.a<RespT> aVar, io.grpc.s0 s0Var) {
            d0.b a10 = this.f42674a.a(new t1(this.f42677d, s0Var, this.f42679f));
            Status d10 = a10.d();
            if (!d10.p()) {
                h(aVar, d10);
                this.f42680g = g1.f42620v0;
                return;
            }
            io.grpc.h c10 = a10.c();
            j1.b f10 = ((j1) a10.b()).f(this.f42677d);
            if (f10 != null) {
                this.f42679f = this.f42679f.q(j1.b.f42812g, f10);
            }
            if (c10 != null) {
                this.f42680g = c10.a(this.f42677d, this.f42679f, this.f42675b);
            } else {
                this.f42680g = this.f42675b.i(this.f42677d, this.f42679f);
            }
            this.f42680g.e(aVar, s0Var);
        }

        @Override // io.grpc.y, io.grpc.w0
        protected io.grpc.g<ReqT, RespT> f() {
            return this.f42680g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g1.this.f42642k0 = null;
            g1.this.T0();
        }
    }

    /* loaded from: classes5.dex */
    private final class n implements k1.a {
        private n() {
        }

        @Override // io.grpc.internal.k1.a
        public void a(Status status) {
            com.google.common.base.o.A(g1.this.O.get(), "Channel must have been shut down");
        }

        @Override // io.grpc.internal.k1.a
        public void b() {
        }

        @Override // io.grpc.internal.k1.a
        public void c(boolean z10) {
            g1 g1Var = g1.this;
            g1Var.f42640j0.e(g1Var.M, z10);
        }

        @Override // io.grpc.internal.k1.a
        public void d() {
            com.google.common.base.o.A(g1.this.O.get(), "Channel must have been shut down");
            g1.this.Q = true;
            g1.this.W0(false);
            g1.this.P0();
            g1.this.Q0();
        }

        /* synthetic */ n(g1 g1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class o {

        /* renamed from: a  reason: collision with root package name */
        private final p1<? extends Executor> f42686a;

        /* renamed from: b  reason: collision with root package name */
        private Executor f42687b;

        o(p1<? extends Executor> p1Var) {
            this.f42686a = (p1) com.google.common.base.o.t(p1Var, "executorPool");
        }

        synchronized Executor a() {
            if (this.f42687b == null) {
                this.f42687b = (Executor) com.google.common.base.o.u(this.f42686a.a(), "%s.getObject()", this.f42687b);
            }
            return this.f42687b;
        }

        synchronized void b() {
            Executor executor = this.f42687b;
            if (executor != null) {
                this.f42687b = this.f42686a.b(executor);
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class p extends w0<Object> {
        private p() {
        }

        @Override // io.grpc.internal.w0
        protected void b() {
            g1.this.K0();
        }

        @Override // io.grpc.internal.w0
        protected void c() {
            if (g1.this.O.get()) {
                return;
            }
            g1.this.U0();
        }

        /* synthetic */ p(g1 g1Var, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private class q implements Runnable {
        private q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g1.this.F == null) {
                return;
            }
            g1.this.J0();
        }

        /* synthetic */ q(g1 g1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class r extends n0.d {

        /* renamed from: a  reason: collision with root package name */
        j.b f42690a;

        /* renamed from: b  reason: collision with root package name */
        boolean f42691b;

        /* renamed from: c  reason: collision with root package name */
        boolean f42692c;

        /* loaded from: classes5.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ q1 f42694a;

            a(q1 q1Var) {
                this.f42694a = q1Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (g1.this.Q) {
                    this.f42694a.m();
                }
                if (g1.this.R) {
                    return;
                }
                g1.this.L.add(this.f42694a);
            }
        }

        /* loaded from: classes5.dex */
        final class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g1.this.S0();
            }
        }

        /* loaded from: classes5.dex */
        final class c extends y0.j {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ q1 f42697a;

            c(q1 q1Var) {
                this.f42697a = q1Var;
            }

            @Override // io.grpc.internal.y0.j
            void c(y0 y0Var, io.grpc.q qVar) {
                g1.this.O0(qVar);
                this.f42697a.r(qVar);
            }

            @Override // io.grpc.internal.y0.j
            void d(y0 y0Var) {
                g1.this.L.remove(this.f42697a);
                g1.this.X.k(y0Var);
                this.f42697a.s();
                g1.this.Q0();
            }
        }

        /* loaded from: classes5.dex */
        final class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ n0.i f42699a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ConnectivityState f42700b;

            d(n0.i iVar, ConnectivityState connectivityState) {
                this.f42699a = iVar;
                this.f42700b = connectivityState;
            }

            @Override // java.lang.Runnable
            public void run() {
                r rVar = r.this;
                if (rVar != g1.this.F) {
                    return;
                }
                g1.this.Y0(this.f42699a);
                if (this.f42700b != ConnectivityState.SHUTDOWN) {
                    g1.this.W.b(ChannelLogger.ChannelLogLevel.INFO, "Entering {0} state with picker: {1}", this.f42700b, this.f42699a);
                    g1.this.f42660z.a(this.f42700b);
                }
            }
        }

        private r() {
        }

        @Override // io.grpc.n0.d
        public io.grpc.q0 a(List<io.grpc.x> list, String str) {
            com.google.common.base.o.A(!g1.this.R, "Channel is terminated");
            long a10 = g1.this.f42652r.a();
            io.grpc.g0 b10 = io.grpc.g0.b("OobChannel", null);
            io.grpc.g0 b11 = io.grpc.g0.b("Subchannel-OOB", str);
            int i9 = g1.this.f42653s;
            io.grpc.internal.o oVar = new io.grpc.internal.o(b10, i9, a10, "OobChannel for " + list);
            p1 p1Var = g1.this.f42649o;
            ScheduledExecutorService o02 = g1.this.f42641k.o0();
            g1 g1Var = g1.this;
            q1 q1Var = new q1(str, p1Var, o02, g1Var.f42654t, g1Var.T.a(), oVar, g1.this.X, g1.this.f42652r);
            io.grpc.internal.o oVar2 = g1.this.V;
            InternalChannelz$ChannelTrace$Event.a c10 = new InternalChannelz$ChannelTrace$Event.a().c("Child OobChannel created");
            InternalChannelz$ChannelTrace$Event.Severity severity = InternalChannelz$ChannelTrace$Event.Severity.CT_INFO;
            oVar2.e(c10.d(severity).f(a10).b(q1Var).a());
            int i10 = g1.this.f42653s;
            io.grpc.internal.o oVar3 = new io.grpc.internal.o(b11, i10, a10, "Subchannel for " + list);
            y0 y0Var = new y0(list, str, g1.this.C, g1.this.A, g1.this.f42641k, g1.this.f42641k.o0(), g1.this.f42658x, g1.this.f42654t, new c(q1Var), g1.this.X, g1.this.T.a(), oVar3, b11, new io.grpc.internal.n(oVar3, g1.this.f42652r));
            oVar.e(new InternalChannelz$ChannelTrace$Event.a().c("Child Subchannel created").d(severity).f(a10).e(y0Var).a());
            g1.this.X.e(q1Var);
            g1.this.X.e(y0Var);
            q1Var.t(y0Var);
            g1.this.f42654t.execute(new a(q1Var));
            return q1Var;
        }

        @Override // io.grpc.n0.d
        public String c() {
            return g1.this.a();
        }

        @Override // io.grpc.n0.d
        public ChannelLogger d() {
            return g1.this.W;
        }

        @Override // io.grpc.n0.d
        public t0.b e() {
            return g1.this.f42631f;
        }

        @Override // io.grpc.n0.d
        public io.grpc.v0 f() {
            return g1.this.f42627d;
        }

        @Override // io.grpc.n0.d
        public ScheduledExecutorService g() {
            return g1.this.f42643l;
        }

        @Override // io.grpc.n0.d
        public io.grpc.d1 h() {
            return g1.this.f42654t;
        }

        @Override // io.grpc.n0.d
        public void i() {
            this.f42692c = true;
        }

        @Override // io.grpc.n0.d
        public void j() {
            g1.this.f42654t.e();
            this.f42691b = true;
            g1.this.f42654t.execute(new b());
        }

        @Override // io.grpc.n0.d
        public void k(ConnectivityState connectivityState, n0.i iVar) {
            g1.this.f42654t.e();
            com.google.common.base.o.t(connectivityState, "newState");
            com.google.common.base.o.t(iVar, "newPicker");
            g1.this.f42654t.execute(new d(iVar, connectivityState));
        }

        @Override // io.grpc.n0.d
        public void l(io.grpc.q0 q0Var, List<io.grpc.x> list) {
            com.google.common.base.o.e(q0Var instanceof q1, "channel must have been returned from createOobChannel");
            ((q1) q0Var).u(list);
        }

        @Override // io.grpc.n0.d
        /* renamed from: m */
        public io.grpc.internal.e b(n0.b bVar) {
            g1.this.f42654t.e();
            com.google.common.base.o.A(!g1.this.Q, "Channel is being terminated");
            return new w(bVar, this);
        }

        /* synthetic */ r(g1 g1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class s extends t0.e {

        /* renamed from: a  reason: collision with root package name */
        final r f42702a;

        /* renamed from: b  reason: collision with root package name */
        final io.grpc.t0 f42703b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f42705a;

            a(Status status) {
                this.f42705a = status;
            }

            @Override // java.lang.Runnable
            public void run() {
                s.this.e(this.f42705a);
            }
        }

        /* loaded from: classes5.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ t0.g f42707a;

            b(t0.g gVar) {
                this.f42707a = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                j1 j1Var;
                List<io.grpc.x> a10 = this.f42707a.a();
                ChannelLogger channelLogger = g1.this.W;
                ChannelLogger.ChannelLogLevel channelLogLevel = ChannelLogger.ChannelLogLevel.DEBUG;
                channelLogger.b(channelLogLevel, "Resolved address: {0}, config={1}", a10, this.f42707a.b());
                u uVar = g1.this.Z;
                u uVar2 = u.SUCCESS;
                if (uVar != uVar2) {
                    g1.this.W.b(ChannelLogger.ChannelLogLevel.INFO, "Address resolved: {0}", a10);
                    g1.this.Z = uVar2;
                }
                g1.this.f42644l0 = null;
                t0.c c10 = this.f42707a.c();
                io.grpc.d0 d0Var = (io.grpc.d0) this.f42707a.b().b(io.grpc.d0.f42306a);
                j1 j1Var2 = (c10 == null || c10.c() == null) ? null : (j1) c10.c();
                Status d10 = c10 != null ? c10.d() : null;
                if (!g1.this.f42628d0) {
                    if (j1Var2 != null) {
                        g1.this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Service config from name resolver discarded by channel settings");
                    }
                    j1Var = g1.this.f42624b0 == null ? g1.f42618t0 : g1.this.f42624b0;
                    if (d0Var != null) {
                        g1.this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Config selector from name resolver discarded by channel settings");
                    }
                    g1.this.Y.q(j1Var.c());
                } else {
                    if (j1Var2 != null) {
                        if (d0Var != null) {
                            g1.this.Y.q(d0Var);
                            if (j1Var2.c() != null) {
                                g1.this.W.a(channelLogLevel, "Method configs in service config will be discarded due to presence ofconfig-selector");
                            }
                        } else {
                            g1.this.Y.q(j1Var2.c());
                        }
                    } else if (g1.this.f42624b0 != null) {
                        j1Var2 = g1.this.f42624b0;
                        g1.this.Y.q(j1Var2.c());
                        g1.this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Received no service config, using default service config");
                    } else if (d10 != null) {
                        if (!g1.this.f42626c0) {
                            g1.this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Fallback to error due to invalid first service config without default config");
                            s.this.a(c10.d());
                            return;
                        }
                        j1Var2 = g1.this.f42622a0;
                    } else {
                        j1Var2 = g1.f42618t0;
                        g1.this.Y.q(null);
                    }
                    if (!j1Var2.equals(g1.this.f42622a0)) {
                        ChannelLogger channelLogger2 = g1.this.W;
                        ChannelLogger.ChannelLogLevel channelLogLevel2 = ChannelLogger.ChannelLogLevel.INFO;
                        Object[] objArr = new Object[1];
                        objArr[0] = j1Var2 == g1.f42618t0 ? " to empty" : "";
                        channelLogger2.b(channelLogLevel2, "Service config changed{0}", objArr);
                        g1.this.f42622a0 = j1Var2;
                    }
                    try {
                        g1.this.f42626c0 = true;
                    } catch (RuntimeException e10) {
                        Logger logger = g1.f42613o0;
                        Level level = Level.WARNING;
                        logger.log(level, "[" + g1.this.c() + "] Unexpected exception from parsing service config", (Throwable) e10);
                    }
                    j1Var = j1Var2;
                }
                io.grpc.a b10 = this.f42707a.b();
                s sVar = s.this;
                if (sVar.f42702a == g1.this.F) {
                    a.b c11 = b10.d().c(io.grpc.d0.f42306a);
                    Map<String, ?> d11 = j1Var.d();
                    if (d11 != null) {
                        c11.d(io.grpc.n0.f43417b, d11).a();
                    }
                    Status d12 = s.this.f42702a.f42690a.d(n0.g.d().b(a10).c(c11.a()).d(j1Var.e()).a());
                    if (d12.p()) {
                        return;
                    }
                    s sVar2 = s.this;
                    sVar2.e(d12.f(s.this.f42703b + " was used"));
                }
            }
        }

        s(r rVar, io.grpc.t0 t0Var) {
            this.f42702a = (r) com.google.common.base.o.t(rVar, "helperImpl");
            this.f42703b = (io.grpc.t0) com.google.common.base.o.t(t0Var, "resolver");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(Status status) {
            g1.f42613o0.log(Level.WARNING, "[{0}] Failed to resolve name. status={1}", new Object[]{g1.this.c(), status});
            g1.this.Y.n();
            u uVar = g1.this.Z;
            u uVar2 = u.ERROR;
            if (uVar != uVar2) {
                g1.this.W.b(ChannelLogger.ChannelLogLevel.WARNING, "Failed to resolve name: {0}", status);
                g1.this.Z = uVar2;
            }
            if (this.f42702a != g1.this.F) {
                return;
            }
            this.f42702a.f42690a.b(status);
            f();
        }

        private void f() {
            if (g1.this.f42642k0 == null || !g1.this.f42642k0.b()) {
                if (g1.this.f42644l0 == null) {
                    g1 g1Var = g1.this;
                    g1Var.f42644l0 = g1Var.A.get();
                }
                long a10 = g1.this.f42644l0.a();
                g1.this.W.b(ChannelLogger.ChannelLogLevel.DEBUG, "Scheduling DNS resolution backoff for {0} ns", Long.valueOf(a10));
                g1 g1Var2 = g1.this;
                g1Var2.f42642k0 = g1Var2.f42654t.d(new m(), a10, TimeUnit.NANOSECONDS, g1.this.f42639j.o0());
            }
        }

        @Override // io.grpc.t0.e, io.grpc.t0.f
        public void a(Status status) {
            com.google.common.base.o.e(!status.p(), "the error status must not be OK");
            g1.this.f42654t.execute(new a(status));
        }

        @Override // io.grpc.t0.e
        public void c(t0.g gVar) {
            g1.this.f42654t.execute(new b(gVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class t extends io.grpc.d {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<io.grpc.d0> f42709a;

        /* renamed from: b  reason: collision with root package name */
        private final String f42710b;

        /* renamed from: c  reason: collision with root package name */
        private final io.grpc.d f42711c;

        /* loaded from: classes5.dex */
        class a extends io.grpc.d {
            a() {
            }

            @Override // io.grpc.d
            public String a() {
                return t.this.f42710b;
            }

            @Override // io.grpc.d
            public <RequestT, ResponseT> io.grpc.g<RequestT, ResponseT> i(MethodDescriptor<RequestT, ResponseT> methodDescriptor, io.grpc.c cVar) {
                return new io.grpc.internal.p(methodDescriptor, g1.this.L0(cVar), cVar, g1.this.f42646m0, g1.this.R ? null : g1.this.f42639j.o0(), g1.this.U, null).B(g1.this.f42655u).A(g1.this.f42656v).z(g1.this.f42657w);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public final class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (g1.this.J == null) {
                    if (t.this.f42709a.get() == g1.f42619u0) {
                        t.this.f42709a.set(null);
                    }
                    g1.this.N.b(g1.f42616r0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public final class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (t.this.f42709a.get() == g1.f42619u0) {
                    t.this.f42709a.set(null);
                }
                if (g1.this.J != null) {
                    for (g gVar : g1.this.J) {
                        gVar.a("Channel is forcefully shutdown", null);
                    }
                }
                g1.this.N.c(g1.f42615q0);
            }
        }

        /* loaded from: classes5.dex */
        class d implements Runnable {
            d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g1.this.K0();
            }
        }

        /* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
        /* loaded from: classes5.dex */
        class e<ReqT, RespT> extends io.grpc.g<ReqT, RespT> {
            e() {
            }

            @Override // io.grpc.g
            public void a(String str, Throwable th2) {
            }

            @Override // io.grpc.g
            public void b() {
            }

            @Override // io.grpc.g
            public void c(int i9) {
            }

            @Override // io.grpc.g
            public void d(ReqT reqt) {
            }

            @Override // io.grpc.g
            public void e(g.a<RespT> aVar, io.grpc.s0 s0Var) {
                aVar.a(g1.f42616r0, new io.grpc.s0());
            }
        }

        /* loaded from: classes5.dex */
        class f implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ g f42718a;

            f(g gVar) {
                this.f42718a = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (t.this.f42709a.get() == g1.f42619u0) {
                    if (g1.this.J == null) {
                        g1.this.J = new LinkedHashSet();
                        g1 g1Var = g1.this;
                        g1Var.f42640j0.e(g1Var.K, true);
                    }
                    g1.this.J.add(this.f42718a);
                    return;
                }
                this.f42718a.p();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public final class g<ReqT, RespT> extends z<ReqT, RespT> {

            /* renamed from: l  reason: collision with root package name */
            final io.grpc.r f42720l;

            /* renamed from: m  reason: collision with root package name */
            final MethodDescriptor<ReqT, RespT> f42721m;

            /* renamed from: n  reason: collision with root package name */
            final io.grpc.c f42722n;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes5.dex */
            public class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    io.grpc.r c10 = g.this.f42720l.c();
                    try {
                        g gVar = g.this;
                        io.grpc.g<ReqT, RespT> m10 = t.this.m(gVar.f42721m, gVar.f42722n);
                        g.this.f42720l.k(c10);
                        g.this.n(m10);
                        g gVar2 = g.this;
                        g1.this.f42654t.execute(new b());
                    } catch (Throwable th2) {
                        g.this.f42720l.k(c10);
                        throw th2;
                    }
                }
            }

            /* loaded from: classes5.dex */
            final class b implements Runnable {
                b() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (g1.this.J != null) {
                        g1.this.J.remove(g.this);
                        if (g1.this.J.isEmpty()) {
                            g1 g1Var = g1.this;
                            g1Var.f42640j0.e(g1Var.K, false);
                            g1.this.J = null;
                            if (g1.this.O.get()) {
                                g1.this.N.b(g1.f42616r0);
                            }
                        }
                    }
                }
            }

            g(io.grpc.r rVar, MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar) {
                super(g1.this.L0(cVar), g1.this.f42643l, cVar.d());
                this.f42720l = rVar;
                this.f42721m = methodDescriptor;
                this.f42722n = cVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.grpc.internal.z
            public void i() {
                super.i();
                g1.this.f42654t.execute(new b());
            }

            void p() {
                g1.this.L0(this.f42722n).execute(new a());
            }
        }

        /* synthetic */ t(g1 g1Var, String str, a aVar) {
            this(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <ReqT, RespT> io.grpc.g<ReqT, RespT> m(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar) {
            io.grpc.d0 d0Var = this.f42709a.get();
            if (d0Var == null) {
                return this.f42711c.i(methodDescriptor, cVar);
            }
            if (d0Var instanceof j1.c) {
                j1.b f10 = ((j1.c) d0Var).f42819b.f(methodDescriptor);
                if (f10 != null) {
                    cVar = cVar.q(j1.b.f42812g, f10);
                }
                return this.f42711c.i(methodDescriptor, cVar);
            }
            return new l(d0Var, this.f42711c, g1.this.f42645m, methodDescriptor, cVar);
        }

        @Override // io.grpc.d
        public String a() {
            return this.f42710b;
        }

        @Override // io.grpc.d
        public <ReqT, RespT> io.grpc.g<ReqT, RespT> i(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar) {
            if (this.f42709a.get() != g1.f42619u0) {
                return m(methodDescriptor, cVar);
            }
            g1.this.f42654t.execute(new d());
            if (this.f42709a.get() != g1.f42619u0) {
                return m(methodDescriptor, cVar);
            }
            if (g1.this.O.get()) {
                return new e();
            }
            g gVar = new g(io.grpc.r.j(), methodDescriptor, cVar);
            g1.this.f42654t.execute(new f(gVar));
            return gVar;
        }

        void n() {
            if (this.f42709a.get() == g1.f42619u0) {
                q(null);
            }
        }

        void o() {
            g1.this.f42654t.execute(new b());
        }

        void p() {
            g1.this.f42654t.execute(new c());
        }

        void q(io.grpc.d0 d0Var) {
            io.grpc.d0 d0Var2 = this.f42709a.get();
            this.f42709a.set(d0Var);
            if (d0Var2 != g1.f42619u0 || g1.this.J == null) {
                return;
            }
            for (g gVar : g1.this.J) {
                gVar.p();
            }
        }

        private t(String str) {
            this.f42709a = new AtomicReference<>(g1.f42619u0);
            this.f42711c = new a();
            this.f42710b = (String) com.google.common.base.o.t(str, "authority");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum u {
        NO_RESOLUTION,
        SUCCESS,
        ERROR
    }

    /* loaded from: classes5.dex */
    private static final class v implements ScheduledExecutorService {

        /* renamed from: a  reason: collision with root package name */
        final ScheduledExecutorService f42730a;

        /* synthetic */ v(ScheduledExecutorService scheduledExecutorService, a aVar) {
            this(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f42730a.awaitTermination(j10, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f42730a.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            return this.f42730a.invokeAll(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
            return (T) this.f42730a.invokeAny(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.f42730a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.f42730a.isTerminated();
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
            return this.f42730a.schedule(callable, j10, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            return this.f42730a.scheduleAtFixedRate(runnable, j10, j11, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            return this.f42730a.scheduleWithFixedDelay(runnable, j10, j11, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            throw new UnsupportedOperationException("Restricted: shutdown() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            throw new UnsupportedOperationException("Restricted: shutdownNow() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            return this.f42730a.submit(callable);
        }

        private v(ScheduledExecutorService scheduledExecutorService) {
            this.f42730a = (ScheduledExecutorService) com.google.common.base.o.t(scheduledExecutorService, "delegate");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f42730a.invokeAll(collection, j10, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (T) this.f42730a.invokeAny(collection, j10, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            return this.f42730a.schedule(runnable, j10, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            return this.f42730a.submit(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t10) {
            return this.f42730a.submit(runnable, t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class w extends io.grpc.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final n0.b f42731a;

        /* renamed from: b  reason: collision with root package name */
        final r f42732b;

        /* renamed from: c  reason: collision with root package name */
        final io.grpc.g0 f42733c;

        /* renamed from: d  reason: collision with root package name */
        final io.grpc.internal.n f42734d;

        /* renamed from: e  reason: collision with root package name */
        final io.grpc.internal.o f42735e;

        /* renamed from: f  reason: collision with root package name */
        List<io.grpc.x> f42736f;

        /* renamed from: g  reason: collision with root package name */
        y0 f42737g;

        /* renamed from: h  reason: collision with root package name */
        boolean f42738h;

        /* renamed from: i  reason: collision with root package name */
        boolean f42739i;

        /* renamed from: j  reason: collision with root package name */
        d1.c f42740j;

        /* loaded from: classes5.dex */
        final class a extends y0.j {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ n0.j f42742a;

            a(n0.j jVar) {
                this.f42742a = jVar;
            }

            @Override // io.grpc.internal.y0.j
            void a(y0 y0Var) {
                g1.this.f42640j0.e(y0Var, true);
            }

            @Override // io.grpc.internal.y0.j
            void b(y0 y0Var) {
                g1.this.f42640j0.e(y0Var, false);
            }

            @Override // io.grpc.internal.y0.j
            void c(y0 y0Var, io.grpc.q qVar) {
                com.google.common.base.o.A(this.f42742a != null, "listener is null");
                this.f42742a.a(qVar);
                if (qVar.c() == ConnectivityState.TRANSIENT_FAILURE || qVar.c() == ConnectivityState.IDLE) {
                    r rVar = w.this.f42732b;
                    if (rVar.f42692c || rVar.f42691b) {
                        return;
                    }
                    g1.f42613o0.log(Level.WARNING, "LoadBalancer should call Helper.refreshNameResolution() to refresh name resolution if subchannel state becomes TRANSIENT_FAILURE or IDLE. This will no longer happen automatically in the future releases");
                    g1.this.S0();
                    w.this.f42732b.f42691b = true;
                }
            }

            @Override // io.grpc.internal.y0.j
            void d(y0 y0Var) {
                g1.this.I.remove(y0Var);
                g1.this.X.k(y0Var);
                g1.this.Q0();
            }
        }

        /* loaded from: classes5.dex */
        final class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.f42737g.g(g1.f42617s0);
            }
        }

        w(n0.b bVar, r rVar) {
            this.f42736f = bVar.a();
            if (g1.this.f42625c != null) {
                bVar = bVar.d().e(k(bVar.a())).b();
            }
            this.f42731a = (n0.b) com.google.common.base.o.t(bVar, "args");
            this.f42732b = (r) com.google.common.base.o.t(rVar, "helper");
            io.grpc.g0 b10 = io.grpc.g0.b("Subchannel", g1.this.a());
            this.f42733c = b10;
            int i9 = g1.this.f42653s;
            long a10 = g1.this.f42652r.a();
            io.grpc.internal.o oVar = new io.grpc.internal.o(b10, i9, a10, "Subchannel for " + bVar.a());
            this.f42735e = oVar;
            this.f42734d = new io.grpc.internal.n(oVar, g1.this.f42652r);
        }

        private List<io.grpc.x> k(List<io.grpc.x> list) {
            ArrayList arrayList = new ArrayList();
            for (io.grpc.x xVar : list) {
                arrayList.add(new io.grpc.x(xVar.a(), xVar.b().d().c(io.grpc.x.f45469d).a()));
            }
            return Collections.unmodifiableList(arrayList);
        }

        @Override // io.grpc.n0.h
        public io.grpc.d a() {
            com.google.common.base.o.A(this.f42738h, "not started");
            return new l2(this.f42737g, g1.this.f42650p.a(), g1.this.f42639j.o0(), g1.this.T.a(), new AtomicReference(null));
        }

        @Override // io.grpc.n0.h
        public List<io.grpc.x> c() {
            g1.this.f42654t.e();
            com.google.common.base.o.A(this.f42738h, "not started");
            return this.f42736f;
        }

        @Override // io.grpc.n0.h
        public io.grpc.a d() {
            return this.f42731a.b();
        }

        @Override // io.grpc.n0.h
        public ChannelLogger e() {
            return this.f42734d;
        }

        @Override // io.grpc.n0.h
        public Object f() {
            com.google.common.base.o.A(this.f42738h, "Subchannel is not started");
            return this.f42737g;
        }

        @Override // io.grpc.n0.h
        public void g() {
            g1.this.f42654t.e();
            com.google.common.base.o.A(this.f42738h, "not started");
            this.f42737g.a();
        }

        @Override // io.grpc.n0.h
        public void h() {
            d1.c cVar;
            g1.this.f42654t.e();
            if (this.f42737g == null) {
                this.f42739i = true;
                return;
            }
            if (this.f42739i) {
                if (!g1.this.Q || (cVar = this.f42740j) == null) {
                    return;
                }
                cVar.a();
                this.f42740j = null;
            } else {
                this.f42739i = true;
            }
            if (!g1.this.Q) {
                this.f42740j = g1.this.f42654t.d(new d1(new b()), 5L, TimeUnit.SECONDS, g1.this.f42639j.o0());
            } else {
                this.f42737g.g(g1.f42616r0);
            }
        }

        @Override // io.grpc.n0.h
        public void i(n0.j jVar) {
            g1.this.f42654t.e();
            com.google.common.base.o.A(!this.f42738h, "already started");
            com.google.common.base.o.A(!this.f42739i, "already shutdown");
            com.google.common.base.o.A(!g1.this.Q, "Channel is being terminated");
            this.f42738h = true;
            y0 y0Var = new y0(this.f42731a.a(), g1.this.a(), g1.this.C, g1.this.A, g1.this.f42639j, g1.this.f42639j.o0(), g1.this.f42658x, g1.this.f42654t, new a(jVar), g1.this.X, g1.this.T.a(), this.f42735e, this.f42733c, this.f42734d);
            g1.this.V.e(new InternalChannelz$ChannelTrace$Event.a().c("Child Subchannel started").d(InternalChannelz$ChannelTrace$Event.Severity.CT_INFO).f(g1.this.f42652r.a()).e(y0Var).a());
            this.f42737g = y0Var;
            g1.this.X.e(y0Var);
            g1.this.I.add(y0Var);
        }

        @Override // io.grpc.n0.h
        public void j(List<io.grpc.x> list) {
            g1.this.f42654t.e();
            this.f42736f = list;
            if (g1.this.f42625c != null) {
                list = k(list);
            }
            this.f42737g.X(list);
        }

        public String toString() {
            return this.f42733c.toString();
        }
    }

    static {
        Status status = Status.f41719u;
        f42615q0 = status.r("Channel shutdownNow invoked");
        f42616r0 = status.r("Channel shutdown invoked");
        f42617s0 = status.r("Subchannel shutdown invoked");
        f42618t0 = j1.a();
        f42619u0 = new a();
        f42620v0 = new j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(h1 h1Var, io.grpc.internal.s sVar, k.a aVar, p1<? extends Executor> p1Var, com.google.common.base.w<com.google.common.base.u> wVar, List<io.grpc.h> list, m2 m2Var) {
        a aVar2;
        io.grpc.d1 d1Var = new io.grpc.d1(new g());
        this.f42654t = d1Var;
        this.f42660z = new io.grpc.internal.v();
        this.I = new HashSet(16, 0.75f);
        this.K = new Object();
        this.L = new HashSet(1, 0.75f);
        this.N = new x(this, null);
        this.O = new AtomicBoolean(false);
        this.S = new CountDownLatch(1);
        this.Z = u.NO_RESOLUTION;
        this.f42622a0 = f42618t0;
        this.f42626c0 = false;
        this.f42630e0 = new z1.t();
        n nVar = new n(this, null);
        this.f42638i0 = nVar;
        this.f42640j0 = new p(this, null);
        this.f42646m0 = new k(this, null);
        String str = (String) com.google.common.base.o.t(h1Var.f42761f, TypedValues.AttributesType.S_TARGET);
        this.f42623b = str;
        io.grpc.g0 b10 = io.grpc.g0.b("Channel", str);
        this.f42621a = b10;
        this.f42652r = (m2) com.google.common.base.o.t(m2Var, "timeProvider");
        p1<? extends Executor> p1Var2 = (p1) com.google.common.base.o.t(h1Var.f42756a, "executorPool");
        this.f42647n = p1Var2;
        Executor executor = (Executor) com.google.common.base.o.t(p1Var2.a(), "executor");
        this.f42645m = executor;
        this.f42637i = h1Var.f42762g;
        this.f42635h = sVar;
        io.grpc.internal.l lVar = new io.grpc.internal.l(sVar, h1Var.f42763h, executor);
        this.f42639j = lVar;
        this.f42641k = new io.grpc.internal.l(sVar, null, executor);
        v vVar = new v(lVar.o0(), null);
        this.f42643l = vVar;
        this.f42653s = h1Var.f42778w;
        int i9 = h1Var.f42778w;
        long a10 = m2Var.a();
        io.grpc.internal.o oVar = new io.grpc.internal.o(b10, i9, a10, "Channel for '" + str + "'");
        this.V = oVar;
        io.grpc.internal.n nVar2 = new io.grpc.internal.n(oVar, m2Var);
        this.W = nVar2;
        io.grpc.z0 z0Var = h1Var.f42781z;
        z0Var = z0Var == null ? GrpcUtil.f42357p : z0Var;
        boolean z10 = h1Var.f42776u;
        this.f42636h0 = z10;
        io.grpc.internal.j jVar = new io.grpc.internal.j(h1Var.f42767l);
        this.f42633g = jVar;
        this.f42651q = new o((p1) com.google.common.base.o.t(h1Var.f42757b, "offloadExecutorPool"));
        this.f42627d = h1Var.f42759d;
        b2 b2Var = new b2(z10, h1Var.f42772q, h1Var.f42773r, jVar);
        t0.b a11 = t0.b.g().c(h1Var.v()).e(z0Var).h(d1Var).f(vVar).g(b2Var).b(nVar2).d(new h()).a();
        this.f42631f = a11;
        String str2 = h1Var.f42766k;
        this.f42625c = str2;
        t0.d dVar = h1Var.f42760e;
        this.f42629e = dVar;
        this.D = N0(str, str2, dVar, a11);
        this.f42649o = (p1) com.google.common.base.o.t(p1Var, "balancerRpcExecutorPool");
        this.f42650p = new o(p1Var);
        a0 a0Var = new a0(executor, d1Var);
        this.M = a0Var;
        a0Var.h(nVar);
        this.A = aVar;
        Map<String, ?> map = h1Var.f42779x;
        if (map != null) {
            t0.c a12 = b2Var.a(map);
            com.google.common.base.o.D(a12.d() == null, "Default config is invalid: %s", a12.d());
            j1 j1Var = (j1) a12.c();
            this.f42624b0 = j1Var;
            this.f42622a0 = j1Var;
            aVar2 = null;
        } else {
            aVar2 = null;
            this.f42624b0 = null;
        }
        boolean z11 = h1Var.f42780y;
        this.f42628d0 = z11;
        t tVar = new t(this, this.D.a(), aVar2);
        this.Y = tVar;
        this.B = io.grpc.j.a(tVar, list);
        this.f42658x = (com.google.common.base.w) com.google.common.base.o.t(wVar, "stopwatchSupplier");
        long j10 = h1Var.f42771p;
        if (j10 == -1) {
            this.f42659y = j10;
        } else {
            com.google.common.base.o.j(j10 >= h1.K, "invalid idleTimeoutMillis %s", j10);
            this.f42659y = h1Var.f42771p;
        }
        this.f42648n0 = new y1(new q(this, null), d1Var, lVar.o0(), wVar.get());
        this.f42655u = h1Var.f42768m;
        this.f42656v = (io.grpc.v) com.google.common.base.o.t(h1Var.f42769n, "decompressorRegistry");
        this.f42657w = (io.grpc.p) com.google.common.base.o.t(h1Var.f42770o, "compressorRegistry");
        this.C = h1Var.f42765j;
        this.f42634g0 = h1Var.f42774s;
        this.f42632f0 = h1Var.f42775t;
        c cVar = new c(m2Var);
        this.T = cVar;
        this.U = cVar.a();
        io.grpc.c0 c0Var = (io.grpc.c0) com.google.common.base.o.s(h1Var.f42777v);
        this.X = c0Var;
        c0Var.d(this);
        if (z11) {
            return;
        }
        if (this.f42624b0 != null) {
            nVar2.a(ChannelLogger.ChannelLogLevel.INFO, "Service config look-up disabled, using default service config");
        }
        this.f42626c0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0(boolean z10) {
        this.f42648n0.i(z10);
    }

    private void I0() {
        this.f42654t.e();
        d1.c cVar = this.f42642k0;
        if (cVar != null) {
            cVar.a();
            this.f42642k0 = null;
            this.f42644l0 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J0() {
        W0(true);
        this.M.s(null);
        this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Entering IDLE state");
        this.f42660z.a(ConnectivityState.IDLE);
        if (this.f42640j0.a(this.K, this.M)) {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Executor L0(io.grpc.c cVar) {
        Executor e10 = cVar.e();
        return e10 == null ? this.f42645m : e10;
    }

    private static io.grpc.t0 M0(String str, t0.d dVar, t0.b bVar) {
        URI uri;
        io.grpc.t0 b10;
        StringBuilder sb2 = new StringBuilder();
        try {
            uri = new URI(str);
        } catch (URISyntaxException e10) {
            sb2.append(e10.getMessage());
            uri = null;
        }
        if (uri == null || (b10 = dVar.b(uri, bVar)) == null) {
            String str2 = "";
            if (!f42614p0.matcher(str).matches()) {
                try {
                    io.grpc.t0 b11 = dVar.b(new URI(dVar.a(), "", FileUtils.RES_PREFIX_STORAGE + str, null), bVar);
                    if (b11 != null) {
                        return b11;
                    }
                } catch (URISyntaxException e11) {
                    throw new IllegalArgumentException(e11);
                }
            }
            Object[] objArr = new Object[2];
            objArr[0] = str;
            if (sb2.length() > 0) {
                str2 = " (" + ((Object) sb2) + ")";
            }
            objArr[1] = str2;
            throw new IllegalArgumentException(String.format("cannot find a NameResolver for %s%s", objArr));
        }
        return b10;
    }

    static io.grpc.t0 N0(String str, String str2, t0.d dVar, t0.b bVar) {
        io.grpc.t0 M0 = M0(str, dVar, bVar);
        return str2 == null ? M0 : new i(M0, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0(io.grpc.q qVar) {
        if (qVar.c() == ConnectivityState.TRANSIENT_FAILURE || qVar.c() == ConnectivityState.IDLE) {
            S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        if (this.P) {
            for (y0 y0Var : this.I) {
                y0Var.b(f42615q0);
            }
            for (q1 q1Var : this.L) {
                q1Var.q().b(f42615q0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        if (!this.R && this.O.get() && this.I.isEmpty() && this.L.isEmpty()) {
            this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Terminated");
            this.X.j(this);
            this.f42647n.b(this.f42645m);
            this.f42650p.b();
            this.f42651q.b();
            this.f42639j.close();
            this.R = true;
            this.S.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0() {
        this.f42654t.e();
        I0();
        T0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        this.f42654t.e();
        if (this.E) {
            this.D.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U0() {
        long j10 = this.f42659y;
        if (j10 == -1) {
            return;
        }
        this.f42648n0.k(j10, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0(boolean z10) {
        this.f42654t.e();
        if (z10) {
            com.google.common.base.o.A(this.E, "nameResolver is not started");
            com.google.common.base.o.A(this.F != null, "lbHelper is null");
        }
        if (this.D != null) {
            I0();
            this.D.c();
            this.E = false;
            if (z10) {
                this.D = N0(this.f42623b, this.f42625c, this.f42629e, this.f42631f);
            } else {
                this.D = null;
            }
        }
        r rVar = this.F;
        if (rVar != null) {
            rVar.f42690a.c();
            this.F = null;
        }
        this.G = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0(n0.i iVar) {
        this.G = iVar;
        this.M.s(iVar);
    }

    void K0() {
        this.f42654t.e();
        if (this.O.get() || this.H) {
            return;
        }
        if (this.f42640j0.d()) {
            H0(false);
        } else {
            U0();
        }
        if (this.F != null) {
            return;
        }
        this.W.a(ChannelLogger.ChannelLogLevel.INFO, "Exiting idle mode");
        r rVar = new r(this, null);
        rVar.f42690a = this.f42633g.e(rVar);
        this.F = rVar;
        this.D.d(new s(rVar, this.D));
        this.E = true;
    }

    void R0(Throwable th2) {
        if (this.H) {
            return;
        }
        this.H = true;
        H0(true);
        W0(false);
        Y0(new d(th2));
        this.W.a(ChannelLogger.ChannelLogLevel.ERROR, "PANIC! Entering TRANSIENT_FAILURE");
        this.f42660z.a(ConnectivityState.TRANSIENT_FAILURE);
    }

    @Override // io.grpc.q0
    /* renamed from: V0 */
    public g1 m() {
        this.W.a(ChannelLogger.ChannelLogLevel.DEBUG, "shutdown() called");
        if (this.O.compareAndSet(false, true)) {
            this.f42654t.execute(new e());
            this.Y.o();
            this.f42654t.execute(new b());
            return this;
        }
        return this;
    }

    @Override // io.grpc.q0
    /* renamed from: X0 */
    public g1 n() {
        this.W.a(ChannelLogger.ChannelLogLevel.DEBUG, "shutdownNow() called");
        m();
        this.Y.p();
        this.f42654t.execute(new f());
        return this;
    }

    @Override // io.grpc.d
    public String a() {
        return this.B.a();
    }

    @Override // io.grpc.l0
    public io.grpc.g0 c() {
        return this.f42621a;
    }

    @Override // io.grpc.d
    public <ReqT, RespT> io.grpc.g<ReqT, RespT> i(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar) {
        return this.B.i(methodDescriptor, cVar);
    }

    @Override // io.grpc.q0
    public boolean j(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.S.await(j10, timeUnit);
    }

    @Override // io.grpc.q0
    public boolean k() {
        return this.O.get();
    }

    @Override // io.grpc.q0
    public boolean l() {
        return this.R;
    }

    public String toString() {
        return com.google.common.base.j.c(this).c("logId", this.f42621a.d()).d(TypedValues.AttributesType.S_TARGET, this.f42623b).toString();
    }

    /* loaded from: classes5.dex */
    private final class x {

        /* renamed from: a  reason: collision with root package name */
        final Object f42745a;

        /* renamed from: b  reason: collision with root package name */
        Collection<io.grpc.internal.q> f42746b;

        /* renamed from: c  reason: collision with root package name */
        Status f42747c;

        private x() {
            this.f42745a = new Object();
            this.f42746b = new HashSet();
        }

        Status a(z1<?> z1Var) {
            synchronized (this.f42745a) {
                Status status = this.f42747c;
                if (status != null) {
                    return status;
                }
                this.f42746b.add(z1Var);
                return null;
            }
        }

        void b(Status status) {
            synchronized (this.f42745a) {
                if (this.f42747c != null) {
                    return;
                }
                this.f42747c = status;
                boolean isEmpty = this.f42746b.isEmpty();
                if (isEmpty) {
                    g1.this.M.g(status);
                }
            }
        }

        void c(Status status) {
            ArrayList<io.grpc.internal.q> arrayList;
            b(status);
            synchronized (this.f42745a) {
                arrayList = new ArrayList(this.f42746b);
            }
            for (io.grpc.internal.q qVar : arrayList) {
                qVar.e(status);
            }
            g1.this.M.b(status);
        }

        void d(z1<?> z1Var) {
            Status status;
            synchronized (this.f42745a) {
                this.f42746b.remove(z1Var);
                if (this.f42746b.isEmpty()) {
                    status = this.f42747c;
                    this.f42746b = new HashSet();
                } else {
                    status = null;
                }
            }
            if (status != null) {
                g1.this.M.g(status);
            }
        }

        /* synthetic */ x(g1 g1Var, a aVar) {
            this();
        }
    }
}
