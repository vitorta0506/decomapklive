package eh;

import eh.j0;
import eh.j2;
import eh.p0;
import eh.q2;
import eh.s1;
import eh.s2;
import eh.t2;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.a;
import io.grpc.k;
import io.grpc.n0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class o0 extends io.grpc.n0 {

    /* renamed from: n  reason: collision with root package name */
    static boolean f38999n;

    /* renamed from: o  reason: collision with root package name */
    static boolean f39000o;

    /* renamed from: p  reason: collision with root package name */
    private static final a.c<s1.d> f39001p;

    /* renamed from: c  reason: collision with root package name */
    private final q2 f39002c;

    /* renamed from: d  reason: collision with root package name */
    private final n0.d f39003d;

    /* renamed from: e  reason: collision with root package name */
    private final j2 f39004e;

    /* renamed from: f  reason: collision with root package name */
    private String f39005f;

    /* renamed from: g  reason: collision with root package name */
    private String f39006g;

    /* renamed from: h  reason: collision with root package name */
    private io.grpc.internal.p1<p2> f39007h;

    /* renamed from: i  reason: collision with root package name */
    private p2 f39008i;

    /* renamed from: j  reason: collision with root package name */
    private s2.a f39009j;

    /* renamed from: k  reason: collision with root package name */
    private s1.b f39010k;

    /* renamed from: l  reason: collision with root package name */
    private b f39011l;

    /* renamed from: m  reason: collision with root package name */
    private io.grpc.n0 f39012m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends dh.b {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicLong f39013a;

        /* renamed from: b  reason: collision with root package name */
        private ConnectivityState f39014b;

        /* renamed from: c  reason: collision with root package name */
        private n0.i f39015c;

        /* renamed from: d  reason: collision with root package name */
        private List<x0> f39016d;

        /* renamed from: e  reason: collision with root package name */
        private long f39017e;

        /* renamed from: f  reason: collision with root package name */
        private ih.f f39018f;

        /* renamed from: g  reason: collision with root package name */
        private final j0.d f39019g;

        /* loaded from: classes5.dex */
        class a extends dh.c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ s1.d f39021a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ n0.h f39022b;

            a(s1.d dVar, n0.h hVar) {
                this.f39021a = dVar;
                this.f39022b = hVar;
            }

            @Override // dh.c, io.grpc.n0.h
            public void h() {
                s1.d dVar = this.f39021a;
                if (dVar != null) {
                    dVar.d();
                }
                k().h();
            }

            @Override // dh.c
            protected n0.h k() {
                return this.f39022b;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: eh.o0$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0403b extends n0.i {

            /* renamed from: a  reason: collision with root package name */
            private final n0.i f39024a;

            /* renamed from: b  reason: collision with root package name */
            private final List<x0> f39025b;

            /* renamed from: c  reason: collision with root package name */
            private final long f39026c;

            @Override // io.grpc.n0.i
            public n0.e a(n0.f fVar) {
                for (x0 x0Var : this.f39025b) {
                    if (o0.this.f39004e.b(1000000) < x0Var.c()) {
                        o0.this.f39002c.c(q2.b.INFO, "Drop request with category: {0}", x0Var.a());
                        if (o0.this.f39010k != null) {
                            o0.this.f39010k.c(x0Var.a());
                        }
                        Status status = Status.f41719u;
                        return n0.e.e(status.r("Dropped: " + x0Var.a()));
                    }
                }
                n0.e a10 = this.f39024a.a(fVar);
                if (!a10.a().p() || a10.c() == null) {
                    return a10;
                }
                if (o0.f38999n && b.this.f39013a.get() >= this.f39026c) {
                    if (o0.this.f39010k != null) {
                        o0.this.f39010k.b();
                    }
                    return n0.e.e(Status.f41719u.r("Cluster max concurrent requests limit exceeded"));
                }
                s1.d dVar = (s1.d) a10.c().d().b(o0.f39001p);
                return dVar != null ? n0.e.i(a10.c(), new c(dVar, b.this.f39013a, a10.b())) : a10;
            }

            public String toString() {
                return com.google.common.base.j.c(this).d("delegate", this.f39024a).toString();
            }

            private C0403b(n0.i iVar, List<x0> list, long j10) {
                this.f39024a = iVar;
                this.f39025b = list;
                this.f39026c = j10;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r(List<x0> list) {
            if (this.f39016d.equals(list)) {
                return;
            }
            this.f39016d = list;
            k(this.f39014b, this.f39015c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(Long l10) {
            if (Objects.equals(Long.valueOf(this.f39017e), l10)) {
                return;
            }
            this.f39017e = l10 != null ? l10.longValue() : 1024L;
            k(this.f39014b, this.f39015c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(i1 i1Var) {
            ih.f fVar = this.f39018f;
            if (Objects.equals(fVar != null ? (i1) fVar.a() : null, i1Var)) {
                return;
            }
            ih.f fVar2 = this.f39018f;
            if (fVar2 != null) {
                fVar2.close();
            }
            this.f39018f = i1Var != null ? new ih.f(i1Var, o0.this.f39008i.p()) : null;
        }

        @Override // dh.b, io.grpc.n0.d
        public n0.h b(n0.b bVar) {
            ih.f fVar;
            ArrayList arrayList = new ArrayList();
            for (io.grpc.x xVar : bVar.a()) {
                a.b d10 = xVar.b().d().d(o1.f39037d, o0.this.f39005f);
                if (o0.f39000o && (fVar = this.f39018f) != null) {
                    d10.d(o1.f39034a, fVar);
                }
                arrayList.add(new io.grpc.x(xVar.a(), d10.a()));
            }
            t1 t1Var = (t1) bVar.a().get(0).b().b(o1.f39038e);
            if (t1Var == null) {
                t1Var = t1.a("", "", "");
            }
            s1.d i9 = this.f39019g == null ? null : o0.this.f39008i.i(this.f39019g, o0.this.f39005f, o0.this.f39006g, t1Var);
            return new a(i9, m().b(bVar.d().e(arrayList).f(bVar.b().d().d(o0.f39001p, i9).a()).b()));
        }

        @Override // dh.b, io.grpc.n0.d
        public void k(ConnectivityState connectivityState, n0.i iVar) {
            this.f39014b = connectivityState;
            this.f39015c = iVar;
            m().k(connectivityState, new C0403b(iVar, this.f39016d, this.f39017e));
        }

        @Override // dh.b
        protected n0.d m() {
            return o0.this.f39003d;
        }

        private b(AtomicLong atomicLong, j0.d dVar) {
            this.f39014b = ConnectivityState.IDLE;
            this.f39015c = t2.f39341a;
            this.f39016d = Collections.emptyList();
            this.f39017e = 1024L;
            this.f39013a = (AtomicLong) com.google.common.base.o.t(atomicLong, "inFlights");
            this.f39019g = dVar;
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends k.a {

        /* renamed from: a  reason: collision with root package name */
        private s1.d f39028a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicLong f39029b;

        /* renamed from: c  reason: collision with root package name */
        private final k.a f39030c;

        /* loaded from: classes5.dex */
        class a extends io.grpc.k {
            a() {
            }

            @Override // io.grpc.c1
            public void i(Status status) {
                c.this.f39028a.b(status);
                c.this.f39029b.decrementAndGet();
            }
        }

        /* loaded from: classes5.dex */
        class b extends io.grpc.internal.k0 {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.grpc.k f39032a;

            b(io.grpc.k kVar) {
                this.f39032a = kVar;
            }

            @Override // io.grpc.internal.k0, io.grpc.c1
            public void i(Status status) {
                c.this.f39028a.b(status);
                c.this.f39029b.decrementAndGet();
                n().i(status);
            }

            @Override // io.grpc.internal.k0
            protected io.grpc.k n() {
                return this.f39032a;
            }
        }

        @Override // io.grpc.k.a
        public io.grpc.k a(k.b bVar, io.grpc.s0 s0Var) {
            this.f39028a.c();
            this.f39029b.incrementAndGet();
            k.a aVar = this.f39030c;
            if (aVar == null) {
                return new a();
            }
            return new b(aVar.a(bVar, s0Var));
        }

        private c(s1.d dVar, AtomicLong atomicLong, k.a aVar) {
            this.f39028a = (s1.d) com.google.common.base.o.t(dVar, "stats");
            this.f39029b = (AtomicLong) com.google.common.base.o.t(atomicLong, "inFlights");
            this.f39030c = aVar;
        }
    }

    static {
        boolean z10 = false;
        f38999n = com.google.common.base.v.b(System.getenv("GRPC_XDS_EXPERIMENTAL_CIRCUIT_BREAKING")) || Boolean.parseBoolean(System.getenv("GRPC_XDS_EXPERIMENTAL_CIRCUIT_BREAKING"));
        f39000o = (com.google.common.base.v.b(System.getenv("GRPC_XDS_EXPERIMENTAL_SECURITY_SUPPORT")) || Boolean.parseBoolean(System.getenv("GRPC_XDS_EXPERIMENTAL_SECURITY_SUPPORT"))) ? true : true;
        f39001p = a.c.a("io.grpc.xds.ClusterImplLoadBalancer.clusterLocalityStats");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(n0.d dVar) {
        this(dVar, j2.a.f38802a);
    }

    @Override // io.grpc.n0
    public boolean a() {
        return true;
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        io.grpc.n0 n0Var = this.f39012m;
        if (n0Var != null) {
            n0Var.b(status);
        } else {
            this.f39003d.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        this.f39002c.c(q2.b.DEBUG, "Received resolution result: {0}", gVar);
        io.grpc.a b10 = gVar.b();
        if (this.f39007h == null) {
            io.grpc.internal.p1<p2> p1Var = (io.grpc.internal.p1) b10.b(o1.f39035b);
            this.f39007h = p1Var;
            this.f39008i = p1Var.a();
        }
        if (this.f39009j == null) {
            this.f39009j = (s2.a) b10.b(o1.f39036c);
        }
        p0.a aVar = (p0.a) gVar.c();
        if (this.f39005f == null) {
            String str = aVar.f39049a;
            this.f39005f = str;
            String str2 = aVar.f39050b;
            this.f39006g = str2;
            this.f39011l = new b(this.f39009j.a(str, str2), aVar.f39051c);
            this.f39012m = aVar.f39055g.b().a(this.f39011l);
            j0.d dVar = aVar.f39051c;
            if (dVar != null) {
                this.f39010k = this.f39008i.h(dVar, this.f39005f, this.f39006g);
            }
        }
        this.f39011l.r(aVar.f39054f);
        this.f39011l.s(aVar.f39052d);
        this.f39011l.t(aVar.f39053e);
        this.f39012m.d(gVar.e().c(b10).d(aVar.f39055g.a()).a());
    }

    @Override // io.grpc.n0
    public void e() {
        s1.b bVar = this.f39010k;
        if (bVar != null) {
            bVar.d();
        }
        io.grpc.n0 n0Var = this.f39012m;
        if (n0Var != null) {
            n0Var.e();
            b bVar2 = this.f39011l;
            if (bVar2 != null) {
                bVar2.t(null);
                this.f39011l = null;
            }
        }
        p2 p2Var = this.f39008i;
        if (p2Var != null) {
            this.f39008i = this.f39007h.b(p2Var);
        }
    }

    o0(n0.d dVar, j2 j2Var) {
        this.f39003d = (n0.d) com.google.common.base.o.t(dVar, "helper");
        this.f39004e = (j2) com.google.common.base.o.t(j2Var, "random");
        q2 f10 = q2.f(io.grpc.g0.b("cluster-impl-lb", dVar.c()));
        this.f39002c = f10;
        f10.b(q2.b.INFO, "Created");
    }
}
