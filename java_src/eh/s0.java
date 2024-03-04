package eh;

import com.google.common.collect.e9;
import eh.j0;
import eh.o2;
import eh.p0;
import eh.p2;
import eh.q2;
import eh.t0;
import eh.t2;
import eh.w1;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.internal.e0;
import io.grpc.internal.e2;
import io.grpc.internal.k;
import io.grpc.n0;
import io.grpc.t0;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class s0 extends io.grpc.n0 {

    /* renamed from: l  reason: collision with root package name */
    private static final t1 f39245l = t1.a("", "", "");

    /* renamed from: c  reason: collision with root package name */
    private final q2 f39246c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.d1 f39247d;

    /* renamed from: e  reason: collision with root package name */
    private final ScheduledExecutorService f39248e;

    /* renamed from: f  reason: collision with root package name */
    private final io.grpc.p0 f39249f;

    /* renamed from: g  reason: collision with root package name */
    private final k.a f39250g;

    /* renamed from: h  reason: collision with root package name */
    private final dh.d f39251h;

    /* renamed from: i  reason: collision with root package name */
    private io.grpc.internal.p1<p2> f39252i;

    /* renamed from: j  reason: collision with root package name */
    private p2 f39253j;

    /* renamed from: k  reason: collision with root package name */
    private t0.a f39254k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c extends io.grpc.n0 {

        /* renamed from: c  reason: collision with root package name */
        private final n0.d f39258c;

        /* renamed from: d  reason: collision with root package name */
        private final List<String> f39259d = new ArrayList();

        /* renamed from: e  reason: collision with root package name */
        private final Map<String, a> f39260e = new HashMap();

        /* renamed from: f  reason: collision with root package name */
        private e2.b f39261f;

        /* renamed from: g  reason: collision with root package name */
        private n0.g f39262g;

        /* renamed from: h  reason: collision with root package name */
        private io.grpc.n0 f39263h;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public abstract class a {

            /* renamed from: a  reason: collision with root package name */
            protected final String f39265a;

            /* renamed from: b  reason: collision with root package name */
            protected final j0.d f39266b;

            /* renamed from: c  reason: collision with root package name */
            protected final Long f39267c;

            /* renamed from: d  reason: collision with root package name */
            protected final i1 f39268d;

            /* renamed from: e  reason: collision with root package name */
            protected Status f39269e;

            /* renamed from: f  reason: collision with root package name */
            protected boolean f39270f;

            /* renamed from: g  reason: collision with root package name */
            protected b f39271g;

            /* renamed from: h  reason: collision with root package name */
            protected boolean f39272h;

            void g() {
                this.f39272h = true;
            }

            abstract void h();

            private a(String str, j0.d dVar, Long l10, i1 i1Var) {
                this.f39269e = Status.f41704f;
                this.f39265a = str;
                this.f39266b = dVar;
                this.f39267c = l10;
                this.f39268d = i1Var;
            }
        }

        /* loaded from: classes5.dex */
        private final class b extends a implements p2.d {

            /* renamed from: j  reason: collision with root package name */
            private final String f39274j;

            /* loaded from: classes5.dex */
            class a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f39276a;

                a(String str) {
                    this.f39276a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b bVar = b.this;
                    if (bVar.f39272h) {
                        return;
                    }
                    s0.this.f39246c.c(q2.b.INFO, "Resource {0} unavailable", this.f39276a);
                    b bVar2 = b.this;
                    bVar2.f39269e = Status.f41704f;
                    bVar2.f39270f = true;
                    bVar2.f39271g = null;
                    c.this.l();
                }
            }

            /* renamed from: eh.s0$c$b$b  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0410b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ p2.e f39278a;

                RunnableC0410b(p2.e eVar) {
                    this.f39278a = eVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    HashMap hashMap;
                    b bVar = b.this;
                    if (bVar.f39272h) {
                        return;
                    }
                    s0.this.f39246c.c(q2.b.DEBUG, "Received endpoint update {0}", this.f39278a);
                    q2 q2Var = s0.this.f39246c;
                    q2.b bVar2 = q2.b.INFO;
                    if (q2Var.a(bVar2)) {
                        q2 q2Var2 = s0.this.f39246c;
                        p2.e eVar = this.f39278a;
                        q2Var2.c(bVar2, "Cluster {0}: {1} localities, {2} drop categories", eVar.f39083a, Integer.valueOf(eVar.f39084b.size()), Integer.valueOf(this.f39278a.f39085c.size()));
                    }
                    p2.e eVar2 = this.f39278a;
                    Map<t1, z0> map = eVar2.f39084b;
                    List<x0> list = eVar2.f39085c;
                    ArrayList arrayList = new ArrayList();
                    HashMap hashMap2 = new HashMap();
                    for (t1 t1Var : map.keySet()) {
                        z0 z0Var = map.get(t1Var);
                        String t10 = s0.t(b.this.f39265a, z0Var.d());
                        e9<y0> it = z0Var.b().iterator();
                        boolean z10 = true;
                        while (it.hasNext()) {
                            y0 next = it.next();
                            if (next.c()) {
                                long c10 = z0Var.c();
                                if (next.d() != 0) {
                                    hashMap = hashMap2;
                                    c10 *= next.d();
                                } else {
                                    hashMap = hashMap2;
                                }
                                arrayList.add(eh.b.b(new io.grpc.x(next.b().a(), next.b().b().d().d(o1.f39038e, t1Var).d(o1.f39039f, Long.valueOf(c10)).a()), Arrays.asList(t10, s0.s(t1Var))));
                                z10 = false;
                            } else {
                                hashMap = hashMap2;
                            }
                            hashMap2 = hashMap;
                        }
                        HashMap hashMap3 = hashMap2;
                        if (z10) {
                            s0.this.f39246c.c(q2.b.INFO, "Discard locality {0} with 0 healthy endpoints", t1Var);
                            hashMap2 = hashMap3;
                        } else {
                            if (!hashMap3.containsKey(t10)) {
                                hashMap3.put(t10, new HashMap());
                            }
                            ((Map) hashMap3.get(t10)).put(t1Var, Integer.valueOf(z0Var.c()));
                            hashMap2 = hashMap3;
                        }
                    }
                    HashMap hashMap4 = hashMap2;
                    if (hashMap4.isEmpty()) {
                        s0.this.f39246c.c(q2.b.INFO, "Cluster {0} has no usable priority/locality/endpoint", this.f39278a.f39083a);
                    }
                    ArrayList arrayList2 = new ArrayList(hashMap4.keySet());
                    Collections.sort(arrayList2);
                    b bVar3 = b.this;
                    String str = bVar3.f39265a;
                    String str2 = bVar3.f39274j;
                    b bVar4 = b.this;
                    Map r10 = s0.r(str, str2, bVar4.f39266b, bVar4.f39267c, bVar4.f39268d, c.this.f39261f, s0.this.f39249f, hashMap4, list);
                    b bVar5 = b.this;
                    bVar5.f39269e = Status.f41704f;
                    bVar5.f39270f = true;
                    bVar5.f39271g = new b(arrayList, r10, arrayList2);
                    c.this.l();
                }
            }

            /* renamed from: eh.s0$c$b$c  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0411c implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Status f39280a;

                RunnableC0411c(Status status) {
                    this.f39280a = status;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b bVar = b.this;
                    if (bVar.f39272h) {
                        return;
                    }
                    bVar.f39269e = this.f39280a;
                    s0.this.f39246c.c(q2.b.WARNING, "Received EDS error: {0}", this.f39280a);
                    c.this.k();
                }
            }

            @Override // eh.p2.m
            public void a(Status status) {
                s0.this.f39247d.execute(new RunnableC0411c(status));
            }

            @Override // eh.p2.m
            public void b(String str) {
                s0.this.f39247d.execute(new a(str));
            }

            @Override // eh.p2.d
            public void d(p2.e eVar) {
                s0.this.f39247d.execute(new RunnableC0410b(eVar));
            }

            @Override // eh.s0.c.a
            protected void g() {
                super.g();
                String str = this.f39274j;
                if (str == null) {
                    str = this.f39265a;
                }
                s0.this.f39246c.c(q2.b.INFO, "Stop watching EDS resource {0}", str);
                s0.this.f39253j.k(str, this);
            }

            @Override // eh.s0.c.a
            void h() {
                String str = this.f39274j;
                if (str == null) {
                    str = this.f39265a;
                }
                s0.this.f39246c.c(q2.b.INFO, "Start watching EDS resource {0}", str);
                s0.this.f39253j.u(str, this);
            }

            private b(String str, String str2, j0.d dVar, Long l10, i1 i1Var) {
                super(str, dVar, l10, i1Var);
                this.f39274j = str2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: eh.s0$c$c  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public final class C0412c extends a {

            /* renamed from: j  reason: collision with root package name */
            private final String f39282j;

            /* renamed from: k  reason: collision with root package name */
            private final t0.d f39283k;

            /* renamed from: l  reason: collision with root package name */
            private final t0.b f39284l;

            /* renamed from: m  reason: collision with root package name */
            private io.grpc.t0 f39285m;

            /* renamed from: n  reason: collision with root package name */
            private io.grpc.internal.k f39286n;

            /* renamed from: o  reason: collision with root package name */
            private d1.c f39287o;

            /* renamed from: eh.s0$c$c$a */
            /* loaded from: classes5.dex */
            private class a implements Runnable {
                private a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    C0412c.this.f39287o = null;
                    C0412c c0412c = C0412c.this;
                    if (c0412c.f39272h) {
                        return;
                    }
                    c0412c.f39285m.b();
                }
            }

            /* renamed from: eh.s0$c$c$b */
            /* loaded from: classes5.dex */
            private class b extends t0.e {

                /* renamed from: eh.s0$c$c$b$a */
                /* loaded from: classes5.dex */
                class a implements Runnable {

                    /* renamed from: a  reason: collision with root package name */
                    final /* synthetic */ Status f39291a;

                    a(Status status) {
                        this.f39291a = status;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        C0412c c0412c = C0412c.this;
                        if (c0412c.f39272h) {
                            return;
                        }
                        c0412c.f39269e = this.f39291a;
                        if (!c0412c.f39270f) {
                            c0412c.f39270f = true;
                            c.this.l();
                        } else {
                            c.this.k();
                        }
                        if (C0412c.this.f39287o == null || !C0412c.this.f39287o.b()) {
                            if (C0412c.this.f39286n == null) {
                                C0412c c0412c2 = C0412c.this;
                                c0412c2.f39286n = s0.this.f39250g.get();
                            }
                            long a10 = C0412c.this.f39286n.a();
                            s0.this.f39246c.c(q2.b.DEBUG, "Logical DNS resolver for cluster {0} encountered name resolution error: {1}, scheduling DNS resolution backoff for {2} ns", C0412c.this.f39265a, this.f39291a, Long.valueOf(a10));
                            C0412c c0412c3 = C0412c.this;
                            c0412c3.f39287o = s0.this.f39247d.d(new a(), a10, TimeUnit.NANOSECONDS, s0.this.f39248e);
                        }
                    }
                }

                /* renamed from: eh.s0$c$c$b$b  reason: collision with other inner class name */
                /* loaded from: classes5.dex */
                class RunnableC0413b implements Runnable {

                    /* renamed from: a  reason: collision with root package name */
                    final /* synthetic */ t0.g f39293a;

                    RunnableC0413b(t0.g gVar) {
                        this.f39293a = gVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        C0412c c0412c = C0412c.this;
                        if (c0412c.f39272h) {
                            return;
                        }
                        c0412c.f39286n = null;
                        String t10 = s0.t(C0412c.this.f39265a, 0);
                        ArrayList arrayList = new ArrayList();
                        for (io.grpc.x xVar : this.f39293a.a()) {
                            arrayList.add(eh.b.b(new io.grpc.x(xVar.a(), xVar.b().d().d(o1.f39038e, s0.f39245l).a()), Arrays.asList(t10, s0.f39245l.toString())));
                        }
                        C0412c c0412c2 = C0412c.this;
                        w1.a.C0418a q10 = s0.q(c0412c2.f39265a, c0412c2.f39266b, c0412c2.f39267c, c0412c2.f39268d, s0.this.f39249f, Collections.emptyList());
                        C0412c c0412c3 = C0412c.this;
                        c0412c3.f39269e = Status.f41704f;
                        c0412c3.f39270f = true;
                        c0412c3.f39271g = new b(arrayList, t10, q10);
                        c.this.l();
                    }
                }

                private b() {
                }

                @Override // io.grpc.t0.e, io.grpc.t0.f
                public void a(Status status) {
                    s0.this.f39247d.execute(new a(status));
                }

                @Override // io.grpc.t0.e
                public void c(t0.g gVar) {
                    s0.this.f39247d.execute(new RunnableC0413b(gVar));
                }
            }

            private void n() {
                d1.c cVar = this.f39287o;
                if (cVar != null) {
                    cVar.a();
                    this.f39287o = null;
                    this.f39286n = null;
                }
            }

            @Override // eh.s0.c.a
            void g() {
                super.g();
                io.grpc.t0 t0Var = this.f39285m;
                if (t0Var != null) {
                    t0Var.c();
                }
                n();
            }

            @Override // eh.s0.c.a
            void h() {
                try {
                    URI uri = new URI("dns", "", FileUtils.RES_PREFIX_STORAGE + this.f39282j, null);
                    io.grpc.t0 b10 = this.f39283k.b(uri, this.f39284l);
                    this.f39285m = b10;
                    if (b10 == null) {
                        Status status = Status.f41718t;
                        this.f39269e = status.r("Xds cluster resolver lb for logical DNS cluster [" + this.f39265a + "] cannot find DNS resolver with uri:" + uri);
                        c.this.k();
                        return;
                    }
                    b10.d(new b());
                } catch (URISyntaxException e10) {
                    Status status2 = Status.f41718t;
                    this.f39269e = status2.r("Bug, invalid URI creation: " + this.f39282j).q(e10);
                    c.this.k();
                }
            }

            void o() {
                if (this.f39285m == null) {
                    return;
                }
                n();
                this.f39285m.b();
            }

            private C0412c(String str, String str2, j0.d dVar, Long l10, i1 i1Var) {
                super(str, dVar, l10, i1Var);
                this.f39282j = (String) com.google.common.base.o.t(str2, "dnsHostName");
                this.f39283k = (t0.d) com.google.common.base.o.t(c.this.f39258c.f().c(), "nameResolverFactory");
                this.f39284l = (t0.b) com.google.common.base.o.t(c.this.f39258c.e(), "nameResolverArgs");
            }
        }

        /* loaded from: classes5.dex */
        private final class d extends dh.b {

            /* renamed from: a  reason: collision with root package name */
            private final n0.d f39295a;

            @Override // dh.b, io.grpc.n0.d
            public void j() {
                for (a aVar : c.this.f39260e.values()) {
                    if (aVar instanceof C0412c) {
                        ((C0412c) aVar).o();
                    }
                }
            }

            @Override // dh.b
            protected n0.d m() {
                return this.f39295a;
            }

            private d(n0.d dVar) {
                this.f39295a = (n0.d) com.google.common.base.o.t(dVar, "delegate");
                dVar.i();
            }
        }

        c(n0.d dVar) {
            this.f39258c = new d((n0.d) com.google.common.base.o.t(dVar, "helper"));
            s0.this.f39246c.b(q2.b.DEBUG, "New ClusterResolverLbState");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k() {
            boolean z10 = true;
            Status status = null;
            for (String str : this.f39259d) {
                a aVar = this.f39260e.get(str);
                if (aVar.f39269e.p()) {
                    z10 = false;
                } else {
                    status = aVar.f39269e;
                }
            }
            if (z10) {
                io.grpc.n0 n0Var = this.f39263h;
                if (n0Var != null) {
                    n0Var.b(status);
                } else {
                    this.f39258c.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l() {
            Status r10;
            ArrayList arrayList = new ArrayList();
            HashMap hashMap = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            Status status = Status.f41704f;
            for (String str : this.f39259d) {
                a aVar = this.f39260e.get(str);
                if (!aVar.f39270f && aVar.f39269e.p()) {
                    return;
                }
                b bVar = aVar.f39271g;
                if (bVar != null) {
                    arrayList.addAll(bVar.f39255a);
                    hashMap.putAll(aVar.f39271g.f39256b);
                    arrayList2.addAll(aVar.f39271g.f39257c);
                } else {
                    status = aVar.f39269e;
                }
            }
            if (arrayList.isEmpty()) {
                if (status.p()) {
                    Status status2 = Status.f41719u;
                    r10 = status2.r("No usable endpoint from cluster(s): " + this.f39259d);
                } else {
                    r10 = Status.f41719u.q(status.m()).r(status.o());
                }
                this.f39258c.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(r10));
                io.grpc.n0 n0Var = this.f39263h;
                if (n0Var != null) {
                    n0Var.e();
                    this.f39263h = null;
                    return;
                }
                return;
            }
            w1.a aVar2 = new w1.a(Collections.unmodifiableMap(hashMap), Collections.unmodifiableList(arrayList2));
            if (this.f39263h == null) {
                this.f39263h = s0.this.f39249f.d("priority_experimental").a(this.f39258c);
            }
            this.f39263h.d(this.f39262g.e().d(aVar2).b(Collections.unmodifiableList(arrayList)).a());
        }

        @Override // io.grpc.n0
        public void b(Status status) {
            io.grpc.n0 n0Var = this.f39263h;
            if (n0Var != null) {
                n0Var.b(status);
            } else {
                this.f39258c.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
            }
        }

        @Override // io.grpc.n0
        public void d(n0.g gVar) {
            a c0412c;
            this.f39262g = gVar;
            t0.a aVar = (t0.a) gVar.c();
            this.f39261f = aVar.f39330b;
            for (t0.a.C0414a c0414a : aVar.f39329a) {
                this.f39259d.add(c0414a.f39331a);
                if (c0414a.f39332b == t0.a.C0414a.EnumC0415a.EDS) {
                    c0412c = new b(c0414a.f39331a, c0414a.f39336f, c0414a.f39333c, c0414a.f39334d, c0414a.f39335e);
                } else {
                    c0412c = new C0412c(c0414a.f39331a, c0414a.f39337g, c0414a.f39333c, c0414a.f39334d, c0414a.f39335e);
                }
                this.f39260e.put(c0414a.f39331a, c0412c);
                c0412c.h();
            }
        }

        @Override // io.grpc.n0
        public void e() {
            for (a aVar : this.f39260e.values()) {
                aVar.g();
            }
            io.grpc.n0 n0Var = this.f39263h;
            if (n0Var != null) {
                n0Var.e();
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class d extends n0.c {
        private d() {
        }

        @Override // io.grpc.n0.c
        public io.grpc.n0 a(n0.d dVar) {
            return new c(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(n0.d dVar) {
        this(dVar, io.grpc.p0.b(), new e0.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static w1.a.C0418a q(String str, j0.d dVar, Long l10, i1 i1Var, io.grpc.p0 p0Var, List<x0> list) {
        return new w1.a.C0418a(new e2.b(p0Var.d("cluster_impl_experimental"), new p0.a(str, null, dVar, l10, list, new e2.b(p0Var.d("pick_first"), null), i1Var)), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, w1.a.C0418a> r(String str, String str2, j0.d dVar, Long l10, i1 i1Var, e2.b bVar, io.grpc.p0 p0Var, Map<String, Map<t1, Integer>> map, List<x0> list) {
        e2.b bVar2;
        HashMap hashMap = new HashMap();
        for (String str3 : map.keySet()) {
            if (bVar.b().b().equals("round_robin") || bVar.b().b().equals("least_request_experimental")) {
                Map<t1, Integer> map2 = map.get(str3);
                HashMap hashMap2 = new HashMap();
                for (t1 t1Var : map2.keySet()) {
                    hashMap2.put(s(t1Var), new o2.a(map2.get(t1Var).intValue(), bVar));
                }
                bVar2 = new e2.b(p0Var.d("weighted_target_experimental"), new o2.b(Collections.unmodifiableMap(hashMap2)));
            } else {
                bVar2 = bVar;
            }
            hashMap.put(str3, new w1.a.C0418a(new e2.b(p0Var.d("cluster_impl_experimental"), new p0.a(str, str2, dVar, l10, list, bVar2, i1Var)), true));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String s(t1 t1Var) {
        return t1Var.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String t(String str, int i9) {
        return str + "[priority" + i9 + "]";
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        this.f39246c.c(q2.b.WARNING, "Received name resolution error: {0}", status);
        this.f39251h.b(status);
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        q2 q2Var = this.f39246c;
        q2.b bVar = q2.b.DEBUG;
        q2Var.c(bVar, "Received resolution result: {0}", gVar);
        if (this.f39252i == null) {
            io.grpc.internal.p1<p2> p1Var = (io.grpc.internal.p1) gVar.b().b(o1.f39035b);
            this.f39252i = p1Var;
            this.f39253j = p1Var.a();
        }
        t0.a aVar = (t0.a) gVar.c();
        if (Objects.equals(this.f39254k, aVar)) {
            return;
        }
        this.f39246c.c(bVar, "Config: {0}", aVar);
        this.f39251h.q(new d());
        this.f39254k = aVar;
        this.f39251h.d(gVar);
    }

    @Override // io.grpc.n0
    public void e() {
        this.f39246c.b(q2.b.INFO, "Shutdown");
        this.f39251h.e();
        io.grpc.internal.p1<p2> p1Var = this.f39252i;
        if (p1Var != null) {
            p1Var.b(this.f39253j);
        }
    }

    s0(n0.d dVar, io.grpc.p0 p0Var, k.a aVar) {
        this.f39249f = (io.grpc.p0) com.google.common.base.o.t(p0Var, "lbRegistry");
        this.f39250g = (k.a) com.google.common.base.o.t(aVar, "backoffPolicyProvider");
        this.f39247d = (io.grpc.d1) com.google.common.base.o.t(dVar.h(), "syncContext");
        this.f39248e = (ScheduledExecutorService) com.google.common.base.o.t(dVar.g(), "timeService");
        this.f39251h = new dh.d(dVar);
        q2 f10 = q2.f(io.grpc.g0.b("cluster-resolver-lb", dVar.c()));
        this.f39246c = f10;
        f10.b(q2.b.INFO, "Created");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<io.grpc.x> f39255a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, w1.a.C0418a> f39256b;

        /* renamed from: c  reason: collision with root package name */
        private final List<String> f39257c;

        b(List<io.grpc.x> list, String str, w1.a.C0418a c0418a) {
            this(list, Collections.singletonMap(str, c0418a), Collections.singletonList(str));
        }

        b(List<io.grpc.x> list, Map<String, w1.a.C0418a> map, List<String> list2) {
            this.f39255a = list;
            this.f39256b = map;
            this.f39257c = list2;
        }
    }
}
