package eh;

import com.google.protobuf.Any;
import com.google.protobuf.InvalidProtocolBufferException;
import eh.j1;
import eh.j2;
import eh.l1;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.g;
import io.grpc.internal.GrpcUtil;
import io.grpc.n0;
import io.grpc.s0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.common.fault.v3.FaultDelay;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.HTTPFault;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent;
import io.grpc.z;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class k1 implements l1, l1.a {

    /* renamed from: c  reason: collision with root package name */
    static final k1 f38814c = new k1(j2.a.f38802a, new AtomicLong());

    /* renamed from: d  reason: collision with root package name */
    static final s0.i<String> f38815d;

    /* renamed from: e  reason: collision with root package name */
    static final s0.i<String> f38816e;

    /* renamed from: f  reason: collision with root package name */
    static final s0.i<String> f38817f;

    /* renamed from: g  reason: collision with root package name */
    static final s0.i<String> f38818g;

    /* renamed from: h  reason: collision with root package name */
    static final s0.i<String> f38819h;

    /* renamed from: a  reason: collision with root package name */
    private final j2 f38820a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicLong f38821b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38822a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f38823b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f38824c;

        static {
            int[] iArr = new int[j1.c.a.values().length];
            f38824c = iArr;
            try {
                iArr[j1.c.a.TEN_THOUSAND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38824c[j1.c.a.HUNDRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38824c[j1.c.a.MILLION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[FractionalPercent.DenominatorType.values().length];
            f38823b = iArr2;
            try {
                iArr2[FractionalPercent.DenominatorType.HUNDRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38823b[FractionalPercent.DenominatorType.TEN_THOUSAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38823b[FractionalPercent.DenominatorType.MILLION.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38823b[FractionalPercent.DenominatorType.UNRECOGNIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[FaultAbort.ErrorTypeCase.values().length];
            f38822a = iArr3;
            try {
                iArr3[FaultAbort.ErrorTypeCase.HEADER_ABORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38822a[FaultAbort.ErrorTypeCase.HTTP_STATUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38822a[FaultAbort.ErrorTypeCase.GRPC_STATUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38822a[FaultAbort.ErrorTypeCase.ERRORTYPE_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* loaded from: classes5.dex */
    final class b implements io.grpc.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Long f38825a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Status f38826b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ScheduledExecutorService f38827c;

        /* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
        /* loaded from: classes5.dex */
        class a<ReqT, RespT> implements com.google.common.base.w<io.grpc.g<ReqT, RespT>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.grpc.d f38829a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MethodDescriptor f38830b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ io.grpc.c f38831c;

            a(io.grpc.d dVar, MethodDescriptor methodDescriptor, io.grpc.c cVar) {
                this.f38829a = dVar;
                this.f38830b = methodDescriptor;
                this.f38831c = cVar;
            }

            @Override // com.google.common.base.w, java.util.function.Supplier
            /* renamed from: a */
            public io.grpc.g<ReqT, RespT> get() {
                return this.f38829a.i(this.f38830b, this.f38831c);
            }
        }

        /* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
        /* renamed from: eh.k1$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class C0396b<ReqT, RespT> extends io.grpc.y<ReqT, RespT> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f38833a;

            /* renamed from: eh.k1$b$b$a */
            /* loaded from: classes5.dex */
            class a extends z.a<RespT> {
                a(g.a aVar) {
                    super(aVar);
                }

                @Override // io.grpc.z.a, io.grpc.z, io.grpc.x0, io.grpc.g.a
                public void a(Status status, io.grpc.s0 s0Var) {
                    if (status.n().equals(Status.Code.DEADLINE_EXCEEDED)) {
                        String format = String.format("Deadline exceeded after up to %d ns of fault-injected delay", b.this.f38825a);
                        if (status.o() != null) {
                            format = format + ": " + status.o();
                        }
                        status = Status.f41708j.r(format).q(status.m());
                        s0Var = new io.grpc.s0();
                    }
                    e().a(status, s0Var);
                }
            }

            C0396b(c cVar) {
                this.f38833a = cVar;
            }

            @Override // io.grpc.y, io.grpc.g
            public void e(g.a<RespT> aVar, io.grpc.s0 s0Var) {
                f().e(new a(aVar), s0Var);
            }

            @Override // io.grpc.y, io.grpc.w0
            protected io.grpc.g<ReqT, RespT> f() {
                return this.f38833a;
            }
        }

        b(Long l10, Status status, ScheduledExecutorService scheduledExecutorService) {
            this.f38825a = l10;
            this.f38826b = status;
            this.f38827c = scheduledExecutorService;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v4, types: [com.google.common.base.w] */
        @Override // io.grpc.h
        public <ReqT, RespT> io.grpc.g<ReqT, RespT> a(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar, io.grpc.d dVar) {
            a aVar;
            Executor e10 = cVar.e();
            if (e10 == null) {
                e10 = com.google.common.util.concurrent.h0.a();
            }
            Executor executor = e10;
            if (this.f38825a != null) {
                Status status = this.f38826b;
                if (status != null) {
                    aVar = com.google.common.base.x.a(new d(status, executor));
                } else {
                    aVar = new a(dVar, methodDescriptor, cVar);
                }
                return new C0396b(new c(this.f38825a.longValue(), executor, this.f38827c, cVar.d(), aVar));
            }
            return new d(this.f38826b, executor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c<ReqT, RespT> extends io.grpc.internal.z<ReqT, RespT> {

        /* renamed from: l  reason: collision with root package name */
        final Object f38836l;

        /* renamed from: m  reason: collision with root package name */
        ScheduledFuture<?> f38837m;

        /* renamed from: n  reason: collision with root package name */
        boolean f38838n;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ k1 f38840a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ com.google.common.base.w f38841b;

            a(k1 k1Var, com.google.common.base.w wVar) {
                this.f38840a = k1Var;
                this.f38841b = wVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this.f38836l) {
                    c cVar = c.this;
                    if (!cVar.f38838n) {
                        k1.this.f38821b.decrementAndGet();
                    }
                }
                c.this.n((io.grpc.g) this.f38841b.get());
            }
        }

        c(long j10, Executor executor, ScheduledExecutorService scheduledExecutorService, io.grpc.t tVar, com.google.common.base.w<? extends io.grpc.g<ReqT, RespT>> wVar) {
            super(executor, scheduledExecutorService, tVar);
            Object obj = new Object();
            this.f38836l = obj;
            k1.this.f38821b.incrementAndGet();
            ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new a(k1.this, wVar), j10, TimeUnit.NANOSECONDS);
            synchronized (obj) {
                if (!this.f38838n) {
                    this.f38837m = schedule;
                } else {
                    schedule.cancel(false);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.internal.z
        public void i() {
            ScheduledFuture<?> scheduledFuture;
            synchronized (this.f38836l) {
                this.f38838n = true;
                k1.this.f38821b.decrementAndGet();
                scheduledFuture = this.f38837m;
            }
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class d<ReqT, RespT> extends io.grpc.g<ReqT, RespT> {

        /* renamed from: a  reason: collision with root package name */
        final Status f38843a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f38844b;

        /* renamed from: c  reason: collision with root package name */
        final io.grpc.r f38845c = io.grpc.r.j();

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ g.a f38847a;

            a(g.a aVar) {
                this.f38847a = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                io.grpc.r c10 = d.this.f38845c.c();
                try {
                    this.f38847a.a(d.this.f38843a, new io.grpc.s0());
                    k1.this.f38821b.decrementAndGet();
                } finally {
                    d.this.f38845c.k(c10);
                }
            }
        }

        d(Status status, Executor executor) {
            this.f38843a = status;
            this.f38844b = executor;
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
            k1.this.f38821b.incrementAndGet();
            this.f38844b.execute(new a(aVar));
        }
    }

    static {
        s0.d<String> dVar = io.grpc.s0.f45383e;
        f38815d = s0.i.e("x-envoy-fault-delay-request", dVar);
        f38816e = s0.i.e("x-envoy-fault-delay-request-percentage", dVar);
        f38817f = s0.i.e("x-envoy-fault-abort-request", dVar);
        f38818g = s0.i.e("x-envoy-fault-abort-grpc-request", dVar);
        f38819h = s0.i.e("x-envoy-fault-abort-request-percentage", dVar);
    }

    k1(j2 j2Var, AtomicLong atomicLong) {
        this.f38820a = j2Var;
        this.f38821b = atomicLong;
    }

    private Status f(j1.a aVar, io.grpc.s0 s0Var) {
        Status i9;
        int parseInt;
        j1.c e10 = aVar.e();
        if (aVar.d()) {
            try {
                String str = (String) s0Var.k(f38818g);
                i9 = str != null ? Status.i(Integer.parseInt(str)) : null;
                String str2 = (String) s0Var.k(f38817f);
                if (str2 != null) {
                    i9 = GrpcUtil.n(Integer.parseInt(str2));
                }
                s0.i<String> iVar = f38819h;
                if (((String) s0Var.k(iVar)) != null && (parseInt = Integer.parseInt((String) s0Var.k(iVar))) >= 0 && parseInt < e10.c()) {
                    e10 = j1.c.a(parseInt, e10.b());
                }
            } catch (NumberFormatException unused) {
                return null;
            }
        } else {
            i9 = aVar.f();
        }
        if (this.f38820a.b(1000000) >= i(e10)) {
            return null;
        }
        return i9;
    }

    private Long g(j1.b bVar, io.grpc.s0 s0Var) {
        Long valueOf;
        int parseInt;
        j1.c f10 = bVar.f();
        if (bVar.e()) {
            try {
                valueOf = Long.valueOf(TimeUnit.MILLISECONDS.toNanos(Integer.parseInt((String) s0Var.k(f38815d))));
                String str = (String) s0Var.k(f38816e);
                if (str != null && (parseInt = Integer.parseInt(str)) >= 0 && parseInt < f10.c()) {
                    f10 = j1.c.a(parseInt, f10.b());
                }
            } catch (NumberFormatException unused) {
                return null;
            }
        } else {
            valueOf = bVar.b();
        }
        if (this.f38820a.b(1000000) >= i(f10)) {
            return null;
        }
        return valueOf;
    }

    private static Status h(Status status) {
        if (status != null) {
            String str = "RPC terminated due to fault injection";
            if (status.o() != null) {
                str = "RPC terminated due to fault injection: " + status.o();
            }
            return status.r(str);
        }
        return null;
    }

    private static int i(j1.c cVar) {
        int c10 = cVar.c();
        int i9 = a.f38824c[cVar.b().ordinal()];
        if (i9 == 1) {
            c10 *= 100;
        } else if (i9 == 2) {
            c10 *= 10000;
        }
        if (c10 > 1000000 || c10 < 0) {
            return 1000000;
        }
        return c10;
    }

    static w0<j1.a> j(FaultAbort faultAbort) {
        j1.c m10 = m(faultAbort.getPercentage());
        int i9 = a.f38822a[faultAbort.getErrorTypeCase().ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return w0.b("Unknown error type case: " + faultAbort.getErrorTypeCase());
                }
                return w0.a(j1.a.c(Status.i(faultAbort.getGrpcStatus()), m10));
            }
            return w0.a(j1.a.c(GrpcUtil.n(faultAbort.getHttpStatus()), m10));
        }
        return w0.a(j1.a.b(m10));
    }

    private static j1.b k(FaultDelay faultDelay) {
        j1.c m10 = m(faultDelay.getPercentage());
        if (faultDelay.hasHeaderDelay()) {
            return j1.b.d(m10);
        }
        return j1.b.c(v6.a.h(faultDelay.getFixedDelay()), m10);
    }

    private static w0<j1> l(HTTPFault hTTPFault) {
        j1.a aVar;
        Integer num = null;
        j1.b k10 = hTTPFault.hasDelay() ? k(hTTPFault.getDelay()) : null;
        if (hTTPFault.hasAbort()) {
            w0<j1.a> j10 = j(hTTPFault.getAbort());
            if (j10.f39397a != null) {
                return w0.b("HttpFault contains invalid FaultAbort: " + j10.f39397a);
            }
            aVar = j10.f39398b;
        } else {
            aVar = null;
        }
        if (hTTPFault.hasMaxActiveFaults()) {
            num = Integer.valueOf(hTTPFault.getMaxActiveFaults().getValue());
            if (num.intValue() < 0) {
                num = Integer.MAX_VALUE;
            }
        }
        return w0.a(j1.b(k10, aVar, num));
    }

    private static j1.c m(FractionalPercent fractionalPercent) {
        int i9 = a.f38823b[fractionalPercent.getDenominator().ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return j1.c.e(fractionalPercent.getNumerator());
                }
                throw new IllegalArgumentException("Unknown denominator type: " + fractionalPercent.getDenominator());
            }
            return j1.c.f(fractionalPercent.getNumerator());
        }
        return j1.c.d(fractionalPercent.getNumerator());
    }

    @Override // eh.l1
    public String[] a() {
        return new String[]{"type.googleapis.com/envoy.extensions.filters.http.fault.v3.HTTPFault"};
    }

    @Override // eh.l1.a
    public io.grpc.h b(l1.b bVar, l1.b bVar2, n0.f fVar, ScheduledExecutorService scheduledExecutorService) {
        Long g10;
        Status f10;
        com.google.common.base.o.t(bVar, "config");
        if (bVar2 != null) {
            bVar = bVar2;
        }
        j1 j1Var = (j1) bVar;
        if (j1Var.e() == null || this.f38821b.get() < j1Var.e().intValue()) {
            io.grpc.s0 b10 = fVar.b();
            g10 = j1Var.d() != null ? g(j1Var.d(), b10) : null;
            f10 = j1Var.c() != null ? f(j1Var.c(), b10) : null;
        } else {
            f10 = null;
            g10 = null;
        }
        if (g10 == null && f10 == null) {
            return null;
        }
        return new b(g10, h(f10), scheduledExecutorService);
    }

    @Override // eh.l1
    public w0<j1> c(com.google.protobuf.l1 l1Var) {
        return d(l1Var);
    }

    @Override // eh.l1
    public w0<j1> d(com.google.protobuf.l1 l1Var) {
        if (!(l1Var instanceof Any)) {
            return w0.b("Invalid config type: " + l1Var.getClass());
        }
        try {
            return l((HTTPFault) ((Any) l1Var).unpack(HTTPFault.class));
        } catch (InvalidProtocolBufferException e10) {
            return w0.b("Invalid proto: " + e10);
        }
    }
}
