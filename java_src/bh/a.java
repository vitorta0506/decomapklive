package bh;

import com.google.common.base.j;
import com.google.common.base.l;
import com.google.common.base.o;
import com.google.common.base.u;
import com.google.common.base.w;
import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.g;
import io.grpc.health.v1.HealthCheckRequest;
import io.grpc.health.v1.HealthCheckResponse;
import io.grpc.internal.e2;
import io.grpc.internal.k;
import io.grpc.n0;
import io.grpc.q;
import io.grpc.s0;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class a extends n0.c {

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f1277d = Logger.getLogger(a.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final n0.c f1278a;

    /* renamed from: b  reason: collision with root package name */
    private final k.a f1279b;

    /* renamed from: c  reason: collision with root package name */
    private final w<u> f1280c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bh.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public final class C0016a implements n0.j {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f1281a = new RunnableC0017a();

        /* renamed from: b  reason: collision with root package name */
        private final d1 f1282b;

        /* renamed from: c  reason: collision with root package name */
        private final ScheduledExecutorService f1283c;

        /* renamed from: d  reason: collision with root package name */
        private final c f1284d;

        /* renamed from: e  reason: collision with root package name */
        private final n0.h f1285e;

        /* renamed from: f  reason: collision with root package name */
        private final ChannelLogger f1286f;

        /* renamed from: g  reason: collision with root package name */
        private n0.j f1287g;

        /* renamed from: h  reason: collision with root package name */
        private b f1288h;

        /* renamed from: i  reason: collision with root package name */
        private String f1289i;

        /* renamed from: j  reason: collision with root package name */
        private k f1290j;

        /* renamed from: k  reason: collision with root package name */
        private q f1291k;

        /* renamed from: l  reason: collision with root package name */
        private q f1292l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f1293m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f1294n;

        /* renamed from: o  reason: collision with root package name */
        private d1.c f1295o;

        /* renamed from: bh.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0017a implements Runnable {
            RunnableC0017a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0016a.this.w();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: bh.a$a$b */
        /* loaded from: classes5.dex */
        public class b extends g.a<HealthCheckResponse> {

            /* renamed from: a  reason: collision with root package name */
            private final g<HealthCheckRequest, HealthCheckResponse> f1298a;

            /* renamed from: b  reason: collision with root package name */
            private final String f1299b;

            /* renamed from: c  reason: collision with root package name */
            private final u f1300c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f1301d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: bh.a$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class RunnableC0018a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ HealthCheckResponse f1303a;

                RunnableC0018a(HealthCheckResponse healthCheckResponse) {
                    this.f1303a = healthCheckResponse;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b bVar = C0016a.this.f1288h;
                    b bVar2 = b.this;
                    if (bVar == bVar2) {
                        bVar2.f(this.f1303a);
                    }
                }
            }

            /* renamed from: bh.a$a$b$b  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0019b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Status f1305a;

                RunnableC0019b(Status status) {
                    this.f1305a = status;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b bVar = C0016a.this.f1288h;
                    b bVar2 = b.this;
                    if (bVar == bVar2) {
                        C0016a.this.f1288h = null;
                        b.this.g(this.f1305a);
                    }
                }
            }

            b() {
                this.f1300c = ((u) a.this.f1280c.get()).g();
                this.f1299b = C0016a.this.f1289i;
                this.f1298a = C0016a.this.f1285e.a().i(io.grpc.health.v1.a.a(), io.grpc.c.f42037k);
            }

            @Override // io.grpc.g.a
            public void a(Status status, s0 s0Var) {
                C0016a.this.f1282b.execute(new RunnableC0019b(status));
            }

            void e(String str) {
                this.f1298a.a(str, null);
            }

            void f(HealthCheckResponse healthCheckResponse) {
                this.f1301d = true;
                C0016a.this.f1290j = null;
                HealthCheckResponse.ServingStatus status = healthCheckResponse.getStatus();
                if (l.a(status, HealthCheckResponse.ServingStatus.SERVING)) {
                    C0016a.this.f1286f.a(ChannelLogger.ChannelLogLevel.INFO, "READY: health-check responded SERVING");
                    C0016a.this.s(q.a(ConnectivityState.READY));
                } else {
                    C0016a.this.f1286f.b(ChannelLogger.ChannelLogLevel.INFO, "TRANSIENT_FAILURE: health-check responded {0}", status);
                    C0016a c0016a = C0016a.this;
                    Status status2 = Status.f41719u;
                    c0016a.s(q.b(status2.r("Health-check service responded " + status + " for '" + this.f1299b + "'")));
                }
                this.f1298a.c(1);
            }

            void g(Status status) {
                long j10;
                if (l.a(status.n(), Status.Code.UNIMPLEMENTED)) {
                    C0016a.this.f1294n = true;
                    a.f1277d.log(Level.SEVERE, "Health-check with {0} is disabled. Server returned: {1}", new Object[]{C0016a.this.f1285e.c(), status});
                    C0016a.this.f1286f.b(ChannelLogger.ChannelLogLevel.ERROR, "Health-check disabled: {0}", status);
                    C0016a.this.f1286f.b(ChannelLogger.ChannelLogLevel.INFO, "{0} (no health-check)", C0016a.this.f1291k);
                    C0016a c0016a = C0016a.this;
                    c0016a.s(c0016a.f1291k);
                    return;
                }
                C0016a.this.f1286f.b(ChannelLogger.ChannelLogLevel.INFO, "TRANSIENT_FAILURE: health-check stream closed with {0}", status);
                C0016a.this.s(q.b(Status.f41719u.r("Health-check stream unexpectedly closed with " + status + " for '" + this.f1299b + "'")));
                if (this.f1301d) {
                    j10 = 0;
                } else {
                    if (C0016a.this.f1290j == null) {
                        C0016a c0016a2 = C0016a.this;
                        c0016a2.f1290j = a.this.f1279b.get();
                    }
                    j10 = C0016a.this.f1290j.a() - this.f1300c.d(TimeUnit.NANOSECONDS);
                }
                if (j10 <= 0) {
                    C0016a.this.w();
                    return;
                }
                o.A(!C0016a.this.u(), "Retry double scheduled");
                C0016a.this.f1286f.b(ChannelLogger.ChannelLogLevel.DEBUG, "Will retry health-check after {0} ns", Long.valueOf(j10));
                C0016a c0016a3 = C0016a.this;
                c0016a3.f1295o = c0016a3.f1282b.d(C0016a.this.f1281a, j10, TimeUnit.NANOSECONDS, C0016a.this.f1283c);
            }

            @Override // io.grpc.g.a
            /* renamed from: h */
            public void c(HealthCheckResponse healthCheckResponse) {
                C0016a.this.f1282b.execute(new RunnableC0018a(healthCheckResponse));
            }

            void i() {
                this.f1298a.e(this, new s0());
                this.f1298a.d(HealthCheckRequest.newBuilder().j0(C0016a.this.f1289i).build());
                this.f1298a.b();
                this.f1298a.c(1);
            }

            public String toString() {
                return j.c(this).e("callStarted", this.f1298a != null).d("serviceName", this.f1299b).e("hasResponded", this.f1301d).toString();
            }
        }

        C0016a(c cVar, n0.h hVar, d1 d1Var, ScheduledExecutorService scheduledExecutorService) {
            ConnectivityState connectivityState = ConnectivityState.IDLE;
            this.f1291k = q.a(connectivityState);
            this.f1292l = q.a(connectivityState);
            this.f1284d = (c) o.t(cVar, "helperImpl");
            this.f1285e = (n0.h) o.t(hVar, "subchannel");
            this.f1286f = (ChannelLogger) o.t(hVar.e(), "subchannelLogger");
            this.f1282b = (d1) o.t(d1Var, "syncContext");
            this.f1283c = (ScheduledExecutorService) o.t(scheduledExecutorService, "timerService");
        }

        private void r() {
            if (!this.f1294n && this.f1289i != null && l.a(this.f1291k.c(), ConnectivityState.READY)) {
                this.f1293m = true;
                if (this.f1288h != null || u()) {
                    return;
                }
                w();
                return;
            }
            this.f1293m = false;
            x("Client stops health check");
            this.f1290j = null;
            s(this.f1291k);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(q qVar) {
            o.A(this.f1285e != null, "init() not called");
            if (l.a(this.f1292l, qVar)) {
                return;
            }
            this.f1292l = qVar;
            this.f1287g.a(qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean u() {
            d1.c cVar = this.f1295o;
            return cVar != null && cVar.b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w() {
            o.A(this.f1289i != null, "serviceName is null");
            o.A(this.f1288h == null, "previous health-checking RPC has not been cleaned up");
            o.A(this.f1285e != null, "init() not called");
            if (!l.a(this.f1292l.c(), ConnectivityState.READY)) {
                this.f1286f.b(ChannelLogger.ChannelLogLevel.INFO, "CONNECTING: Starting health-check for \"{0}\"", this.f1289i);
                s(q.a(ConnectivityState.CONNECTING));
            }
            b bVar = new b();
            this.f1288h = bVar;
            bVar.i();
        }

        private void x(String str) {
            b bVar = this.f1288h;
            if (bVar != null) {
                bVar.e(str);
                this.f1288h = null;
            }
            d1.c cVar = this.f1295o;
            if (cVar != null) {
                cVar.a();
                this.f1295o = null;
            }
        }

        @Override // io.grpc.n0.j
        public void a(q qVar) {
            ConnectivityState c10 = this.f1291k.c();
            ConnectivityState connectivityState = ConnectivityState.READY;
            if (l.a(c10, connectivityState) && !l.a(qVar.c(), connectivityState)) {
                this.f1294n = false;
            }
            if (l.a(qVar.c(), ConnectivityState.SHUTDOWN)) {
                this.f1284d.f1314d.remove(this);
            }
            this.f1291k = qVar;
            r();
        }

        void t(n0.j jVar) {
            o.A(this.f1287g == null, "init() already called");
            this.f1287g = (n0.j) o.t(jVar, "listener");
        }

        public String toString() {
            return j.c(this).e("running", this.f1293m).e("disabled", this.f1294n).d("activeRpc", this.f1288h).d("serviceName", this.f1289i).d("rawState", this.f1291k).d("concludedState", this.f1292l).toString();
        }

        void v(String str) {
            String str2;
            if (l.a(str, this.f1289i)) {
                return;
            }
            this.f1289i = str;
            if (str == null) {
                str2 = "Health check disabled by service config";
            } else {
                str2 = "Switching to new service name: " + str;
            }
            x(str2);
            r();
        }
    }

    /* loaded from: classes5.dex */
    private static final class b extends dh.a {

        /* renamed from: c  reason: collision with root package name */
        final n0 f1307c;

        /* renamed from: d  reason: collision with root package name */
        final c f1308d;

        /* renamed from: e  reason: collision with root package name */
        final d1 f1309e;

        /* renamed from: f  reason: collision with root package name */
        final ScheduledExecutorService f1310f;

        b(c cVar, n0 n0Var) {
            this.f1308d = (c) o.t(cVar, "helper");
            this.f1309e = (d1) o.t(cVar.h(), "syncContext");
            this.f1310f = (ScheduledExecutorService) o.t(cVar.g(), "timerService");
            this.f1307c = (n0) o.t(n0Var, "delegate");
        }

        @Override // dh.a, io.grpc.n0
        public void d(n0.g gVar) {
            this.f1308d.n(e2.c((Map) gVar.b().b(n0.f43417b)));
            super.d(gVar);
        }

        @Override // dh.a
        protected n0 f() {
            return this.f1307c;
        }

        @Override // dh.a
        public String toString() {
            return j.c(this).d("delegate", f()).toString();
        }
    }

    /* loaded from: classes5.dex */
    private final class c extends dh.b {

        /* renamed from: a  reason: collision with root package name */
        private final n0.d f1311a;

        /* renamed from: b  reason: collision with root package name */
        private final d1 f1312b;

        /* renamed from: c  reason: collision with root package name */
        String f1313c;

        /* renamed from: d  reason: collision with root package name */
        final HashSet<C0016a> f1314d = new HashSet<>();

        c(n0.d dVar) {
            this.f1311a = (n0.d) o.t(dVar, "delegate");
            this.f1312b = (d1) o.t(dVar.h(), "syncContext");
        }

        @Override // dh.b, io.grpc.n0.d
        public n0.h b(n0.b bVar) {
            this.f1312b.e();
            n0.h b10 = super.b(bVar);
            C0016a c0016a = new C0016a(this, b10, this.f1312b, this.f1311a.g());
            this.f1314d.add(c0016a);
            d dVar = new d(b10, c0016a);
            String str = this.f1313c;
            if (str != null) {
                c0016a.v(str);
            }
            return dVar;
        }

        @Override // dh.b
        protected n0.d m() {
            return this.f1311a;
        }

        void n(String str) {
            this.f1313c = str;
            Iterator<C0016a> it = this.f1314d.iterator();
            while (it.hasNext()) {
                it.next().v(str);
            }
        }

        @Override // dh.b
        public String toString() {
            return j.c(this).d("delegate", m()).toString();
        }
    }

    /* loaded from: classes5.dex */
    static final class d extends dh.c {

        /* renamed from: a  reason: collision with root package name */
        final n0.h f1316a;

        /* renamed from: b  reason: collision with root package name */
        final C0016a f1317b;

        d(n0.h hVar, C0016a c0016a) {
            this.f1316a = (n0.h) o.t(hVar, "delegate");
            this.f1317b = (C0016a) o.t(c0016a, "hcState");
        }

        @Override // dh.c, io.grpc.n0.h
        public void i(n0.j jVar) {
            this.f1317b.t(jVar);
            k().i(this.f1317b);
        }

        @Override // dh.c
        protected n0.h k() {
            return this.f1316a;
        }
    }

    public a(n0.c cVar, k.a aVar, w<u> wVar) {
        this.f1278a = (n0.c) o.t(cVar, "delegateFactory");
        this.f1279b = (k.a) o.t(aVar, "backoffPolicyProvider");
        this.f1280c = (w) o.t(wVar, "stopwatchSupplier");
    }

    @Override // io.grpc.n0.c
    public n0 a(n0.d dVar) {
        c cVar = new c(dVar);
        return new b(cVar, this.f1278a.a(cVar));
    }
}
