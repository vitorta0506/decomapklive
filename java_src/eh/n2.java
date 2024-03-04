package eh;

import com.google.common.collect.ImmutableMap;
import eh.m2;
import eh.o2;
import eh.q2;
import eh.t2;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.n0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n2 extends io.grpc.n0 {

    /* renamed from: c  reason: collision with root package name */
    private final q2 f38983c;

    /* renamed from: f  reason: collision with root package name */
    private final n0.d f38986f;

    /* renamed from: g  reason: collision with root package name */
    private final io.grpc.d1 f38987g;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, dh.d> f38984d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, b> f38985e = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    private Map<String, o2.a> f38988h = ImmutableMap.of();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends dh.b {

        /* renamed from: a  reason: collision with root package name */
        String f38989a;

        /* renamed from: b  reason: collision with root package name */
        ConnectivityState f38990b;

        /* renamed from: c  reason: collision with root package name */
        n0.i f38991c;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ConnectivityState f38993a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ n0.i f38994b;

            a(ConnectivityState connectivityState, n0.i iVar) {
                this.f38993a = connectivityState;
                this.f38994b = iVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (n2.this.f38984d.containsKey(b.this.f38989a)) {
                    b bVar = b.this;
                    bVar.f38990b = this.f38993a;
                    bVar.f38991c = this.f38994b;
                    n2.this.k();
                }
            }
        }

        @Override // dh.b, io.grpc.n0.d
        public void k(ConnectivityState connectivityState, n0.i iVar) {
            n2.this.f38987g.execute(new a(connectivityState, iVar));
        }

        @Override // dh.b
        protected n0.d m() {
            return n2.this.f38986f;
        }

        private b(String str) {
            this.f38990b = ConnectivityState.CONNECTING;
            this.f38991c = t2.f39341a;
            this.f38989a = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n2(n0.d dVar) {
        this.f38986f = (n0.d) com.google.common.base.o.t(dVar, "helper");
        this.f38987g = (io.grpc.d1) com.google.common.base.o.t(dVar.h(), "syncContext");
        q2 f10 = q2.f(io.grpc.g0.b("weighted-target-lb", dVar.c()));
        this.f38983c = f10;
        f10.b(q2.b.INFO, "Created");
    }

    private static ConnectivityState j(ConnectivityState connectivityState, ConnectivityState connectivityState2) {
        if (connectivityState == null) {
            return connectivityState2;
        }
        ConnectivityState connectivityState3 = ConnectivityState.READY;
        return (connectivityState == connectivityState3 || connectivityState2 == connectivityState3 || connectivityState == (connectivityState3 = ConnectivityState.CONNECTING) || connectivityState2 == connectivityState3 || connectivityState == (connectivityState3 = ConnectivityState.IDLE) || connectivityState2 == connectivityState3) ? connectivityState3 : connectivityState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        n0.i m2Var;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ConnectivityState connectivityState = null;
        for (String str : this.f38988h.keySet()) {
            b bVar = this.f38985e.get(str);
            ConnectivityState connectivityState2 = bVar.f38990b;
            connectivityState = j(connectivityState, connectivityState2);
            int i9 = this.f38988h.get(str).f39043a;
            if (ConnectivityState.READY == connectivityState2) {
                arrayList.add(new m2.a(i9, bVar.f38991c));
            } else if (ConnectivityState.TRANSIENT_FAILURE == connectivityState2) {
                arrayList2.add(new m2.a(i9, bVar.f38991c));
            }
        }
        if (arrayList.isEmpty()) {
            if (connectivityState == ConnectivityState.TRANSIENT_FAILURE) {
                m2Var = new m2(arrayList2);
            } else {
                m2Var = t2.f39341a;
            }
        } else {
            m2Var = new m2(arrayList);
        }
        if (connectivityState != null) {
            this.f38986f.k(connectivityState, m2Var);
        }
    }

    @Override // io.grpc.n0
    public boolean a() {
        return true;
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        this.f38983c.c(q2.b.WARNING, "Received name resolution error: {0}", status);
        if (this.f38984d.isEmpty()) {
            this.f38986f.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
        }
        for (dh.d dVar : this.f38984d.values()) {
            dVar.b(status);
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        this.f38983c.c(q2.b.DEBUG, "Received resolution result: {0}", gVar);
        Object c10 = gVar.c();
        com.google.common.base.o.t(c10, "missing weighted_target lb config");
        Map<String, o2.a> map = ((o2.b) c10).f39045a;
        for (String str : map.keySet()) {
            o2.a aVar = map.get(str);
            if (!this.f38988h.containsKey(str)) {
                b bVar = new b(str);
                dh.d dVar = new dh.d(bVar);
                dVar.q(aVar.f39044b.b());
                this.f38985e.put(str, bVar);
                this.f38984d.put(str, dVar);
            } else if (!aVar.f39044b.b().equals(this.f38988h.get(str).f39044b.b())) {
                this.f38984d.get(str).q(aVar.f39044b.b());
            }
        }
        this.f38988h = map;
        for (String str2 : map.keySet()) {
            this.f38984d.get(str2).d(gVar.e().b(eh.b.a(gVar.a(), str2)).d(this.f38988h.get(str2).f39044b.a()).a());
        }
        for (String str3 : this.f38984d.keySet()) {
            if (!this.f38988h.containsKey(str3)) {
                this.f38984d.get(str3).e();
            }
        }
        this.f38984d.keySet().retainAll(this.f38988h.keySet());
        this.f38985e.keySet().retainAll(this.f38988h.keySet());
        k();
    }

    @Override // io.grpc.n0
    public void e() {
        this.f38983c.b(q2.b.INFO, "Shutdown");
        for (dh.d dVar : this.f38984d.values()) {
            dVar.e();
        }
        this.f38984d.clear();
    }
}
