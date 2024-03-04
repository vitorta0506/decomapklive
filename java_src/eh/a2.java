package eh;

import com.google.common.collect.w7;
import eh.q2;
import eh.t2;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.a;
import io.grpc.n0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
final class a2 extends io.grpc.n0 {

    /* renamed from: i  reason: collision with root package name */
    private static final a.c<b<io.grpc.q>> f38664i = a.c.a("state-info");

    /* renamed from: j  reason: collision with root package name */
    private static final Status f38665j = Status.f41718t.r("RPC hash not found. Probably a bug because xds resolver config selector always generates a hash.");

    /* renamed from: k  reason: collision with root package name */
    private static final u2 f38666k = u2.f39345c;

    /* renamed from: c  reason: collision with root package name */
    private final q2 f38667c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.d1 f38668d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<io.grpc.x, n0.h> f38669e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final n0.d f38670f;

    /* renamed from: g  reason: collision with root package name */
    private List<c> f38671g;

    /* renamed from: h  reason: collision with root package name */
    private ConnectivityState f38672h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements n0.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.h f38673a;

        a(n0.h hVar) {
            this.f38673a = hVar;
        }

        @Override // io.grpc.n0.j
        public void a(io.grpc.q qVar) {
            a2.this.k(this.f38673a, qVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        T f38675a;

        b(T t10) {
            this.f38675a = t10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        private final long f38676a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.x f38677b;

        /* synthetic */ c(long j10, io.grpc.x xVar, a aVar) {
            this(j10, xVar);
        }

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(c cVar) {
            return Long.compare(this.f38676a, cVar.f38676a);
        }

        private c(long j10, io.grpc.x xVar) {
            this.f38676a = j10;
            this.f38677b = xVar;
        }
    }

    /* loaded from: classes5.dex */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        final long f38678a;

        /* renamed from: b  reason: collision with root package name */
        final long f38679b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(long j10, long j11) {
            com.google.common.base.o.e(j10 > 0, "minRingSize <= 0");
            com.google.common.base.o.e(j11 > 0, "maxRingSize <= 0");
            com.google.common.base.o.e(j10 <= j11, "minRingSize > maxRingSize");
            this.f38678a = j10;
            this.f38679b = j11;
        }

        public String toString() {
            return com.google.common.base.j.c(this).c("minRingSize", this.f38678a).c("maxRingSize", this.f38679b).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class e extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.d1 f38680a;

        /* renamed from: b  reason: collision with root package name */
        private final List<c> f38681b;

        /* renamed from: c  reason: collision with root package name */
        private final Map<io.grpc.x, f> f38682c;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ n0.h f38683a;

            a(n0.h hVar) {
                this.f38683a = hVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f38683a.g();
            }
        }

        /* synthetic */ e(io.grpc.d1 d1Var, List list, Map map, a aVar) {
            this(d1Var, list, map);
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            int i9;
            Long l10 = (Long) fVar.a().h(r2.f39178v);
            if (l10 == null) {
                return n0.e.f(a2.f38665j);
            }
            int size = this.f38681b.size();
            int i10 = 0;
            do {
                i9 = (i10 + size) / 2;
                if (i9 == this.f38681b.size()) {
                    break;
                }
                long j10 = this.f38681b.get(i9).f38676a;
                long j11 = i9 == 0 ? 0L : this.f38681b.get(i9 - 1).f38676a;
                if (l10.longValue() <= j10 && l10.longValue() > j11) {
                    break;
                } else if (j10 < l10.longValue()) {
                    i10 = i9 + 1;
                    continue;
                } else {
                    size = i9 - 1;
                    continue;
                }
            } while (i10 <= size);
            i9 = 0;
            n0.h hVar = null;
            n0.h hVar2 = null;
            boolean z10 = false;
            boolean z11 = true;
            for (int i11 = 0; i11 < this.f38681b.size(); i11++) {
                f fVar2 = this.f38682c.get(this.f38681b.get((i9 + i11) % this.f38681b.size()).f38677b);
                if (fVar2.f38686b.c() == ConnectivityState.READY) {
                    return n0.e.h(fVar2.f38685a);
                }
                if (hVar == null) {
                    hVar = fVar2.f38685a;
                } else if (fVar2.f38685a != hVar) {
                    if (hVar2 == null) {
                        hVar2 = fVar2.f38685a;
                    } else if (fVar2.f38685a != hVar2) {
                        z11 = false;
                    }
                }
                if (fVar2.f38686b.c() != ConnectivityState.TRANSIENT_FAILURE && !z10) {
                    if (fVar2.f38686b.c() == ConnectivityState.IDLE) {
                        this.f38680a.execute(new a(fVar2.f38685a));
                    }
                    if (z11) {
                        return n0.e.g();
                    }
                    z10 = true;
                }
            }
            return n0.e.f(this.f38682c.get(this.f38681b.get(i9).f38677b).f38686b.d());
        }

        private e(io.grpc.d1 d1Var, List<c> list, Map<io.grpc.x, n0.h> map) {
            this.f38680a = d1Var;
            this.f38681b = list;
            this.f38682c = new HashMap(map.size());
            for (Map.Entry<io.grpc.x, n0.h> entry : map.entrySet()) {
                n0.h value = entry.getValue();
                this.f38682c.put(entry.getKey(), new f(value, (io.grpc.q) ((b) value.d().b(a2.f38664i)).f38675a, null));
            }
        }
    }

    /* loaded from: classes5.dex */
    private static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final n0.h f38685a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.q f38686b;

        /* synthetic */ f(n0.h hVar, io.grpc.q qVar, a aVar) {
            this(hVar, qVar);
        }

        private f(n0.h hVar, io.grpc.q qVar) {
            this.f38685a = hVar;
            this.f38686b = qVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a2(n0.d dVar) {
        this.f38670f = (n0.d) com.google.common.base.o.t(dVar, "helper");
        this.f38668d = (io.grpc.d1) com.google.common.base.o.t(dVar.h(), "syncContext");
        q2 f10 = q2.f(io.grpc.g0.b("ring_hash_lb", dVar.c()));
        this.f38667c = f10;
        f10.b(q2.b.INFO, "Created");
    }

    private static List<c> i(Map<io.grpc.x, Long> map, long j10, double d10) {
        ArrayList arrayList = new ArrayList();
        double d11 = 0.0d;
        double d12 = 0.0d;
        for (Map.Entry<io.grpc.x, Long> entry : map.entrySet()) {
            io.grpc.x key = entry.getKey();
            double longValue = entry.getValue().longValue() / j10;
            StringBuilder sb2 = new StringBuilder(key.a().toString());
            sb2.append('_');
            d11 += longValue * d10;
            long j11 = 0;
            while (d12 < d11) {
                sb2.append(j11);
                arrayList.add(new c(f38666k.b(sb2.toString()), key, null));
                j11++;
                d12 += 1.0d;
                sb2.setLength(sb2.length() - 1);
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    private static b<io.grpc.q> j(n0.h hVar) {
        return (b) com.google.common.base.o.t((b) hVar.d().b(f38664i), "STATE_INFO");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void k(n0.h hVar, io.grpc.q qVar) {
        if (this.f38669e.get(m(hVar.b())) != hVar) {
            return;
        }
        ConnectivityState c10 = qVar.c();
        ConnectivityState connectivityState = ConnectivityState.TRANSIENT_FAILURE;
        if (c10 == connectivityState || qVar.c() == ConnectivityState.IDLE) {
            this.f38670f.j();
        }
        b<io.grpc.q> j10 = j(hVar);
        if (j10.f38675a.c() == connectivityState && (qVar.c() == ConnectivityState.CONNECTING || qVar.c() == ConnectivityState.IDLE)) {
            return;
        }
        j10.f38675a = qVar;
        o();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, io.grpc.q] */
    private static void l(n0.h hVar) {
        hVar.h();
        j(hVar).f38675a = io.grpc.q.a(ConnectivityState.SHUTDOWN);
    }

    private static io.grpc.x m(io.grpc.x xVar) {
        return new io.grpc.x(xVar.a());
    }

    private static Map<io.grpc.x, io.grpc.x> n(List<io.grpc.x> list) {
        HashMap hashMap = new HashMap(list.size() * 2);
        for (io.grpc.x xVar : list) {
            hashMap.put(m(xVar), xVar);
        }
        return hashMap;
    }

    private void o() {
        ConnectivityState connectivityState;
        com.google.common.base.o.A(!this.f38669e.isEmpty(), "no subchannel has been created");
        Iterator<n0.h> it = this.f38669e.values().iterator();
        int i9 = 0;
        n0.h hVar = null;
        boolean z10 = false;
        while (true) {
            if (!it.hasNext()) {
                connectivityState = null;
                break;
            }
            n0.h next = it.next();
            ConnectivityState c10 = j(next).f38675a.c();
            connectivityState = ConnectivityState.READY;
            if (c10 == connectivityState) {
                break;
            } else if (c10 == ConnectivityState.TRANSIENT_FAILURE) {
                i9++;
            } else if (c10 == ConnectivityState.CONNECTING) {
                z10 = true;
            } else if (c10 == ConnectivityState.IDLE && hVar == null) {
                hVar = next;
            }
        }
        if (connectivityState == null) {
            if (i9 >= 2) {
                if (!z10 && hVar != null) {
                    hVar.g();
                }
                connectivityState = ConnectivityState.TRANSIENT_FAILURE;
            } else if (z10) {
                connectivityState = ConnectivityState.CONNECTING;
            } else if (hVar != null) {
                connectivityState = ConnectivityState.IDLE;
            } else {
                connectivityState = ConnectivityState.TRANSIENT_FAILURE;
            }
        }
        this.f38670f.k(connectivityState, new e(this.f38668d, this.f38671g, this.f38669e, null));
        this.f38672h = connectivityState;
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        if (this.f38672h != ConnectivityState.READY) {
            this.f38670f.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        this.f38667c.c(q2.b.DEBUG, "Received resolution result: {0}", gVar);
        List<io.grpc.x> a10 = gVar.a();
        if (a10.isEmpty()) {
            b(Status.f41719u.r("Ring hash lb error: EDS resolution was successful, but returned server addresses are empty."));
            return;
        }
        HashSet<io.grpc.x> h10 = w7.h(w7.a(this.f38669e.keySet(), n(a10).keySet()));
        d dVar = (d) gVar.c();
        HashMap hashMap = new HashMap();
        long j10 = 0;
        for (io.grpc.x xVar : a10) {
            Long l10 = (Long) xVar.b().b(o1.f39039f);
            if (l10 == null) {
                l10 = 1L;
            }
            j10 += l10.longValue();
            io.grpc.x m10 = m(xVar);
            if (hashMap.containsKey(m10)) {
                hashMap.put(m10, Long.valueOf(((Long) hashMap.get(m10)).longValue() + l10.longValue()));
            } else {
                hashMap.put(m10, l10);
            }
            n0.h hVar = this.f38669e.get(m10);
            if (hVar != null) {
                hVar.j(Collections.singletonList(xVar));
            } else {
                n0.h b10 = this.f38670f.b(n0.b.c().d(xVar).f(io.grpc.a.c().d(f38664i, new b(io.grpc.q.a(ConnectivityState.IDLE))).a()).b());
                b10.i(new a(b10));
                this.f38669e.put(m10, b10);
            }
        }
        double longValue = ((Long) Collections.min(hashMap.values())).longValue() / j10;
        this.f38671g = i(hashMap, j10, Math.min(Math.ceil(dVar.f38678a * longValue) / longValue, dVar.f38679b));
        ArrayList<n0.h> arrayList = new ArrayList();
        for (io.grpc.x xVar2 : h10) {
            arrayList.add(this.f38669e.remove(xVar2));
        }
        o();
        for (n0.h hVar2 : arrayList) {
            l(hVar2);
        }
    }

    @Override // io.grpc.n0
    public void e() {
        this.f38667c.b(q2.b.INFO, "Shutdown");
        for (n0.h hVar : this.f38669e.values()) {
            l(hVar);
        }
        this.f38669e.clear();
    }
}
