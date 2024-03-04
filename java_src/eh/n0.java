package eh;

import com.facebook.internal.security.CertificateUtil;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.e9;
import com.google.protobuf.Any;
import com.google.protobuf.Duration;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.re2j.Pattern;
import com.google.re2j.PatternSyntaxException;
import eh.a;
import eh.j0;
import eh.l1;
import eh.l2;
import eh.p2;
import eh.q2;
import eh.s1;
import eh.u0;
import fh.i;
import io.grpc.Status;
import io.grpc.d1;
import io.grpc.internal.k;
import io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.CircuitBreakers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthStatus;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Locality;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RoutingPriority;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TrafficDirection;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.ClusterLoadAssignment;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LbEndpoint;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Filter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.FilterConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteMatch;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.WeightedCluster;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.clusters.aggregate.v3.ClusterConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent;
import java.lang.Thread;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n0 extends p2 implements p2.n, p2.k {
    private static final Set<Status.Code> A;

    /* renamed from: v  reason: collision with root package name */
    static boolean f38901v;

    /* renamed from: w  reason: collision with root package name */
    static boolean f38902w;

    /* renamed from: x  reason: collision with root package name */
    static boolean f38903x;

    /* renamed from: y  reason: collision with root package name */
    static boolean f38904y;

    /* renamed from: z  reason: collision with root package name */
    static boolean f38905z;

    /* renamed from: h  reason: collision with root package name */
    private final s1 f38913h;

    /* renamed from: j  reason: collision with root package name */
    private final r f38915j;

    /* renamed from: k  reason: collision with root package name */
    private final j0.b f38916k;

    /* renamed from: l  reason: collision with root package name */
    private final io.grpc.r f38917l;

    /* renamed from: m  reason: collision with root package name */
    private final ScheduledExecutorService f38918m;

    /* renamed from: n  reason: collision with root package name */
    private final k.a f38919n;

    /* renamed from: o  reason: collision with root package name */
    private final com.google.common.base.w<com.google.common.base.u> f38920o;

    /* renamed from: p  reason: collision with root package name */
    private final io.grpc.internal.m2 f38921p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f38922q;

    /* renamed from: r  reason: collision with root package name */
    private final k2 f38923r;

    /* renamed from: s  reason: collision with root package name */
    private final io.grpc.g0 f38924s;

    /* renamed from: t  reason: collision with root package name */
    private final q2 f38925t;

    /* renamed from: u  reason: collision with root package name */
    private volatile boolean f38926u;

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.d1 f38906a = new io.grpc.d1(new f());

    /* renamed from: b  reason: collision with root package name */
    private final m1 f38907b = m1.b();

    /* renamed from: c  reason: collision with root package name */
    private final Map<j0.d, eh.a> f38908c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, p> f38909d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, p> f38910e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, p> f38911f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, p> f38912g = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private final Map<j0.d, r1> f38914i = new HashMap();

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38927a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.d f38928b;

        a(String str, p2.d dVar) {
            this.f38927a = str;
            this.f38928b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38912g.get(this.f38927a);
            if (pVar == null) {
                n0.this.f38925t.c(q2.b.INFO, "Subscribe EDS resource {0}", this.f38927a);
                n0 n0Var = n0.this;
                a.f fVar = a.f.EDS;
                pVar = new p(fVar, this.f38927a);
                n0.this.f38912g.put(this.f38927a, pVar);
                pVar.f38970b.u(fVar);
            }
            pVar.g(this.f38928b);
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38930a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.d f38931b;

        b(String str, p2.d dVar) {
            this.f38930a = str;
            this.f38931b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38912g.get(this.f38930a);
            pVar.o(this.f38931b);
            if (pVar.i()) {
                return;
            }
            pVar.q();
            n0.this.f38925t.c(q2.b.INFO, "Unsubscribe EDS resource {0}", this.f38930a);
            n0.this.f38912g.remove(this.f38930a);
            pVar.f38970b.u(a.f.EDS);
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j0.d f38933a;

        c(j0.d dVar) {
            this.f38933a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n0.this.f38922q) {
                return;
            }
            ((r1) n0.this.f38914i.get(this.f38933a)).o();
            n0.this.f38922q = true;
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j0.d f38935a;

        d(j0.d dVar) {
            this.f38935a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n0.this.f38922q) {
                return;
            }
            ((r1) n0.this.f38914i.get(this.f38935a)).o();
            n0.this.f38922q = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38937a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f38938b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f38939c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f38940d;

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ int[] f38941e;

        /* renamed from: f  reason: collision with root package name */
        static final /* synthetic */ int[] f38942f;

        /* renamed from: g  reason: collision with root package name */
        static final /* synthetic */ int[] f38943g;

        /* renamed from: h  reason: collision with root package name */
        static final /* synthetic */ int[] f38944h;

        /* renamed from: i  reason: collision with root package name */
        static final /* synthetic */ int[] f38945i;

        /* renamed from: j  reason: collision with root package name */
        static final /* synthetic */ int[] f38946j;

        static {
            int[] iArr = new int[a.f.values().length];
            f38946j = iArr;
            try {
                iArr[a.f.LDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38946j[a.f.RDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38946j[a.f.CDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38946j[a.f.EDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38946j[a.f.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[Cluster.ClusterDiscoveryTypeCase.values().length];
            f38945i = iArr2;
            try {
                iArr2[Cluster.ClusterDiscoveryTypeCase.TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38945i[Cluster.ClusterDiscoveryTypeCase.CLUSTER_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38945i[Cluster.ClusterDiscoveryTypeCase.CLUSTERDISCOVERYTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[RouteAction.ClusterSpecifierCase.values().length];
            f38944h = iArr3;
            try {
                iArr3[RouteAction.ClusterSpecifierCase.CLUSTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38944h[RouteAction.ClusterSpecifierCase.CLUSTER_HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38944h[RouteAction.ClusterSpecifierCase.WEIGHTED_CLUSTERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38944h[RouteAction.ClusterSpecifierCase.CLUSTER_SPECIFIER_PLUGIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38944h[RouteAction.ClusterSpecifierCase.CLUSTERSPECIFIER_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr4 = new int[RouteAction.HashPolicy.PolicySpecifierCase.values().length];
            f38943g = iArr4;
            try {
                iArr4[RouteAction.HashPolicy.PolicySpecifierCase.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38943g[RouteAction.HashPolicy.PolicySpecifierCase.FILTER_STATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr5 = new int[HeaderMatcher.HeaderMatchSpecifierCase.values().length];
            f38942f = iArr5;
            try {
                iArr5[HeaderMatcher.HeaderMatchSpecifierCase.EXACT_MATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38942f[HeaderMatcher.HeaderMatchSpecifierCase.SAFE_REGEX_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f38942f[HeaderMatcher.HeaderMatchSpecifierCase.RANGE_MATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f38942f[HeaderMatcher.HeaderMatchSpecifierCase.PRESENT_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f38942f[HeaderMatcher.HeaderMatchSpecifierCase.PREFIX_MATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f38942f[HeaderMatcher.HeaderMatchSpecifierCase.SUFFIX_MATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f38942f[HeaderMatcher.HeaderMatchSpecifierCase.HEADERMATCHSPECIFIER_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused22) {
            }
            int[] iArr6 = new int[FractionalPercent.DenominatorType.values().length];
            f38941e = iArr6;
            try {
                iArr6[FractionalPercent.DenominatorType.HUNDRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f38941e[FractionalPercent.DenominatorType.TEN_THOUSAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f38941e[FractionalPercent.DenominatorType.MILLION.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f38941e[FractionalPercent.DenominatorType.UNRECOGNIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            int[] iArr7 = new int[RouteMatch.PathSpecifierCase.values().length];
            f38940d = iArr7;
            try {
                iArr7[RouteMatch.PathSpecifierCase.PREFIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f38940d[RouteMatch.PathSpecifierCase.PATH.ordinal()] = 2;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f38940d[RouteMatch.PathSpecifierCase.SAFE_REGEX.ordinal()] = 3;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f38940d[RouteMatch.PathSpecifierCase.PATHSPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused30) {
            }
            int[] iArr8 = new int[Route.ActionCase.values().length];
            f38939c = iArr8;
            try {
                iArr8[Route.ActionCase.ROUTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f38939c[Route.ActionCase.NON_FORWARDING_ACTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f38939c[Route.ActionCase.REDIRECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f38939c[Route.ActionCase.DIRECT_RESPONSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f38939c[Route.ActionCase.FILTER_ACTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f38939c[Route.ActionCase.ACTION_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused36) {
            }
            int[] iArr9 = new int[FilterChainMatch.ConnectionSourceType.values().length];
            f38938b = iArr9;
            try {
                iArr9[FilterChainMatch.ConnectionSourceType.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f38938b[FilterChainMatch.ConnectionSourceType.EXTERNAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f38938b[FilterChainMatch.ConnectionSourceType.SAME_IP_OR_LOOPBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused39) {
            }
            int[] iArr10 = new int[SocketAddress.PortSpecifierCase.values().length];
            f38937a = iArr10;
            try {
                iArr10[SocketAddress.PortSpecifierCase.NAMED_PORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f38937a[SocketAddress.PortSpecifierCase.PORT_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused41) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements Thread.UncaughtExceptionHandler {
        f() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th2) {
            n0.this.f38925t.c(q2.b.ERROR, "Uncaught exception in XdsClient SynchronizationContext. Panic!", th2);
            throw new AssertionError(th2);
        }
    }

    /* loaded from: classes5.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n0.this.f38926u) {
                return;
            }
            n0.this.f38926u = true;
            for (eh.a aVar : n0.this.f38908c.values()) {
                aVar.z();
            }
            if (n0.this.f38922q) {
                for (r1 r1Var : n0.this.f38914i.values()) {
                    r1Var.q();
                }
            }
            n0.this.O();
        }
    }

    /* loaded from: classes5.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38949a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.f f38950b;

        h(String str, p2.f fVar) {
            this.f38949a = str;
            this.f38950b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38909d.get(this.f38949a);
            if (pVar == null) {
                n0.this.f38925t.c(q2.b.INFO, "Subscribe LDS resource {0}", this.f38949a);
                n0 n0Var = n0.this;
                a.f fVar = a.f.LDS;
                pVar = new p(fVar, this.f38949a);
                n0.this.f38909d.put(this.f38949a, pVar);
                pVar.f38970b.u(fVar);
            }
            pVar.g(this.f38950b);
        }
    }

    /* loaded from: classes5.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38952a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.f f38953b;

        i(String str, p2.f fVar) {
            this.f38952a = str;
            this.f38953b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38909d.get(this.f38952a);
            pVar.o(this.f38953b);
            if (pVar.i()) {
                return;
            }
            pVar.q();
            n0.this.f38925t.c(q2.b.INFO, "Unsubscribe LDS resource {0}", this.f38952a);
            n0.this.f38909d.remove(this.f38952a);
            pVar.f38970b.u(a.f.LDS);
        }
    }

    /* loaded from: classes5.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38955a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.h f38956b;

        j(String str, p2.h hVar) {
            this.f38955a = str;
            this.f38956b = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38910e.get(this.f38955a);
            if (pVar == null) {
                n0.this.f38925t.c(q2.b.INFO, "Subscribe RDS resource {0}", this.f38955a);
                n0 n0Var = n0.this;
                a.f fVar = a.f.RDS;
                pVar = new p(fVar, this.f38955a);
                n0.this.f38910e.put(this.f38955a, pVar);
                pVar.f38970b.u(fVar);
            }
            pVar.g(this.f38956b);
        }
    }

    /* loaded from: classes5.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38958a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.h f38959b;

        k(String str, p2.h hVar) {
            this.f38958a = str;
            this.f38959b = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38910e.get(this.f38958a);
            pVar.o(this.f38959b);
            if (pVar.i()) {
                return;
            }
            pVar.q();
            n0.this.f38925t.c(q2.b.INFO, "Unsubscribe RDS resource {0}", this.f38958a);
            n0.this.f38910e.remove(this.f38958a);
            pVar.f38970b.u(a.f.RDS);
        }
    }

    /* loaded from: classes5.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38961a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.b f38962b;

        l(String str, p2.b bVar) {
            this.f38961a = str;
            this.f38962b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38911f.get(this.f38961a);
            if (pVar == null) {
                n0.this.f38925t.c(q2.b.INFO, "Subscribe CDS resource {0}", this.f38961a);
                n0 n0Var = n0.this;
                a.f fVar = a.f.CDS;
                pVar = new p(fVar, this.f38961a);
                n0.this.f38911f.put(this.f38961a, pVar);
                pVar.f38970b.u(fVar);
            }
            pVar.g(this.f38962b);
        }
    }

    /* loaded from: classes5.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38964a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p2.b f38965b;

        m(String str, p2.b bVar) {
            this.f38964a = str;
            this.f38965b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = (p) n0.this.f38911f.get(this.f38964a);
            pVar.o(this.f38965b);
            if (pVar.i()) {
                return;
            }
            pVar.q();
            n0.this.f38925t.c(q2.b.INFO, "Unsubscribe CDS resource {0}", this.f38964a);
            n0.this.f38911f.remove(this.f38964a);
            pVar.f38970b.u(a.f.CDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class n {

        /* renamed from: a  reason: collision with root package name */
        private final p2.l f38967a;

        /* renamed from: b  reason: collision with root package name */
        private final Any f38968b;

        /* synthetic */ n(p2.l lVar, Any any, f fVar) {
            this(lVar, any);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Any c() {
            return this.f38968b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public p2.l d() {
            return this.f38967a;
        }

        private n(p2.l lVar, Any any) {
            this.f38967a = (p2.l) com.google.common.base.o.t(lVar, "resourceUpdate");
            this.f38968b = (Any) com.google.common.base.o.t(any, "rawResource");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class o extends Exception {
        private static final long serialVersionUID = 0;

        /* synthetic */ o(String str, f fVar) {
            this(str);
        }

        /* synthetic */ o(String str, Throwable th2, f fVar) {
            this(str, th2);
        }

        private o(String str) {
            super(str, null, false, false);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private o(java.lang.String r2, java.lang.Throwable r3) {
            /*
                r1 = this;
                if (r3 == 0) goto L1a
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r0.append(r2)
                java.lang.String r2 = ": "
                r0.append(r2)
                java.lang.String r2 = r3.getMessage()
                r0.append(r2)
                java.lang.String r2 = r0.toString()
            L1a:
                r0 = 0
                r1.<init>(r2, r3, r0, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: eh.n0.o.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class p {

        /* renamed from: a  reason: collision with root package name */
        private final j0.d f38969a;

        /* renamed from: b  reason: collision with root package name */
        private final eh.a f38970b;

        /* renamed from: c  reason: collision with root package name */
        private final a.f f38971c;

        /* renamed from: d  reason: collision with root package name */
        private final String f38972d;

        /* renamed from: e  reason: collision with root package name */
        private final Set<p2.m> f38973e = new HashSet();

        /* renamed from: f  reason: collision with root package name */
        private p2.l f38974f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f38975g;

        /* renamed from: h  reason: collision with root package name */
        private d1.c f38976h;

        /* renamed from: i  reason: collision with root package name */
        private p2.j f38977i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                n0.this.f38925t.c(q2.b.INFO, "{0} resource {1} initial fetch timeout", p.this.f38971c, p.this.f38972d);
                p.this.f38976h = null;
                p.this.k();
            }

            public String toString() {
                return p.this.f38971c + getClass().getSimpleName();
            }
        }

        p(a.f fVar, String str) {
            n0.this.f38906a.e();
            this.f38971c = fVar;
            this.f38972d = str;
            j0.d h10 = h(str);
            this.f38969a = h10;
            this.f38977i = p2.j.h();
            n0.this.c0(h10);
            eh.a aVar = (eh.a) n0.this.f38908c.get(h10);
            this.f38970b = aVar;
            if (aVar.x()) {
                return;
            }
            p();
        }

        private j0.d h(String str) {
            if (str.startsWith("xdstp:")) {
                String authority = URI.create(str).getAuthority();
                if (authority == null) {
                    authority = "";
                }
                return n0.this.f38916k.a().get(authority).c().get(0);
            }
            return n0.this.f38916k.g().get(0);
        }

        private void j(p2.m mVar, p2.l lVar) {
            int i9 = e.f38946j[this.f38971c.ordinal()];
            if (i9 == 1) {
                ((p2.f) mVar).e((p2.g) lVar);
            } else if (i9 == 2) {
                ((p2.h) mVar).c((p2.i) lVar);
            } else if (i9 == 3) {
                ((p2.b) mVar).f((p2.c) lVar);
            } else if (i9 == 4) {
                ((p2.d) mVar).d((p2.e) lVar);
            } else {
                throw new AssertionError("should never be here");
            }
        }

        void g(p2.m mVar) {
            com.google.common.base.o.m(!this.f38973e.contains(mVar), "watcher %s already registered", mVar);
            this.f38973e.add(mVar);
            p2.l lVar = this.f38974f;
            if (lVar != null) {
                j(mVar, lVar);
            } else if (this.f38975g) {
                mVar.b(this.f38972d);
            }
        }

        boolean i() {
            return !this.f38973e.isEmpty();
        }

        void k() {
            d1.c cVar = this.f38976h;
            if (cVar == null || !cVar.b()) {
                n0.this.f38925t.c(q2.b.INFO, "Conclude {0} resource {1} not exist", this.f38971c, this.f38972d);
                if (this.f38975g) {
                    return;
                }
                this.f38974f = null;
                this.f38975g = true;
                this.f38977i = p2.j.e();
                for (p2.m mVar : this.f38973e) {
                    mVar.b(this.f38972d);
                }
            }
        }

        void l(n nVar, String str, long j10) {
            d1.c cVar = this.f38976h;
            if (cVar != null && cVar.b()) {
                this.f38976h.a();
                this.f38976h = null;
            }
            this.f38977i = p2.j.d(nVar.c(), str, j10);
            p2.l lVar = this.f38974f;
            p2.l d10 = nVar.d();
            this.f38974f = d10;
            this.f38975g = false;
            if (Objects.equals(lVar, d10)) {
                return;
            }
            for (p2.m mVar : this.f38973e) {
                j(mVar, this.f38974f);
            }
        }

        void m(Status status) {
            d1.c cVar = this.f38976h;
            if (cVar != null && cVar.b()) {
                this.f38976h.a();
                this.f38976h = null;
            }
            for (p2.m mVar : this.f38973e) {
                mVar.a(status);
            }
        }

        void n(String str, long j10, String str2) {
            this.f38977i = p2.j.f(this.f38977i, str, j10, str2);
        }

        void o(p2.m mVar) {
            com.google.common.base.o.m(this.f38973e.contains(mVar), "watcher %s not registered", mVar);
            this.f38973e.remove(mVar);
        }

        void p() {
            if (this.f38974f != null || this.f38975g) {
                return;
            }
            this.f38977i = p2.j.g();
            this.f38976h = n0.this.f38906a.d(new a(), 15L, TimeUnit.SECONDS, n0.this.f38918m);
        }

        void q() {
            d1.c cVar = this.f38976h;
            if (cVar == null || !cVar.b()) {
                return;
            }
            this.f38976h.a();
            this.f38976h = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class r {

        /* renamed from: a  reason: collision with root package name */
        static final r f38982a = new a();

        /* loaded from: classes5.dex */
        class a extends r {
            a() {
            }

            /* JADX WARN: Type inference failed for: r4v3, types: [io.grpc.r0] */
            @Override // eh.n0.r
            io.grpc.q0 a(j0.d dVar) {
                return io.grpc.a0.b(dVar.c(), dVar.a()).i(5L, TimeUnit.MINUTES).a();
            }
        }

        r() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract io.grpc.q0 a(j0.d dVar);
    }

    static {
        boolean parseBoolean;
        boolean z10 = false;
        f38901v = com.google.common.base.v.b(System.getenv("GRPC_XDS_EXPERIMENTAL_FAULT_INJECTION")) || Boolean.parseBoolean(System.getenv("GRPC_XDS_EXPERIMENTAL_FAULT_INJECTION"));
        f38902w = com.google.common.base.v.b(System.getenv("GRPC_XDS_EXPERIMENTAL_ENABLE_RETRY")) || Boolean.parseBoolean(System.getenv("GRPC_XDS_EXPERIMENTAL_ENABLE_RETRY"));
        f38903x = com.google.common.base.v.b(System.getenv("GRPC_XDS_EXPERIMENTAL_RBAC")) || Boolean.parseBoolean(System.getenv("GRPC_XDS_EXPERIMENTAL_RBAC"));
        if (!com.google.common.base.v.b(System.getenv("GRPC_EXPERIMENTAL_XDS_RLS_LB")) && Boolean.parseBoolean(System.getenv("GRPC_EXPERIMENTAL_XDS_RLS_LB"))) {
            z10 = true;
        }
        f38904y = z10;
        if (!com.google.common.base.v.b(System.getenv("GRPC_EXPERIMENTAL_ENABLE_LEAST_REQUEST"))) {
            parseBoolean = Boolean.parseBoolean(System.getenv("GRPC_EXPERIMENTAL_ENABLE_LEAST_REQUEST"));
        } else {
            parseBoolean = Boolean.parseBoolean(System.getProperty("io.grpc.xds.experimentalEnableLeastRequest"));
        }
        f38905z = parseBoolean;
        A = Collections.unmodifiableSet(EnumSet.of(Status.Code.CANCELLED, Status.Code.DEADLINE_EXCEEDED, Status.Code.INTERNAL, Status.Code.RESOURCE_EXHAUSTED, Status.Code.UNAVAILABLE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(r rVar, j0.b bVar, io.grpc.r rVar2, ScheduledExecutorService scheduledExecutorService, k.a aVar, com.google.common.base.w<com.google.common.base.u> wVar, io.grpc.internal.m2 m2Var, k2 k2Var) {
        this.f38915j = rVar;
        this.f38916k = bVar;
        this.f38917l = rVar2;
        this.f38918m = scheduledExecutorService;
        this.f38913h = new s1(wVar);
        this.f38919n = aVar;
        this.f38920o = wVar;
        this.f38921p = m2Var;
        this.f38923r = (k2) com.google.common.base.o.t(k2Var, "tlsContextManager");
        io.grpc.g0 b10 = io.grpc.g0.b("xds-client", null);
        this.f38924s = b10;
        q2 f10 = q2.f(b10);
        this.f38925t = f10;
        f10.b(q2.b.INFO, "Created");
    }

    static p2.c A0(Cluster cluster, Set<String> set, Set<String> set2, j0.d dVar) throws o {
        q<p2.c.a> q02;
        int i9 = e.f38945i[cluster.getClusterDiscoveryTypeCase().ordinal()];
        if (i9 == 1) {
            q02 = q0(cluster, set, set2, dVar);
        } else if (i9 == 2) {
            q02 = d0(cluster);
        } else {
            throw new o("Cluster " + cluster.getName() + ": unspecified cluster discovery type", (f) null);
        }
        if (q02.g() == null) {
            p2.c.a h10 = q02.h();
            if (cluster.getLbPolicy() == Cluster.LbPolicy.RING_HASH) {
                Cluster.RingHashLbConfig ringHashLbConfig = cluster.getRingHashLbConfig();
                long value = ringHashLbConfig.hasMinimumRingSize() ? ringHashLbConfig.getMinimumRingSize().getValue() : 1024L;
                long value2 = ringHashLbConfig.hasMaximumRingSize() ? ringHashLbConfig.getMaximumRingSize().getValue() : 8388608L;
                if (ringHashLbConfig.getHashFunction() == Cluster.RingHashLbConfig.HashFunction.XX_HASH && value <= value2 && value2 <= 8388608) {
                    h10.m(value, value2);
                } else {
                    throw new o("Cluster " + cluster.getName() + ": invalid ring_hash_lb_config: " + ringHashLbConfig, (f) null);
                }
            } else if (cluster.getLbPolicy() == Cluster.LbPolicy.ROUND_ROBIN) {
                h10.n();
            } else if (f38905z && cluster.getLbPolicy() == Cluster.LbPolicy.LEAST_REQUEST) {
                Cluster.LeastRequestLbConfig leastRequestLbConfig = cluster.getLeastRequestLbConfig();
                int value3 = leastRequestLbConfig.hasChoiceCount() ? leastRequestLbConfig.getChoiceCount().getValue() : 2;
                if (value3 >= 2) {
                    h10.g(value3);
                } else {
                    throw new o("Cluster " + cluster.getName() + ": invalid least_request_lb_config: " + leastRequestLbConfig, (f) null);
                }
            } else {
                throw new o("Cluster " + cluster.getName() + ": unsupported lb policy: " + cluster.getLbPolicy(), (f) null);
            }
            return h10.a();
        }
        throw new o(q02.g(), (f) null);
    }

    private static p2.e B0(ClusterLoadAssignment clusterLoadAssignment) throws o {
        HashSet hashSet = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        int i9 = -1;
        for (LocalityLbEndpoints localityLbEndpoints : clusterLoadAssignment.getEndpointsList()) {
            q<z0> p02 = p0(localityLbEndpoints);
            if (p02 != null) {
                if (p02.g() == null) {
                    z0 h10 = p02.h();
                    i9 = Math.max(i9, h10.d());
                    hashSet.add(Integer.valueOf(h10.d()));
                    linkedHashMap.put(o0(localityLbEndpoints.getLocality()), h10);
                } else {
                    throw new o(p02.g(), (f) null);
                }
            }
        }
        if (hashSet.size() == i9 + 1) {
            for (ClusterLoadAssignment.Policy.DropOverload dropOverload : clusterLoadAssignment.getPolicy().getDropOverloadsList()) {
                arrayList.add(h0(dropOverload));
            }
            return new p2.e(clusterLoadAssignment.getClusterName(), linkedHashMap, arrayList);
        }
        throw new o("ClusterLoadAssignment has sparse priorities", (f) null);
    }

    private static p2.i C0(RouteConfiguration routeConfiguration, m1 m1Var, boolean z10) throws o {
        return new p2.i(U(routeConfiguration, m1Var, z10));
    }

    private p2.g D0(Listener listener, Set<String> set, boolean z10) throws o {
        return p2.g.b(x0(listener, set, this.f38923r, this.f38907b, (o() == null || o().c() == null) ? null : o().c().keySet(), z10));
    }

    private static <T extends com.google.protobuf.l1> T E0(Any any, Class<T> cls, String str, String str2) throws InvalidProtocolBufferException {
        if (any.getTypeUrl().equals(str2)) {
            any = any.toBuilder().j0(str).build();
        }
        return (T) any.unpack(cls);
    }

    static void F0(CommonTlsContext commonTlsContext, Set<String> set, boolean z10) throws o {
        CertificateValidationContext defaultValidationContext;
        if (!commonTlsContext.hasCustomHandshaker()) {
            if (!commonTlsContext.hasTlsParams()) {
                if (!commonTlsContext.hasValidationContextSdsSecretConfig()) {
                    if (!commonTlsContext.hasValidationContextCertificateProvider()) {
                        if (!commonTlsContext.hasValidationContextCertificateProviderInstance()) {
                            String W = W(commonTlsContext);
                            if (W == null) {
                                if (!z10) {
                                    if (commonTlsContext.getTlsCertificatesCount() <= 0) {
                                        if (commonTlsContext.getTlsCertificateSdsSecretConfigsCount() <= 0) {
                                            if (commonTlsContext.hasTlsCertificateCertificateProvider()) {
                                                throw new o("tls_certificate_provider_instance is unset", (f) null);
                                            }
                                        } else {
                                            throw new o("tls_certificate_provider_instance is unset", (f) null);
                                        }
                                    } else {
                                        throw new o("tls_certificate_provider_instance is unset", (f) null);
                                    }
                                } else {
                                    throw new o("tls_certificate_provider_instance is required in downstream-tls-context", (f) null);
                                }
                            } else if (set == null || !set.contains(W)) {
                                throw new o("CertificateProvider instance name '" + W + "' not defined in the bootstrap file.", (f) null);
                            }
                            String Y = Y(commonTlsContext);
                            if (Y == null) {
                                if (!z10) {
                                    throw new o("ca_certificate_provider_instance is required in upstream-tls-context", (f) null);
                                }
                                return;
                            } else if (set != null && set.contains(Y)) {
                                if (commonTlsContext.hasValidationContext()) {
                                    defaultValidationContext = commonTlsContext.getValidationContext();
                                } else {
                                    defaultValidationContext = (commonTlsContext.hasCombinedValidationContext() && commonTlsContext.getCombinedValidationContext().hasDefaultValidationContext()) ? commonTlsContext.getCombinedValidationContext().getDefaultValidationContext() : null;
                                }
                                if (defaultValidationContext != null) {
                                    if (defaultValidationContext.getMatchSubjectAltNamesCount() > 0 && z10) {
                                        throw new o("match_subject_alt_names only allowed in upstream_tls_context", (f) null);
                                    }
                                    if (defaultValidationContext.getVerifyCertificateSpkiCount() <= 0) {
                                        if (defaultValidationContext.getVerifyCertificateHashCount() <= 0) {
                                            if (!defaultValidationContext.hasRequireSignedCertificateTimestamp()) {
                                                if (!defaultValidationContext.hasCrl()) {
                                                    if (defaultValidationContext.hasCustomValidatorConfig()) {
                                                        throw new o("custom_validator_config in default_validation_context is not supported", (f) null);
                                                    }
                                                    return;
                                                }
                                                throw new o("crl in default_validation_context is not supported", (f) null);
                                            }
                                            throw new o("require_signed_certificate_timestamp in default_validation_context is not supported", (f) null);
                                        }
                                        throw new o("verify_certificate_hash in default_validation_context is not supported", (f) null);
                                    }
                                    throw new o("verify_certificate_spki in default_validation_context is not supported", (f) null);
                                }
                                return;
                            } else {
                                throw new o("ca_certificate_provider_instance name '" + Y + "' not defined in the bootstrap file.", (f) null);
                            }
                        }
                        throw new o("common-tls-context with validation_context_certificate_provider_instance is not supported", (f) null);
                    }
                    throw new o("common-tls-context with validation_context_certificate_provider is not supported", (f) null);
                }
                throw new o("common-tls-context with validation_context_sds_secret_config is not supported", (f) null);
            }
            throw new o("common-tls-context with tls_params is not supported", (f) null);
        }
        throw new o("common-tls-context with custom_handshaker is not supported", (f) null);
    }

    static DownstreamTlsContext G0(DownstreamTlsContext downstreamTlsContext, Set<String> set) throws o {
        if (downstreamTlsContext.hasCommonTlsContext()) {
            F0(downstreamTlsContext.getCommonTlsContext(), set, true);
            if (!downstreamTlsContext.hasRequireSni()) {
                DownstreamTlsContext.OcspStaplePolicy ocspStaplePolicy = downstreamTlsContext.getOcspStaplePolicy();
                if (ocspStaplePolicy == DownstreamTlsContext.OcspStaplePolicy.UNRECOGNIZED || ocspStaplePolicy == DownstreamTlsContext.OcspStaplePolicy.LENIENT_STAPLING) {
                    return downstreamTlsContext;
                }
                throw new o("downstream-tls-context with ocsp_staple_policy value " + ocspStaplePolicy.name() + " is not supported", (f) null);
            }
            throw new o("downstream-tls-context with require-sni is not supported", (f) null);
        }
        throw new o("common-tls-context is required in downstream-tls-context", (f) null);
    }

    static UpstreamTlsContext H0(UpstreamTlsContext upstreamTlsContext, Set<String> set) throws o {
        if (upstreamTlsContext.hasCommonTlsContext()) {
            F0(upstreamTlsContext.getCommonTlsContext(), set, false);
            return upstreamTlsContext;
        }
        throw new o("common-tls-context is required in upstream-tls-context", (f) null);
    }

    private static void N(Set<g1> set, g1 g1Var) throws o {
        if (set != null) {
            for (g1 g1Var2 : V(g1Var)) {
                if (!set.add(g1Var2)) {
                    throw new o("FilterChainMatch must be unique. Found duplicate: " + g1Var2, (f) null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        for (p pVar : this.f38909d.values()) {
            pVar.q();
        }
        for (p pVar2 : this.f38910e.values()) {
            pVar2.q();
        }
        for (p pVar3 : this.f38911f.values()) {
            pVar3.q();
        }
        for (p pVar4 : this.f38912g.values()) {
            pVar4.q();
        }
    }

    private static List<g1> P(Collection<g1> collection) {
        ArrayList arrayList = new ArrayList();
        for (g1 g1Var : collection) {
            if (g1Var.a().isEmpty()) {
                arrayList.add(g1Var);
            } else {
                e9<String> it = g1Var.a().iterator();
                while (it.hasNext()) {
                    arrayList.add(g1.c(g1Var.d(), g1Var.e(), ImmutableList.of(it.next()), g1Var.h(), g1Var.b(), g1Var.g(), g1Var.f(), g1Var.i()));
                }
            }
        }
        return arrayList;
    }

    private static List<g1> Q(g1 g1Var) {
        ArrayList arrayList = new ArrayList();
        if (g1Var.e().isEmpty()) {
            arrayList.add(g1Var);
        } else {
            e9<c1> it = g1Var.e().iterator();
            while (it.hasNext()) {
                arrayList.add(g1.c(g1Var.d(), ImmutableList.of(it.next()), g1Var.a(), g1Var.h(), g1Var.b(), g1Var.g(), g1Var.f(), g1Var.i()));
            }
        }
        return arrayList;
    }

    private static List<g1> R(Collection<g1> collection) {
        ArrayList arrayList = new ArrayList();
        for (g1 g1Var : collection) {
            if (g1Var.f().isEmpty()) {
                arrayList.add(g1Var);
            } else {
                e9<String> it = g1Var.f().iterator();
                while (it.hasNext()) {
                    arrayList.add(g1.c(g1Var.d(), g1Var.e(), g1Var.a(), g1Var.h(), g1Var.b(), g1Var.g(), ImmutableList.of(it.next()), g1Var.i()));
                }
            }
        }
        return arrayList;
    }

    private static List<g1> S(Collection<g1> collection) {
        ArrayList arrayList = new ArrayList();
        for (g1 g1Var : collection) {
            if (g1Var.g().isEmpty()) {
                arrayList.add(g1Var);
            } else {
                e9<Integer> it = g1Var.g().iterator();
                while (it.hasNext()) {
                    arrayList.add(g1.c(g1Var.d(), g1Var.e(), g1Var.a(), g1Var.h(), g1Var.b(), ImmutableList.of(it.next()), g1Var.f(), g1Var.i()));
                }
            }
        }
        return arrayList;
    }

    private static List<g1> T(Collection<g1> collection) {
        ArrayList arrayList = new ArrayList();
        for (g1 g1Var : collection) {
            if (g1Var.h().isEmpty()) {
                arrayList.add(g1Var);
            } else {
                e9<c1> it = g1Var.h().iterator();
                while (it.hasNext()) {
                    arrayList.add(g1.c(g1Var.d(), g1Var.e(), g1Var.a(), ImmutableList.of(it.next()), g1Var.b(), g1Var.g(), g1Var.f(), g1Var.i()));
                }
            }
        }
        return arrayList;
    }

    private static List<l2> U(RouteConfiguration routeConfiguration, m1 m1Var, boolean z10) throws o {
        HashMap hashMap = new HashMap();
        if (f38904y) {
            for (ClusterSpecifierPlugin clusterSpecifierPlugin : routeConfiguration.getClusterSpecifierPluginsList()) {
                if (((u0.b) hashMap.put(clusterSpecifierPlugin.getExtension().getName(), e0(clusterSpecifierPlugin))) != null) {
                    throw new o("Multiple ClusterSpecifierPlugins with the same name: " + clusterSpecifierPlugin.getExtension().getName(), (f) null);
                }
            }
        }
        ArrayList arrayList = new ArrayList(routeConfiguration.getVirtualHostsCount());
        for (VirtualHost virtualHost : routeConfiguration.getVirtualHostsList()) {
            q<l2> y02 = y0(virtualHost, m1Var, z10, hashMap);
            if (y02.g() == null) {
                arrayList.add(y02.h());
            } else {
                throw new o("RouteConfiguration contains invalid virtual host: " + y02.g(), (f) null);
            }
        }
        return arrayList;
    }

    private static List<g1> V(g1 g1Var) {
        return R(S(T(P(Q(g1Var)))));
    }

    private static String W(CommonTlsContext commonTlsContext) {
        if (commonTlsContext.hasTlsCertificateProviderInstance()) {
            return commonTlsContext.getTlsCertificateProviderInstance().getInstanceName();
        }
        if (commonTlsContext.hasTlsCertificateCertificateProviderInstance()) {
            return commonTlsContext.getTlsCertificateCertificateProviderInstance().getInstanceName();
        }
        return null;
    }

    private static int X(FractionalPercent fractionalPercent) {
        int numerator = fractionalPercent.getNumerator();
        int i9 = e.f38941e[fractionalPercent.getDenominator().ordinal()];
        if (i9 == 1) {
            numerator *= 10000;
        } else if (i9 == 2) {
            numerator *= 100;
        } else if (i9 != 3) {
            throw new IllegalArgumentException("Unknown denominator type of " + fractionalPercent);
        }
        if (numerator > 1000000 || numerator < 0) {
            return 1000000;
        }
        return numerator;
    }

    private static String Y(CommonTlsContext commonTlsContext) {
        if (commonTlsContext.hasValidationContext()) {
            if (commonTlsContext.getValidationContext().hasCaCertificateProviderInstance()) {
                return commonTlsContext.getValidationContext().getCaCertificateProviderInstance().getInstanceName();
            }
            return null;
        } else if (commonTlsContext.hasCombinedValidationContext()) {
            CommonTlsContext.CombinedCertificateValidationContext combinedValidationContext = commonTlsContext.getCombinedValidationContext();
            if (combinedValidationContext.hasDefaultValidationContext() && combinedValidationContext.getDefaultValidationContext().hasCaCertificateProviderInstance()) {
                return combinedValidationContext.getDefaultValidationContext().getCaCertificateProviderInstance().getInstanceName();
            }
            if (combinedValidationContext.hasValidationContextCertificateProviderInstance()) {
                return combinedValidationContext.getValidationContextCertificateProviderInstance().getInstanceName();
            }
            return null;
        } else {
            return null;
        }
    }

    private Map<String, p> Z(a.f fVar) {
        int i9 = e.f38946j[fVar.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 == 4) {
                        return this.f38912g;
                    }
                    throw new AssertionError("Unknown resource type");
                }
                return this.f38911f;
            }
            return this.f38910e;
        }
        return this.f38909d;
    }

    private void a0(j0.d dVar, a.f fVar, Map<String, n> map, Set<String> set, Set<String> set2, String str, String str2, List<String> list) {
        String str3;
        String f10;
        if (list.isEmpty()) {
            com.google.common.base.o.e(set.isEmpty(), "found invalid resources but missing errors");
            this.f38908c.get(dVar).t(fVar, str, str2);
            str3 = null;
        } else {
            String d10 = com.google.common.base.i.g('\n').d(list);
            this.f38925t.c(q2.b.WARNING, "Failed processing {0} Response version {1} nonce {2}. Errors:\n{3}", fVar, str, str2, d10);
            this.f38908c.get(dVar).y(fVar, str2, d10);
            str3 = d10;
        }
        long a10 = this.f38921p.a();
        for (Map.Entry<String, p> entry : Z(fVar).entrySet()) {
            String key = entry.getKey();
            p value = entry.getValue();
            if (set.contains(key)) {
                value.n(str, a10, str3);
            }
            if (map.containsKey(key)) {
                value.l(map.get(key), str, a10);
            } else {
                a.f fVar2 = a.f.LDS;
                if (fVar == fVar2 || fVar == a.f.CDS) {
                    if (value.f38974f == null || !set.contains(key)) {
                        if (set.contains(key)) {
                            value.m(Status.f41719u.r(str3));
                        } else {
                            value.k();
                        }
                    } else if (fVar == fVar2) {
                        n1 c10 = ((p2.g) value.f38974f).c();
                        if (c10 != null && (f10 = c10.f()) != null) {
                            set2.add(f10);
                        }
                    } else {
                        p2.c cVar = (p2.c) value.f38974f;
                        String e10 = cVar.e();
                        if (e10 == null) {
                            e10 = cVar.b();
                        }
                        set2.add(e10);
                    }
                }
            }
        }
        a.f fVar3 = a.f.LDS;
        if (fVar == fVar3 || fVar == a.f.CDS) {
            Map<String, p> map2 = fVar == fVar3 ? this.f38910e : this.f38912g;
            for (String str4 : map2.keySet()) {
                if (!set2.contains(str4)) {
                    map2.get(str4).k();
                }
            }
        }
    }

    private static boolean b0(l1.b bVar) {
        return d2.f38726b.equals(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(j0.d dVar) {
        this.f38906a.e();
        if (this.f38908c.containsKey(dVar)) {
            return;
        }
        eh.a aVar = new eh.a(this.f38915j, dVar, this.f38916k.e(), this, this, this.f38917l, this.f38918m, this.f38906a, this.f38919n, this.f38920o);
        r1 r1Var = new r1(this.f38913h, aVar.v(), this.f38917l, dVar.d(), this.f38916k.e(), this.f38906a, this.f38918m, this.f38919n, this.f38920o);
        this.f38908c.put(dVar, aVar);
        this.f38914i.put(dVar, r1Var);
    }

    private static q<p2.c.a> d0(Cluster cluster) {
        String name = cluster.getName();
        Cluster.CustomClusterType clusterType = cluster.getClusterType();
        String name2 = clusterType.getName();
        if (!name2.equals("envoy.clusters.aggregate")) {
            return q.e("Cluster " + name + ": unsupported custom cluster type: " + name2);
        }
        try {
            return q.f(p2.c.f(name, ((ClusterConfig) E0(clusterType.getTypedConfig(), ClusterConfig.class, "type.googleapis.com/envoy.extensions.clusters.aggregate.v3.ClusterConfig", "type.googleapis.com/envoy.config.cluster.aggregate.v2alpha.ClusterConfig")).m1633getClustersList()));
        } catch (InvalidProtocolBufferException e10) {
            return q.e("Cluster " + name + ": malformed ClusterConfig: " + e10);
        }
    }

    private static u0.b e0(ClusterSpecifierPlugin clusterSpecifierPlugin) throws o {
        return f0(clusterSpecifierPlugin, v0.b());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
        if (r1.equals("type.googleapis.com/xds.type.v3.TypedStruct") != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static eh.u0.b f0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin r6, eh.v0 r7) throws eh.n0.o {
        /*
            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig r6 = r6.getExtension()
            java.lang.String r0 = r6.getName()
            com.google.protobuf.Any r6 = r6.getTypedConfig()
            java.lang.String r1 = r6.getTypeUrl()
            java.lang.String r2 = "type.googleapis.com/udpa.type.v1.TypedStruct"
            boolean r3 = r1.equals(r2)
            java.lang.String r4 = "type.googleapis.com/xds.type.v3.TypedStruct"
            r5 = 0
            if (r3 != 0) goto L21
            boolean r3 = r1.equals(r4)
            if (r3 == 0) goto L31
        L21:
            java.lang.Class<io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct> r1 = io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct.class
            com.google.protobuf.l1 r6 = E0(r6, r1, r2, r4)     // Catch: com.google.protobuf.InvalidProtocolBufferException -> L63
            io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct r6 = (io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct) r6     // Catch: com.google.protobuf.InvalidProtocolBufferException -> L63
            java.lang.String r1 = r6.getTypeUrl()     // Catch: com.google.protobuf.InvalidProtocolBufferException -> L63
            com.google.protobuf.Struct r6 = r6.getValue()     // Catch: com.google.protobuf.InvalidProtocolBufferException -> L63
        L31:
            eh.u0 r7 = r7.a(r1)
            if (r7 == 0) goto L4c
            eh.w0 r6 = r7.b(r6)
            java.lang.String r7 = r6.f39397a
            if (r7 != 0) goto L44
            T r6 = r6.f39398b
            eh.u0$b r6 = (eh.u0.b) r6
            return r6
        L44:
            eh.n0$o r7 = new eh.n0$o
            java.lang.String r6 = r6.f39397a
            r7.<init>(r6, r5)
            throw r7
        L4c:
            eh.n0$o r6 = new eh.n0$o
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "Unsupported ClusterSpecifierPlugin type: "
            r7.append(r0)
            r7.append(r1)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7, r5)
            throw r6
        L63:
            r6 = move-exception
            eh.n0$o r7 = new eh.n0$o
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "ClusterSpecifierPlugin ["
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = "] contains invalid proto"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r7.<init>(r0, r6, r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: eh.n0.f0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin, eh.v0):eh.u0$b");
    }

    static q<l2.a.AbstractC0399a.AbstractC0400a> g0(WeightedCluster.ClusterWeight clusterWeight, m1 m1Var, boolean z10) {
        if (!z10) {
            return q.f(l2.a.AbstractC0399a.AbstractC0400a.a(clusterWeight.getName(), clusterWeight.getWeight().getValue(), new HashMap()));
        }
        q<Map<String, l1.b>> r02 = r0(clusterWeight.getTypedPerFilterConfigMap(), m1Var);
        if (((q) r02).f38980a != null) {
            return q.e("ClusterWeight [" + clusterWeight.getName() + "] contains invalid HttpFilter config: " + ((q) r02).f38980a);
        }
        return q.f(l2.a.AbstractC0399a.AbstractC0400a.a(clusterWeight.getName(), clusterWeight.getWeight().getValue(), (Map) ((q) r02).f38981b));
    }

    private static x0 h0(ClusterLoadAssignment.Policy.DropOverload dropOverload) {
        return x0.b(dropOverload.getCategory(), X(dropOverload.getDropPercentage()));
    }

    static f1 i0(FilterChain filterChain, Set<String> set, k2 k2Var, m1 m1Var, Set<g1> set2, Set<String> set3, boolean z10) throws o {
        e1 e1Var = null;
        if (filterChain.getFiltersCount() == 1) {
            Filter filter = filterChain.getFiltersList().get(0);
            if (filter.hasTypedConfig()) {
                Any typedConfig = filter.getTypedConfig();
                if (typedConfig.getTypeUrl().equals("type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager")) {
                    try {
                        n1 m02 = m0((HttpConnectionManager) typedConfig.unpack(HttpConnectionManager.class), set, m1Var, z10, false);
                        if (filterChain.hasTransportSocket()) {
                            if ("envoy.transport_sockets.tls".equals(filterChain.getTransportSocket().getName())) {
                                try {
                                    e1Var = e1.a(G0((DownstreamTlsContext) filterChain.getTransportSocket().getTypedConfig().unpack(DownstreamTlsContext.class), set3));
                                } catch (InvalidProtocolBufferException e10) {
                                    throw new o("FilterChain " + filterChain.getName() + " failed to unpack message", e10, null);
                                }
                            } else {
                                throw new o("transport-socket with name " + filterChain.getTransportSocket().getName() + " not supported.", (f) null);
                            }
                        }
                        g1 j02 = j0(filterChain.getFilterChainMatch());
                        N(set2, j02);
                        return f1.a(filterChain.getName(), j02, m02, e1Var, k2Var);
                    } catch (InvalidProtocolBufferException e11) {
                        throw new o("FilterChain " + filterChain.getName() + " with filter " + filter.getName() + " failed to unpack message", e11, null);
                    }
                }
                throw new o("FilterChain " + filterChain.getName() + " contains filter " + filter.getName() + " with unsupported typed_config type " + typedConfig.getTypeUrl(), (f) null);
            }
            throw new o("FilterChain " + filterChain.getName() + " contains filter " + filter.getName() + " without typed_config", (f) null);
        }
        throw new o("FilterChain " + filterChain.getName() + " should contain exact one HttpConnectionManager filter", (f) null);
    }

    private static g1 j0(FilterChainMatch filterChainMatch) throws o {
        d1 d1Var;
        ImmutableList.b builder = ImmutableList.builder();
        ImmutableList.b builder2 = ImmutableList.builder();
        try {
            for (CidrRange cidrRange : filterChainMatch.getPrefixRangesList()) {
                builder.a(c1.b(cidrRange.getAddressPrefix(), cidrRange.getPrefixLen().getValue()));
            }
            for (CidrRange cidrRange2 : filterChainMatch.getSourcePrefixRangesList()) {
                builder2.a(c1.b(cidrRange2.getAddressPrefix(), cidrRange2.getPrefixLen().getValue()));
            }
            int i9 = e.f38938b[filterChainMatch.getSourceType().ordinal()];
            if (i9 == 1) {
                d1Var = d1.ANY;
            } else if (i9 == 2) {
                d1Var = d1.EXTERNAL;
            } else if (i9 == 3) {
                d1Var = d1.SAME_IP_OR_LOOPBACK;
            } else {
                throw new o("Unknown source-type: " + filterChainMatch.getSourceType(), (f) null);
            }
            return g1.c(filterChainMatch.getDestinationPort().getValue(), builder.j(), ImmutableList.copyOf((Collection) filterChainMatch.m1621getApplicationProtocolsList()), builder2.j(), d1Var, ImmutableList.copyOf((Collection) filterChainMatch.getSourcePortsList()), ImmutableList.copyOf((Collection) filterChainMatch.m1622getServerNamesList()), filterChainMatch.getTransportProtocol());
        } catch (UnknownHostException e10) {
            throw new o("Failed to create CidrRange", e10, null);
        }
    }

    private static q<fh.h> k0(FractionalPercent fractionalPercent) {
        int i9;
        int numerator = fractionalPercent.getNumerator();
        int i10 = e.f38941e[fractionalPercent.getDenominator().ordinal()];
        if (i10 == 1) {
            i9 = 100;
        } else if (i10 == 2) {
            i9 = 10000;
        } else if (i10 != 3) {
            return q.e("Unrecognized fractional percent denominator: " + fractionalPercent.getDenominator());
        } else {
            i9 = 1000000;
        }
        return q.f(fh.h.a(numerator, i9));
    }

    static q<fh.i> l0(HeaderMatcher headerMatcher) {
        switch (e.f38942f[headerMatcher.getHeaderMatchSpecifierCase().ordinal()]) {
            case 1:
                return q.f(fh.i.c(headerMatcher.getName(), headerMatcher.getExactMatch(), headerMatcher.getInvertMatch()));
            case 2:
                try {
                    return q.f(fh.i.g(headerMatcher.getName(), Pattern.compile(headerMatcher.getSafeRegexMatch().getRegex()), headerMatcher.getInvertMatch()));
                } catch (PatternSyntaxException e10) {
                    return q.e("HeaderMatcher [" + headerMatcher.getName() + "] contains malformed safe regex pattern: " + e10.getMessage());
                }
            case 3:
                return q.f(fh.i.f(headerMatcher.getName(), i.a.a(headerMatcher.getRangeMatch().getStart(), headerMatcher.getRangeMatch().getEnd()), headerMatcher.getInvertMatch()));
            case 4:
                return q.f(fh.i.e(headerMatcher.getName(), headerMatcher.getPresentMatch(), headerMatcher.getInvertMatch()));
            case 5:
                return q.f(fh.i.d(headerMatcher.getName(), headerMatcher.getPrefixMatch(), headerMatcher.getInvertMatch()));
            case 6:
                return q.f(fh.i.h(headerMatcher.getName(), headerMatcher.getSuffixMatch(), headerMatcher.getInvertMatch()));
            default:
                return q.e("Unknown header matcher type");
        }
    }

    static n1 m0(HttpConnectionManager httpConnectionManager, Set<String> set, m1 m1Var, boolean z10, boolean z11) throws o {
        ArrayList arrayList;
        if (f38903x && httpConnectionManager.getXffNumTrustedHops() != 0) {
            throw new o("HttpConnectionManager with xff_num_trusted_hops unsupported", (f) null);
        }
        if (f38903x && !httpConnectionManager.getOriginalIpDetectionExtensionsList().isEmpty()) {
            throw new o("HttpConnectionManager with original_ip_detection_extensions unsupported", (f) null);
        }
        long j10 = 0;
        if (httpConnectionManager.hasCommonHttpProtocolOptions()) {
            HttpProtocolOptions commonHttpProtocolOptions = httpConnectionManager.getCommonHttpProtocolOptions();
            if (commonHttpProtocolOptions.hasMaxStreamDuration()) {
                j10 = v6.a.h(commonHttpProtocolOptions.getMaxStreamDuration());
            }
        }
        if (!z10) {
            arrayList = null;
        } else if (!httpConnectionManager.getHttpFiltersList().isEmpty()) {
            arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            for (int i9 = 0; i9 < httpConnectionManager.getHttpFiltersCount(); i9++) {
                HttpFilter httpFilter = httpConnectionManager.getHttpFiltersList().get(i9);
                String name = httpFilter.getName();
                if (hashSet.add(name)) {
                    q<l1.b> n02 = n0(httpFilter, m1Var, z11);
                    if (i9 == httpConnectionManager.getHttpFiltersCount() - 1 && (n02 == null || !b0((l1.b) ((q) n02).f38981b))) {
                        throw new o("The last HttpFilter must be a terminal filter: " + name, (f) null);
                    }
                    if (n02 != null) {
                        if (n02.g() == null) {
                            if (i9 < httpConnectionManager.getHttpFiltersCount() - 1 && b0(n02.h())) {
                                throw new o("A terminal HttpFilter must be the last filter: " + name, (f) null);
                            }
                            arrayList.add(new l1.c(name, (l1.b) ((q) n02).f38981b));
                        } else {
                            throw new o("HttpConnectionManager contains invalid HttpFilter: " + n02.g(), (f) null);
                        }
                    }
                } else {
                    throw new o("HttpConnectionManager contains duplicate HttpFilter: " + name, (f) null);
                }
            }
        } else {
            throw new o("Missing HttpFilter in HttpConnectionManager.", (f) null);
        }
        if (httpConnectionManager.hasRouteConfig()) {
            return n1.c(j10, U(httpConnectionManager.getRouteConfig(), m1Var, z10), arrayList);
        }
        if (httpConnectionManager.hasRds()) {
            Rds rds = httpConnectionManager.getRds();
            if (rds.hasConfigSource()) {
                if (!rds.getConfigSource().hasAds() && !rds.getConfigSource().hasSelf()) {
                    throw new o("HttpConnectionManager contains invalid RDS: must specify ADS or self ConfigSource", (f) null);
                }
                set.add(rds.getRouteConfigName());
                return n1.b(j10, rds.getRouteConfigName(), arrayList);
            }
            throw new o("HttpConnectionManager contains invalid RDS: missing config_source", (f) null);
        }
        throw new o("HttpConnectionManager neither has inlined route_config nor RDS", (f) null);
    }

    static q<l1.b> n0(HttpFilter httpFilter, m1 m1Var, boolean z10) {
        String name = httpFilter.getName();
        boolean isOptional = httpFilter.getIsOptional();
        if (!httpFilter.hasTypedConfig()) {
            if (isOptional) {
                return null;
            }
            return q.e("HttpFilter [" + name + "] is not optional and has no typed config");
        }
        com.google.protobuf.l1 typedConfig = httpFilter.getTypedConfig();
        String typeUrl = httpFilter.getTypedConfig().getTypeUrl();
        try {
            if (typeUrl.equals("type.googleapis.com/udpa.type.v1.TypedStruct")) {
                TypedStruct typedStruct = (TypedStruct) httpFilter.getTypedConfig().unpack(TypedStruct.class);
                typeUrl = typedStruct.getTypeUrl();
                typedConfig = typedStruct.getValue();
            } else if (typeUrl.equals("type.googleapis.com/xds.type.v3.TypedStruct")) {
                io.grpc.xds.shaded.com.github.xds.type.v3.TypedStruct typedStruct2 = (io.grpc.xds.shaded.com.github.xds.type.v3.TypedStruct) httpFilter.getTypedConfig().unpack(io.grpc.xds.shaded.com.github.xds.type.v3.TypedStruct.class);
                typeUrl = typedStruct2.getTypeUrl();
                typedConfig = typedStruct2.getValue();
            }
            l1 a10 = m1Var.a(typeUrl);
            if ((!z10 || (a10 instanceof l1.a)) && (z10 || (a10 instanceof l1.d))) {
                w0<? extends l1.b> d10 = a10.d(typedConfig);
                if (d10.f39397a != null) {
                    return q.e("Invalid filter config for HttpFilter [" + name + "]: " + d10.f39397a);
                }
                return q.f((l1.b) d10.f39398b);
            } else if (isOptional) {
                return null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("HttpFilter [");
                sb2.append(name);
                sb2.append("](");
                sb2.append(typeUrl);
                sb2.append(") is required but unsupported for ");
                sb2.append(z10 ? "client" : "server");
                return q.e(sb2.toString());
            }
        } catch (InvalidProtocolBufferException e10) {
            return q.e("HttpFilter [" + name + "] contains invalid proto: " + e10);
        }
    }

    private static t1 o0(Locality locality) {
        return t1.a(locality.getRegion(), locality.getZone(), locality.getSubZone());
    }

    static q<z0> p0(LocalityLbEndpoints localityLbEndpoints) {
        if (!localityLbEndpoints.hasLoadBalancingWeight() || localityLbEndpoints.getLoadBalancingWeight().getValue() < 1) {
            return null;
        }
        if (localityLbEndpoints.getPriority() < 0) {
            return q.e("negative priority");
        }
        ArrayList arrayList = new ArrayList(localityLbEndpoints.getLbEndpointsCount());
        for (LbEndpoint lbEndpoint : localityLbEndpoints.getLbEndpointsList()) {
            if (lbEndpoint.hasEndpoint() && lbEndpoint.getEndpoint().hasAddress()) {
                SocketAddress socketAddress = lbEndpoint.getEndpoint().getAddress().getSocketAddress();
                arrayList.add(y0.a(new io.grpc.x(ImmutableList.of(new InetSocketAddress(socketAddress.getAddress(), socketAddress.getPortValue()))), lbEndpoint.getLoadBalancingWeight().getValue(), lbEndpoint.getHealthStatus() == HealthStatus.HEALTHY || lbEndpoint.getHealthStatus() == HealthStatus.UNKNOWN));
            } else {
                return q.e("LbEndpoint with no endpoint/address");
            }
        }
        return q.f(z0.a(arrayList, localityLbEndpoints.getLoadBalancingWeight().getValue(), localityLbEndpoints.getPriority()));
    }

    private static q<p2.c.a> q0(Cluster cluster, Set<String> set, Set<String> set2, j0.d dVar) {
        Long l10;
        i1 i1Var;
        String name = cluster.getName();
        String str = null;
        if (!cluster.hasLrsServer()) {
            dVar = null;
        } else if (!cluster.getLrsServer().hasSelf()) {
            return q.e("Cluster " + name + ": only support LRS for the same management server");
        }
        if (cluster.hasCircuitBreakers()) {
            l10 = null;
            for (CircuitBreakers.Thresholds thresholds : cluster.getCircuitBreakers().getThresholdsList()) {
                if (thresholds.getPriority() == RoutingPriority.DEFAULT && thresholds.hasMaxRequests()) {
                    l10 = Long.valueOf(thresholds.getMaxRequests().getValue());
                }
            }
        } else {
            l10 = null;
        }
        if (cluster.getTransportSocketMatchesCount() > 0) {
            return q.e("Cluster " + name + ": transport-socket-matches not supported.");
        }
        if (!cluster.hasTransportSocket()) {
            i1Var = null;
        } else if (!"envoy.transport_sockets.tls".equals(cluster.getTransportSocket().getName())) {
            return q.e("transport-socket with name " + cluster.getTransportSocket().getName() + " not supported.");
        } else {
            try {
                i1Var = i1.a(H0((UpstreamTlsContext) E0(cluster.getTransportSocket().getTypedConfig(), UpstreamTlsContext.class, "type.googleapis.com/envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContext", "type.googleapis.com/envoy.api.v2.auth.UpstreamTlsContext"), set2));
            } catch (InvalidProtocolBufferException | o e10) {
                return q.e("Cluster " + name + ": malformed UpstreamTlsContext: " + e10);
            }
        }
        Cluster.DiscoveryType type = cluster.getType();
        if (type == Cluster.DiscoveryType.EDS) {
            Cluster.EdsClusterConfig edsClusterConfig = cluster.getEdsClusterConfig();
            if (!edsClusterConfig.getEdsConfig().hasAds() && !edsClusterConfig.getEdsConfig().hasSelf()) {
                return q.e("Cluster " + name + ": field eds_cluster_config must be set to indicate to use EDS over ADS or self ConfigSource");
            }
            if (!edsClusterConfig.getServiceName().isEmpty()) {
                str = edsClusterConfig.getServiceName();
                set.add(str);
            } else {
                set.add(name);
            }
            return q.f(p2.c.g(name, str, dVar, l10, i1Var));
        } else if (!type.equals(Cluster.DiscoveryType.LOGICAL_DNS)) {
            return q.e("Cluster " + name + ": unsupported built-in discovery type: " + type);
        } else {
            if (!cluster.hasLoadAssignment()) {
                return q.e("Cluster " + name + ": LOGICAL_DNS clusters must have a single host");
            }
            ClusterLoadAssignment loadAssignment = cluster.getLoadAssignment();
            if (loadAssignment.getEndpointsCount() == 1 && loadAssignment.getEndpoints(0).getLbEndpointsCount() == 1) {
                LbEndpoint lbEndpoints = loadAssignment.getEndpoints(0).getLbEndpoints(0);
                if (lbEndpoints.hasEndpoint() && lbEndpoints.getEndpoint().hasAddress() && lbEndpoints.getEndpoint().getAddress().hasSocketAddress()) {
                    SocketAddress socketAddress = lbEndpoints.getEndpoint().getAddress().getSocketAddress();
                    if (!socketAddress.getResolverName().isEmpty()) {
                        return q.e("Cluster " + name + ": LOGICAL DNS clusters must NOT have a custom resolver name set");
                    } else if (socketAddress.getPortSpecifierCase() != SocketAddress.PortSpecifierCase.PORT_VALUE) {
                        return q.e("Cluster " + name + ": LOGICAL DNS clusters socket_address must have port_value");
                    } else {
                        return q.f(p2.c.h(name, String.format("%s:%d", socketAddress.getAddress(), Integer.valueOf(socketAddress.getPortValue())), dVar, l10, i1Var));
                    }
                }
                return q.e("Cluster " + name + ": LOGICAL_DNS clusters must have an endpoint with address and socket_address");
            }
            return q.e("Cluster " + name + ": LOGICAL_DNS clusters must have a single locality_lb_endpoint and a single lb_endpoint");
        }
    }

    static q<Map<String, l1.b>> r0(Map<String, Any> map, m1 m1Var) {
        Struct struct;
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            Any any = map.get(str);
            String typeUrl = any.getTypeUrl();
            boolean z10 = false;
            Any any2 = any;
            if (typeUrl.equals("type.googleapis.com/envoy.config.route.v3.FilterConfig")) {
                try {
                    FilterConfig filterConfig = (FilterConfig) any.unpack(FilterConfig.class);
                    z10 = filterConfig.getIsOptional();
                    Any config = filterConfig.getConfig();
                    typeUrl = config.getTypeUrl();
                    any2 = config;
                } catch (InvalidProtocolBufferException e10) {
                    return q.e("FilterConfig [" + str + "] contains invalid proto: " + e10);
                }
            }
            try {
                if (typeUrl.equals("type.googleapis.com/udpa.type.v1.TypedStruct")) {
                    TypedStruct typedStruct = (TypedStruct) any2.unpack(TypedStruct.class);
                    typeUrl = typedStruct.getTypeUrl();
                    struct = typedStruct.getValue();
                } else {
                    struct = any2;
                    if (typeUrl.equals("type.googleapis.com/xds.type.v3.TypedStruct")) {
                        io.grpc.xds.shaded.com.github.xds.type.v3.TypedStruct typedStruct2 = (io.grpc.xds.shaded.com.github.xds.type.v3.TypedStruct) any2.unpack(io.grpc.xds.shaded.com.github.xds.type.v3.TypedStruct.class);
                        typeUrl = typedStruct2.getTypeUrl();
                        struct = typedStruct2.getValue();
                    }
                }
                l1 a10 = m1Var.a(typeUrl);
                if (a10 != null) {
                    w0<? extends l1.b> c10 = a10.c(struct);
                    if (c10.f39397a != null) {
                        return q.e("Invalid filter config for HttpFilter [" + str + "]: " + c10.f39397a);
                    }
                    hashMap.put(str, (l1.b) c10.f39398b);
                } else if (!z10) {
                    return q.e("HttpFilter [" + str + "](" + typeUrl + ") is required but unsupported");
                }
            } catch (InvalidProtocolBufferException e11) {
                return q.e("FilterConfig [" + str + "] contains invalid proto: " + e11);
            }
        }
        return q.f(hashMap);
    }

    static q<l2.a.b.AbstractC0402a> s0(RouteMatch routeMatch) {
        boolean value = routeMatch.getCaseSensitive().getValue();
        int i9 = e.f38940d[routeMatch.getPathSpecifierCase().ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return q.e("Unknown path match type");
                }
                try {
                    return q.f(l2.a.b.AbstractC0402a.e(Pattern.compile(routeMatch.getSafeRegex().getRegex())));
                } catch (PatternSyntaxException e10) {
                    return q.e("Malformed safe regex pattern: " + e10.getMessage());
                }
            }
            return q.f(l2.a.b.AbstractC0402a.c(routeMatch.getPath(), value));
        }
        return q.f(l2.a.b.AbstractC0402a.d(routeMatch.getPrefix(), value));
    }

    private static q<l2.a.AbstractC0399a.c> t0(RetryPolicy retryPolicy) {
        int value = retryPolicy.hasNumRetries() ? retryPolicy.getNumRetries().getValue() + 1 : 2;
        Duration c10 = v6.a.c(25L);
        Duration c11 = v6.a.c(250L);
        if (retryPolicy.hasRetryBackOff()) {
            RetryPolicy.RetryBackOff retryBackOff = retryPolicy.getRetryBackOff();
            if (!retryBackOff.hasBaseInterval()) {
                return q.e("No base_interval specified in retry_backoff");
            }
            Duration baseInterval = retryBackOff.getBaseInterval();
            if (v6.a.b(baseInterval, v6.a.f59009c) <= 0) {
                return q.e("base_interval in retry_backoff must be positive");
            }
            Duration c12 = v6.a.b(baseInterval, v6.a.c(1L)) < 0 ? v6.a.c(1L) : baseInterval;
            if (retryBackOff.hasMaxInterval()) {
                Duration maxInterval = retryPolicy.getRetryBackOff().getMaxInterval();
                if (v6.a.b(maxInterval, baseInterval) < 0) {
                    return q.e("max_interval in retry_backoff cannot be less than base_interval");
                }
                c11 = v6.a.b(maxInterval, v6.a.c(1L)) < 0 ? v6.a.c(1L) : maxInterval;
            } else {
                c11 = v6.a.d(v6.a.h(c12) * 10);
            }
            c10 = c12;
        }
        Iterable<String> i9 = com.google.common.base.t.f(',').e().l().i(retryPolicy.getRetryOn());
        ImmutableList.b builder = ImmutableList.builder();
        for (String str : i9) {
            try {
                Status.Code valueOf = Status.Code.valueOf(str.toUpperCase(Locale.US).replace('-', '_'));
                if (A.contains(valueOf)) {
                    builder.a(valueOf);
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        return q.f(l2.a.AbstractC0399a.c.a(value, builder.j(), c10, c11, null));
    }

    static q<l2.a> u0(Route route, m1 m1Var, boolean z10, Map<String, u0.b> map) {
        q<l2.a.b> w02 = w0(route.getMatch());
        if (w02 == null) {
            return null;
        }
        if (w02.g() != null) {
            return q.e("Route [" + route.getName() + "] contains invalid RouteMatch: " + w02.g());
        }
        Map emptyMap = Collections.emptyMap();
        if (z10) {
            q<Map<String, l1.b>> r02 = r0(route.getTypedPerFilterConfigMap(), m1Var);
            if (((q) r02).f38980a != null) {
                return q.e("Route [" + route.getName() + "] contains invalid HttpFilter config: " + ((q) r02).f38980a);
            }
            emptyMap = (Map) ((q) r02).f38981b;
        }
        int i9 = e.f38939c[route.getActionCase().ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                return q.e("Route [" + route.getName() + "] with unknown action type: " + route.getActionCase());
            }
            return q.f(l2.a.d((l2.a.b) ((q) w02).f38981b, emptyMap));
        }
        q<l2.a.AbstractC0399a> v02 = v0(route.getRoute(), m1Var, z10, map);
        if (v02 == null) {
            return null;
        }
        if (((q) v02).f38980a != null) {
            return q.e("Route [" + route.getName() + "] contains invalid RouteAction: " + v02.g());
        }
        return q.f(l2.a.c((l2.a.b) ((q) w02).f38981b, (l2.a.AbstractC0399a) ((q) v02).f38981b, emptyMap));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static eh.n0.q<eh.l2.a.AbstractC0399a> v0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction r11, eh.m1 r12, boolean r13, java.util.Map<java.lang.String, eh.u0.b> r14) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: eh.n0.v0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction, eh.m1, boolean, java.util.Map):eh.n0$q");
    }

    static q<l2.a.b> w0(RouteMatch routeMatch) {
        fh.h hVar = null;
        if (routeMatch.getQueryParametersCount() != 0) {
            return null;
        }
        q<l2.a.b.AbstractC0402a> s02 = s0(routeMatch);
        if (s02.g() != null) {
            return q.e(s02.g());
        }
        if (routeMatch.hasRuntimeFraction()) {
            q<fh.h> k02 = k0(routeMatch.getRuntimeFraction().getDefaultValue());
            if (k02.g() != null) {
                return q.e(k02.g());
            }
            hVar = k02.h();
        }
        ArrayList arrayList = new ArrayList();
        for (HeaderMatcher headerMatcher : routeMatch.getHeadersList()) {
            q<fh.i> l02 = l0(headerMatcher);
            if (l02.g() != null) {
                return q.e(l02.g());
            }
            arrayList.add(l02.h());
        }
        return q.f(l2.a.b.a(s02.h(), arrayList, hVar));
    }

    static h1 x0(Listener listener, Set<String> set, k2 k2Var, m1 m1Var, Set<String> set2, boolean z10) throws o {
        String str;
        if (listener.getTrafficDirection().equals(TrafficDirection.INBOUND)) {
            if (listener.getListenerFiltersList().isEmpty()) {
                if (!listener.hasUseOriginalDst()) {
                    if (listener.getAddress().hasSocketAddress()) {
                        SocketAddress socketAddress = listener.getAddress().getSocketAddress();
                        str = socketAddress.getAddress();
                        int i9 = e.f38937a[socketAddress.getPortSpecifierCase().ordinal()];
                        if (i9 == 1) {
                            str = str + CertificateUtil.DELIMITER + socketAddress.getNamedPort();
                        } else if (i9 == 2) {
                            str = str + CertificateUtil.DELIMITER + socketAddress.getPortValue();
                        }
                    } else {
                        str = null;
                    }
                    ImmutableList.b builder = ImmutableList.builder();
                    HashSet hashSet = new HashSet();
                    for (FilterChain filterChain : listener.getFilterChainsList()) {
                        builder.a(i0(filterChain, set, k2Var, m1Var, hashSet, set2, z10));
                    }
                    return h1.b(listener.getName(), str, builder.j(), listener.hasDefaultFilterChain() ? i0(listener.getDefaultFilterChain(), set, k2Var, m1Var, null, set2, z10) : null);
                }
                throw new o("Listener " + listener.getName() + " cannot have use_original_dst set to true", (f) null);
            }
            throw new o("Listener " + listener.getName() + " cannot have listener_filters", (f) null);
        }
        throw new o("Listener " + listener.getName() + " with invalid traffic direction: " + listener.getTrafficDirection(), (f) null);
    }

    private static q<l2> y0(VirtualHost virtualHost, m1 m1Var, boolean z10, Map<String, u0.b> map) {
        String name = virtualHost.getName();
        ArrayList arrayList = new ArrayList(virtualHost.getRoutesCount());
        for (Route route : virtualHost.getRoutesList()) {
            q<l2.a> u02 = u0(route, m1Var, z10, map);
            if (u02 != null) {
                if (u02.g() != null) {
                    return q.e("Virtual host [" + name + "] contains invalid route : " + u02.g());
                }
                arrayList.add(u02.h());
            }
        }
        if (!z10) {
            return q.f(l2.a(name, virtualHost.m1628getDomainsList(), arrayList, new HashMap()));
        }
        q<Map<String, l1.b>> r02 = r0(virtualHost.getTypedPerFilterConfigMap(), m1Var);
        if (((q) r02).f38980a != null) {
            return q.e("VirtualHost [" + virtualHost.getName() + "] contains invalid HttpFilter config: " + ((q) r02).f38980a);
        }
        return q.f(l2.a(name, virtualHost.m1628getDomainsList(), arrayList, (Map) ((q) r02).f38981b));
    }

    private p2.g z0(Listener listener, Set<String> set, boolean z10) throws o {
        try {
            return p2.g.a(m0((HttpConnectionManager) E0(listener.getApiListener().getApiListener(), HttpConnectionManager.class, "type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager", "type.googleapis.com/envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager"), set, this.f38907b, z10, true));
        } catch (InvalidProtocolBufferException e10) {
            throw new o("Could not parse HttpConnectionManager config from ApiListener", e10, null);
        }
    }

    @Override // eh.p2.n
    public void a(j0.d dVar, String str, List<Any> list, String str2) {
        this.f38906a.e();
        HashMap hashMap = new HashMap(list.size());
        HashSet hashSet = new HashSet(list.size());
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            Any any = list.get(i9);
            try {
                a.f fVar = a.f.EDS;
                ClusterLoadAssignment clusterLoadAssignment = (ClusterLoadAssignment) E0(any, ClusterLoadAssignment.class, fVar.b(), fVar.c());
                if (p2.q(clusterLoadAssignment.getClusterName(), any.getTypeUrl())) {
                    String n9 = p2.n(clusterLoadAssignment.getClusterName());
                    if (this.f38912g.containsKey(n9)) {
                        hashSet.add(n9);
                        try {
                            hashMap.put(n9, new n(B0(clusterLoadAssignment), any, null));
                        } catch (o e10) {
                            arrayList.add("EDS response ClusterLoadAssignment '" + n9 + "' validation error: " + e10.getMessage());
                            hashSet2.add(n9);
                        }
                    }
                } else {
                    arrayList.add("Unsupported resource name: " + clusterLoadAssignment.getClusterName() + " for type: " + fVar);
                }
            } catch (InvalidProtocolBufferException e11) {
                arrayList.add("EDS response Resource index " + i9 + " - can't decode ClusterLoadAssignment: " + e11);
            }
        }
        this.f38925t.c(q2.b.INFO, "Received EDS Response version {0} nonce {1}. Parsed resources: {2}", str, str2, hashSet);
        a0(dVar, a.f.EDS, hashMap, hashSet2, Collections.emptySet(), str, str2, arrayList);
    }

    @Override // eh.p2.n
    public void b(Status status) {
        this.f38906a.e();
        O();
        for (p pVar : this.f38909d.values()) {
            pVar.m(status);
        }
        for (p pVar2 : this.f38910e.values()) {
            pVar2.m(status);
        }
        for (p pVar3 : this.f38911f.values()) {
            pVar3.m(status);
        }
        for (p pVar4 : this.f38912g.values()) {
            pVar4.m(status);
        }
    }

    @Override // eh.p2.n
    public void c(j0.d dVar, String str, List<Any> list, String str2) {
        a.f fVar;
        Cluster cluster;
        j0.d dVar2;
        ImmutableSet<String> immutableSet;
        this.f38906a.e();
        HashMap hashMap = new HashMap(list.size());
        HashSet hashSet = new HashSet(list.size());
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet3 = new HashSet();
        for (int i9 = 0; i9 < list.size(); i9++) {
            Any any = list.get(i9);
            try {
                fVar = a.f.CDS;
                cluster = (Cluster) E0(any, Cluster.class, fVar.b(), fVar.c());
            } catch (InvalidProtocolBufferException e10) {
                arrayList.add("CDS response Resource index " + i9 + " - can't decode Cluster: " + e10);
            }
            if (!p2.q(cluster.getName(), any.getTypeUrl())) {
                arrayList.add("Unsupported resource name: " + cluster.getName() + " for type: " + fVar);
            } else {
                String n9 = p2.n(cluster.getName());
                if (this.f38911f.containsKey(n9)) {
                    hashSet.add(n9);
                    try {
                        if (o() == null || o().c() == null) {
                            dVar2 = dVar;
                            immutableSet = null;
                        } else {
                            immutableSet = o().c().keySet();
                            dVar2 = dVar;
                        }
                    } catch (o e11) {
                        e = e11;
                    }
                    try {
                        hashMap.put(n9, new n(A0(cluster, hashSet3, immutableSet, dVar2), any, null));
                    } catch (o e12) {
                        e = e12;
                        arrayList.add("CDS response Cluster '" + n9 + "' validation error: " + e.getMessage());
                        hashSet2.add(n9);
                    }
                }
            }
        }
        this.f38925t.c(q2.b.INFO, "Received CDS Response version {0} nonce {1}. Parsed resources: {2}", str, str2, hashSet);
        a0(dVar, a.f.CDS, hashMap, hashSet2, hashSet3, str, str2, arrayList);
    }

    @Override // eh.p2.n
    public void d(j0.d dVar, String str, List<Any> list, String str2) {
        p2.g D0;
        this.f38906a.e();
        HashMap hashMap = new HashMap(list.size());
        HashSet hashSet = new HashSet(list.size());
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet3 = new HashSet();
        int i9 = 0;
        while (true) {
            boolean z10 = true;
            if (i9 < list.size()) {
                Any any = list.get(i9);
                String typeUrl = any.getTypeUrl();
                a.f fVar = a.f.LDS;
                boolean equals = typeUrl.equals(fVar.b());
                try {
                    Listener listener = (Listener) E0(any, Listener.class, fVar.b(), fVar.c());
                    if (!p2.q(listener.getName(), any.getTypeUrl())) {
                        arrayList.add("Unsupported resource name: " + listener.getName() + " for type: " + fVar);
                    } else {
                        String n9 = p2.n(listener.getName());
                        hashSet.add(n9);
                        try {
                            if (listener.hasApiListener()) {
                                if (!f38901v || !equals) {
                                    z10 = false;
                                }
                                D0 = z0(listener, hashSet3, z10);
                            } else {
                                if (!f38903x || !equals) {
                                    z10 = false;
                                }
                                D0 = D0(listener, hashSet3, z10);
                            }
                            hashMap.put(n9, new n(D0, any, null));
                        } catch (o e10) {
                            arrayList.add("LDS response Listener '" + n9 + "' validation error: " + e10.getMessage());
                            hashSet2.add(n9);
                        }
                    }
                } catch (InvalidProtocolBufferException e11) {
                    arrayList.add("LDS response Resource index " + i9 + " - can't decode Listener: " + e11);
                }
                i9++;
            } else {
                this.f38925t.c(q2.b.INFO, "Received LDS Response version {0} nonce {1}. Parsed resources: {2}", str, str2, hashSet);
                a0(dVar, a.f.LDS, hashMap, hashSet2, hashSet3, str, str2, arrayList);
                return;
            }
        }
    }

    @Override // eh.p2.k
    public Collection<String> e(j0.d dVar, a.f fVar) {
        Map<String, p> Z = Z(fVar);
        ImmutableSet.a builder = ImmutableSet.builder();
        for (String str : Z.keySet()) {
            if (Z.get(str).f38969a.equals(dVar)) {
                builder.a(str);
            }
        }
        ImmutableSet h10 = builder.h();
        if (h10.isEmpty()) {
            return null;
        }
        return h10;
    }

    @Override // eh.p2.n
    public void f(j0.d dVar, String str, List<Any> list, String str2) {
        this.f38906a.e();
        HashMap hashMap = new HashMap(list.size());
        HashSet hashSet = new HashSet(list.size());
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        while (true) {
            boolean z10 = true;
            if (i9 < list.size()) {
                Any any = list.get(i9);
                try {
                    a.f fVar = a.f.RDS;
                    RouteConfiguration routeConfiguration = (RouteConfiguration) E0(any, RouteConfiguration.class, fVar.b(), fVar.c());
                    if (!p2.q(routeConfiguration.getName(), any.getTypeUrl())) {
                        arrayList.add("Unsupported resource name: " + routeConfiguration.getName() + " for type: " + fVar);
                    } else {
                        String n9 = p2.n(routeConfiguration.getName());
                        hashSet.add(n9);
                        boolean equals = any.getTypeUrl().equals(fVar.b());
                        try {
                            m1 m1Var = this.f38907b;
                            if (!f38901v || !equals) {
                                z10 = false;
                            }
                            hashMap.put(n9, new n(C0(routeConfiguration, m1Var, z10), any, null));
                        } catch (o e10) {
                            arrayList.add("RDS response RouteConfiguration '" + n9 + "' validation error: " + e10.getMessage());
                            hashSet2.add(n9);
                        }
                    }
                } catch (InvalidProtocolBufferException e11) {
                    arrayList.add("RDS response Resource index " + i9 + " - can't decode RouteConfiguration: " + e11);
                }
                i9++;
            } else {
                this.f38925t.c(q2.b.INFO, "Received RDS Response version {0} nonce {1}. Parsed resources: {2}", str, str2, hashSet);
                a0(dVar, a.f.RDS, hashMap, hashSet2, Collections.emptySet(), str, str2, arrayList);
                return;
            }
        }
    }

    @Override // eh.p2.n
    public void g(j0.d dVar) {
        this.f38906a.e();
        for (p pVar : this.f38909d.values()) {
            if (pVar.f38969a.equals(dVar)) {
                pVar.p();
            }
        }
        for (p pVar2 : this.f38910e.values()) {
            if (pVar2.f38969a.equals(dVar)) {
                pVar2.p();
            }
        }
        for (p pVar3 : this.f38911f.values()) {
            if (pVar3.f38969a.equals(dVar)) {
                pVar3.p();
            }
        }
        for (p pVar4 : this.f38912g.values()) {
            if (pVar4.f38969a.equals(dVar)) {
                pVar4.p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public s1.b h(j0.d dVar, String str, String str2) {
        s1.b d10 = this.f38913h.d(str, str2);
        this.f38906a.execute(new c(dVar));
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public s1.d i(j0.d dVar, String str, String str2, t1 t1Var) {
        s1.d e10 = this.f38913h.e(str, str2, t1Var);
        this.f38906a.execute(new d(dVar));
        return e10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void j(String str, p2.b bVar) {
        this.f38906a.execute(new m(str, bVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void k(String str, p2.d dVar) {
        this.f38906a.execute(new b(str, dVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void l(String str, p2.f fVar) {
        this.f38906a.execute(new i(str, fVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void m(String str, p2.h hVar) {
        this.f38906a.execute(new k(str, hVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public j0.b o() {
        return this.f38916k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public k2 p() {
        return this.f38923r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void s() {
        this.f38906a.execute(new g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void t(String str, p2.b bVar) {
        this.f38906a.execute(new l(str, bVar));
    }

    public String toString() {
        return this.f38924s.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void u(String str, p2.d dVar) {
        this.f38906a.execute(new a(str, dVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void v(String str, p2.f fVar) {
        this.f38906a.execute(new h(str, fVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2
    public void w(String str, p2.h hVar) {
        this.f38906a.execute(new j(str, hVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class q<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f38980a;

        /* renamed from: b  reason: collision with root package name */
        private final T f38981b;

        private q(T t10) {
            this.f38981b = (T) com.google.common.base.o.t(t10, "struct");
            this.f38980a = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T> q<T> e(String str) {
            return new q<>(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T> q<T> f(T t10) {
            return new q<>(t10);
        }

        String g() {
            return this.f38980a;
        }

        T h() {
            return this.f38981b;
        }

        private q(String str) {
            this.f38981b = null;
            this.f38980a = (String) com.google.common.base.o.t(str, "errorDetail");
        }
    }
}
