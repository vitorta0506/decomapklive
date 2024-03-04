package eh;

import com.google.protobuf.Any;
import eh.a1;
import eh.j0;
import eh.n0;
import eh.p2;
import eh.q2;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.internal.k;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryRequest;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v2.b;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.b;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.d1 f38589a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.g0 f38590b;

    /* renamed from: c  reason: collision with root package name */
    private final q2 f38591c;

    /* renamed from: d  reason: collision with root package name */
    private final j0.d f38592d;

    /* renamed from: e  reason: collision with root package name */
    private final io.grpc.q0 f38593e;

    /* renamed from: f  reason: collision with root package name */
    private final p2.n f38594f;

    /* renamed from: g  reason: collision with root package name */
    private final p2.k f38595g;

    /* renamed from: h  reason: collision with root package name */
    private final io.grpc.r f38596h;

    /* renamed from: i  reason: collision with root package name */
    private final ScheduledExecutorService f38597i;

    /* renamed from: j  reason: collision with root package name */
    private final k.a f38598j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.common.base.u f38599k;

    /* renamed from: l  reason: collision with root package name */
    private final a1.c f38600l;

    /* renamed from: m  reason: collision with root package name */
    private String f38601m = "";

    /* renamed from: n  reason: collision with root package name */
    private String f38602n = "";

    /* renamed from: o  reason: collision with root package name */
    private String f38603o = "";

    /* renamed from: p  reason: collision with root package name */
    private String f38604p = "";

    /* renamed from: q  reason: collision with root package name */
    private boolean f38605q;

    /* renamed from: r  reason: collision with root package name */
    private c f38606r;

    /* renamed from: s  reason: collision with root package name */
    private io.grpc.internal.k f38607s;

    /* renamed from: t  reason: collision with root package name */
    private d1.c f38608t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: eh.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0391a implements Runnable {
        RunnableC0391a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f38605q = true;
            a.this.f38591c.b(q2.b.INFO, "Shutting down");
            if (a.this.f38606r != null) {
                a.this.f38606r.c(Status.f41705g.r("shutdown").c());
            }
            if (a.this.f38608t != null && a.this.f38608t.b()) {
                a.this.f38608t.a();
            }
            a.this.f38593e.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38610a;

        static {
            int[] iArr = new int[f.values().length];
            f38610a = iArr;
            try {
                iArr[f.LDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38610a[f.RDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38610a[f.CDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38610a[f.EDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38610a[f.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class d extends c {

        /* renamed from: h  reason: collision with root package name */
        private io.grpc.stub.h<DiscoveryRequest> f38618h;

        /* renamed from: eh.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0392a implements io.grpc.stub.h<DiscoveryResponse> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.a$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class RunnableC0393a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ DiscoveryResponse f38621a;

                RunnableC0393a(DiscoveryResponse discoveryResponse) {
                    this.f38621a = discoveryResponse;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f a10 = f.a(this.f38621a.getTypeUrl());
                    q2 q2Var = a.this.f38591c;
                    q2.b bVar = q2.b.DEBUG;
                    if (q2Var.a(bVar)) {
                        a.this.f38591c.c(bVar, "Received {0} response:\n{1}", a10, u1.a(this.f38621a));
                    }
                    d.this.f(a10, this.f38621a.getVersionInfo(), this.f38621a.getResourcesList(), this.f38621a.getNonce());
                }
            }

            /* renamed from: eh.a$d$a$b */
            /* loaded from: classes5.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Throwable f38623a;

                b(Throwable th2) {
                    this.f38623a = th2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    d.this.e(this.f38623a);
                }
            }

            /* renamed from: eh.a$d$a$c */
            /* loaded from: classes5.dex */
            class c implements Runnable {
                c() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    d.this.d();
                }
            }

            C0392a() {
            }

            @Override // io.grpc.stub.h
            /* renamed from: b */
            public void onNext(DiscoveryResponse discoveryResponse) {
                a.this.f38589a.execute(new RunnableC0393a(discoveryResponse));
            }

            @Override // io.grpc.stub.h
            public void onCompleted() {
                a.this.f38589a.execute(new c());
            }

            @Override // io.grpc.stub.h
            public void onError(Throwable th2) {
                a.this.f38589a.execute(new b(th2));
            }
        }

        private d() {
            super(a.this, null);
        }

        @Override // eh.a.c
        void h(f fVar, String str, Collection<String> collection, String str2, String str3) {
            com.google.common.base.o.A(this.f38618h != null, "ADS stream has not been started");
            DiscoveryRequest.b q02 = DiscoveryRequest.newBuilder().t0(str).o0(a.this.f38600l.d()).W(collection).r0(fVar.c()).q0(str2);
            if (str3 != null) {
                q02.m0(com.google.rpc.Status.newBuilder().k0(3).m0(str3).build());
            }
            DiscoveryRequest build = q02.build();
            this.f38618h.onNext(build);
            q2 q2Var = a.this.f38591c;
            q2.b bVar = q2.b.DEBUG;
            if (q2Var.a(bVar)) {
                a.this.f38591c.c(bVar, "Sent DiscoveryRequest\n{0}", u1.a(build));
            }
        }

        @Override // eh.a.c
        void j(Exception exc) {
            this.f38618h.onError(exc);
        }

        @Override // eh.a.c
        void k() {
            b.d b10 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v2.b.b(a.this.f38593e);
            this.f38618h = ((b.d) b10.e()).i(new C0392a());
        }

        /* synthetic */ d(a aVar, RunnableC0391a runnableC0391a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class e extends c {

        /* renamed from: h  reason: collision with root package name */
        private io.grpc.stub.h<io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest> f38626h;

        /* renamed from: eh.a$e$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0394a implements io.grpc.stub.h<io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryResponse> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.a$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class RunnableC0395a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryResponse f38629a;

                RunnableC0395a(io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryResponse discoveryResponse) {
                    this.f38629a = discoveryResponse;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f a10 = f.a(this.f38629a.getTypeUrl());
                    q2 q2Var = a.this.f38591c;
                    q2.b bVar = q2.b.DEBUG;
                    if (q2Var.a(bVar)) {
                        a.this.f38591c.c(bVar, "Received {0} response:\n{1}", a10, u1.a(this.f38629a));
                    }
                    e.this.f(a10, this.f38629a.getVersionInfo(), this.f38629a.getResourcesList(), this.f38629a.getNonce());
                }
            }

            /* renamed from: eh.a$e$a$b */
            /* loaded from: classes5.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Throwable f38631a;

                b(Throwable th2) {
                    this.f38631a = th2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.e(this.f38631a);
                }
            }

            /* renamed from: eh.a$e$a$c */
            /* loaded from: classes5.dex */
            class c implements Runnable {
                c() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.d();
                }
            }

            C0394a() {
            }

            @Override // io.grpc.stub.h
            /* renamed from: b */
            public void onNext(io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryResponse discoveryResponse) {
                a.this.f38589a.execute(new RunnableC0395a(discoveryResponse));
            }

            @Override // io.grpc.stub.h
            public void onCompleted() {
                a.this.f38589a.execute(new c());
            }

            @Override // io.grpc.stub.h
            public void onError(Throwable th2) {
                a.this.f38589a.execute(new b(th2));
            }
        }

        private e() {
            super(a.this, null);
        }

        @Override // eh.a.c
        void h(f fVar, String str, Collection<String> collection, String str2, String str3) {
            com.google.common.base.o.A(this.f38626h != null, "ADS stream has not been started");
            DiscoveryRequest.b q02 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest.newBuilder().t0(str).o0(a.this.f38600l.c()).W(collection).r0(fVar.b()).q0(str2);
            if (str3 != null) {
                q02.m0(com.google.rpc.Status.newBuilder().k0(3).m0(str3).build());
            }
            io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest build = q02.build();
            this.f38626h.onNext(build);
            q2 q2Var = a.this.f38591c;
            q2.b bVar = q2.b.DEBUG;
            if (q2Var.a(bVar)) {
                a.this.f38591c.c(bVar, "Sent DiscoveryRequest\n{0}", u1.a(build));
            }
        }

        @Override // eh.a.c
        void j(Exception exc) {
            this.f38626h.onError(exc);
        }

        @Override // eh.a.c
        void k() {
            b.d b10 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.b.b(a.this.f38593e);
            this.f38626h = ((b.d) b10.e()).i(new C0394a());
        }

        /* synthetic */ e(a aVar, RunnableC0391a runnableC0391a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum f {
        UNKNOWN,
        LDS,
        RDS,
        CDS,
        EDS;

        static f a(String str) {
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -565505634:
                    if (str.equals("type.googleapis.com/envoy.api.v2.RouteConfiguration")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -441599530:
                    if (str.equals("type.googleapis.com/envoy.config.endpoint.v3.ClusterLoadAssignment")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 468684329:
                    if (str.equals("type.googleapis.com/envoy.api.v2.Cluster")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 598626940:
                    if (str.equals("type.googleapis.com/envoy.config.cluster.v3.Cluster")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 991319498:
                    if (str.equals("type.googleapis.com/envoy.config.listener.v3.Listener")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 1725419109:
                    if (str.equals("type.googleapis.com/envoy.api.v2.Listener")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 1728945884:
                    if (str.equals("type.googleapis.com/envoy.api.v2.ClusterLoadAssignment")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 2063426234:
                    if (str.equals("type.googleapis.com/envoy.config.route.v3.RouteConfiguration")) {
                        c10 = 7;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                case 7:
                    return RDS;
                case 1:
                case 6:
                    return EDS;
                case 2:
                case 3:
                    return CDS;
                case 4:
                case 5:
                    return LDS;
                default:
                    return UNKNOWN;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String b() {
            int i9 = b.f38610a[ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 == 4) {
                            return "type.googleapis.com/envoy.config.endpoint.v3.ClusterLoadAssignment";
                        }
                        throw new AssertionError("Unknown or missing case in enum switch: " + this);
                    }
                    return "type.googleapis.com/envoy.config.cluster.v3.Cluster";
                }
                return "type.googleapis.com/envoy.config.route.v3.RouteConfiguration";
            }
            return "type.googleapis.com/envoy.config.listener.v3.Listener";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String c() {
            int i9 = b.f38610a[ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 == 4) {
                            return "type.googleapis.com/envoy.api.v2.ClusterLoadAssignment";
                        }
                        throw new AssertionError("Unknown or missing case in enum switch: " + this);
                    }
                    return "type.googleapis.com/envoy.api.v2.Cluster";
                }
                return "type.googleapis.com/envoy.api.v2.RouteConfiguration";
            }
            return "type.googleapis.com/envoy.api.v2.Listener";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f[] values;
            Collection<String> e10;
            if (a.this.f38605q) {
                return;
            }
            a.this.A();
            for (f fVar : f.values()) {
                if (fVar != f.UNKNOWN && (e10 = a.this.f38595g.e(a.this.f38592d, fVar)) != null) {
                    a.this.f38606r.i(fVar, e10);
                }
            }
            a.this.f38594f.g(a.this.f38592d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(n0.r rVar, j0.d dVar, a1.c cVar, p2.n nVar, p2.k kVar, io.grpc.r rVar2, ScheduledExecutorService scheduledExecutorService, io.grpc.d1 d1Var, k.a aVar, com.google.common.base.w<com.google.common.base.u> wVar) {
        this.f38592d = (j0.d) com.google.common.base.o.t(dVar, "serverInfo");
        this.f38593e = ((n0.r) com.google.common.base.o.t(rVar, "xdsChannelFactory")).a(dVar);
        this.f38594f = (p2.n) com.google.common.base.o.t(nVar, "xdsResponseHandler");
        this.f38595g = (p2.k) com.google.common.base.o.t(kVar, "resourcesSubscriber");
        this.f38600l = (a1.c) com.google.common.base.o.t(cVar, "bootstrapNode");
        this.f38596h = (io.grpc.r) com.google.common.base.o.t(rVar2, "context");
        this.f38597i = (ScheduledExecutorService) com.google.common.base.o.t(scheduledExecutorService, "timeService");
        this.f38589a = (io.grpc.d1) com.google.common.base.o.t(d1Var, "syncContext");
        this.f38598j = (k.a) com.google.common.base.o.t(aVar, "backoffPolicyProvider");
        this.f38599k = (com.google.common.base.u) ((com.google.common.base.w) com.google.common.base.o.t(wVar, "stopwatchSupplier")).get();
        io.grpc.g0 b10 = io.grpc.g0.b("xds-client", dVar.c());
        this.f38590b = b10;
        q2 f10 = q2.f(b10);
        this.f38591c = f10;
        f10.b(q2.b.INFO, "Created");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        com.google.common.base.o.A(this.f38606r == null, "Previous adsStream has not been cleared yet");
        if (this.f38592d.d()) {
            this.f38606r = new e(this, null);
        } else {
            this.f38606r = new d(this, null);
        }
        io.grpc.r c10 = this.f38596h.c();
        try {
            this.f38606r.k();
            this.f38596h.k(c10);
            this.f38591c.b(q2.b.INFO, "ADS stream started");
            this.f38599k.f().g();
        } catch (Throwable th2) {
            this.f38596h.k(c10);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(f fVar, String str, String str2) {
        int i9 = b.f38610a[fVar.ordinal()];
        if (i9 == 1) {
            this.f38601m = str;
        } else if (i9 == 2) {
            this.f38602n = str;
        } else if (i9 == 3) {
            this.f38603o = str;
        } else if (i9 == 4) {
            this.f38604p = str;
        } else {
            throw new AssertionError("Unknown resource type: " + fVar);
        }
        this.f38591c.c(q2.b.INFO, "Sending ACK for {0} update, nonce: {1}, current version: {2}", fVar, str2, str);
        Collection<String> e10 = this.f38595g.e(this.f38592d, fVar);
        if (e10 == null) {
            e10 = Collections.emptyList();
        }
        this.f38606r.h(fVar, str, e10, str2, null);
    }

    public String toString() {
        return this.f38590b.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(f fVar) {
        if (x()) {
            return;
        }
        if (this.f38606r == null) {
            A();
        }
        Collection<String> e10 = this.f38595g.e(this.f38592d, fVar);
        if (e10 != null) {
            this.f38606r.i(fVar, e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.d v() {
        return this.f38593e;
    }

    String w(f fVar) {
        int i9 = b.f38610a[fVar.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 == 4) {
                        return this.f38604p;
                    }
                    throw new AssertionError("Unknown resource type: " + fVar);
                }
                return this.f38603o;
            }
            return this.f38602n;
        }
        return this.f38601m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        d1.c cVar = this.f38608t;
        return cVar != null && cVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(f fVar, String str, String str2) {
        String w6 = w(fVar);
        this.f38591c.c(q2.b.INFO, "Sending NACK for {0} update, nonce: {1}, current version: {2}", fVar, str, w6);
        Collection<String> e10 = this.f38595g.e(this.f38592d, fVar);
        if (e10 == null) {
            e10 = Collections.emptyList();
        }
        this.f38606r.h(fVar, w6, e10, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z() {
        this.f38589a.execute(new RunnableC0391a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public abstract class c {

        /* renamed from: a  reason: collision with root package name */
        private boolean f38611a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f38612b;

        /* renamed from: c  reason: collision with root package name */
        private String f38613c;

        /* renamed from: d  reason: collision with root package name */
        private String f38614d;

        /* renamed from: e  reason: collision with root package name */
        private String f38615e;

        /* renamed from: f  reason: collision with root package name */
        private String f38616f;

        private c() {
            this.f38613c = "";
            this.f38614d = "";
            this.f38615e = "";
            this.f38616f = "";
        }

        private void b() {
            if (a.this.f38606r == this) {
                a.this.f38606r = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Exception exc) {
            if (this.f38612b) {
                return;
            }
            this.f38612b = true;
            b();
            j(exc);
        }

        private void g(Status status) {
            com.google.common.base.o.e(!status.p(), "unexpected OK status");
            if (this.f38612b) {
                return;
            }
            a.this.f38591c.c(q2.b.ERROR, "ADS stream closed with status {0}: {1}. Cause: {2}", status.n(), status.o(), status.m());
            this.f38612b = true;
            a.this.f38594f.b(status);
            b();
            if (this.f38611a || a.this.f38607s == null) {
                a aVar = a.this;
                aVar.f38607s = aVar.f38598j.get();
            }
            long max = this.f38611a ? 0L : Math.max(0L, a.this.f38607s.a() - a.this.f38599k.d(TimeUnit.NANOSECONDS));
            a.this.f38591c.c(q2.b.INFO, "Retry ADS stream in {0} ns", Long.valueOf(max));
            a aVar2 = a.this;
            aVar2.f38608t = aVar2.f38589a.d(new g(), max, TimeUnit.NANOSECONDS, a.this.f38597i);
        }

        final void d() {
            g(Status.f41719u.r("Closed by server"));
        }

        final void e(Throwable th2) {
            g(Status.l(th2));
        }

        final void f(f fVar, String str, List<Any> list, String str2) {
            if (this.f38612b) {
                return;
            }
            this.f38611a = true;
            int i9 = b.f38610a[fVar.ordinal()];
            if (i9 == 1) {
                this.f38613c = str2;
                a.this.f38594f.d(a.this.f38592d, str, list, str2);
            } else if (i9 == 2) {
                this.f38614d = str2;
                a.this.f38594f.f(a.this.f38592d, str, list, str2);
            } else if (i9 == 3) {
                this.f38615e = str2;
                a.this.f38594f.c(a.this.f38592d, str, list, str2);
            } else if (i9 != 4) {
                a.this.f38591c.b(q2.b.WARNING, "Ignore an unknown type of DiscoveryResponse");
            } else {
                this.f38616f = str2;
                a.this.f38594f.a(a.this.f38592d, str, list, str2);
            }
        }

        abstract void h(f fVar, String str, Collection<String> collection, String str2, String str3);

        final void i(f fVar, Collection<String> collection) {
            String str;
            int i9 = b.f38610a[fVar.ordinal()];
            if (i9 == 1) {
                str = this.f38613c;
            } else if (i9 == 2) {
                str = this.f38614d;
            } else if (i9 == 3) {
                str = this.f38615e;
            } else if (i9 == 4) {
                str = this.f38616f;
            } else {
                throw new AssertionError("Unknown resource type: " + fVar);
            }
            a.this.f38591c.c(q2.b.INFO, "Sending {0} request for resources: {1}", fVar, collection);
            h(fVar, a.this.w(fVar), collection, str, null);
        }

        abstract void j(Exception exc);

        abstract void k();

        /* synthetic */ c(a aVar, RunnableC0391a runnableC0391a) {
            this();
        }
    }
}
