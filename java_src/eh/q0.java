package eh;

import eh.q2;
import eh.r0;
import eh.t2;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.internal.e2;
import io.grpc.n0;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class q0 extends io.grpc.n0 {

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, b> f39104c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final n0.d f39105d;

    /* renamed from: e  reason: collision with root package name */
    private final io.grpc.d1 f39106e;

    /* renamed from: f  reason: collision with root package name */
    private final ScheduledExecutorService f39107f;

    /* renamed from: g  reason: collision with root package name */
    private final q2 f39108g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f39109a;

        a(Map map) {
            this.f39109a = map;
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            String str = (String) fVar.a().h(r2.f39177u);
            n0.i iVar = (n0.i) this.f39109a.get(str);
            if (iVar == null) {
                Status status = Status.f41719u;
                return n0.e.f(status.r("CDS encountered error: unable to find available subchannel for cluster " + str));
            }
            return iVar.a(fVar);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("pickers", this.f39109a).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f39111a;

        /* renamed from: b  reason: collision with root package name */
        private final dh.d f39112b;

        /* renamed from: c  reason: collision with root package name */
        private io.grpc.o0 f39113c;

        /* renamed from: d  reason: collision with root package name */
        private ConnectivityState f39114d = ConnectivityState.CONNECTING;

        /* renamed from: e  reason: collision with root package name */
        private n0.i f39115e = t2.f39341a;

        /* renamed from: f  reason: collision with root package name */
        private boolean f39116f;

        /* renamed from: g  reason: collision with root package name */
        d1.c f39117g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.j();
                q0.this.f39104c.remove(b.this.f39111a);
            }
        }

        /* renamed from: eh.q0$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        private final class C0405b extends dh.b {

            /* renamed from: eh.q0$b$b$a */
            /* loaded from: classes5.dex */
            class a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ ConnectivityState f39121a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ n0.i f39122b;

                a(ConnectivityState connectivityState, n0.i iVar) {
                    this.f39121a = connectivityState;
                    this.f39122b = iVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (q0.this.f39104c.containsKey(b.this.f39111a)) {
                        b.this.f39114d = this.f39121a;
                        b.this.f39115e = this.f39122b;
                        if (b.this.f39116f) {
                            return;
                        }
                        q0.this.m();
                    }
                }
            }

            private C0405b() {
            }

            @Override // dh.b, io.grpc.n0.d
            public void k(ConnectivityState connectivityState, n0.i iVar) {
                q0.this.f39106e.execute(new a(connectivityState, iVar));
            }

            @Override // dh.b
            protected n0.d m() {
                return q0.this.f39105d;
            }

            /* synthetic */ C0405b(b bVar, a aVar) {
                this();
            }
        }

        b(String str, io.grpc.o0 o0Var) {
            this.f39111a = str;
            this.f39113c = o0Var;
            dh.d dVar = new dh.d(new C0405b(this, null));
            this.f39112b = dVar;
            dVar.q(o0Var);
        }

        void h() {
            if (this.f39116f) {
                return;
            }
            this.f39117g = q0.this.f39106e.d(new a(), 15L, TimeUnit.MINUTES, q0.this.f39107f);
            this.f39116f = true;
            q0.this.f39108g.c(q2.b.DEBUG, "Child balancer {0} deactivated", this.f39111a);
        }

        void i(io.grpc.o0 o0Var) {
            d1.c cVar = this.f39117g;
            if (cVar != null && cVar.b()) {
                this.f39117g.a();
                this.f39116f = false;
                q0.this.f39108g.c(q2.b.DEBUG, "Child balancer {0} reactivated", this.f39111a);
            }
            if (this.f39113c.b().equals(o0Var.b())) {
                return;
            }
            q0.this.f39108g.c(q2.b.DEBUG, "Child balancer {0} switching policy from {1} to {2}", this.f39111a, this.f39113c.b(), o0Var.b());
            this.f39112b.q(o0Var);
            this.f39113c = o0Var;
        }

        void j() {
            d1.c cVar = this.f39117g;
            if (cVar != null && cVar.b()) {
                this.f39117g.a();
            }
            this.f39112b.e();
            q0.this.f39108g.c(q2.b.DEBUG, "Child balancer {0} deleted", this.f39111a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(n0.d dVar) {
        this.f39105d = (n0.d) com.google.common.base.o.t(dVar, "helper");
        this.f39106e = (io.grpc.d1) com.google.common.base.o.t(dVar.h(), "syncContext");
        this.f39107f = (ScheduledExecutorService) com.google.common.base.o.t(dVar.g(), "timeService");
        q2 f10 = q2.f(io.grpc.g0.b("cluster_manager-lb", dVar.c()));
        this.f39108g = f10;
        f10.b(q2.b.INFO, "Created");
    }

    private static ConnectivityState l(ConnectivityState connectivityState, ConnectivityState connectivityState2) {
        if (connectivityState == null) {
            return connectivityState2;
        }
        ConnectivityState connectivityState3 = ConnectivityState.READY;
        return (connectivityState == connectivityState3 || connectivityState2 == connectivityState3 || connectivityState == (connectivityState3 = ConnectivityState.CONNECTING) || connectivityState2 == connectivityState3 || connectivityState == (connectivityState3 = ConnectivityState.IDLE) || connectivityState2 == connectivityState3) ? connectivityState3 : connectivityState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        HashMap hashMap = new HashMap();
        ConnectivityState connectivityState = null;
        for (b bVar : this.f39104c.values()) {
            if (!bVar.f39116f) {
                hashMap.put(bVar.f39111a, bVar.f39115e);
                connectivityState = l(connectivityState, bVar.f39114d);
            }
        }
        if (connectivityState != null) {
            this.f39105d.k(connectivityState, new a(hashMap));
        }
    }

    @Override // io.grpc.n0
    public boolean a() {
        return true;
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        boolean z10 = true;
        this.f39108g.c(q2.b.WARNING, "Received name resolution error: {0}", status);
        for (b bVar : this.f39104c.values()) {
            if (!bVar.f39116f) {
                bVar.f39112b.b(status);
                z10 = false;
            }
        }
        if (z10) {
            this.f39105d.k(ConnectivityState.TRANSIENT_FAILURE, new t2.b(status));
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        this.f39108g.c(q2.b.DEBUG, "Received resolution result: {0}", gVar);
        Map<String, e2.b> map = ((r0.a) gVar.c()).f39136a;
        this.f39108g.c(q2.b.INFO, "Received cluster_manager lb config: child names={0}", map.keySet());
        for (Map.Entry<String, e2.b> entry : map.entrySet()) {
            String key = entry.getKey();
            io.grpc.o0 b10 = entry.getValue().b();
            Object a10 = entry.getValue().a();
            if (!this.f39104c.containsKey(key)) {
                this.f39104c.put(key, new b(key, b10));
            } else {
                this.f39104c.get(key).i(b10);
            }
            this.f39104c.get(key).f39112b.d(gVar.e().d(a10).a());
        }
        for (String str : this.f39104c.keySet()) {
            if (!map.containsKey(str)) {
                this.f39104c.get(str).h();
            }
        }
        m();
    }

    @Override // io.grpc.n0
    public void e() {
        this.f39108g.b(q2.b.INFO, "Shutdown");
        for (b bVar : this.f39104c.values()) {
            bVar.j();
        }
        this.f39104c.clear();
    }
}
