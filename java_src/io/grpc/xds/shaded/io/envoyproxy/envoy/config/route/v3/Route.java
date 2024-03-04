package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.tencent.thumbplayer.api.TPOptionalID;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Decorator;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.FilterAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.NonForwardingAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteMatch;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Tracing;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Route extends GeneratedMessageV3 implements r {
    public static final int DECORATOR_FIELD_NUMBER = 5;
    public static final int DIRECT_RESPONSE_FIELD_NUMBER = 7;
    public static final int FILTER_ACTION_FIELD_NUMBER = 17;
    public static final int MATCH_FIELD_NUMBER = 1;
    public static final int METADATA_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 14;
    public static final int NON_FORWARDING_ACTION_FIELD_NUMBER = 18;
    public static final int PER_REQUEST_BUFFER_LIMIT_BYTES_FIELD_NUMBER = 16;
    public static final int REDIRECT_FIELD_NUMBER = 3;
    public static final int REQUEST_HEADERS_TO_ADD_FIELD_NUMBER = 9;
    public static final int REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER = 12;
    public static final int RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER = 10;
    public static final int RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER = 11;
    public static final int ROUTE_FIELD_NUMBER = 2;
    public static final int TRACING_FIELD_NUMBER = 15;
    public static final int TYPED_PER_FILTER_CONFIG_FIELD_NUMBER = 13;
    private static final long serialVersionUID = 0;
    private int actionCase_;
    private Object action_;
    private Decorator decorator_;
    private RouteMatch match_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private volatile Object name_;
    private UInt32Value perRequestBufferLimitBytes_;
    private List<HeaderValueOption> requestHeadersToAdd_;
    private z0 requestHeadersToRemove_;
    private List<HeaderValueOption> responseHeadersToAdd_;
    private z0 responseHeadersToRemove_;
    private Tracing tracing_;
    private g1<String, Any> typedPerFilterConfig_;
    private static final Route DEFAULT_INSTANCE = new Route();
    private static final e2<Route> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ActionCase implements u0.c {
        ROUTE(2),
        REDIRECT(3),
        DIRECT_RESPONSE(7),
        FILTER_ACTION(17),
        NON_FORWARDING_ACTION(18),
        ACTION_NOT_SET(0);
        
        private final int value;

        ActionCase(int i9) {
            this.value = i9;
        }

        public static ActionCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 7) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 17) {
                                if (i9 != 18) {
                                    return null;
                                }
                                return NON_FORWARDING_ACTION;
                            }
                            return FILTER_ACTION;
                        }
                        return REDIRECT;
                    }
                    return ROUTE;
                }
                return DIRECT_RESPONSE;
            }
            return ACTION_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ActionCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Route> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Route m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Route(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49260a;

        static {
            int[] iArr = new int[ActionCase.values().length];
            f49260a = iArr;
            try {
                iArr[ActionCase.ROUTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49260a[ActionCase.REDIRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49260a[ActionCase.DIRECT_RESPONSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49260a[ActionCase.FILTER_ACTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49260a[ActionCase.NON_FORWARDING_ACTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49260a[ActionCase.ACTION_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r {
        private Tracing A;
        private q2<Tracing, Tracing.b, v> B;
        private UInt32Value C;
        private q2<UInt32Value, UInt32Value.b, e3> D;

        /* renamed from: e  reason: collision with root package name */
        private int f49261e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49262f;

        /* renamed from: g  reason: collision with root package name */
        private int f49263g;

        /* renamed from: h  reason: collision with root package name */
        private Object f49264h;

        /* renamed from: i  reason: collision with root package name */
        private RouteMatch f49265i;

        /* renamed from: j  reason: collision with root package name */
        private q2<RouteMatch, RouteMatch.c, q> f49266j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RouteAction, RouteAction.c, n> f49267k;

        /* renamed from: l  reason: collision with root package name */
        private q2<RedirectAction, RedirectAction.c, l> f49268l;

        /* renamed from: m  reason: collision with root package name */
        private q2<DirectResponseAction, DirectResponseAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.d> f49269m;

        /* renamed from: n  reason: collision with root package name */
        private q2<FilterAction, FilterAction.b, e> f49270n;

        /* renamed from: o  reason: collision with root package name */
        private q2<NonForwardingAction, NonForwardingAction.b, i> f49271o;

        /* renamed from: p  reason: collision with root package name */
        private Metadata f49272p;

        /* renamed from: q  reason: collision with root package name */
        private q2<Metadata, Metadata.b, k0> f49273q;

        /* renamed from: r  reason: collision with root package name */
        private Decorator f49274r;

        /* renamed from: s  reason: collision with root package name */
        private q2<Decorator, Decorator.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.c> f49275s;

        /* renamed from: t  reason: collision with root package name */
        private g1<String, Any> f49276t;

        /* renamed from: u  reason: collision with root package name */
        private List<HeaderValueOption> f49277u;

        /* renamed from: v  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> f49278v;

        /* renamed from: w  reason: collision with root package name */
        private z0 f49279w;

        /* renamed from: x  reason: collision with root package name */
        private List<HeaderValueOption> f49280x;

        /* renamed from: y  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> f49281y;

        /* renamed from: z  reason: collision with root package name */
        private z0 f49282z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49263g & 2) == 0) {
                this.f49277u = new ArrayList(this.f49277u);
                this.f49263g |= 2;
            }
        }

        private void b0() {
            if ((this.f49263g & 4) == 0) {
                this.f49279w = new y0(this.f49279w);
                this.f49263g |= 4;
            }
        }

        private void d0() {
            if ((this.f49263g & 8) == 0) {
                this.f49280x = new ArrayList(this.f49280x);
                this.f49263g |= 8;
            }
        }

        private void e0() {
            if ((this.f49263g & 16) == 0) {
                this.f49282z = new y0(this.f49282z);
                this.f49263g |= 16;
            }
        }

        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> h0() {
            if (this.f49278v == null) {
                this.f49278v = new l2<>(this.f49277u, (this.f49263g & 2) != 0, H(), O());
                this.f49277u = null;
            }
            return this.f49278v;
        }

        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> i0() {
            if (this.f49281y == null) {
                this.f49281y = new l2<>(this.f49280x, (this.f49263g & 8) != 0, H(), O());
                this.f49280x = null;
            }
            return this.f49281y;
        }

        private g1<String, Any> j0() {
            R();
            if (this.f49276t == null) {
                this.f49276t = g1.p(d.f49283a);
            }
            if (!this.f49276t.m()) {
                this.f49276t = this.f49276t.f();
            }
            return this.f49276t;
        }

        private g1<String, Any> k0() {
            g1<String, Any> g1Var = this.f49276t;
            return g1Var == null ? g1.g(d.f49283a) : g1Var;
        }

        private void l0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                h0();
                i0();
            }
        }

        public c B0(Tracing tracing) {
            q2<Tracing, Tracing.b, v> q2Var = this.B;
            if (q2Var == null) {
                Tracing tracing2 = this.A;
                if (tracing2 != null) {
                    this.A = Tracing.newBuilder(tracing2).j0(tracing).I();
                } else {
                    this.A = tracing;
                }
                R();
            } else {
                q2Var.e(tracing);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: D0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: H0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: I0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f49479h.d(Route.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 13) {
                return k0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 13) {
                return j0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Route build() {
            Route I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Route I() {
            Route route = new Route(this, (a) null);
            route.name_ = this.f49264h;
            q2<RouteMatch, RouteMatch.c, q> q2Var = this.f49266j;
            if (q2Var == null) {
                route.match_ = this.f49265i;
            } else {
                route.match_ = q2Var.b();
            }
            if (this.f49261e == 2) {
                q2<RouteAction, RouteAction.c, n> q2Var2 = this.f49267k;
                if (q2Var2 == null) {
                    route.action_ = this.f49262f;
                } else {
                    route.action_ = q2Var2.b();
                }
            }
            if (this.f49261e == 3) {
                q2<RedirectAction, RedirectAction.c, l> q2Var3 = this.f49268l;
                if (q2Var3 == null) {
                    route.action_ = this.f49262f;
                } else {
                    route.action_ = q2Var3.b();
                }
            }
            if (this.f49261e == 7) {
                q2<DirectResponseAction, DirectResponseAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.d> q2Var4 = this.f49269m;
                if (q2Var4 == null) {
                    route.action_ = this.f49262f;
                } else {
                    route.action_ = q2Var4.b();
                }
            }
            if (this.f49261e == 17) {
                q2<FilterAction, FilterAction.b, e> q2Var5 = this.f49270n;
                if (q2Var5 == null) {
                    route.action_ = this.f49262f;
                } else {
                    route.action_ = q2Var5.b();
                }
            }
            if (this.f49261e == 18) {
                q2<NonForwardingAction, NonForwardingAction.b, i> q2Var6 = this.f49271o;
                if (q2Var6 == null) {
                    route.action_ = this.f49262f;
                } else {
                    route.action_ = q2Var6.b();
                }
            }
            q2<Metadata, Metadata.b, k0> q2Var7 = this.f49273q;
            if (q2Var7 == null) {
                route.metadata_ = this.f49272p;
            } else {
                route.metadata_ = q2Var7.b();
            }
            q2<Decorator, Decorator.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.c> q2Var8 = this.f49275s;
            if (q2Var8 == null) {
                route.decorator_ = this.f49274r;
            } else {
                route.decorator_ = q2Var8.b();
            }
            route.typedPerFilterConfig_ = k0();
            route.typedPerFilterConfig_.n();
            l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> l2Var = this.f49278v;
            if (l2Var == null) {
                if ((this.f49263g & 2) != 0) {
                    this.f49277u = Collections.unmodifiableList(this.f49277u);
                    this.f49263g &= -3;
                }
                route.requestHeadersToAdd_ = this.f49277u;
            } else {
                route.requestHeadersToAdd_ = l2Var.e();
            }
            if ((this.f49263g & 4) != 0) {
                this.f49279w = this.f49279w.V0();
                this.f49263g &= -5;
            }
            route.requestHeadersToRemove_ = this.f49279w;
            l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> l2Var2 = this.f49281y;
            if (l2Var2 == null) {
                if ((this.f49263g & 8) != 0) {
                    this.f49280x = Collections.unmodifiableList(this.f49280x);
                    this.f49263g &= -9;
                }
                route.responseHeadersToAdd_ = this.f49280x;
            } else {
                route.responseHeadersToAdd_ = l2Var2.e();
            }
            if ((this.f49263g & 16) != 0) {
                this.f49282z = this.f49282z.V0();
                this.f49263g &= -17;
            }
            route.responseHeadersToRemove_ = this.f49282z;
            q2<Tracing, Tracing.b, v> q2Var9 = this.B;
            if (q2Var9 == null) {
                route.tracing_ = this.A;
            } else {
                route.tracing_ = q2Var9.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var10 = this.D;
            if (q2Var10 == null) {
                route.perRequestBufferLimitBytes_ = this.C;
            } else {
                route.perRequestBufferLimitBytes_ = q2Var10.b();
            }
            route.actionCase_ = this.f49261e;
            Q();
            return route;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public Route getDefaultInstanceForType() {
            return Route.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f49477g;
        }

        public c m0(Decorator decorator) {
            q2<Decorator, Decorator.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.c> q2Var = this.f49275s;
            if (q2Var == null) {
                Decorator decorator2 = this.f49274r;
                if (decorator2 != null) {
                    this.f49274r = Decorator.newBuilder(decorator2).g0(decorator).I();
                } else {
                    this.f49274r = decorator;
                }
                R();
            } else {
                q2Var.e(decorator);
            }
            return this;
        }

        public c n0(DirectResponseAction directResponseAction) {
            q2<DirectResponseAction, DirectResponseAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.d> q2Var = this.f49269m;
            if (q2Var == null) {
                if (this.f49261e == 7 && this.f49262f != DirectResponseAction.getDefaultInstance()) {
                    this.f49262f = DirectResponseAction.newBuilder((DirectResponseAction) this.f49262f).h0(directResponseAction).I();
                } else {
                    this.f49262f = directResponseAction;
                }
                R();
            } else {
                if (this.f49261e == 7) {
                    q2Var.e(directResponseAction);
                }
                this.f49269m.g(directResponseAction);
            }
            this.f49261e = 7;
            return this;
        }

        public c o0(FilterAction filterAction) {
            q2<FilterAction, FilterAction.b, e> q2Var = this.f49270n;
            if (q2Var == null) {
                if (this.f49261e == 17 && this.f49262f != FilterAction.getDefaultInstance()) {
                    this.f49262f = FilterAction.newBuilder((FilterAction) this.f49262f).h0(filterAction).I();
                } else {
                    this.f49262f = filterAction;
                }
                R();
            } else {
                if (this.f49261e == 17) {
                    q2Var.e(filterAction);
                }
                this.f49270n.g(filterAction);
            }
            this.f49261e = 17;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route.access$2100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.s0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.s0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Route) {
                return s0((Route) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c s0(Route route) {
            if (route == Route.getDefaultInstance()) {
                return this;
            }
            if (!route.getName().isEmpty()) {
                this.f49264h = route.name_;
                R();
            }
            if (route.hasMatch()) {
                t0(route.getMatch());
            }
            if (route.hasMetadata()) {
                u0(route.getMetadata());
            }
            if (route.hasDecorator()) {
                m0(route.getDecorator());
            }
            j0().o(route.internalGetTypedPerFilterConfig());
            if (this.f49278v == null) {
                if (!route.requestHeadersToAdd_.isEmpty()) {
                    if (this.f49277u.isEmpty()) {
                        this.f49277u = route.requestHeadersToAdd_;
                        this.f49263g &= -3;
                    } else {
                        a0();
                        this.f49277u.addAll(route.requestHeadersToAdd_);
                    }
                    R();
                }
            } else if (!route.requestHeadersToAdd_.isEmpty()) {
                if (this.f49278v.k()) {
                    this.f49278v.f();
                    this.f49278v = null;
                    this.f49277u = route.requestHeadersToAdd_;
                    this.f49263g &= -3;
                    this.f49278v = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f49278v.b(route.requestHeadersToAdd_);
                }
            }
            if (!route.requestHeadersToRemove_.isEmpty()) {
                if (this.f49279w.isEmpty()) {
                    this.f49279w = route.requestHeadersToRemove_;
                    this.f49263g &= -5;
                } else {
                    b0();
                    this.f49279w.addAll(route.requestHeadersToRemove_);
                }
                R();
            }
            if (this.f49281y == null) {
                if (!route.responseHeadersToAdd_.isEmpty()) {
                    if (this.f49280x.isEmpty()) {
                        this.f49280x = route.responseHeadersToAdd_;
                        this.f49263g &= -9;
                    } else {
                        d0();
                        this.f49280x.addAll(route.responseHeadersToAdd_);
                    }
                    R();
                }
            } else if (!route.responseHeadersToAdd_.isEmpty()) {
                if (this.f49281y.k()) {
                    this.f49281y.f();
                    this.f49281y = null;
                    this.f49280x = route.responseHeadersToAdd_;
                    this.f49263g &= -9;
                    this.f49281y = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f49281y.b(route.responseHeadersToAdd_);
                }
            }
            if (!route.responseHeadersToRemove_.isEmpty()) {
                if (this.f49282z.isEmpty()) {
                    this.f49282z = route.responseHeadersToRemove_;
                    this.f49263g &= -17;
                } else {
                    e0();
                    this.f49282z.addAll(route.responseHeadersToRemove_);
                }
                R();
            }
            if (route.hasTracing()) {
                B0(route.getTracing());
            }
            if (route.hasPerRequestBufferLimitBytes()) {
                x0(route.getPerRequestBufferLimitBytes());
            }
            int i9 = b.f49260a[route.getActionCase().ordinal()];
            if (i9 == 1) {
                z0(route.getRoute());
            } else if (i9 == 2) {
                y0(route.getRedirect());
            } else if (i9 == 3) {
                n0(route.getDirectResponse());
            } else if (i9 == 4) {
                o0(route.getFilterAction());
            } else if (i9 == 5) {
                v0(route.getNonForwardingAction());
            }
            z(((GeneratedMessageV3) route).unknownFields);
            R();
            return this;
        }

        public c t0(RouteMatch routeMatch) {
            q2<RouteMatch, RouteMatch.c, q> q2Var = this.f49266j;
            if (q2Var == null) {
                RouteMatch routeMatch2 = this.f49265i;
                if (routeMatch2 != null) {
                    this.f49265i = RouteMatch.newBuilder(routeMatch2).m0(routeMatch).I();
                } else {
                    this.f49265i = routeMatch;
                }
                R();
            } else {
                q2Var.e(routeMatch);
            }
            return this;
        }

        public c u0(Metadata metadata) {
            q2<Metadata, Metadata.b, k0> q2Var = this.f49273q;
            if (q2Var == null) {
                Metadata metadata2 = this.f49272p;
                if (metadata2 != null) {
                    this.f49272p = Metadata.newBuilder(metadata2).k0(metadata).I();
                } else {
                    this.f49272p = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        public c v0(NonForwardingAction nonForwardingAction) {
            q2<NonForwardingAction, NonForwardingAction.b, i> q2Var = this.f49271o;
            if (q2Var == null) {
                if (this.f49261e == 18 && this.f49262f != NonForwardingAction.getDefaultInstance()) {
                    this.f49262f = NonForwardingAction.newBuilder((NonForwardingAction) this.f49262f).g0(nonForwardingAction).I();
                } else {
                    this.f49262f = nonForwardingAction;
                }
                R();
            } else {
                if (this.f49261e == 18) {
                    q2Var.e(nonForwardingAction);
                }
                this.f49271o.g(nonForwardingAction);
            }
            this.f49261e = 18;
            return this;
        }

        public c x0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.D;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.C;
                if (uInt32Value2 != null) {
                    this.C = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.C = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c y0(RedirectAction redirectAction) {
            q2<RedirectAction, RedirectAction.c, l> q2Var = this.f49268l;
            if (q2Var == null) {
                if (this.f49261e == 3 && this.f49262f != RedirectAction.getDefaultInstance()) {
                    this.f49262f = RedirectAction.newBuilder((RedirectAction) this.f49262f).g0(redirectAction).I();
                } else {
                    this.f49262f = redirectAction;
                }
                R();
            } else {
                if (this.f49261e == 3) {
                    q2Var.e(redirectAction);
                }
                this.f49268l.g(redirectAction);
            }
            this.f49261e = 3;
            return this;
        }

        public c z0(RouteAction routeAction) {
            q2<RouteAction, RouteAction.c, n> q2Var = this.f49267k;
            if (q2Var == null) {
                if (this.f49261e == 2 && this.f49262f != RouteAction.getDefaultInstance()) {
                    this.f49262f = RouteAction.newBuilder((RouteAction) this.f49262f).r0(routeAction).I();
                } else {
                    this.f49262f = routeAction;
                }
                R();
            } else {
                if (this.f49261e == 2) {
                    q2Var.e(routeAction);
                }
                this.f49267k.g(routeAction);
            }
            this.f49261e = 2;
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49261e = 0;
            this.f49264h = "";
            this.f49277u = Collections.emptyList();
            z0 z0Var = y0.f15344d;
            this.f49279w = z0Var;
            this.f49280x = Collections.emptyList();
            this.f49282z = z0Var;
            l0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49261e = 0;
            this.f49264h = "";
            this.f49277u = Collections.emptyList();
            z0 z0Var = y0.f15344d;
            this.f49279w = z0Var;
            this.f49280x = Collections.emptyList();
            this.f49282z = z0Var;
            l0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Any> f49283a = e1.k(o.f49481i, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Any.getDefaultInstance());
    }

    /* synthetic */ Route(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Route getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f49477g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Any> internalGetTypedPerFilterConfig() {
        g1<String, Any> g1Var = this.typedPerFilterConfig_;
        return g1Var == null ? g1.g(d.f49283a) : g1Var;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Route parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Route) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Route parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Route> parser() {
        return PARSER;
    }

    public boolean containsTypedPerFilterConfig(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetTypedPerFilterConfig().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Route)) {
            return super.equals(obj);
        }
        Route route = (Route) obj;
        if (getName().equals(route.getName()) && hasMatch() == route.hasMatch()) {
            if ((!hasMatch() || getMatch().equals(route.getMatch())) && hasMetadata() == route.hasMetadata()) {
                if ((!hasMetadata() || getMetadata().equals(route.getMetadata())) && hasDecorator() == route.hasDecorator()) {
                    if ((!hasDecorator() || getDecorator().equals(route.getDecorator())) && internalGetTypedPerFilterConfig().equals(route.internalGetTypedPerFilterConfig()) && getRequestHeadersToAddList().equals(route.getRequestHeadersToAddList()) && m1623getRequestHeadersToRemoveList().equals(route.m1623getRequestHeadersToRemoveList()) && getResponseHeadersToAddList().equals(route.getResponseHeadersToAddList()) && m1624getResponseHeadersToRemoveList().equals(route.m1624getResponseHeadersToRemoveList()) && hasTracing() == route.hasTracing()) {
                        if ((!hasTracing() || getTracing().equals(route.getTracing())) && hasPerRequestBufferLimitBytes() == route.hasPerRequestBufferLimitBytes()) {
                            if ((!hasPerRequestBufferLimitBytes() || getPerRequestBufferLimitBytes().equals(route.getPerRequestBufferLimitBytes())) && getActionCase().equals(route.getActionCase())) {
                                int i9 = this.actionCase_;
                                if (i9 != 2) {
                                    if (i9 != 3) {
                                        if (i9 != 7) {
                                            if (i9 != 17) {
                                                if (i9 == 18 && !getNonForwardingAction().equals(route.getNonForwardingAction())) {
                                                    return false;
                                                }
                                            } else if (!getFilterAction().equals(route.getFilterAction())) {
                                                return false;
                                            }
                                        } else if (!getDirectResponse().equals(route.getDirectResponse())) {
                                            return false;
                                        }
                                    } else if (!getRedirect().equals(route.getRedirect())) {
                                        return false;
                                    }
                                } else if (!getRoute().equals(route.getRoute())) {
                                    return false;
                                }
                                return this.unknownFields.equals(route.unknownFields);
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public ActionCase getActionCase() {
        return ActionCase.forNumber(this.actionCase_);
    }

    public Decorator getDecorator() {
        Decorator decorator = this.decorator_;
        return decorator == null ? Decorator.getDefaultInstance() : decorator;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.c getDecoratorOrBuilder() {
        return getDecorator();
    }

    public DirectResponseAction getDirectResponse() {
        if (this.actionCase_ == 7) {
            return (DirectResponseAction) this.action_;
        }
        return DirectResponseAction.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.d getDirectResponseOrBuilder() {
        if (this.actionCase_ == 7) {
            return (DirectResponseAction) this.action_;
        }
        return DirectResponseAction.getDefaultInstance();
    }

    public FilterAction getFilterAction() {
        if (this.actionCase_ == 17) {
            return (FilterAction) this.action_;
        }
        return FilterAction.getDefaultInstance();
    }

    public e getFilterActionOrBuilder() {
        if (this.actionCase_ == 17) {
            return (FilterAction) this.action_;
        }
        return FilterAction.getDefaultInstance();
    }

    public RouteMatch getMatch() {
        RouteMatch routeMatch = this.match_;
        return routeMatch == null ? RouteMatch.getDefaultInstance() : routeMatch;
    }

    public q getMatchOrBuilder() {
        return getMatch();
    }

    public Metadata getMetadata() {
        Metadata metadata = this.metadata_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public k0 getMetadataOrBuilder() {
        return getMetadata();
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public NonForwardingAction getNonForwardingAction() {
        if (this.actionCase_ == 18) {
            return (NonForwardingAction) this.action_;
        }
        return NonForwardingAction.getDefaultInstance();
    }

    public i getNonForwardingActionOrBuilder() {
        if (this.actionCase_ == 18) {
            return (NonForwardingAction) this.action_;
        }
        return NonForwardingAction.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Route> getParserForType() {
        return PARSER;
    }

    public UInt32Value getPerRequestBufferLimitBytes() {
        UInt32Value uInt32Value = this.perRequestBufferLimitBytes_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getPerRequestBufferLimitBytesOrBuilder() {
        return getPerRequestBufferLimitBytes();
    }

    public RedirectAction getRedirect() {
        if (this.actionCase_ == 3) {
            return (RedirectAction) this.action_;
        }
        return RedirectAction.getDefaultInstance();
    }

    public l getRedirectOrBuilder() {
        if (this.actionCase_ == 3) {
            return (RedirectAction) this.action_;
        }
        return RedirectAction.getDefaultInstance();
    }

    public HeaderValueOption getRequestHeadersToAdd(int i9) {
        return this.requestHeadersToAdd_.get(i9);
    }

    public int getRequestHeadersToAddCount() {
        return this.requestHeadersToAdd_.size();
    }

    public List<HeaderValueOption> getRequestHeadersToAddList() {
        return this.requestHeadersToAdd_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y getRequestHeadersToAddOrBuilder(int i9) {
        return this.requestHeadersToAdd_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> getRequestHeadersToAddOrBuilderList() {
        return this.requestHeadersToAdd_;
    }

    public String getRequestHeadersToRemove(int i9) {
        return this.requestHeadersToRemove_.get(i9);
    }

    public ByteString getRequestHeadersToRemoveBytes(int i9) {
        return this.requestHeadersToRemove_.j0(i9);
    }

    public int getRequestHeadersToRemoveCount() {
        return this.requestHeadersToRemove_.size();
    }

    public HeaderValueOption getResponseHeadersToAdd(int i9) {
        return this.responseHeadersToAdd_.get(i9);
    }

    public int getResponseHeadersToAddCount() {
        return this.responseHeadersToAdd_.size();
    }

    public List<HeaderValueOption> getResponseHeadersToAddList() {
        return this.responseHeadersToAdd_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y getResponseHeadersToAddOrBuilder(int i9) {
        return this.responseHeadersToAdd_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> getResponseHeadersToAddOrBuilderList() {
        return this.responseHeadersToAdd_;
    }

    public String getResponseHeadersToRemove(int i9) {
        return this.responseHeadersToRemove_.get(i9);
    }

    public ByteString getResponseHeadersToRemoveBytes(int i9) {
        return this.responseHeadersToRemove_.j0(i9);
    }

    public int getResponseHeadersToRemoveCount() {
        return this.responseHeadersToRemove_.size();
    }

    public RouteAction getRoute() {
        if (this.actionCase_ == 2) {
            return (RouteAction) this.action_;
        }
        return RouteAction.getDefaultInstance();
    }

    public n getRouteOrBuilder() {
        if (this.actionCase_ == 2) {
            return (RouteAction) this.action_;
        }
        return RouteAction.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.match_ != null ? CodedOutputStream.G(1, getMatch()) + 0 : 0;
        if (this.actionCase_ == 2) {
            G += CodedOutputStream.G(2, (RouteAction) this.action_);
        }
        if (this.actionCase_ == 3) {
            G += CodedOutputStream.G(3, (RedirectAction) this.action_);
        }
        if (this.metadata_ != null) {
            G += CodedOutputStream.G(4, getMetadata());
        }
        if (this.decorator_ != null) {
            G += CodedOutputStream.G(5, getDecorator());
        }
        if (this.actionCase_ == 7) {
            G += CodedOutputStream.G(7, (DirectResponseAction) this.action_);
        }
        for (int i10 = 0; i10 < this.requestHeadersToAdd_.size(); i10++) {
            G += CodedOutputStream.G(9, this.requestHeadersToAdd_.get(i10));
        }
        for (int i11 = 0; i11 < this.responseHeadersToAdd_.size(); i11++) {
            G += CodedOutputStream.G(10, this.responseHeadersToAdd_.get(i11));
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.responseHeadersToRemove_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.responseHeadersToRemove_.c1(i13));
        }
        int size = G + i12 + (m1624getResponseHeadersToRemoveList().size() * 1);
        int i14 = 0;
        for (int i15 = 0; i15 < this.requestHeadersToRemove_.size(); i15++) {
            i14 += GeneratedMessageV3.computeStringSizeNoTag(this.requestHeadersToRemove_.c1(i15));
        }
        int size2 = size + i14 + (m1623getRequestHeadersToRemoveList().size() * 1);
        for (Map.Entry<String, Any> entry : internalGetTypedPerFilterConfig().i().entrySet()) {
            size2 += CodedOutputStream.G(13, d.f49283a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            size2 += GeneratedMessageV3.computeStringSize(14, this.name_);
        }
        if (this.tracing_ != null) {
            size2 += CodedOutputStream.G(15, getTracing());
        }
        if (this.perRequestBufferLimitBytes_ != null) {
            size2 += CodedOutputStream.G(16, getPerRequestBufferLimitBytes());
        }
        if (this.actionCase_ == 17) {
            size2 += CodedOutputStream.G(17, (FilterAction) this.action_);
        }
        if (this.actionCase_ == 18) {
            size2 += CodedOutputStream.G(18, (NonForwardingAction) this.action_);
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Tracing getTracing() {
        Tracing tracing = this.tracing_;
        return tracing == null ? Tracing.getDefaultInstance() : tracing;
    }

    public v getTracingOrBuilder() {
        return getTracing();
    }

    @Deprecated
    public Map<String, Any> getTypedPerFilterConfig() {
        return getTypedPerFilterConfigMap();
    }

    public int getTypedPerFilterConfigCount() {
        return internalGetTypedPerFilterConfig().i().size();
    }

    public Map<String, Any> getTypedPerFilterConfigMap() {
        return internalGetTypedPerFilterConfig().i();
    }

    public Any getTypedPerFilterConfigOrDefault(String str, Any any) {
        Objects.requireNonNull(str, "map key");
        Map<String, Any> i9 = internalGetTypedPerFilterConfig().i();
        return i9.containsKey(str) ? i9.get(str) : any;
    }

    public Any getTypedPerFilterConfigOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Any> i9 = internalGetTypedPerFilterConfig().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasDecorator() {
        return this.decorator_ != null;
    }

    public boolean hasDirectResponse() {
        return this.actionCase_ == 7;
    }

    public boolean hasFilterAction() {
        return this.actionCase_ == 17;
    }

    public boolean hasMatch() {
        return this.match_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasNonForwardingAction() {
        return this.actionCase_ == 18;
    }

    public boolean hasPerRequestBufferLimitBytes() {
        return this.perRequestBufferLimitBytes_ != null;
    }

    public boolean hasRedirect() {
        return this.actionCase_ == 3;
    }

    public boolean hasRoute() {
        return this.actionCase_ == 2;
    }

    public boolean hasTracing() {
        return this.tracing_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 14) * 53) + getName().hashCode();
        if (hasMatch()) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + getMatch().hashCode();
        }
        if (hasMetadata()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getMetadata().hashCode();
        }
        if (hasDecorator()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getDecorator().hashCode();
        }
        if (!internalGetTypedPerFilterConfig().i().isEmpty()) {
            hashCode2 = (((hashCode2 * 37) + 13) * 53) + internalGetTypedPerFilterConfig().hashCode();
        }
        if (getRequestHeadersToAddCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 9) * 53) + getRequestHeadersToAddList().hashCode();
        }
        if (getRequestHeadersToRemoveCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 12) * 53) + m1623getRequestHeadersToRemoveList().hashCode();
        }
        if (getResponseHeadersToAddCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 10) * 53) + getResponseHeadersToAddList().hashCode();
        }
        if (getResponseHeadersToRemoveCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 11) * 53) + m1624getResponseHeadersToRemoveList().hashCode();
        }
        if (hasTracing()) {
            hashCode2 = (((hashCode2 * 37) + 15) * 53) + getTracing().hashCode();
        }
        if (hasPerRequestBufferLimitBytes()) {
            hashCode2 = (((hashCode2 * 37) + 16) * 53) + getPerRequestBufferLimitBytes().hashCode();
        }
        int i11 = this.actionCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getRoute().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getRedirect().hashCode();
        } else if (i11 == 7) {
            i9 = ((hashCode2 * 37) + 7) * 53;
            hashCode = getDirectResponse().hashCode();
        } else if (i11 == 17) {
            i9 = ((hashCode2 * 37) + 17) * 53;
            hashCode = getFilterAction().hashCode();
        } else {
            if (i11 == 18) {
                i9 = ((hashCode2 * 37) + 18) * 53;
                hashCode = getNonForwardingAction().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.f49479h.d(Route.class, c.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 13) {
            return internalGetTypedPerFilterConfig();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new Route();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.match_ != null) {
            codedOutputStream.L0(1, getMatch());
        }
        if (this.actionCase_ == 2) {
            codedOutputStream.L0(2, (RouteAction) this.action_);
        }
        if (this.actionCase_ == 3) {
            codedOutputStream.L0(3, (RedirectAction) this.action_);
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(4, getMetadata());
        }
        if (this.decorator_ != null) {
            codedOutputStream.L0(5, getDecorator());
        }
        if (this.actionCase_ == 7) {
            codedOutputStream.L0(7, (DirectResponseAction) this.action_);
        }
        for (int i9 = 0; i9 < this.requestHeadersToAdd_.size(); i9++) {
            codedOutputStream.L0(9, this.requestHeadersToAdd_.get(i9));
        }
        for (int i10 = 0; i10 < this.responseHeadersToAdd_.size(); i10++) {
            codedOutputStream.L0(10, this.responseHeadersToAdd_.get(i10));
        }
        for (int i11 = 0; i11 < this.responseHeadersToRemove_.size(); i11++) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.responseHeadersToRemove_.c1(i11));
        }
        for (int i12 = 0; i12 < this.requestHeadersToRemove_.size(); i12++) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.requestHeadersToRemove_.c1(i12));
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetTypedPerFilterConfig(), d.f49283a, 13);
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 14, this.name_);
        }
        if (this.tracing_ != null) {
            codedOutputStream.L0(15, getTracing());
        }
        if (this.perRequestBufferLimitBytes_ != null) {
            codedOutputStream.L0(16, getPerRequestBufferLimitBytes());
        }
        if (this.actionCase_ == 17) {
            codedOutputStream.L0(17, (FilterAction) this.action_);
        }
        if (this.actionCase_ == 18) {
            codedOutputStream.L0(18, (NonForwardingAction) this.action_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Route(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Route route) {
        return DEFAULT_INSTANCE.toBuilder().s0(route);
    }

    public static Route parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getRequestHeadersToRemoveList */
    public i2 m1623getRequestHeadersToRemoveList() {
        return this.requestHeadersToRemove_;
    }

    /* renamed from: getResponseHeadersToRemoveList */
    public i2 m1624getResponseHeadersToRemoveList() {
        return this.responseHeadersToRemove_;
    }

    private Route(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.actionCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Route parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Route) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Route parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Route getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).s0(this);
    }

    public static Route parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Route parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Route() {
        this.actionCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.requestHeadersToAdd_ = Collections.emptyList();
        z0 z0Var = y0.f15344d;
        this.requestHeadersToRemove_ = z0Var;
        this.responseHeadersToAdd_ = Collections.emptyList();
        this.responseHeadersToRemove_ = z0Var;
    }

    public static Route parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Route parseFrom(InputStream inputStream) throws IOException {
        return (Route) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Route parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Route) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Route parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Route) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Route parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Route) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private Route(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            RouteMatch routeMatch = this.match_;
                            RouteMatch.c builder = routeMatch != null ? routeMatch.toBuilder() : null;
                            RouteMatch routeMatch2 = (RouteMatch) pVar.B(RouteMatch.parser(), f0Var);
                            this.match_ = routeMatch2;
                            if (builder != null) {
                                builder.m0(routeMatch2);
                                this.match_ = builder.I();
                            } else {
                                continue;
                            }
                        case 18:
                            RouteAction.c builder2 = this.actionCase_ == 2 ? ((RouteAction) this.action_).toBuilder() : null;
                            o1 B = pVar.B(RouteAction.parser(), f0Var);
                            this.action_ = B;
                            if (builder2 != null) {
                                builder2.r0((RouteAction) B);
                                this.action_ = builder2.I();
                            }
                            this.actionCase_ = 2;
                            continue;
                        case 26:
                            RedirectAction.c builder3 = this.actionCase_ == 3 ? ((RedirectAction) this.action_).toBuilder() : null;
                            o1 B2 = pVar.B(RedirectAction.parser(), f0Var);
                            this.action_ = B2;
                            if (builder3 != null) {
                                builder3.g0((RedirectAction) B2);
                                this.action_ = builder3.I();
                            }
                            this.actionCase_ = 3;
                            continue;
                        case 34:
                            Metadata metadata = this.metadata_;
                            Metadata.b builder4 = metadata != null ? metadata.toBuilder() : null;
                            Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                            this.metadata_ = metadata2;
                            if (builder4 != null) {
                                builder4.k0(metadata2);
                                this.metadata_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 42:
                            Decorator decorator = this.decorator_;
                            Decorator.b builder5 = decorator != null ? decorator.toBuilder() : null;
                            Decorator decorator2 = (Decorator) pVar.B(Decorator.parser(), f0Var);
                            this.decorator_ = decorator2;
                            if (builder5 != null) {
                                builder5.g0(decorator2);
                                this.decorator_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 58:
                            DirectResponseAction.b builder6 = this.actionCase_ == 7 ? ((DirectResponseAction) this.action_).toBuilder() : null;
                            o1 B3 = pVar.B(DirectResponseAction.parser(), f0Var);
                            this.action_ = B3;
                            if (builder6 != null) {
                                builder6.h0((DirectResponseAction) B3);
                                this.action_ = builder6.I();
                            }
                            this.actionCase_ = 7;
                            continue;
                        case 74:
                            if (!(z11 & true)) {
                                this.requestHeadersToAdd_ = new ArrayList();
                                z11 |= true;
                            }
                            this.requestHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                            continue;
                        case 82:
                            if (!(z11 & true)) {
                                this.responseHeadersToAdd_ = new ArrayList();
                                z11 |= true;
                            }
                            this.responseHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                            continue;
                        case 90:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.responseHeadersToRemove_ = new y0();
                                z11 |= true;
                            }
                            this.responseHeadersToRemove_.add(K);
                            continue;
                        case 98:
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.requestHeadersToRemove_ = new y0();
                                z11 |= true;
                            }
                            this.requestHeadersToRemove_.add(K2);
                            continue;
                        case 106:
                            if (!(z11 & true)) {
                                this.typedPerFilterConfig_ = g1.p(d.f49283a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(d.f49283a.getParserForType(), f0Var);
                            this.typedPerFilterConfig_.l().put((String) e1Var.f(), (Any) e1Var.h());
                            continue;
                        case 114:
                            this.name_ = pVar.K();
                            continue;
                        case 122:
                            Tracing tracing = this.tracing_;
                            Tracing.b builder7 = tracing != null ? tracing.toBuilder() : null;
                            Tracing tracing2 = (Tracing) pVar.B(Tracing.parser(), f0Var);
                            this.tracing_ = tracing2;
                            if (builder7 != null) {
                                builder7.j0(tracing2);
                                this.tracing_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 130:
                            UInt32Value uInt32Value = this.perRequestBufferLimitBytes_;
                            UInt32Value.b builder8 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.perRequestBufferLimitBytes_ = uInt32Value2;
                            if (builder8 != null) {
                                builder8.g0(uInt32Value2);
                                this.perRequestBufferLimitBytes_ = builder8.I();
                            } else {
                                continue;
                            }
                        case 138:
                            FilterAction.b builder9 = this.actionCase_ == 17 ? ((FilterAction) this.action_).toBuilder() : null;
                            o1 B4 = pVar.B(FilterAction.parser(), f0Var);
                            this.action_ = B4;
                            if (builder9 != null) {
                                builder9.h0((FilterAction) B4);
                                this.action_ = builder9.I();
                            }
                            this.actionCase_ = 17;
                            continue;
                        case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                            NonForwardingAction.b builder10 = this.actionCase_ == 18 ? ((NonForwardingAction) this.action_).toBuilder() : null;
                            o1 B5 = pVar.B(NonForwardingAction.parser(), f0Var);
                            this.action_ = B5;
                            if (builder10 != null) {
                                builder10.g0((NonForwardingAction) B5);
                                this.action_ = builder10.I();
                            }
                            this.actionCase_ = 18;
                            continue;
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.requestHeadersToAdd_ = Collections.unmodifiableList(this.requestHeadersToAdd_);
                }
                if (z11 & true) {
                    this.responseHeadersToAdd_ = Collections.unmodifiableList(this.responseHeadersToAdd_);
                }
                if (z11 & true) {
                    this.responseHeadersToRemove_ = this.responseHeadersToRemove_.V0();
                }
                if (z11 & true) {
                    this.requestHeadersToRemove_ = this.requestHeadersToRemove_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
