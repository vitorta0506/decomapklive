package eh;

import eh.q2;
import eh.t2;
import eh.w1;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.internal.e2;
import io.grpc.n0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class v1 extends io.grpc.n0 {

    /* renamed from: c  reason: collision with root package name */
    private final n0.d f39355c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.d1 f39356d;

    /* renamed from: e  reason: collision with root package name */
    private final ScheduledExecutorService f39357e;

    /* renamed from: f  reason: collision with root package name */
    private final q2 f39358f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, a> f39359g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    private n0.g f39360h;

    /* renamed from: i  reason: collision with root package name */
    private List<String> f39361i;

    /* renamed from: j  reason: collision with root package name */
    private Map<String, w1.a.C0418a> f39362j;

    /* renamed from: k  reason: collision with root package name */
    private String f39363k;

    /* renamed from: l  reason: collision with root package name */
    private ConnectivityState f39364l;

    /* renamed from: m  reason: collision with root package name */
    private n0.i f39365m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f39366a;

        /* renamed from: b  reason: collision with root package name */
        final c f39367b;

        /* renamed from: c  reason: collision with root package name */
        final dh.d f39368c;

        /* renamed from: d  reason: collision with root package name */
        final d1.c f39369d;

        /* renamed from: e  reason: collision with root package name */
        d1.c f39370e;

        /* renamed from: f  reason: collision with root package name */
        String f39371f;

        /* renamed from: g  reason: collision with root package name */
        ConnectivityState f39372g = ConnectivityState.CONNECTING;

        /* renamed from: h  reason: collision with root package name */
        n0.i f39373h = t2.f39341a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: eh.v1$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0416a implements Runnable {
            RunnableC0416a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.c();
                v1.this.f39359g.remove(a.this.f39366a);
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f39376a;

            b(String str) {
                this.f39376a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                d1.c cVar = a.this.f39370e;
                if (cVar == null || !cVar.b()) {
                    a aVar = a.this;
                    Status status = Status.f41719u;
                    aVar.f39373h = new t2.b(status.r("Connection timeout for priority " + this.f39376a));
                    v1.this.f39358f.c(q2.b.DEBUG, "Priority {0} failed over to next", this.f39376a);
                    v1.this.f39363k = null;
                    v1.this.n(true);
                }
            }
        }

        /* loaded from: classes5.dex */
        final class c extends dh.b {

            /* renamed from: a  reason: collision with root package name */
            private final boolean f39378a;

            /* renamed from: eh.v1$a$c$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0417a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ ConnectivityState f39380a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ n0.i f39381b;

                RunnableC0417a(ConnectivityState connectivityState, n0.i iVar) {
                    this.f39380a = connectivityState;
                    this.f39381b = iVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (v1.this.f39359g.containsKey(a.this.f39366a)) {
                        a aVar = a.this;
                        aVar.f39372g = this.f39380a;
                        aVar.f39373h = this.f39381b;
                        d1.c cVar = aVar.f39370e;
                        if (cVar == null || !cVar.b()) {
                            if (a.this.f39369d.b() && (this.f39380a.equals(ConnectivityState.READY) || this.f39380a.equals(ConnectivityState.IDLE) || this.f39380a.equals(ConnectivityState.TRANSIENT_FAILURE))) {
                                a.this.f39369d.a();
                            }
                            v1.this.n(true);
                        }
                    }
                }
            }

            c(boolean z10) {
                this.f39378a = z10;
            }

            @Override // dh.b, io.grpc.n0.d
            public void j() {
                if (this.f39378a) {
                    return;
                }
                m().j();
            }

            @Override // dh.b, io.grpc.n0.d
            public void k(ConnectivityState connectivityState, n0.i iVar) {
                v1.this.f39356d.execute(new RunnableC0417a(connectivityState, iVar));
            }

            @Override // dh.b
            protected n0.d m() {
                return v1.this.f39355c;
            }
        }

        a(String str, boolean z10) {
            this.f39366a = str;
            c cVar = new c(z10);
            this.f39367b = cVar;
            this.f39368c = new dh.d(cVar);
            this.f39369d = v1.this.f39356d.d(new b(str), 10L, TimeUnit.SECONDS, v1.this.f39357e);
            v1.this.f39358f.c(q2.b.DEBUG, "Priority created: {0}", str);
        }

        void a() {
            d1.c cVar = this.f39370e;
            if (cVar == null || !cVar.b()) {
                this.f39370e = v1.this.f39356d.d(new RunnableC0416a(), 15L, TimeUnit.MINUTES, v1.this.f39357e);
                v1.this.f39358f.c(q2.b.DEBUG, "Priority deactivated: {0}", this.f39366a);
            }
        }

        void b() {
            d1.c cVar = this.f39370e;
            if (cVar == null || !cVar.b()) {
                return;
            }
            this.f39370e.a();
            v1.this.f39358f.c(q2.b.DEBUG, "Priority reactivated: {0}", this.f39366a);
        }

        void c() {
            if (this.f39369d.b()) {
                this.f39369d.a();
            }
            d1.c cVar = this.f39370e;
            if (cVar != null && cVar.b()) {
                this.f39370e.a();
            }
            this.f39368c.e();
            v1.this.f39358f.c(q2.b.DEBUG, "Priority deleted: {0}", this.f39366a);
        }

        void d() {
            e2.b bVar = ((w1.a) v1.this.f39360h.c()).f39399a.get(this.f39366a).f39401a;
            io.grpc.o0 b10 = bVar.b();
            String b11 = b10.b();
            if (!b11.equals(this.f39371f)) {
                this.f39371f = b11;
                this.f39368c.q(b10);
            }
            this.f39368c.d(v1.this.f39360h.e().b(eh.b.a(v1.this.f39360h.a(), this.f39366a)).d(bVar.a()).a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v1(n0.d dVar) {
        this.f39355c = (n0.d) com.google.common.base.o.t(dVar, "helper");
        this.f39356d = dVar.h();
        this.f39357e = dVar.g();
        q2 f10 = q2.f(io.grpc.g0.b("priority-lb", dVar.c()));
        this.f39358f = f10;
        f10.b(q2.b.INFO, "Created");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(boolean z10) {
        ConnectivityState connectivityState;
        for (int i9 = 0; i9 < this.f39361i.size(); i9++) {
            String str = this.f39361i.get(i9);
            if (!this.f39359g.containsKey(str)) {
                a aVar = new a(str, this.f39362j.get(str).f39402b);
                this.f39359g.put(str, aVar);
                aVar.d();
                o(str, ConnectivityState.CONNECTING, t2.f39341a);
                return;
            }
            a aVar2 = this.f39359g.get(str);
            aVar2.b();
            if (!aVar2.f39372g.equals(ConnectivityState.READY) && !aVar2.f39372g.equals(ConnectivityState.IDLE)) {
                d1.c cVar = aVar2.f39369d;
                if (cVar != null && cVar.b()) {
                    if (z10) {
                        o(str, ConnectivityState.CONNECTING, t2.f39341a);
                        return;
                    }
                    return;
                } else if (str.equals(this.f39363k) && (connectivityState = aVar2.f39372g) != ConnectivityState.TRANSIENT_FAILURE) {
                    o(str, connectivityState, aVar2.f39373h);
                    return;
                }
            } else {
                this.f39358f.c(q2.b.DEBUG, "Shifted to priority {0}", str);
                o(str, aVar2.f39372g, aVar2.f39373h);
                for (int i10 = i9 + 1; i10 < this.f39361i.size(); i10++) {
                    String str2 = this.f39361i.get(i10);
                    if (this.f39359g.containsKey(str2)) {
                        this.f39359g.get(str2).a();
                    }
                }
                return;
            }
        }
        this.f39358f.b(q2.b.DEBUG, "All priority failed");
        List<String> list = this.f39361i;
        String str3 = list.get(list.size() - 1);
        o(str3, ConnectivityState.TRANSIENT_FAILURE, this.f39359g.get(str3).f39373h);
    }

    private void o(String str, ConnectivityState connectivityState, n0.i iVar) {
        if (Objects.equals(str, this.f39363k) && connectivityState.equals(this.f39364l) && iVar.equals(this.f39365m)) {
            return;
        }
        this.f39363k = str;
        this.f39364l = connectivityState;
        this.f39365m = iVar;
        this.f39355c.k(connectivityState, iVar);
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        boolean z10 = true;
        this.f39358f.c(q2.b.WARNING, "Received name resolution error: {0}", status);
        for (a aVar : this.f39359g.values()) {
            if (this.f39361i.contains(aVar.f39366a)) {
                aVar.f39368c.b(status);
                z10 = false;
            }
        }
        if (z10) {
            o(null, ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        this.f39358f.c(q2.b.DEBUG, "Received resolution result: {0}", gVar);
        this.f39360h = gVar;
        w1.a aVar = (w1.a) gVar.c();
        com.google.common.base.o.t(aVar, "missing priority lb config");
        this.f39361i = aVar.f39400b;
        this.f39362j = aVar.f39399a;
        HashSet hashSet = new HashSet(aVar.f39400b);
        for (String str : this.f39359g.keySet()) {
            if (!hashSet.contains(str)) {
                this.f39359g.get(str).a();
            }
        }
        for (String str2 : this.f39361i) {
            if (this.f39359g.containsKey(str2)) {
                this.f39359g.get(str2).d();
            }
        }
        n(false);
    }

    @Override // io.grpc.n0
    public void e() {
        this.f39358f.b(q2.b.INFO, "Shutdown");
        for (a aVar : this.f39359g.values()) {
            aVar.c();
        }
        this.f39359g.clear();
    }
}
