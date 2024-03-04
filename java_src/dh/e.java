package dh;

import com.google.common.base.j;
import com.google.common.base.l;
import com.google.common.base.o;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.a;
import io.grpc.n0;
import io.grpc.q;
import io.grpc.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes5.dex */
final class e extends n0 {

    /* renamed from: h  reason: collision with root package name */
    static final a.c<d<q>> f38110h = a.c.a("state-info");

    /* renamed from: i  reason: collision with root package name */
    private static final Status f38111i = Status.f41704f.r("no subchannels ready");

    /* renamed from: c  reason: collision with root package name */
    private final n0.d f38112c;

    /* renamed from: f  reason: collision with root package name */
    private ConnectivityState f38115f;

    /* renamed from: d  reason: collision with root package name */
    private final Map<x, n0.h> f38113d = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private AbstractC0379e f38116g = new b(f38111i);

    /* renamed from: e  reason: collision with root package name */
    private final Random f38114e = new Random();

    /* loaded from: classes5.dex */
    class a implements n0.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.h f38117a;

        a(n0.h hVar) {
            this.f38117a = hVar;
        }

        @Override // io.grpc.n0.j
        public void a(q qVar) {
            e.this.k(this.f38117a, qVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b extends AbstractC0379e {

        /* renamed from: a  reason: collision with root package name */
        private final Status f38119a;

        b(Status status) {
            super(null);
            this.f38119a = (Status) o.t(status, "status");
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return this.f38119a.p() ? n0.e.g() : n0.e.f(this.f38119a);
        }

        @Override // dh.e.AbstractC0379e
        boolean b(AbstractC0379e abstractC0379e) {
            if (abstractC0379e instanceof b) {
                b bVar = (b) abstractC0379e;
                if (l.a(this.f38119a, bVar.f38119a) || (this.f38119a.p() && bVar.f38119a.p())) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return j.b(b.class).d("status", this.f38119a).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c extends AbstractC0379e {

        /* renamed from: c  reason: collision with root package name */
        private static final AtomicIntegerFieldUpdater<c> f38120c = AtomicIntegerFieldUpdater.newUpdater(c.class, "b");

        /* renamed from: a  reason: collision with root package name */
        private final List<n0.h> f38121a;

        /* renamed from: b  reason: collision with root package name */
        private volatile int f38122b;

        c(List<n0.h> list, int i9) {
            super(null);
            o.e(!list.isEmpty(), "empty list");
            this.f38121a = list;
            this.f38122b = i9 - 1;
        }

        private n0.h c() {
            int size = this.f38121a.size();
            AtomicIntegerFieldUpdater<c> atomicIntegerFieldUpdater = f38120c;
            int incrementAndGet = atomicIntegerFieldUpdater.incrementAndGet(this);
            if (incrementAndGet >= size) {
                int i9 = incrementAndGet % size;
                atomicIntegerFieldUpdater.compareAndSet(this, incrementAndGet, i9);
                incrementAndGet = i9;
            }
            return this.f38121a.get(incrementAndGet);
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return n0.e.h(c());
        }

        @Override // dh.e.AbstractC0379e
        boolean b(AbstractC0379e abstractC0379e) {
            if (abstractC0379e instanceof c) {
                c cVar = (c) abstractC0379e;
                return cVar == this || (this.f38121a.size() == cVar.f38121a.size() && new HashSet(this.f38121a).containsAll(cVar.f38121a));
            }
            return false;
        }

        public String toString() {
            return j.b(c.class).d("list", this.f38121a).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d<T> {

        /* renamed from: a  reason: collision with root package name */
        T f38123a;

        d(T t10) {
            this.f38123a = t10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dh.e$e  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static abstract class AbstractC0379e extends n0.i {
        private AbstractC0379e() {
        }

        abstract boolean b(AbstractC0379e abstractC0379e);

        /* synthetic */ AbstractC0379e(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(n0.d dVar) {
        this.f38112c = (n0.d) o.t(dVar, "helper");
    }

    private static List<n0.h> g(Collection<n0.h> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (n0.h hVar : collection) {
            if (j(hVar)) {
                arrayList.add(hVar);
            }
        }
        return arrayList;
    }

    private static d<q> h(n0.h hVar) {
        return (d) o.t((d) hVar.d().b(f38110h), "STATE_INFO");
    }

    static boolean j(n0.h hVar) {
        return h(hVar).f38123a.c() == ConnectivityState.READY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void k(n0.h hVar, q qVar) {
        if (this.f38113d.get(n(hVar.b())) != hVar) {
            return;
        }
        ConnectivityState c10 = qVar.c();
        ConnectivityState connectivityState = ConnectivityState.TRANSIENT_FAILURE;
        if (c10 == connectivityState || qVar.c() == ConnectivityState.IDLE) {
            this.f38112c.j();
        }
        ConnectivityState c11 = qVar.c();
        ConnectivityState connectivityState2 = ConnectivityState.IDLE;
        if (c11 == connectivityState2) {
            hVar.g();
        }
        d<q> h10 = h(hVar);
        if (h10.f38123a.c().equals(connectivityState) && (qVar.c().equals(ConnectivityState.CONNECTING) || qVar.c().equals(connectivityState2))) {
            return;
        }
        h10.f38123a = qVar;
        p();
    }

    private static <T> Set<T> l(Set<T> set, Set<T> set2) {
        HashSet hashSet = new HashSet(set);
        hashSet.removeAll(set2);
        return hashSet;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, io.grpc.q] */
    private void m(n0.h hVar) {
        hVar.h();
        h(hVar).f38123a = q.a(ConnectivityState.SHUTDOWN);
    }

    private static x n(x xVar) {
        return new x(xVar.a());
    }

    private static Map<x, x> o(List<x> list) {
        HashMap hashMap = new HashMap(list.size() * 2);
        for (x xVar : list) {
            hashMap.put(n(xVar), xVar);
        }
        return hashMap;
    }

    private void p() {
        List<n0.h> g10 = g(i());
        if (g10.isEmpty()) {
            boolean z10 = false;
            Status status = f38111i;
            for (n0.h hVar : i()) {
                q qVar = h(hVar).f38123a;
                z10 = (qVar.c() == ConnectivityState.CONNECTING || qVar.c() == ConnectivityState.IDLE) ? true : true;
                if (status == f38111i || !status.p()) {
                    status = qVar.d();
                }
            }
            q(z10 ? ConnectivityState.CONNECTING : ConnectivityState.TRANSIENT_FAILURE, new b(status));
            return;
        }
        q(ConnectivityState.READY, new c(g10, this.f38114e.nextInt(g10.size())));
    }

    private void q(ConnectivityState connectivityState, AbstractC0379e abstractC0379e) {
        if (connectivityState == this.f38115f && abstractC0379e.b(this.f38116g)) {
            return;
        }
        this.f38112c.k(connectivityState, abstractC0379e);
        this.f38115f = connectivityState;
        this.f38116g = abstractC0379e;
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        if (this.f38115f != ConnectivityState.READY) {
            q(ConnectivityState.TRANSIENT_FAILURE, new b(status));
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        List<x> a10 = gVar.a();
        Set<x> keySet = this.f38113d.keySet();
        Map<x, x> o10 = o(a10);
        Set<x> l10 = l(keySet, o10.keySet());
        for (Map.Entry<x, x> entry : o10.entrySet()) {
            x key = entry.getKey();
            x value = entry.getValue();
            n0.h hVar = this.f38113d.get(key);
            if (hVar != null) {
                hVar.j(Collections.singletonList(value));
            } else {
                n0.h hVar2 = (n0.h) o.t(this.f38112c.b(n0.b.c().d(value).f(io.grpc.a.c().d(f38110h, new d(q.a(ConnectivityState.IDLE))).a()).b()), "subchannel");
                hVar2.i(new a(hVar2));
                this.f38113d.put(key, hVar2);
                hVar2.g();
            }
        }
        ArrayList arrayList = new ArrayList();
        for (x xVar : l10) {
            arrayList.add(this.f38113d.remove(xVar));
        }
        p();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m((n0.h) it.next());
        }
    }

    @Override // io.grpc.n0
    public void e() {
        for (n0.h hVar : i()) {
            m(hVar);
        }
        this.f38113d.clear();
    }

    Collection<n0.h> i() {
        return this.f38113d.values();
    }
}
