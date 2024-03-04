package hg;

import androidx.core.app.NotificationCompat;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.internal.ServerProtocol;
import com.google.common.base.u;
import hg.k;
import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.a;
import io.grpc.d1;
import io.grpc.internal.k;
import io.grpc.internal.m2;
import io.grpc.k;
import io.grpc.lb.v1.InitialLoadBalanceRequest;
import io.grpc.lb.v1.LoadBalanceRequest;
import io.grpc.lb.v1.LoadBalanceResponse;
import io.grpc.lb.v1.Server;
import io.grpc.lb.v1.ServerList;
import io.grpc.lb.v1.f;
import io.grpc.n0;
import io.grpc.q;
import io.grpc.q0;
import io.grpc.r;
import io.grpc.s0;
import io.grpc.x;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class i {
    static final n0.e C;
    static final Status D;
    static final Status E;
    static final Status F;
    static final Status G;
    private static final Status H;
    static final n I;
    private static final a.c<AtomicReference<q>> J;

    /* renamed from: a  reason: collision with root package name */
    private final String f40702a;

    /* renamed from: b  reason: collision with root package name */
    private final n0.d f40703b;

    /* renamed from: c  reason: collision with root package name */
    private final r f40704c;

    /* renamed from: d  reason: collision with root package name */
    private final d1 f40705d;

    /* renamed from: e  reason: collision with root package name */
    private final hg.k f40706e;

    /* renamed from: f  reason: collision with root package name */
    private final m2 f40707f;

    /* renamed from: g  reason: collision with root package name */
    private final u f40708g;

    /* renamed from: h  reason: collision with root package name */
    private final ScheduledExecutorService f40709h;

    /* renamed from: i  reason: collision with root package name */
    private final k.a f40710i;

    /* renamed from: j  reason: collision with root package name */
    private final ChannelLogger f40711j;

    /* renamed from: k  reason: collision with root package name */
    private d1.c f40712k;

    /* renamed from: m  reason: collision with root package name */
    private boolean f40714m;

    /* renamed from: n  reason: collision with root package name */
    private Status f40715n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f40716o;

    /* renamed from: p  reason: collision with root package name */
    private io.grpc.internal.k f40717p;

    /* renamed from: q  reason: collision with root package name */
    private d1.c f40718q;

    /* renamed from: r  reason: collision with root package name */
    private q0 f40719r;

    /* renamed from: s  reason: collision with root package name */
    private k f40720s;

    /* renamed from: u  reason: collision with root package name */
    private final hg.d f40722u;

    /* renamed from: y  reason: collision with root package name */
    private boolean f40726y;

    /* renamed from: z  reason: collision with root package name */
    static final long f40701z = TimeUnit.SECONDS.toMillis(10);
    private static final io.grpc.a A = io.grpc.a.c().d(hg.e.f40690e, Boolean.TRUE).a();
    static final boolean B = Boolean.parseBoolean(System.getProperty("io.grpc.grpclb.LogServerLists", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));

    /* renamed from: l  reason: collision with root package name */
    private List<x> f40713l = Collections.emptyList();

    /* renamed from: t  reason: collision with root package name */
    private Map<List<x>, n0.h> f40721t = Collections.emptyMap();

    /* renamed from: v  reason: collision with root package name */
    private List<f> f40723v = Collections.emptyList();

    /* renamed from: w  reason: collision with root package name */
    private List<e> f40724w = Collections.emptyList();

    /* renamed from: x  reason: collision with root package name */
    private o f40725x = new o(Collections.emptyList(), Arrays.asList(I));

    /* loaded from: classes5.dex */
    class a implements n {
        a() {
        }

        @Override // hg.i.n
        public n0.e a(s0 s0Var) {
            return n0.e.g();
        }

        public String toString() {
            return "BUFFER_ENTRY";
        }
    }

    /* loaded from: classes5.dex */
    class b implements k.a {
        b() {
        }

        @Override // hg.k.a
        public void a(n0.h hVar, q qVar) {
            i.this.C(hVar, qVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements n0.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.h f40728a;

        c(n0.h hVar) {
            this.f40728a = hVar;
        }

        @Override // io.grpc.n0.j
        public void a(q qVar) {
            i.this.C(this.f40728a, qVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f40730a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f40731b;

        static {
            int[] iArr = new int[ConnectivityState.values().length];
            f40731b = iArr;
            try {
                iArr[ConnectivityState.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40731b[ConnectivityState.TRANSIENT_FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40731b[ConnectivityState.CONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[m.values().length];
            f40730a = iArr2;
            try {
                iArr2[m.ROUND_ROBIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f40730a[m.PICK_FIRST.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final hg.c f40735a;

        /* renamed from: b  reason: collision with root package name */
        private final String f40736b;

        f(hg.c cVar, String str) {
            this.f40735a = (hg.c) com.google.common.base.o.t(cVar, "loadRecorder");
            this.f40736b = (String) com.google.common.base.o.t(str, JThirdPlatFormInterface.KEY_TOKEN);
        }

        n0.e a() {
            this.f40735a.f(this.f40736b);
            return i.C;
        }

        public boolean equals(Object obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                return com.google.common.base.l.a(this.f40735a, fVar.f40735a) && com.google.common.base.l.a(this.f40736b, fVar.f40736b);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f40735a, this.f40736b);
        }

        public String toString() {
            return "drop(" + this.f40736b + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g implements n {

        /* renamed from: a  reason: collision with root package name */
        final n0.e f40737a;

        g(Status status) {
            this.f40737a = n0.e.f(status);
        }

        @Override // hg.i.n
        public n0.e a(s0 s0Var) {
            return this.f40737a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof g) {
                return com.google.common.base.l.a(this.f40737a, ((g) obj).f40737a);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f40737a);
        }

        public String toString() {
            return this.f40737a.a().toString();
        }
    }

    /* loaded from: classes5.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Status f40738a;

        /* synthetic */ h(i iVar, Status status, a aVar) {
            this(status);
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.common.base.o.A(!i.this.f40714m, "already in fallback");
            i.this.f40715n = this.f40738a;
            i.this.F();
            i.this.D();
        }

        private h(Status status) {
            this.f40738a = status;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: hg.i$i  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0445i implements n {

        /* renamed from: a  reason: collision with root package name */
        private final d1 f40740a;

        /* renamed from: b  reason: collision with root package name */
        private final n0.h f40741b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicBoolean f40742c = new AtomicBoolean(false);

        /* renamed from: hg.i$i$a */
        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0445i.this.f40741b.g();
            }
        }

        C0445i(n0.h hVar, d1 d1Var) {
            this.f40741b = (n0.h) com.google.common.base.o.t(hVar, "subchannel");
            this.f40740a = (d1) com.google.common.base.o.t(d1Var, "syncContext");
        }

        @Override // hg.i.n
        public n0.e a(s0 s0Var) {
            if (this.f40742c.compareAndSet(false, true)) {
                this.f40740a.execute(new a());
            }
            return n0.e.g();
        }

        public boolean equals(Object obj) {
            if (obj instanceof C0445i) {
                C0445i c0445i = (C0445i) obj;
                return com.google.common.base.l.a(this.f40741b, c0445i.f40741b) && com.google.common.base.l.a(this.f40740a, c0445i.f40740a);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f40741b, this.f40740a);
        }

        public String toString() {
            return "(idle)[" + this.f40741b.c().toString() + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class k implements io.grpc.stub.h<LoadBalanceResponse> {

        /* renamed from: a  reason: collision with root package name */
        final hg.c f40745a;

        /* renamed from: b  reason: collision with root package name */
        final f.d f40746b;

        /* renamed from: c  reason: collision with root package name */
        io.grpc.stub.h<LoadBalanceRequest> f40747c;

        /* renamed from: d  reason: collision with root package name */
        boolean f40748d;

        /* renamed from: e  reason: collision with root package name */
        boolean f40749e;

        /* renamed from: f  reason: collision with root package name */
        long f40750f = -1;

        /* renamed from: g  reason: collision with root package name */
        d1.c f40751g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LoadBalanceResponse f40753a;

            a(LoadBalanceResponse loadBalanceResponse) {
                this.f40753a = loadBalanceResponse;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.g(this.f40753a);
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Throwable f40755a;

            b(Throwable th2) {
                this.f40755a = th2;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.h(Status.l(this.f40755a).f("Stream to GRPCLB LoadBalancer had an error"));
            }
        }

        /* loaded from: classes5.dex */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.h(Status.f41719u.r("Stream to GRPCLB LoadBalancer was closed"));
            }
        }

        k(f.d dVar) {
            this.f40746b = (f.d) com.google.common.base.o.t(dVar, "stub");
            this.f40745a = new hg.c(i.this.f40707f);
        }

        private void e() {
            d1.c cVar = this.f40751g;
            if (cVar != null) {
                cVar.a();
                this.f40751g = null;
            }
            if (i.this.f40720s == this) {
                i.this.f40720s = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(LoadBalanceResponse loadBalanceResponse) {
            if (this.f40749e) {
                return;
            }
            LoadBalanceResponse.LoadBalanceResponseTypeCase loadBalanceResponseTypeCase = loadBalanceResponse.getLoadBalanceResponseTypeCase();
            if (!this.f40748d) {
                i.this.f40711j.b(ChannelLogger.ChannelLogLevel.INFO, "[grpclb-<{0}>] Got an LB initial response: {1}", i.this.f40702a, loadBalanceResponse);
                if (loadBalanceResponseTypeCase != LoadBalanceResponse.LoadBalanceResponseTypeCase.INITIAL_RESPONSE) {
                    i.this.f40711j.b(ChannelLogger.ChannelLogLevel.WARNING, "[grpclb-<{0}>] Received a response without initial response", i.this.f40702a);
                    return;
                }
                this.f40748d = true;
                this.f40750f = v6.a.g(loadBalanceResponse.getInitialResponse().getClientStatsReportInterval());
                j();
                return;
            }
            if (i.B) {
                i.this.f40711j.b(ChannelLogger.ChannelLogLevel.DEBUG, "[grpclb-<{0}>] Got an LB response: {1}", i.this.f40702a, loadBalanceResponse);
            } else {
                i.this.f40711j.b(ChannelLogger.ChannelLogLevel.DEBUG, "[grpclb-<{0}>] Got an LB response", i.this.f40702a);
            }
            if (loadBalanceResponseTypeCase == LoadBalanceResponse.LoadBalanceResponseTypeCase.FALLBACK_RESPONSE) {
                i.this.y();
                i.this.f40715n = i.F;
                i.this.O();
                i.this.D();
            } else if (loadBalanceResponseTypeCase != LoadBalanceResponse.LoadBalanceResponseTypeCase.SERVER_LIST) {
                i.this.f40711j.b(ChannelLogger.ChannelLogLevel.WARNING, "[grpclb-<{0}>] Ignoring unexpected response type: {1}", i.this.f40702a, loadBalanceResponseTypeCase);
            } else {
                i.this.f40716o = true;
                ServerList serverList = loadBalanceResponse.getServerList();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Server server : serverList.getServersList()) {
                    String loadBalanceToken = server.getLoadBalanceToken();
                    if (server.getDrop()) {
                        arrayList.add(new f(this.f40745a, loadBalanceToken));
                    } else {
                        arrayList.add(null);
                        try {
                            arrayList2.add(new hg.a(new x(new InetSocketAddress(InetAddress.getByAddress(server.getIpAddress().toByteArray()), server.getPort()), i.A), loadBalanceToken));
                        } catch (UnknownHostException e10) {
                            i iVar = i.this;
                            Status status = Status.f41719u;
                            iVar.G(status.r("Invalid backend address: " + server).q(e10));
                        }
                    }
                }
                i.this.f40714m = false;
                i.this.f40715n = null;
                i.this.y();
                i.this.N(arrayList, arrayList2, this.f40745a);
                i.this.D();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(Status status) {
            com.google.common.base.o.e(!status.p(), "unexpected OK status");
            if (this.f40749e) {
                return;
            }
            this.f40749e = true;
            e();
            i.this.G(status);
            i.this.f40716o = false;
            i.this.f40715n = status;
            i.this.y();
            i.this.F();
            i.this.D();
            if (this.f40748d || i.this.f40717p == null) {
                i iVar = i.this;
                iVar.f40717p = iVar.f40710i.get();
            }
            long a10 = !this.f40748d ? i.this.f40717p.a() - i.this.f40708g.d(TimeUnit.NANOSECONDS) : 0L;
            if (a10 <= 0) {
                i.this.M();
            } else {
                i iVar2 = i.this;
                iVar2.f40718q = iVar2.f40705d.d(new j(), a10, TimeUnit.NANOSECONDS, i.this.f40709h);
            }
            i.this.f40703b.j();
        }

        private void j() {
            if (this.f40750f > 0) {
                this.f40751g = i.this.f40705d.d(new l(this), this.f40750f, TimeUnit.MILLISECONDS, i.this.f40709h);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k() {
            if (this.f40749e) {
                return;
            }
            try {
                this.f40747c.onNext(LoadBalanceRequest.newBuilder().k0(this.f40745a.e()).build());
                j();
            } catch (Exception e10) {
                f(e10);
            }
        }

        void f(Exception exc) {
            if (this.f40749e) {
                return;
            }
            this.f40749e = true;
            e();
            this.f40747c.onError(exc);
        }

        @Override // io.grpc.stub.h
        /* renamed from: i */
        public void onNext(LoadBalanceResponse loadBalanceResponse) {
            i.this.f40705d.execute(new a(loadBalanceResponse));
        }

        void l() {
            this.f40747c = ((f.d) this.f40746b.e()).h(this);
        }

        @Override // io.grpc.stub.h
        public void onCompleted() {
            i.this.f40705d.execute(new c());
        }

        @Override // io.grpc.stub.h
        public void onError(Throwable th2) {
            i.this.f40705d.execute(new b(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final k f40758a;

        l(k kVar) {
            this.f40758a = kVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = this.f40758a;
            kVar.f40751g = null;
            kVar.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum m {
        ROUND_ROBIN,
        PICK_FIRST
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface n {
        n0.e a(s0 s0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class o extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        final List<f> f40762a;

        /* renamed from: b  reason: collision with root package name */
        private int f40763b;

        /* renamed from: c  reason: collision with root package name */
        final List<? extends n> f40764c;

        /* renamed from: d  reason: collision with root package name */
        private int f40765d;

        o(List<f> list, List<? extends n> list2) {
            this.f40762a = (List) com.google.common.base.o.t(list, "dropList");
            this.f40764c = (List) com.google.common.base.o.t(list2, "pickList");
            com.google.common.base.o.e(!list2.isEmpty(), "pickList is empty");
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            synchronized (this.f40764c) {
                if (!this.f40762a.isEmpty()) {
                    f fVar2 = this.f40762a.get(this.f40763b);
                    int i9 = this.f40763b + 1;
                    this.f40763b = i9;
                    if (i9 == this.f40762a.size()) {
                        this.f40763b = 0;
                    }
                    if (fVar2 != null) {
                        return fVar2.a();
                    }
                }
                n nVar = this.f40764c.get(this.f40765d);
                int i10 = this.f40765d + 1;
                this.f40765d = i10;
                if (i10 == this.f40764c.size()) {
                    this.f40765d = 0;
                }
                return nVar.a(fVar.b());
            }
        }

        public String toString() {
            if (i.B) {
                return com.google.common.base.j.b(o.class).d("dropList", this.f40762a).d("pickList", this.f40764c).toString();
            }
            return com.google.common.base.j.b(o.class).toString();
        }
    }

    static {
        Status status = Status.f41719u;
        C = n0.e.e(status.r("Dropped as requested by balancer"));
        D = status.r("LoadBalancer responded without any backends");
        E = status.r("Timeout waiting for remote balancer");
        F = status.r("Fallback requested by balancer");
        G = status.r("Unable to fallback, no fallback addresses found");
        H = status.r("No balancer address found");
        I = new a();
        J = a.c.a("io.grpc.grpclb.GrpclbLoadBalancer.stateInfo");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(hg.d dVar, n0.d dVar2, r rVar, hg.k kVar, m2 m2Var, u uVar, k.a aVar) {
        this.f40722u = (hg.d) com.google.common.base.o.t(dVar, "config");
        this.f40703b = (n0.d) com.google.common.base.o.t(dVar2, "helper");
        this.f40704c = (r) com.google.common.base.o.t(rVar, "context");
        this.f40705d = (d1) com.google.common.base.o.t(dVar2.h(), "syncContext");
        if (dVar.c() == m.ROUND_ROBIN) {
            this.f40706e = (hg.k) com.google.common.base.o.t(kVar, "subchannelPool");
            kVar.b(new b());
        } else {
            this.f40706e = null;
        }
        this.f40707f = (m2) com.google.common.base.o.t(m2Var, "time provider");
        this.f40708g = (u) com.google.common.base.o.t(uVar, NotificationCompat.CATEGORY_STOPWATCH);
        this.f40709h = (ScheduledExecutorService) com.google.common.base.o.t(dVar2.g(), "timerService");
        this.f40710i = (k.a) com.google.common.base.o.t(aVar, "backoffPolicyProvider");
        if (dVar.d() != null) {
            this.f40702a = dVar.d();
        } else {
            this.f40702a = (String) com.google.common.base.o.t(dVar2.c(), "helper returns null authority");
        }
        ChannelLogger channelLogger = (ChannelLogger) com.google.common.base.o.t(dVar2.d(), "logger");
        this.f40711j = channelLogger;
        channelLogger.b(ChannelLogger.ChannelLogLevel.INFO, "[grpclb-<{0}>] Created", this.f40702a);
    }

    private static io.grpc.a A() {
        return io.grpc.a.c().d(J, new AtomicReference(q.a(ConnectivityState.IDLE))).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        List arrayList;
        ConnectivityState connectivityState;
        List singletonList;
        ConnectivityState connectivityState2;
        if (this.f40724w.isEmpty()) {
            if (this.f40714m) {
                singletonList = Collections.singletonList(new g(G.q(this.f40715n.m()).f(this.f40715n.o())));
                connectivityState2 = ConnectivityState.TRANSIENT_FAILURE;
            } else if (this.f40716o) {
                singletonList = Collections.singletonList(new g(D));
                connectivityState2 = ConnectivityState.TRANSIENT_FAILURE;
            } else {
                singletonList = Collections.singletonList(I);
                connectivityState2 = ConnectivityState.CONNECTING;
            }
            E(connectivityState2, new o(this.f40723v, singletonList));
            return;
        }
        int i9 = d.f40730a[this.f40722u.c().ordinal()];
        boolean z10 = false;
        if (i9 == 1) {
            arrayList = new ArrayList(this.f40724w.size());
            Status status = null;
            for (e eVar : this.f40724w) {
                q qVar = (q) ((AtomicReference) eVar.f40732a.d().b(J)).get();
                if (qVar.c() == ConnectivityState.READY) {
                    arrayList.add(eVar);
                } else if (qVar.c() == ConnectivityState.TRANSIENT_FAILURE) {
                    status = qVar.d();
                } else {
                    z10 = true;
                }
            }
            if (!arrayList.isEmpty()) {
                connectivityState = ConnectivityState.READY;
            } else if (z10) {
                arrayList.add(I);
                connectivityState = ConnectivityState.CONNECTING;
            } else {
                arrayList.add(new g(status));
                connectivityState = ConnectivityState.TRANSIENT_FAILURE;
            }
        } else if (i9 == 2) {
            com.google.common.base.o.D(this.f40724w.size() == 1, "Excessive backend entries: %s", this.f40724w);
            e eVar2 = this.f40724w.get(0);
            q qVar2 = (q) ((AtomicReference) eVar2.f40732a.d().b(J)).get();
            connectivityState = qVar2.c();
            int i10 = d.f40731b[connectivityState.ordinal()];
            arrayList = i10 != 1 ? i10 != 2 ? i10 != 3 ? Collections.singletonList(new C0445i(eVar2.f40732a, this.f40705d)) : Collections.singletonList(I) : Collections.singletonList(new g(qVar2.d())) : Collections.singletonList(eVar2);
        } else {
            throw new AssertionError("Missing case for " + this.f40722u.c());
        }
        E(connectivityState, new o(this.f40723v, arrayList));
    }

    private void E(ConnectivityState connectivityState, o oVar) {
        if (oVar.f40762a.equals(this.f40725x.f40762a) && oVar.f40764c.equals(this.f40725x.f40764c)) {
            return;
        }
        this.f40725x = oVar;
        this.f40703b.k(connectivityState, oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        if (this.f40716o || this.f40714m) {
            return;
        }
        com.google.common.base.o.A(this.f40715n != null, "no reason to fallback");
        for (n0.h hVar : this.f40721t.values()) {
            q qVar = (q) ((AtomicReference) hVar.d().b(J)).get();
            if (qVar.c() == ConnectivityState.READY) {
                return;
            }
            if (qVar.c() == ConnectivityState.TRANSIENT_FAILURE) {
                this.f40715n = qVar.d();
            }
        }
        O();
    }

    private void H(n0.h hVar) {
        this.f40706e.c(hVar, (q) ((AtomicReference) hVar.d().b(J)).get());
    }

    private void J() {
        q0 q0Var = this.f40719r;
        if (q0Var != null) {
            q0Var.m();
            this.f40719r = null;
        }
        K();
    }

    private void K() {
        k kVar = this.f40720s;
        if (kVar != null) {
            kVar.f(Status.f41705g.r("balancer shutdown").c());
        }
    }

    private void L(List<x> list) {
        com.google.common.base.o.t(list, "overrideAuthorityEags");
        String str = ((String) list.get(0).b().b(x.f45469d)) + "-notIntendedToBeUsed";
        q0 q0Var = this.f40719r;
        if (q0Var == null) {
            this.f40719r = this.f40703b.a(list, str);
            this.f40711j.b(ChannelLogger.ChannelLogLevel.DEBUG, "[grpclb-<{0}>] Created grpclb channel: EAG={1}", this.f40702a, list);
            return;
        }
        this.f40703b.l(q0Var, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        com.google.common.base.o.A(this.f40720s == null, "previous lbStream has not been cleared yet");
        this.f40720s = new k(io.grpc.lb.v1.f.b(this.f40719r));
        r c10 = this.f40704c.c();
        try {
            this.f40720s.l();
            this.f40704c.k(c10);
            this.f40708g.f().g();
            LoadBalanceRequest build = LoadBalanceRequest.newBuilder().m0(InitialLoadBalanceRequest.newBuilder().j0(this.f40702a).build()).build();
            this.f40711j.b(ChannelLogger.ChannelLogLevel.DEBUG, "[grpclb-<{0}>] Sent initial grpclb request {1}", this.f40702a, build);
            try {
                this.f40720s.f40747c.onNext(build);
            } catch (Exception e10) {
                this.f40720s.f(e10);
            }
        } catch (Throwable th2) {
            this.f40704c.k(c10);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(List<f> list, List<hg.a> list2, hg.c cVar) {
        e eVar;
        n0.h next;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        int i9 = d.f40730a[this.f40722u.c().ordinal()];
        if (i9 == 1) {
            for (hg.a aVar : list2) {
                x a10 = aVar.a();
                List singletonList = Collections.singletonList(a10);
                n0.h hVar = (n0.h) hashMap.get(singletonList);
                if (hVar == null) {
                    hVar = this.f40721t.get(singletonList);
                    if (hVar == null) {
                        n0.h a11 = this.f40706e.a(a10, A());
                        a11.g();
                        hVar = a11;
                    }
                    hashMap.put(singletonList, hVar);
                }
                if (aVar.b() == null) {
                    eVar = new e(hVar);
                } else {
                    eVar = new e(hVar, cVar, aVar.b());
                }
                arrayList.add(eVar);
            }
            for (Map.Entry<List<x>, n0.h> entry : this.f40721t.entrySet()) {
                if (!hashMap.containsKey(entry.getKey())) {
                    H(entry.getValue());
                }
            }
            this.f40721t = Collections.unmodifiableMap(hashMap);
        } else if (i9 == 2) {
            com.google.common.base.o.D(this.f40721t.size() <= 1, "Unexpected Subchannel count: %s", this.f40721t);
            if (list2.isEmpty()) {
                if (this.f40721t.size() == 1) {
                    this.f40721t.values().iterator().next().h();
                    this.f40721t = Collections.emptyMap();
                }
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (hg.a aVar2 : list2) {
                    x a12 = aVar2.a();
                    io.grpc.a b10 = a12.b();
                    if (aVar2.b() != null) {
                        b10 = b10.d().d(hg.e.f40687b, aVar2.b()).a();
                    }
                    arrayList2.add(new x(a12.a(), b10));
                }
                if (this.f40721t.isEmpty()) {
                    next = this.f40703b.b(n0.b.c().e(arrayList2).f(A()).b());
                    next.i(new c(next));
                    if (this.f40726y) {
                        next.g();
                        this.f40726y = false;
                    }
                } else {
                    next = this.f40721t.values().iterator().next();
                    next.j(arrayList2);
                }
                this.f40721t = Collections.singletonMap(arrayList2, next);
                arrayList.add(new e(next, new hg.l(cVar)));
            }
        } else {
            throw new AssertionError("Missing case for " + this.f40722u.c());
        }
        this.f40723v = Collections.unmodifiableList(list);
        this.f40724w = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        this.f40714m = true;
        this.f40711j.b(ChannelLogger.ChannelLogLevel.INFO, "[grpclb-<{0}>] Using fallback backends", this.f40702a);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (x xVar : this.f40713l) {
            arrayList.add(null);
            arrayList2.add(new hg.a(xVar, null));
        }
        N(arrayList, arrayList2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        d1.c cVar = this.f40712k;
        if (cVar != null) {
            cVar.a();
        }
    }

    private void z() {
        d1.c cVar = this.f40718q;
        if (cVar != null) {
            cVar.a();
            this.f40718q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B(List<x> list, List<x> list2) {
        this.f40711j.b(ChannelLogger.ChannelLogLevel.DEBUG, "[grpclb-<{0}>] Resolved addresses: lb addresses {0}, backends: {1}", this.f40702a, list, list2);
        this.f40713l = list2;
        if (list.isEmpty()) {
            J();
            if (!this.f40714m) {
                this.f40715n = H;
                y();
                F();
            }
        } else {
            L(list);
            if (this.f40720s == null) {
                z();
                M();
            }
            if (this.f40712k == null && !this.f40714m) {
                this.f40712k = this.f40705d.d(new h(this, E, null), f40701z, TimeUnit.MILLISECONDS, this.f40709h);
            }
        }
        if (this.f40714m) {
            O();
        }
        D();
    }

    void C(n0.h hVar, q qVar) {
        if (qVar.c() == ConnectivityState.SHUTDOWN || !this.f40721t.containsValue(hVar)) {
            return;
        }
        m c10 = this.f40722u.c();
        m mVar = m.ROUND_ROBIN;
        if (c10 == mVar && qVar.c() == ConnectivityState.IDLE) {
            hVar.g();
        }
        ConnectivityState c11 = qVar.c();
        ConnectivityState connectivityState = ConnectivityState.TRANSIENT_FAILURE;
        if (c11 == connectivityState || qVar.c() == ConnectivityState.IDLE) {
            this.f40703b.j();
        }
        AtomicReference atomicReference = (AtomicReference) hVar.d().b(J);
        if (this.f40722u.c() == mVar && ((q) atomicReference.get()).c() == connectivityState && (qVar.c() == ConnectivityState.CONNECTING || qVar.c() == ConnectivityState.IDLE)) {
            return;
        }
        atomicReference.set(qVar);
        F();
        D();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(Status status) {
        this.f40711j.b(ChannelLogger.ChannelLogLevel.DEBUG, "[grpclb-<{0}>] Error: {1}", this.f40702a, status);
        if (this.f40724w.isEmpty()) {
            E(ConnectivityState.TRANSIENT_FAILURE, new o(this.f40723v, Arrays.asList(new g(Status.f41719u.q(status.m()).r(status.o())))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I() {
        this.f40711j.b(ChannelLogger.ChannelLogLevel.INFO, "[grpclb-<{0}>] Shutdown", this.f40702a);
        J();
        int i9 = d.f40730a[this.f40722u.c().ordinal()];
        if (i9 == 1) {
            for (n0.h hVar : this.f40721t.values()) {
                H(hVar);
            }
            this.f40706e.clear();
        } else if (i9 == 2) {
            if (!this.f40721t.isEmpty()) {
                com.google.common.base.o.D(this.f40721t.size() == 1, "Excessive Subchannels: %s", this.f40721t);
                this.f40721t.values().iterator().next().h();
            }
        } else {
            throw new AssertionError("Missing case for " + this.f40722u.c());
        }
        this.f40721t = Collections.emptyMap();
        y();
        z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class e implements n {

        /* renamed from: a  reason: collision with root package name */
        final n0.h f40732a;

        /* renamed from: b  reason: collision with root package name */
        final n0.e f40733b;

        /* renamed from: c  reason: collision with root package name */
        private final String f40734c;

        e(n0.h hVar, hg.c cVar, String str) {
            this.f40732a = (n0.h) com.google.common.base.o.t(hVar, "subchannel");
            this.f40733b = n0.e.i(hVar, (k.a) com.google.common.base.o.t(cVar, "loadRecorder"));
            this.f40734c = (String) com.google.common.base.o.t(str, JThirdPlatFormInterface.KEY_TOKEN);
        }

        @Override // hg.i.n
        public n0.e a(s0 s0Var) {
            s0.i<String> iVar = hg.e.f40686a;
            s0Var.i(iVar);
            String str = this.f40734c;
            if (str != null) {
                s0Var.t(iVar, str);
            }
            return this.f40733b;
        }

        public boolean equals(Object obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                return com.google.common.base.l.a(this.f40733b, eVar.f40733b) && com.google.common.base.l.a(this.f40734c, eVar.f40734c);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f40733b, this.f40734c);
        }

        public String toString() {
            return "[" + this.f40732a.c().toString() + "(" + this.f40734c + ")]";
        }

        e(n0.h hVar) {
            this.f40732a = (n0.h) com.google.common.base.o.t(hVar, "subchannel");
            this.f40733b = n0.e.h(hVar);
            this.f40734c = null;
        }

        e(n0.h hVar, hg.l lVar) {
            this.f40732a = (n0.h) com.google.common.base.o.t(hVar, "subchannel");
            this.f40733b = n0.e.i(hVar, (k.a) com.google.common.base.o.t(lVar, "tracerFactory"));
            this.f40734c = null;
        }
    }
}
