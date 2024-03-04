package eh;

import com.google.common.collect.e9;
import eh.a2;
import eh.m0;
import eh.p1;
import eh.p2;
import eh.q2;
import eh.t0;
import eh.t2;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.internal.e2;
import io.grpc.n0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class l0 extends io.grpc.n0 {

    /* renamed from: c  reason: collision with root package name */
    private final q2 f38853c;

    /* renamed from: d  reason: collision with root package name */
    private final n0.d f38854d;

    /* renamed from: e  reason: collision with root package name */
    private final io.grpc.d1 f38855e;

    /* renamed from: f  reason: collision with root package name */
    private final io.grpc.p0 f38856f;

    /* renamed from: g  reason: collision with root package name */
    private io.grpc.internal.p1<p2> f38857g;

    /* renamed from: h  reason: collision with root package name */
    private p2 f38858h;

    /* renamed from: i  reason: collision with root package name */
    private b f38859i;

    /* renamed from: j  reason: collision with root package name */
    private n0.g f38860j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private final a f38861a;

        /* renamed from: b  reason: collision with root package name */
        private io.grpc.n0 f38862b;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public final class a implements p2.b {

            /* renamed from: a  reason: collision with root package name */
            private final String f38864a;

            /* renamed from: b  reason: collision with root package name */
            private Map<String, a> f38865b;

            /* renamed from: c  reason: collision with root package name */
            private p2.c f38866c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f38867d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f38868e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f38869f;

            /* renamed from: eh.l0$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0397a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Status f38871a;

                RunnableC0397a(Status status) {
                    this.f38871a = status;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f38869f) {
                        return;
                    }
                    a aVar = a.this;
                    if (aVar == b.this.f38861a) {
                        b.this.h(this.f38871a);
                    }
                }
            }

            /* renamed from: eh.l0$b$a$b  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0398b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ p2.c f38873a;

                RunnableC0398b(p2.c cVar) {
                    this.f38873a = cVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f38869f) {
                        return;
                    }
                    l0.this.f38853c.c(q2.b.DEBUG, "Received cluster update {0}", this.f38873a);
                    a.this.f38868e = true;
                    a.this.f38866c = this.f38873a;
                    if (this.f38873a.c() == p2.c.b.AGGREGATE) {
                        a.this.f38867d = false;
                        l0.this.f38853c.c(q2.b.INFO, "Aggregate cluster {0}, underlying clusters: {1}", this.f38873a.b(), this.f38873a.n());
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        e9<String> it = this.f38873a.n().iterator();
                        while (it.hasNext()) {
                            String next = it.next();
                            if (a.this.f38865b != null && a.this.f38865b.containsKey(next)) {
                                linkedHashMap.put(next, (a) a.this.f38865b.remove(next));
                            } else {
                                a aVar = new a(next);
                                aVar.s();
                                linkedHashMap.put(next, aVar);
                            }
                        }
                        if (a.this.f38865b != null) {
                            for (a aVar2 : a.this.f38865b.values()) {
                                aVar2.r();
                            }
                        }
                        a.this.f38865b = linkedHashMap;
                    } else if (this.f38873a.c() == p2.c.b.EDS) {
                        a.this.f38867d = true;
                        l0.this.f38853c.c(q2.b.INFO, "EDS cluster {0}, edsServiceName: {1}", this.f38873a.b(), this.f38873a.e());
                    } else {
                        a.this.f38867d = true;
                        l0.this.f38853c.c(q2.b.INFO, "Logical DNS cluster {0}", this.f38873a.b());
                    }
                    b.this.g();
                }
            }

            /* loaded from: classes5.dex */
            class c implements Runnable {
                c() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f38869f) {
                        return;
                    }
                    a.this.f38868e = true;
                    a.this.f38866c = null;
                    if (a.this.f38865b != null) {
                        for (a aVar : a.this.f38865b.values()) {
                            aVar.r();
                        }
                        a.this.f38865b = null;
                    }
                    b.this.g();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void s() {
                l0.this.f38858h.t(this.f38864a, this);
            }

            @Override // eh.p2.m
            public void a(Status status) {
                l0.this.f38855e.execute(new RunnableC0397a(status));
            }

            @Override // eh.p2.m
            public void b(String str) {
                l0.this.f38855e.execute(new c());
            }

            @Override // eh.p2.b
            public void f(p2.c cVar) {
                l0.this.f38855e.execute(new RunnableC0398b(cVar));
            }

            void r() {
                this.f38869f = true;
                l0.this.f38858h.j(this.f38864a, this);
                Map<String, a> map = this.f38865b;
                if (map != null) {
                    for (a aVar : map.values()) {
                        aVar.r();
                    }
                }
            }

            private a(String str) {
                this.f38864a = str;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            io.grpc.o0 o0Var;
            Object obj;
            t0.a.C0414a b10;
            ArrayList arrayList = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.add(this.f38861a);
            while (!arrayDeque.isEmpty()) {
                int size = arrayDeque.size();
                for (int i9 = 0; i9 < size; i9++) {
                    a aVar = (a) arrayDeque.remove();
                    if (!aVar.f38868e) {
                        return;
                    }
                    if (aVar.f38866c != null) {
                        if (aVar.f38867d) {
                            if (aVar.f38866c.c() == p2.c.b.EDS) {
                                b10 = t0.a.C0414a.a(aVar.f38864a, aVar.f38866c.e(), aVar.f38866c.j(), aVar.f38866c.k(), aVar.f38866c.o());
                            } else {
                                b10 = t0.a.C0414a.b(aVar.f38864a, aVar.f38866c.d(), aVar.f38866c.j(), aVar.f38866c.k(), aVar.f38866c.o());
                            }
                            arrayList.add(b10);
                        } else if (aVar.f38865b != null) {
                            arrayDeque.addAll(aVar.f38865b.values());
                        }
                    }
                }
            }
            Object obj2 = null;
            if (arrayList.isEmpty()) {
                io.grpc.n0 n0Var = this.f38862b;
                if (n0Var != null) {
                    n0Var.e();
                    this.f38862b = null;
                }
                l0.this.f38854d.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(Status.f41719u.r("CDS error: found 0 leaf (logical DNS or EDS) clusters for root cluster " + this.f38861a.f38864a)));
                return;
            }
            if (this.f38861a.f38866c.i() == p2.c.EnumC0404c.RING_HASH) {
                o0Var = l0.this.f38856f.d("ring_hash_experimental");
                obj = new a2.d(this.f38861a.f38866c.m(), this.f38861a.f38866c.l());
            } else {
                o0Var = null;
                obj = null;
            }
            if (this.f38861a.f38866c.i() == p2.c.EnumC0404c.LEAST_REQUEST) {
                o0Var = l0.this.f38856f.d("least_request_experimental");
                obj = new p1.c(this.f38861a.f38866c.a());
            }
            if (o0Var == null) {
                o0Var = l0.this.f38856f.d("round_robin");
            } else {
                obj2 = obj;
            }
            t0.a aVar2 = new t0.a(Collections.unmodifiableList(arrayList), new e2.b(o0Var, obj2));
            if (this.f38862b == null) {
                this.f38862b = l0.this.f38856f.d("cluster_resolver_experimental").a(l0.this.f38854d);
            }
            this.f38862b.d(l0.this.f38860j.e().d(aVar2).a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(Status status) {
            io.grpc.n0 n0Var = this.f38862b;
            if (n0Var != null) {
                n0Var.b(status);
            } else {
                l0.this.f38854d.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i() {
            this.f38861a.r();
            io.grpc.n0 n0Var = this.f38862b;
            if (n0Var != null) {
                n0Var.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j() {
            this.f38861a.s();
        }

        private b(String str) {
            this.f38861a = new a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(n0.d dVar) {
        this(dVar, io.grpc.p0.b());
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        this.f38853c.c(q2.b.WARNING, "Received name resolution error: {0}", status);
        b bVar = this.f38859i;
        if (bVar != null && bVar.f38862b != null) {
            this.f38859i.f38862b.b(status);
        } else {
            this.f38854d.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        if (this.f38860j != null) {
            return;
        }
        this.f38853c.c(q2.b.DEBUG, "Received resolution result: {0}", gVar);
        this.f38860j = gVar;
        io.grpc.internal.p1<p2> p1Var = (io.grpc.internal.p1) gVar.b().b(o1.f39035b);
        this.f38857g = p1Var;
        this.f38858h = p1Var.a();
        m0.a aVar = (m0.a) gVar.c();
        this.f38853c.c(q2.b.INFO, "Config: {0}", aVar);
        b bVar = new b(aVar.f38889a);
        this.f38859i = bVar;
        bVar.j();
    }

    @Override // io.grpc.n0
    public void e() {
        this.f38853c.b(q2.b.INFO, "Shutdown");
        b bVar = this.f38859i;
        if (bVar != null) {
            bVar.i();
        }
        io.grpc.internal.p1<p2> p1Var = this.f38857g;
        if (p1Var != null) {
            p1Var.b(this.f38858h);
        }
    }

    l0(n0.d dVar, io.grpc.p0 p0Var) {
        this.f38854d = (n0.d) com.google.common.base.o.t(dVar, "helper");
        this.f38855e = (io.grpc.d1) com.google.common.base.o.t(dVar.h(), "syncContext");
        this.f38856f = (io.grpc.p0) com.google.common.base.o.t(p0Var, "lbRegistry");
        q2 f10 = q2.f(io.grpc.g0.b("cds-lb", dVar.c()));
        this.f38853c = f10;
        f10.b(q2.b.INFO, "Created");
    }
}
