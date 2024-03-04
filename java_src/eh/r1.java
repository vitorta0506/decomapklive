package eh;

import com.google.common.collect.e9;
import eh.a1;
import eh.q2;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.internal.k;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Locality;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.ClusterStats;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsResponse;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.a;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsRequest;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class r1 {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.g0 f39137a;

    /* renamed from: b  reason: collision with root package name */
    private final q2 f39138b;

    /* renamed from: c  reason: collision with root package name */
    private final io.grpc.d f39139c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.r f39140d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f39141e;

    /* renamed from: f  reason: collision with root package name */
    private final a1.c f39142f;

    /* renamed from: g  reason: collision with root package name */
    private final io.grpc.d1 f39143g;

    /* renamed from: h  reason: collision with root package name */
    private final ScheduledExecutorService f39144h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.common.base.u f39145i;

    /* renamed from: j  reason: collision with root package name */
    private final k.a f39146j;

    /* renamed from: k  reason: collision with root package name */
    private final s1 f39147k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f39148l;

    /* renamed from: m  reason: collision with root package name */
    private io.grpc.internal.k f39149m;

    /* renamed from: n  reason: collision with root package name */
    private d1.c f39150n;

    /* renamed from: o  reason: collision with root package name */
    private d f39151o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final d f39152a;

        b(d dVar) {
            this.f39152a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f39152a.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.this.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public abstract class d {

        /* renamed from: a  reason: collision with root package name */
        boolean f39154a;

        /* renamed from: b  reason: collision with root package name */
        boolean f39155b;

        /* renamed from: c  reason: collision with root package name */
        long f39156c;

        /* renamed from: d  reason: collision with root package name */
        boolean f39157d;

        /* renamed from: e  reason: collision with root package name */
        List<String> f39158e;

        /* renamed from: f  reason: collision with root package name */
        d1.c f39159f;

        private d() {
            this.f39156c = -1L;
        }

        private void c() {
            d1.c cVar = this.f39159f;
            if (cVar != null && cVar.b()) {
                this.f39159f.a();
                this.f39159f = null;
            }
            if (r1.this.f39151o == this) {
                r1.this.f39151o = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Exception exc) {
            if (this.f39155b) {
                return;
            }
            this.f39155b = true;
            c();
            j(exc);
        }

        private void h(Status status) {
            com.google.common.base.o.e(!status.p(), "unexpected OK status");
            if (this.f39155b) {
                return;
            }
            r1.this.f39138b.c(q2.b.ERROR, "LRS stream closed with status {0}: {1}. Cause: {2}", status.n(), status.o(), status.m());
            this.f39155b = true;
            c();
            if (this.f39154a || r1.this.f39149m == null) {
                r1 r1Var = r1.this;
                r1Var.f39149m = r1Var.f39146j.get();
            }
            long a10 = !this.f39154a ? r1.this.f39149m.a() - r1.this.f39145i.d(TimeUnit.NANOSECONDS) : 0L;
            r1.this.f39138b.c(q2.b.INFO, "Retry LRS stream in {0} ns", Long.valueOf(a10));
            if (a10 <= 0) {
                r1.this.p();
                return;
            }
            r1 r1Var2 = r1.this;
            r1Var2.f39150n = r1Var2.f39143g.d(new c(), a10, TimeUnit.NANOSECONDS, r1.this.f39144h);
        }

        private void i() {
            d1.c cVar = this.f39159f;
            if (cVar != null && cVar.b()) {
                this.f39159f.a();
                this.f39159f = null;
            }
            if (this.f39156c > 0) {
                this.f39159f = r1.this.f39143g.d(new b(this), this.f39156c, TimeUnit.NANOSECONDS, r1.this.f39144h);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k() {
            List<g2> arrayList;
            if (this.f39155b) {
                return;
            }
            if (this.f39157d) {
                arrayList = r1.this.f39147k.c();
            } else {
                arrayList = new ArrayList<>();
                for (String str : this.f39158e) {
                    arrayList.addAll(r1.this.f39147k.f(str));
                }
            }
            l(arrayList);
            i();
        }

        final void e() {
            h(Status.f41719u.r("Closed by server"));
        }

        final void f(Throwable th2) {
            h(Status.l(th2));
        }

        final void g(List<String> list, boolean z10, long j10) {
            if (this.f39155b) {
                return;
            }
            if (!this.f39154a) {
                r1.this.f39138b.b(q2.b.DEBUG, "Initial LRS response received");
                this.f39154a = true;
            }
            this.f39157d = z10;
            if (z10) {
                r1.this.f39138b.b(q2.b.INFO, "Report loads for all clusters");
            } else {
                r1.this.f39138b.c(q2.b.INFO, "Report loads for clusters: ", list);
                this.f39158e = list;
            }
            this.f39156c = j10;
            r1.this.f39138b.c(q2.b.INFO, "Update load reporting interval to {0} ns", Long.valueOf(this.f39156c));
            i();
        }

        abstract void j(Exception exc);

        abstract void l(List<g2> list);

        abstract void m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class e extends d {

        /* renamed from: h  reason: collision with root package name */
        io.grpc.stub.h<LoadStatsRequest> f39161h;

        /* loaded from: classes5.dex */
        class a implements io.grpc.stub.h<LoadStatsResponse> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.r1$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class RunnableC0406a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ LoadStatsResponse f39164a;

                RunnableC0406a(LoadStatsResponse loadStatsResponse) {
                    this.f39164a = loadStatsResponse;
                }

                @Override // java.lang.Runnable
                public void run() {
                    r1.this.f39138b.c(q2.b.DEBUG, "Received LoadStatsResponse:\n{0}", this.f39164a);
                    e.this.g(this.f39164a.m1646getClustersList(), this.f39164a.getSendAllClusters(), v6.a.h(this.f39164a.getLoadReportingInterval()));
                }
            }

            /* loaded from: classes5.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Throwable f39166a;

                b(Throwable th2) {
                    this.f39166a = th2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.f(this.f39166a);
                }
            }

            /* loaded from: classes5.dex */
            class c implements Runnable {
                c() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.e();
                }
            }

            a() {
            }

            @Override // io.grpc.stub.h
            /* renamed from: b */
            public void onNext(LoadStatsResponse loadStatsResponse) {
                r1.this.f39143g.execute(new RunnableC0406a(loadStatsResponse));
            }

            @Override // io.grpc.stub.h
            public void onCompleted() {
                r1.this.f39143g.execute(new c());
            }

            @Override // io.grpc.stub.h
            public void onError(Throwable th2) {
                r1.this.f39143g.execute(new b(th2));
            }
        }

        private e() {
            super();
        }

        private ClusterStats n(g2 g2Var) {
            ClusterStats.b q02 = ClusterStats.newBuilder().q0(g2Var.a());
            if (g2Var.b() != null) {
                q02.r0(g2Var.b());
            }
            e9<i2> it = g2Var.g().iterator();
            while (it.hasNext()) {
                i2 next = it.next();
                q02.Y(UpstreamLocalityStats.newBuilder().o0(Locality.newBuilder().j0(next.b().b()).m0(next.b().d()).k0(next.b().c())).u0(next.f()).r0(next.c()).t0(next.e()).s0(next.d()));
            }
            e9<h2> it2 = g2Var.c().iterator();
            while (it2.hasNext()) {
                h2 next2 = it2.next();
                q02.W(ClusterStats.DroppedRequests.newBuilder().i0(next2.a()).j0(next2.c()));
            }
            return q02.u0(g2Var.f()).t0(v6.a.d(g2Var.d())).build();
        }

        @Override // eh.r1.d
        void j(Exception exc) {
            this.f39161h.onError(exc);
        }

        @Override // eh.r1.d
        void l(List<g2> list) {
            LoadStatsRequest.b n02 = LoadStatsRequest.newBuilder().n0(r1.this.f39142f.d());
            for (g2 g2Var : list) {
                n02.W(n(g2Var));
            }
            LoadStatsRequest build = n02.build();
            this.f39161h.onNext(n02.build());
            r1.this.f39138b.c(q2.b.DEBUG, "Sent LoadStatsRequest\n{0}", build);
        }

        @Override // eh.r1.d
        void m() {
            this.f39161h = ((a.d) io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.a.b(r1.this.f39139c).e()).i(new a());
            r1.this.f39138b.b(q2.b.DEBUG, "Sending initial LRS request");
            l(Collections.emptyList());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class f extends d {

        /* renamed from: h  reason: collision with root package name */
        io.grpc.stub.h<io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsRequest> f39169h;

        /* loaded from: classes5.dex */
        class a implements io.grpc.stub.h<io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.r1$f$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class RunnableC0407a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse f39172a;

                RunnableC0407a(io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse loadStatsResponse) {
                    this.f39172a = loadStatsResponse;
                }

                @Override // java.lang.Runnable
                public void run() {
                    r1.this.f39138b.c(q2.b.DEBUG, "Received LRS response:\n{0}", this.f39172a);
                    f.this.g(this.f39172a.m1647getClustersList(), this.f39172a.getSendAllClusters(), v6.a.h(this.f39172a.getLoadReportingInterval()));
                }
            }

            /* loaded from: classes5.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Throwable f39174a;

                b(Throwable th2) {
                    this.f39174a = th2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.f(this.f39174a);
                }
            }

            /* loaded from: classes5.dex */
            class c implements Runnable {
                c() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.e();
                }
            }

            a() {
            }

            @Override // io.grpc.stub.h
            /* renamed from: b */
            public void onNext(io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse loadStatsResponse) {
                r1.this.f39143g.execute(new RunnableC0407a(loadStatsResponse));
            }

            @Override // io.grpc.stub.h
            public void onCompleted() {
                r1.this.f39143g.execute(new c());
            }

            @Override // io.grpc.stub.h
            public void onError(Throwable th2) {
                r1.this.f39143g.execute(new b(th2));
            }
        }

        private f() {
            super();
        }

        private io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.ClusterStats n(g2 g2Var) {
            ClusterStats.b q02 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.ClusterStats.newBuilder().q0(g2Var.a());
            if (g2Var.b() != null) {
                q02.r0(g2Var.b());
            }
            e9<i2> it = g2Var.g().iterator();
            while (it.hasNext()) {
                i2 next = it.next();
                q02.Y(io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamLocalityStats.newBuilder().o0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Locality.newBuilder().j0(next.b().b()).m0(next.b().d()).k0(next.b().c())).u0(next.f()).r0(next.c()).t0(next.e()).s0(next.d()));
            }
            e9<h2> it2 = g2Var.c().iterator();
            while (it2.hasNext()) {
                h2 next2 = it2.next();
                q02.W(ClusterStats.DroppedRequests.newBuilder().i0(next2.a()).j0(next2.c()));
            }
            return q02.u0(g2Var.f()).t0(v6.a.d(g2Var.d())).build();
        }

        @Override // eh.r1.d
        void j(Exception exc) {
            this.f39169h.onError(exc);
        }

        @Override // eh.r1.d
        void l(List<g2> list) {
            LoadStatsRequest.b n02 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsRequest.newBuilder().n0(r1.this.f39142f.c());
            for (g2 g2Var : list) {
                n02.W(n(g2Var));
            }
            io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsRequest build = n02.build();
            this.f39169h.onNext(build);
            r1.this.f39138b.c(q2.b.DEBUG, "Sent LoadStatsRequest\n{0}", build);
        }

        @Override // eh.r1.d
        void m() {
            this.f39169h = ((a.d) io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.a.b(r1.this.f39139c).e()).i(new a());
            r1.this.f39138b.b(q2.b.DEBUG, "Sending initial LRS request");
            l(Collections.emptyList());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r1(s1 s1Var, io.grpc.d dVar, io.grpc.r rVar, boolean z10, a1.c cVar, io.grpc.d1 d1Var, ScheduledExecutorService scheduledExecutorService, k.a aVar, com.google.common.base.w<com.google.common.base.u> wVar) {
        this.f39147k = (s1) com.google.common.base.o.t(s1Var, "loadStatsManager");
        this.f39139c = (io.grpc.d) com.google.common.base.o.t(dVar, "xdsChannel");
        this.f39140d = (io.grpc.r) com.google.common.base.o.t(rVar, "context");
        this.f39141e = z10;
        this.f39143g = (io.grpc.d1) com.google.common.base.o.t(d1Var, "syncContext");
        this.f39144h = (ScheduledExecutorService) com.google.common.base.o.t(scheduledExecutorService, "timeService");
        this.f39146j = (k.a) com.google.common.base.o.t(aVar, "backoffPolicyProvider");
        this.f39145i = (com.google.common.base.u) ((com.google.common.base.w) com.google.common.base.o.t(wVar, "stopwatchSupplier")).get();
        this.f39142f = ((a1.c) com.google.common.base.o.t(cVar, "node")).b().j("envoy.lrs.supports_send_all_clusters").k();
        io.grpc.g0 b10 = io.grpc.g0.b("lrs-client", null);
        this.f39137a = b10;
        q2 f10 = q2.f(b10);
        this.f39138b = f10;
        f10.b(q2.b.INFO, "Created");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f39148l) {
            com.google.common.base.o.A(this.f39151o == null, "previous lbStream has not been cleared yet");
            if (this.f39141e) {
                this.f39151o = new f();
            } else {
                this.f39151o = new e();
            }
            this.f39145i.f().g();
            io.grpc.r c10 = this.f39140d.c();
            try {
                this.f39151o.m();
            } finally {
                this.f39140d.k(c10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        this.f39143g.e();
        if (this.f39148l) {
            return;
        }
        this.f39148l = true;
        this.f39138b.b(q2.b.INFO, "Starting load reporting RPC");
        p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        this.f39143g.e();
        if (this.f39148l) {
            this.f39148l = false;
            this.f39138b.b(q2.b.INFO, "Stopping load reporting RPC");
            d1.c cVar = this.f39150n;
            if (cVar != null && cVar.b()) {
                this.f39150n.a();
            }
            d dVar = this.f39151o;
            if (dVar != null) {
                dVar.d(Status.f41705g.r("stop load reporting").c());
            }
        }
    }
}
