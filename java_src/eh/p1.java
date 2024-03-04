package eh;

import eh.j2;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.a;
import io.grpc.k;
import io.grpc.n0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class p1 extends io.grpc.n0 {

    /* renamed from: i  reason: collision with root package name */
    static final a.c<g<io.grpc.q>> f39056i = a.c.a("state-info");

    /* renamed from: j  reason: collision with root package name */
    static final a.c<AtomicInteger> f39057j = a.c.a("in-flights");

    /* renamed from: k  reason: collision with root package name */
    private static final Status f39058k = Status.f41704f.r("no subchannels ready");

    /* renamed from: c  reason: collision with root package name */
    private final n0.d f39059c;

    /* renamed from: d  reason: collision with root package name */
    private final j2 f39060d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<io.grpc.x, n0.h> f39061e;

    /* renamed from: f  reason: collision with root package name */
    private ConnectivityState f39062f;

    /* renamed from: g  reason: collision with root package name */
    private d f39063g;

    /* renamed from: h  reason: collision with root package name */
    private int f39064h;

    /* loaded from: classes5.dex */
    class a implements n0.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.h f39065a;

        a(n0.h hVar) {
            this.f39065a = hVar;
        }

        @Override // io.grpc.n0.j
        public void a(io.grpc.q qVar) {
            p1.this.m(this.f39065a, qVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b extends d {

        /* renamed from: a  reason: collision with root package name */
        private final Status f39067a;

        b(Status status) {
            super(null);
            this.f39067a = (Status) com.google.common.base.o.t(status, "status");
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return this.f39067a.p() ? n0.e.g() : n0.e.f(this.f39067a);
        }

        @Override // eh.p1.d
        boolean b(d dVar) {
            if (dVar instanceof b) {
                b bVar = (b) dVar;
                if (com.google.common.base.l.a(this.f39067a, bVar.f39067a) || (this.f39067a.p() && bVar.f39067a.p())) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return com.google.common.base.j.b(b.class).d("status", this.f39067a).toString();
        }
    }

    /* loaded from: classes5.dex */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        final int f39068a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(int i9) {
            com.google.common.base.o.e(i9 >= 2, "choiceCount <= 1");
            this.f39068a = Math.min(i9, 10);
        }

        public String toString() {
            return com.google.common.base.j.c(this).b("choiceCount", this.f39068a).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class d extends n0.i {
        private d() {
        }

        abstract boolean b(d dVar);

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private static final class e extends k.a {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f39069a;

        /* loaded from: classes5.dex */
        class a extends io.grpc.k {
            a() {
            }

            @Override // io.grpc.c1
            public void i(Status status) {
                e.this.f39069a.decrementAndGet();
            }

            @Override // io.grpc.k
            public void m(io.grpc.a aVar, io.grpc.s0 s0Var) {
                e.this.f39069a.incrementAndGet();
            }
        }

        /* synthetic */ e(AtomicInteger atomicInteger, a aVar) {
            this(atomicInteger);
        }

        @Override // io.grpc.k.a
        public io.grpc.k a(k.b bVar, io.grpc.s0 s0Var) {
            return new a();
        }

        private e(AtomicInteger atomicInteger) {
            this.f39069a = (AtomicInteger) com.google.common.base.o.t(atomicInteger, "inFlights");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f extends d {

        /* renamed from: a  reason: collision with root package name */
        private final List<n0.h> f39071a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39072b;

        /* renamed from: c  reason: collision with root package name */
        private final j2 f39073c;

        f(List<n0.h> list, int i9, j2 j2Var) {
            super(null);
            com.google.common.base.o.e(!list.isEmpty(), "empty list");
            this.f39071a = list;
            this.f39072b = i9;
            this.f39073c = (j2) com.google.common.base.o.t(j2Var, "random");
        }

        private n0.h c() {
            List<n0.h> list = this.f39071a;
            n0.h hVar = list.get(this.f39073c.b(list.size()));
            for (int i9 = 0; i9 < this.f39072b - 1; i9++) {
                List<n0.h> list2 = this.f39071a;
                n0.h hVar2 = list2.get(this.f39073c.b(list2.size()));
                if (p1.i(hVar2).get() < p1.i(hVar).get()) {
                    hVar = hVar2;
                }
            }
            return hVar;
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            n0.h c10 = c();
            return n0.e.i(c10, new e(p1.i(c10), null));
        }

        @Override // eh.p1.d
        boolean b(d dVar) {
            if (dVar instanceof f) {
                f fVar = (f) dVar;
                return fVar == this || (this.f39071a.size() == fVar.f39071a.size() && new HashSet(this.f39071a).containsAll(fVar.f39071a) && this.f39072b == fVar.f39072b);
            }
            return false;
        }

        public String toString() {
            return com.google.common.base.j.b(f.class).d("list", this.f39071a).b("choiceCount", this.f39072b).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g<T> {

        /* renamed from: a  reason: collision with root package name */
        T f39074a;

        g(T t10) {
            this.f39074a = t10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p1(n0.d dVar) {
        this(dVar, j2.a.f38802a);
    }

    private static List<n0.h> h(Collection<n0.h> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (n0.h hVar : collection) {
            if (l(hVar)) {
                arrayList.add(hVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AtomicInteger i(n0.h hVar) {
        return (AtomicInteger) com.google.common.base.o.t((AtomicInteger) hVar.d().b(f39057j), "IN_FLIGHTS");
    }

    private static g<io.grpc.q> j(n0.h hVar) {
        return (g) com.google.common.base.o.t((g) hVar.d().b(f39056i), "STATE_INFO");
    }

    static boolean l(n0.h hVar) {
        return j(hVar).f39074a.c() == ConnectivityState.READY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void m(n0.h hVar, io.grpc.q qVar) {
        if (this.f39061e.get(p(hVar.b())) != hVar) {
            return;
        }
        ConnectivityState c10 = qVar.c();
        ConnectivityState connectivityState = ConnectivityState.TRANSIENT_FAILURE;
        if (c10 == connectivityState || qVar.c() == ConnectivityState.IDLE) {
            this.f39059c.j();
        }
        ConnectivityState c11 = qVar.c();
        ConnectivityState connectivityState2 = ConnectivityState.IDLE;
        if (c11 == connectivityState2) {
            hVar.g();
        }
        g<io.grpc.q> j10 = j(hVar);
        if (j10.f39074a.c().equals(connectivityState) && (qVar.c().equals(ConnectivityState.CONNECTING) || qVar.c().equals(connectivityState2))) {
            return;
        }
        j10.f39074a = qVar;
        r();
    }

    private static <T> Set<T> n(Set<T> set, Set<T> set2) {
        HashSet hashSet = new HashSet(set);
        hashSet.removeAll(set2);
        return hashSet;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, io.grpc.q] */
    private void o(n0.h hVar) {
        hVar.h();
        j(hVar).f39074a = io.grpc.q.a(ConnectivityState.SHUTDOWN);
    }

    private static io.grpc.x p(io.grpc.x xVar) {
        return new io.grpc.x(xVar.a());
    }

    private static Map<io.grpc.x, io.grpc.x> q(List<io.grpc.x> list) {
        HashMap hashMap = new HashMap(list.size() * 2);
        for (io.grpc.x xVar : list) {
            hashMap.put(p(xVar), xVar);
        }
        return hashMap;
    }

    private void r() {
        List<n0.h> h10 = h(k());
        if (h10.isEmpty()) {
            boolean z10 = false;
            Status status = f39058k;
            for (n0.h hVar : k()) {
                io.grpc.q qVar = j(hVar).f39074a;
                z10 = (qVar.c() == ConnectivityState.CONNECTING || qVar.c() == ConnectivityState.IDLE) ? true : true;
                if (status == f39058k || !status.p()) {
                    status = qVar.d();
                }
            }
            s(z10 ? ConnectivityState.CONNECTING : ConnectivityState.TRANSIENT_FAILURE, new b(status));
            return;
        }
        s(ConnectivityState.READY, new f(h10, this.f39064h, this.f39060d));
    }

    private void s(ConnectivityState connectivityState, d dVar) {
        if (connectivityState == this.f39062f && dVar.b(this.f39063g)) {
            return;
        }
        this.f39059c.k(connectivityState, dVar);
        this.f39062f = connectivityState;
        this.f39063g = dVar;
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        if (this.f39062f != ConnectivityState.READY) {
            s(ConnectivityState.TRANSIENT_FAILURE, new b(status));
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        c cVar = (c) gVar.c();
        if (cVar != null) {
            this.f39064h = cVar.f39068a;
        }
        List<io.grpc.x> a10 = gVar.a();
        Set<io.grpc.x> keySet = this.f39061e.keySet();
        Map<io.grpc.x, io.grpc.x> q10 = q(a10);
        Set<io.grpc.x> n9 = n(keySet, q10.keySet());
        for (Map.Entry<io.grpc.x, io.grpc.x> entry : q10.entrySet()) {
            io.grpc.x key = entry.getKey();
            io.grpc.x value = entry.getValue();
            n0.h hVar = this.f39061e.get(key);
            if (hVar != null) {
                hVar.j(Collections.singletonList(value));
            } else {
                n0.h hVar2 = (n0.h) com.google.common.base.o.t(this.f39059c.b(n0.b.c().d(value).f(io.grpc.a.c().d(f39056i, new g(io.grpc.q.a(ConnectivityState.IDLE))).d(f39057j, new AtomicInteger(0)).a()).b()), "subchannel");
                hVar2.i(new a(hVar2));
                this.f39061e.put(key, hVar2);
                hVar2.g();
            }
        }
        ArrayList arrayList = new ArrayList();
        for (io.grpc.x xVar : n9) {
            arrayList.add(this.f39061e.remove(xVar));
        }
        r();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            o((n0.h) it.next());
        }
    }

    @Override // io.grpc.n0
    public void e() {
        for (n0.h hVar : k()) {
            o(hVar);
        }
        this.f39061e.clear();
    }

    Collection<n0.h> k() {
        return this.f39061e.values();
    }

    p1(n0.d dVar, j2 j2Var) {
        this.f39061e = new HashMap();
        this.f39063g = new b(f39058k);
        this.f39064h = q1.f39124b.intValue();
        this.f39059c = (n0.d) com.google.common.base.o.t(dVar, "helper");
        this.f39060d = (j2) com.google.common.base.o.t(j2Var, "random");
    }
}
