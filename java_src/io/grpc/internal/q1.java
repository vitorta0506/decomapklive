package io.grpc.internal;

import io.grpc.ConnectivityState;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.k1;
import io.grpc.internal.p;
import io.grpc.n0;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class q1 extends io.grpc.q0 implements io.grpc.f0<Object> {

    /* renamed from: q  reason: collision with root package name */
    private static final Logger f42988q = Logger.getLogger(q1.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private y0 f42989a;

    /* renamed from: b  reason: collision with root package name */
    private io.grpc.internal.e f42990b;

    /* renamed from: c  reason: collision with root package name */
    private n0.i f42991c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.g0 f42992d;

    /* renamed from: e  reason: collision with root package name */
    private final String f42993e;

    /* renamed from: f  reason: collision with root package name */
    private final a0 f42994f;

    /* renamed from: g  reason: collision with root package name */
    private final io.grpc.c0 f42995g;

    /* renamed from: h  reason: collision with root package name */
    private final p1<? extends Executor> f42996h;

    /* renamed from: i  reason: collision with root package name */
    private final Executor f42997i;

    /* renamed from: j  reason: collision with root package name */
    private final ScheduledExecutorService f42998j;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f43000l;

    /* renamed from: m  reason: collision with root package name */
    private final m f43001m;

    /* renamed from: n  reason: collision with root package name */
    private final o f43002n;

    /* renamed from: o  reason: collision with root package name */
    private final m2 f43003o;

    /* renamed from: k  reason: collision with root package name */
    private final CountDownLatch f42999k = new CountDownLatch(1);

    /* renamed from: p  reason: collision with root package name */
    private final p.e f43004p = new a();

    /* loaded from: classes5.dex */
    class a implements p.e {
        a() {
        }

        @Override // io.grpc.internal.p.e
        public q a(MethodDescriptor<?, ?> methodDescriptor, io.grpc.c cVar, io.grpc.s0 s0Var, io.grpc.r rVar) {
            io.grpc.k[] g10 = GrpcUtil.g(cVar, s0Var, 0, false);
            io.grpc.r c10 = rVar.c();
            try {
                return q1.this.f42994f.e(methodDescriptor, s0Var, cVar, g10);
            } finally {
                rVar.k(c10);
            }
        }
    }

    /* loaded from: classes5.dex */
    final class b extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        final n0.e f43006a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.q f43007b;

        b(io.grpc.q qVar) {
            this.f43007b = qVar;
            this.f43006a = n0.e.f(qVar.d());
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return this.f43006a;
        }

        public String toString() {
            return com.google.common.base.j.b(b.class).d("errorResult", this.f43006a).toString();
        }
    }

    /* loaded from: classes5.dex */
    final class c extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        final n0.e f43009a;

        c() {
            this.f43009a = n0.e.h(q1.this.f42990b);
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return this.f43009a;
        }

        public String toString() {
            return com.google.common.base.j.b(c.class).d("result", this.f43009a).toString();
        }
    }

    /* loaded from: classes5.dex */
    class d implements k1.a {
        d() {
        }

        @Override // io.grpc.internal.k1.a
        public void a(Status status) {
        }

        @Override // io.grpc.internal.k1.a
        public void b() {
        }

        @Override // io.grpc.internal.k1.a
        public void c(boolean z10) {
        }

        @Override // io.grpc.internal.k1.a
        public void d() {
            q1.this.f42990b.h();
        }
    }

    /* loaded from: classes5.dex */
    class e extends io.grpc.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y0 f43012a;

        e(y0 y0Var) {
            this.f43012a = y0Var;
        }

        @Override // io.grpc.n0.h
        public List<io.grpc.x> c() {
            return this.f43012a.N();
        }

        @Override // io.grpc.n0.h
        public io.grpc.a d() {
            return io.grpc.a.f41743c;
        }

        @Override // io.grpc.n0.h
        public Object f() {
            return this.f43012a;
        }

        @Override // io.grpc.n0.h
        public void g() {
            this.f43012a.a();
        }

        @Override // io.grpc.n0.h
        public void h() {
            this.f43012a.g(Status.f41719u.r("OobChannel is shutdown"));
        }
    }

    /* loaded from: classes5.dex */
    static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43014a;

        static {
            int[] iArr = new int[ConnectivityState.values().length];
            f43014a = iArr;
            try {
                iArr[ConnectivityState.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43014a[ConnectivityState.IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43014a[ConnectivityState.TRANSIENT_FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q1(String str, p1<? extends Executor> p1Var, ScheduledExecutorService scheduledExecutorService, io.grpc.d1 d1Var, m mVar, o oVar, io.grpc.c0 c0Var, m2 m2Var) {
        this.f42993e = (String) com.google.common.base.o.t(str, "authority");
        this.f42992d = io.grpc.g0.a(q1.class, str);
        this.f42996h = (p1) com.google.common.base.o.t(p1Var, "executorPool");
        Executor executor = (Executor) com.google.common.base.o.t(p1Var.a(), "executor");
        this.f42997i = executor;
        this.f42998j = (ScheduledExecutorService) com.google.common.base.o.t(scheduledExecutorService, "deadlineCancellationExecutor");
        a0 a0Var = new a0(executor, d1Var);
        this.f42994f = a0Var;
        this.f42995g = (io.grpc.c0) com.google.common.base.o.s(c0Var);
        a0Var.h(new d());
        this.f43001m = mVar;
        this.f43002n = (o) com.google.common.base.o.t(oVar, "channelTracer");
        this.f43003o = (m2) com.google.common.base.o.t(m2Var, "timeProvider");
    }

    @Override // io.grpc.d
    public String a() {
        return this.f42993e;
    }

    @Override // io.grpc.l0
    public io.grpc.g0 c() {
        return this.f42992d;
    }

    @Override // io.grpc.d
    public <RequestT, ResponseT> io.grpc.g<RequestT, ResponseT> i(MethodDescriptor<RequestT, ResponseT> methodDescriptor, io.grpc.c cVar) {
        return new p(methodDescriptor, cVar.e() == null ? this.f42997i : cVar.e(), cVar, this.f43004p, this.f42998j, this.f43001m, null);
    }

    @Override // io.grpc.q0
    public boolean j(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f42999k.await(j10, timeUnit);
    }

    @Override // io.grpc.q0
    public boolean k() {
        return this.f43000l;
    }

    @Override // io.grpc.q0
    public boolean l() {
        return this.f42999k.getCount() == 0;
    }

    @Override // io.grpc.q0
    public io.grpc.q0 m() {
        this.f43000l = true;
        this.f42994f.g(Status.f41719u.r("OobChannel.shutdown() called"));
        return this;
    }

    @Override // io.grpc.q0
    public io.grpc.q0 n() {
        this.f43000l = true;
        this.f42994f.b(Status.f41719u.r("OobChannel.shutdownNow() called"));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0 q() {
        return this.f42989a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(io.grpc.q qVar) {
        o oVar = this.f43002n;
        InternalChannelz$ChannelTrace$Event.a aVar = new InternalChannelz$ChannelTrace$Event.a();
        oVar.e(aVar.c("Entering " + qVar.c() + " state").d(InternalChannelz$ChannelTrace$Event.Severity.CT_INFO).f(this.f43003o.a()).a());
        int i9 = f.f43014a[qVar.c().ordinal()];
        if (i9 == 1 || i9 == 2) {
            this.f42994f.s(this.f42991c);
        } else if (i9 != 3) {
        } else {
            this.f42994f.s(new b(qVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        this.f42995g.k(this);
        this.f42996h.b(this.f42997i);
        this.f42999k.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(y0 y0Var) {
        f42988q.log(Level.FINE, "[{0}] Created with [{1}]", new Object[]{this, y0Var});
        this.f42989a = y0Var;
        this.f42990b = new e(y0Var);
        c cVar = new c();
        this.f42991c = cVar;
        this.f42994f.s(cVar);
    }

    public String toString() {
        return com.google.common.base.j.c(this).c("logId", this.f42992d.d()).d("authority", this.f42993e).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(List<io.grpc.x> list) {
        this.f42989a.X(list);
    }
}
