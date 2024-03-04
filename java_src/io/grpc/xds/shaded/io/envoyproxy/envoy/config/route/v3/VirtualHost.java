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
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.tencent.thumbplayer.api.TPOptionalID;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HedgePolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Route;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualCluster;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class VirtualHost extends GeneratedMessageV3 implements y {
    public static final int CORS_FIELD_NUMBER = 8;
    public static final int DOMAINS_FIELD_NUMBER = 2;
    public static final int HEDGE_POLICY_FIELD_NUMBER = 17;
    public static final int INCLUDE_ATTEMPT_COUNT_IN_RESPONSE_FIELD_NUMBER = 19;
    public static final int INCLUDE_REQUEST_ATTEMPT_COUNT_FIELD_NUMBER = 14;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PER_REQUEST_BUFFER_LIMIT_BYTES_FIELD_NUMBER = 18;
    public static final int RATE_LIMITS_FIELD_NUMBER = 6;
    public static final int REQUEST_HEADERS_TO_ADD_FIELD_NUMBER = 7;
    public static final int REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER = 13;
    public static final int REQUIRE_TLS_FIELD_NUMBER = 4;
    public static final int RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER = 10;
    public static final int RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER = 11;
    public static final int RETRY_POLICY_FIELD_NUMBER = 16;
    public static final int RETRY_POLICY_TYPED_CONFIG_FIELD_NUMBER = 20;
    public static final int ROUTES_FIELD_NUMBER = 3;
    public static final int TYPED_PER_FILTER_CONFIG_FIELD_NUMBER = 15;
    public static final int VIRTUAL_CLUSTERS_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private CorsPolicy cors_;
    private z0 domains_;
    private HedgePolicy hedgePolicy_;
    private boolean includeAttemptCountInResponse_;
    private boolean includeRequestAttemptCount_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private UInt32Value perRequestBufferLimitBytes_;
    private List<RateLimit> rateLimits_;
    private List<HeaderValueOption> requestHeadersToAdd_;
    private z0 requestHeadersToRemove_;
    private int requireTls_;
    private List<HeaderValueOption> responseHeadersToAdd_;
    private z0 responseHeadersToRemove_;
    private Any retryPolicyTypedConfig_;
    private RetryPolicy retryPolicy_;
    private List<Route> routes_;
    private g1<String, Any> typedPerFilterConfig_;
    private List<VirtualCluster> virtualClusters_;
    private static final VirtualHost DEFAULT_INSTANCE = new VirtualHost();
    private static final e2<VirtualHost> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum TlsRequirementType implements h2 {
        NONE(0),
        EXTERNAL_ONLY(1),
        ALL(2),
        UNRECOGNIZED(-1);
        
        public static final int ALL_VALUE = 2;
        public static final int EXTERNAL_ONLY_VALUE = 1;
        public static final int NONE_VALUE = 0;
        private final int value;
        private static final u0.d<TlsRequirementType> internalValueMap = new a();
        private static final TlsRequirementType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<TlsRequirementType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public TlsRequirementType a(int i9) {
                return TlsRequirementType.forNumber(i9);
            }
        }

        TlsRequirementType(int i9) {
            this.value = i9;
        }

        public static TlsRequirementType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return ALL;
                }
                return EXTERNAL_ONLY;
            }
            return NONE;
        }

        public static final Descriptors.d getDescriptor() {
            return VirtualHost.getDescriptor().k().get(0);
        }

        public static u0.d<TlsRequirementType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static TlsRequirementType valueOf(int i9) {
            return forNumber(i9);
        }

        public static TlsRequirementType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<VirtualHost> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public VirtualHost m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new VirtualHost(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements y {
        private q2<RetryPolicy, RetryPolicy.c, m> A;
        private Any B;
        private q2<Any, Any.b, com.google.protobuf.f> C;
        private HedgePolicy D;
        private q2<HedgePolicy, HedgePolicy.b, g> E;
        private UInt32Value F;
        private q2<UInt32Value, UInt32Value.b, e3> G;

        /* renamed from: e  reason: collision with root package name */
        private int f49416e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49417f;

        /* renamed from: g  reason: collision with root package name */
        private z0 f49418g;

        /* renamed from: h  reason: collision with root package name */
        private List<Route> f49419h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Route, Route.c, r> f49420i;

        /* renamed from: j  reason: collision with root package name */
        private int f49421j;

        /* renamed from: k  reason: collision with root package name */
        private List<VirtualCluster> f49422k;

        /* renamed from: l  reason: collision with root package name */
        private l2<VirtualCluster, VirtualCluster.b, x> f49423l;

        /* renamed from: m  reason: collision with root package name */
        private List<RateLimit> f49424m;

        /* renamed from: n  reason: collision with root package name */
        private l2<RateLimit, RateLimit.d, k> f49425n;

        /* renamed from: o  reason: collision with root package name */
        private List<HeaderValueOption> f49426o;

        /* renamed from: p  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> f49427p;

        /* renamed from: q  reason: collision with root package name */
        private z0 f49428q;

        /* renamed from: r  reason: collision with root package name */
        private List<HeaderValueOption> f49429r;

        /* renamed from: s  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> f49430s;

        /* renamed from: t  reason: collision with root package name */
        private z0 f49431t;

        /* renamed from: u  reason: collision with root package name */
        private CorsPolicy f49432u;

        /* renamed from: v  reason: collision with root package name */
        private q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b> f49433v;

        /* renamed from: w  reason: collision with root package name */
        private g1<String, Any> f49434w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f49435x;

        /* renamed from: y  reason: collision with root package name */
        private boolean f49436y;

        /* renamed from: z  reason: collision with root package name */
        private RetryPolicy f49437z;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49416e & 1) == 0) {
                this.f49418g = new y0(this.f49418g);
                this.f49416e |= 1;
            }
        }

        private void b0() {
            if ((this.f49416e & 8) == 0) {
                this.f49424m = new ArrayList(this.f49424m);
                this.f49416e |= 8;
            }
        }

        private void d0() {
            if ((this.f49416e & 16) == 0) {
                this.f49426o = new ArrayList(this.f49426o);
                this.f49416e |= 16;
            }
        }

        private void e0() {
            if ((this.f49416e & 32) == 0) {
                this.f49428q = new y0(this.f49428q);
                this.f49416e |= 32;
            }
        }

        private void g0() {
            if ((this.f49416e & 64) == 0) {
                this.f49429r = new ArrayList(this.f49429r);
                this.f49416e |= 64;
            }
        }

        private void h0() {
            if ((this.f49416e & 128) == 0) {
                this.f49431t = new y0(this.f49431t);
                this.f49416e |= 128;
            }
        }

        private void i0() {
            if ((this.f49416e & 2) == 0) {
                this.f49419h = new ArrayList(this.f49419h);
                this.f49416e |= 2;
            }
        }

        private void j0() {
            if ((this.f49416e & 4) == 0) {
                this.f49422k = new ArrayList(this.f49422k);
                this.f49416e |= 4;
            }
        }

        private l2<RateLimit, RateLimit.d, k> l0() {
            if (this.f49425n == null) {
                this.f49425n = new l2<>(this.f49424m, (this.f49416e & 8) != 0, H(), O());
                this.f49424m = null;
            }
            return this.f49425n;
        }

        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> m0() {
            if (this.f49427p == null) {
                this.f49427p = new l2<>(this.f49426o, (this.f49416e & 16) != 0, H(), O());
                this.f49426o = null;
            }
            return this.f49427p;
        }

        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> n0() {
            if (this.f49430s == null) {
                this.f49430s = new l2<>(this.f49429r, (this.f49416e & 64) != 0, H(), O());
                this.f49429r = null;
            }
            return this.f49430s;
        }

        private l2<Route, Route.c, r> o0() {
            if (this.f49420i == null) {
                this.f49420i = new l2<>(this.f49419h, (this.f49416e & 2) != 0, H(), O());
                this.f49419h = null;
            }
            return this.f49420i;
        }

        private l2<VirtualCluster, VirtualCluster.b, x> q0() {
            if (this.f49423l == null) {
                this.f49423l = new l2<>(this.f49422k, (this.f49416e & 4) != 0, H(), O());
                this.f49422k = null;
            }
            return this.f49423l;
        }

        private g1<String, Any> r0() {
            R();
            if (this.f49434w == null) {
                this.f49434w = g1.p(c.f49438a);
            }
            if (!this.f49434w.m()) {
                this.f49434w = this.f49434w.f();
            }
            return this.f49434w;
        }

        private g1<String, Any> s0() {
            g1<String, Any> g1Var = this.f49434w;
            return g1Var == null ? g1.g(c.f49438a) : g1Var;
        }

        private void t0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                o0();
                q0();
                l0();
                m0();
                n0();
            }
        }

        public b B0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.G;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.F;
                if (uInt32Value2 != null) {
                    this.F = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.F = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b D0(RetryPolicy retryPolicy) {
            q2<RetryPolicy, RetryPolicy.c, m> q2Var = this.A;
            if (q2Var == null) {
                RetryPolicy retryPolicy2 = this.f49437z;
                if (retryPolicy2 != null) {
                    this.f49437z = RetryPolicy.newBuilder(retryPolicy2).n0(retryPolicy).I();
                } else {
                    this.f49437z = retryPolicy;
                }
                R();
            } else {
                q2Var.e(retryPolicy);
            }
            return this;
        }

        public b H0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.C;
            if (q2Var == null) {
                Any any2 = this.B;
                if (any2 != null) {
                    this.B = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.B = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: I0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: J0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f49465b.d(VirtualHost.class, b.class);
        }

        public b K0(boolean z10) {
            this.f49436y = z10;
            R();
            return this;
        }

        public b L0(boolean z10) {
            this.f49435x = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 15) {
                return s0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        public b M0(int i9) {
            this.f49421j = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 15) {
                return r0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: N0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public VirtualHost build() {
            VirtualHost I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public VirtualHost I() {
            VirtualHost virtualHost = new VirtualHost(this, (a) null);
            virtualHost.name_ = this.f49417f;
            if ((this.f49416e & 1) != 0) {
                this.f49418g = this.f49418g.V0();
                this.f49416e &= -2;
            }
            virtualHost.domains_ = this.f49418g;
            l2<Route, Route.c, r> l2Var = this.f49420i;
            if (l2Var == null) {
                if ((this.f49416e & 2) != 0) {
                    this.f49419h = Collections.unmodifiableList(this.f49419h);
                    this.f49416e &= -3;
                }
                virtualHost.routes_ = this.f49419h;
            } else {
                virtualHost.routes_ = l2Var.e();
            }
            virtualHost.requireTls_ = this.f49421j;
            l2<VirtualCluster, VirtualCluster.b, x> l2Var2 = this.f49423l;
            if (l2Var2 == null) {
                if ((this.f49416e & 4) != 0) {
                    this.f49422k = Collections.unmodifiableList(this.f49422k);
                    this.f49416e &= -5;
                }
                virtualHost.virtualClusters_ = this.f49422k;
            } else {
                virtualHost.virtualClusters_ = l2Var2.e();
            }
            l2<RateLimit, RateLimit.d, k> l2Var3 = this.f49425n;
            if (l2Var3 == null) {
                if ((this.f49416e & 8) != 0) {
                    this.f49424m = Collections.unmodifiableList(this.f49424m);
                    this.f49416e &= -9;
                }
                virtualHost.rateLimits_ = this.f49424m;
            } else {
                virtualHost.rateLimits_ = l2Var3.e();
            }
            l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> l2Var4 = this.f49427p;
            if (l2Var4 == null) {
                if ((this.f49416e & 16) != 0) {
                    this.f49426o = Collections.unmodifiableList(this.f49426o);
                    this.f49416e &= -17;
                }
                virtualHost.requestHeadersToAdd_ = this.f49426o;
            } else {
                virtualHost.requestHeadersToAdd_ = l2Var4.e();
            }
            if ((this.f49416e & 32) != 0) {
                this.f49428q = this.f49428q.V0();
                this.f49416e &= -33;
            }
            virtualHost.requestHeadersToRemove_ = this.f49428q;
            l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> l2Var5 = this.f49430s;
            if (l2Var5 == null) {
                if ((this.f49416e & 64) != 0) {
                    this.f49429r = Collections.unmodifiableList(this.f49429r);
                    this.f49416e &= -65;
                }
                virtualHost.responseHeadersToAdd_ = this.f49429r;
            } else {
                virtualHost.responseHeadersToAdd_ = l2Var5.e();
            }
            if ((this.f49416e & 128) != 0) {
                this.f49431t = this.f49431t.V0();
                this.f49416e &= -129;
            }
            virtualHost.responseHeadersToRemove_ = this.f49431t;
            q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b> q2Var = this.f49433v;
            if (q2Var == null) {
                virtualHost.cors_ = this.f49432u;
            } else {
                virtualHost.cors_ = q2Var.b();
            }
            virtualHost.typedPerFilterConfig_ = s0();
            virtualHost.typedPerFilterConfig_.n();
            virtualHost.includeRequestAttemptCount_ = this.f49435x;
            virtualHost.includeAttemptCountInResponse_ = this.f49436y;
            q2<RetryPolicy, RetryPolicy.c, m> q2Var2 = this.A;
            if (q2Var2 == null) {
                virtualHost.retryPolicy_ = this.f49437z;
            } else {
                virtualHost.retryPolicy_ = q2Var2.b();
            }
            q2<Any, Any.b, com.google.protobuf.f> q2Var3 = this.C;
            if (q2Var3 == null) {
                virtualHost.retryPolicyTypedConfig_ = this.B;
            } else {
                virtualHost.retryPolicyTypedConfig_ = q2Var3.b();
            }
            q2<HedgePolicy, HedgePolicy.b, g> q2Var4 = this.E;
            if (q2Var4 == null) {
                virtualHost.hedgePolicy_ = this.D;
            } else {
                virtualHost.hedgePolicy_ = q2Var4.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var5 = this.G;
            if (q2Var5 == null) {
                virtualHost.perRequestBufferLimitBytes_ = this.F;
            } else {
                virtualHost.perRequestBufferLimitBytes_ = q2Var5.b();
            }
            Q();
            return virtualHost;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f49462a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: k0 */
        public VirtualHost getDefaultInstanceForType() {
            return VirtualHost.getDefaultInstance();
        }

        public b u0(CorsPolicy corsPolicy) {
            q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b> q2Var = this.f49433v;
            if (q2Var == null) {
                CorsPolicy corsPolicy2 = this.f49432u;
                if (corsPolicy2 != null) {
                    this.f49432u = CorsPolicy.newBuilder(corsPolicy2).k0(corsPolicy).I();
                } else {
                    this.f49432u = corsPolicy;
                }
                R();
            } else {
                q2Var.e(corsPolicy);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: v0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.y0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.y0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: x0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof VirtualHost) {
                return y0((VirtualHost) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b y0(VirtualHost virtualHost) {
            if (virtualHost == VirtualHost.getDefaultInstance()) {
                return this;
            }
            if (!virtualHost.getName().isEmpty()) {
                this.f49417f = virtualHost.name_;
                R();
            }
            if (!virtualHost.domains_.isEmpty()) {
                if (this.f49418g.isEmpty()) {
                    this.f49418g = virtualHost.domains_;
                    this.f49416e &= -2;
                } else {
                    a0();
                    this.f49418g.addAll(virtualHost.domains_);
                }
                R();
            }
            if (this.f49420i == null) {
                if (!virtualHost.routes_.isEmpty()) {
                    if (this.f49419h.isEmpty()) {
                        this.f49419h = virtualHost.routes_;
                        this.f49416e &= -3;
                    } else {
                        i0();
                        this.f49419h.addAll(virtualHost.routes_);
                    }
                    R();
                }
            } else if (!virtualHost.routes_.isEmpty()) {
                if (this.f49420i.k()) {
                    this.f49420i.f();
                    this.f49420i = null;
                    this.f49419h = virtualHost.routes_;
                    this.f49416e &= -3;
                    this.f49420i = GeneratedMessageV3.alwaysUseFieldBuilders ? o0() : null;
                } else {
                    this.f49420i.b(virtualHost.routes_);
                }
            }
            if (virtualHost.requireTls_ != 0) {
                M0(virtualHost.getRequireTlsValue());
            }
            if (this.f49423l == null) {
                if (!virtualHost.virtualClusters_.isEmpty()) {
                    if (this.f49422k.isEmpty()) {
                        this.f49422k = virtualHost.virtualClusters_;
                        this.f49416e &= -5;
                    } else {
                        j0();
                        this.f49422k.addAll(virtualHost.virtualClusters_);
                    }
                    R();
                }
            } else if (!virtualHost.virtualClusters_.isEmpty()) {
                if (this.f49423l.k()) {
                    this.f49423l.f();
                    this.f49423l = null;
                    this.f49422k = virtualHost.virtualClusters_;
                    this.f49416e &= -5;
                    this.f49423l = GeneratedMessageV3.alwaysUseFieldBuilders ? q0() : null;
                } else {
                    this.f49423l.b(virtualHost.virtualClusters_);
                }
            }
            if (this.f49425n == null) {
                if (!virtualHost.rateLimits_.isEmpty()) {
                    if (this.f49424m.isEmpty()) {
                        this.f49424m = virtualHost.rateLimits_;
                        this.f49416e &= -9;
                    } else {
                        b0();
                        this.f49424m.addAll(virtualHost.rateLimits_);
                    }
                    R();
                }
            } else if (!virtualHost.rateLimits_.isEmpty()) {
                if (this.f49425n.k()) {
                    this.f49425n.f();
                    this.f49425n = null;
                    this.f49424m = virtualHost.rateLimits_;
                    this.f49416e &= -9;
                    this.f49425n = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                } else {
                    this.f49425n.b(virtualHost.rateLimits_);
                }
            }
            if (this.f49427p == null) {
                if (!virtualHost.requestHeadersToAdd_.isEmpty()) {
                    if (this.f49426o.isEmpty()) {
                        this.f49426o = virtualHost.requestHeadersToAdd_;
                        this.f49416e &= -17;
                    } else {
                        d0();
                        this.f49426o.addAll(virtualHost.requestHeadersToAdd_);
                    }
                    R();
                }
            } else if (!virtualHost.requestHeadersToAdd_.isEmpty()) {
                if (this.f49427p.k()) {
                    this.f49427p.f();
                    this.f49427p = null;
                    this.f49426o = virtualHost.requestHeadersToAdd_;
                    this.f49416e &= -17;
                    this.f49427p = GeneratedMessageV3.alwaysUseFieldBuilders ? m0() : null;
                } else {
                    this.f49427p.b(virtualHost.requestHeadersToAdd_);
                }
            }
            if (!virtualHost.requestHeadersToRemove_.isEmpty()) {
                if (this.f49428q.isEmpty()) {
                    this.f49428q = virtualHost.requestHeadersToRemove_;
                    this.f49416e &= -33;
                } else {
                    e0();
                    this.f49428q.addAll(virtualHost.requestHeadersToRemove_);
                }
                R();
            }
            if (this.f49430s == null) {
                if (!virtualHost.responseHeadersToAdd_.isEmpty()) {
                    if (this.f49429r.isEmpty()) {
                        this.f49429r = virtualHost.responseHeadersToAdd_;
                        this.f49416e &= -65;
                    } else {
                        g0();
                        this.f49429r.addAll(virtualHost.responseHeadersToAdd_);
                    }
                    R();
                }
            } else if (!virtualHost.responseHeadersToAdd_.isEmpty()) {
                if (this.f49430s.k()) {
                    this.f49430s.f();
                    this.f49430s = null;
                    this.f49429r = virtualHost.responseHeadersToAdd_;
                    this.f49416e &= -65;
                    this.f49430s = GeneratedMessageV3.alwaysUseFieldBuilders ? n0() : null;
                } else {
                    this.f49430s.b(virtualHost.responseHeadersToAdd_);
                }
            }
            if (!virtualHost.responseHeadersToRemove_.isEmpty()) {
                if (this.f49431t.isEmpty()) {
                    this.f49431t = virtualHost.responseHeadersToRemove_;
                    this.f49416e &= -129;
                } else {
                    h0();
                    this.f49431t.addAll(virtualHost.responseHeadersToRemove_);
                }
                R();
            }
            if (virtualHost.hasCors()) {
                u0(virtualHost.getCors());
            }
            r0().o(virtualHost.internalGetTypedPerFilterConfig());
            if (virtualHost.getIncludeRequestAttemptCount()) {
                L0(virtualHost.getIncludeRequestAttemptCount());
            }
            if (virtualHost.getIncludeAttemptCountInResponse()) {
                K0(virtualHost.getIncludeAttemptCountInResponse());
            }
            if (virtualHost.hasRetryPolicy()) {
                D0(virtualHost.getRetryPolicy());
            }
            if (virtualHost.hasRetryPolicyTypedConfig()) {
                H0(virtualHost.getRetryPolicyTypedConfig());
            }
            if (virtualHost.hasHedgePolicy()) {
                z0(virtualHost.getHedgePolicy());
            }
            if (virtualHost.hasPerRequestBufferLimitBytes()) {
                B0(virtualHost.getPerRequestBufferLimitBytes());
            }
            z(((GeneratedMessageV3) virtualHost).unknownFields);
            R();
            return this;
        }

        public b z0(HedgePolicy hedgePolicy) {
            q2<HedgePolicy, HedgePolicy.b, g> q2Var = this.E;
            if (q2Var == null) {
                HedgePolicy hedgePolicy2 = this.D;
                if (hedgePolicy2 != null) {
                    this.D = HedgePolicy.newBuilder(hedgePolicy2).h0(hedgePolicy).I();
                } else {
                    this.D = hedgePolicy;
                }
                R();
            } else {
                q2Var.e(hedgePolicy);
            }
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f49417f = "";
            z0 z0Var = y0.f15344d;
            this.f49418g = z0Var;
            this.f49419h = Collections.emptyList();
            this.f49421j = 0;
            this.f49422k = Collections.emptyList();
            this.f49424m = Collections.emptyList();
            this.f49426o = Collections.emptyList();
            this.f49428q = z0Var;
            this.f49429r = Collections.emptyList();
            this.f49431t = z0Var;
            t0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49417f = "";
            z0 z0Var = y0.f15344d;
            this.f49418g = z0Var;
            this.f49419h = Collections.emptyList();
            this.f49421j = 0;
            this.f49422k = Collections.emptyList();
            this.f49424m = Collections.emptyList();
            this.f49426o = Collections.emptyList();
            this.f49428q = z0Var;
            this.f49429r = Collections.emptyList();
            this.f49431t = z0Var;
            t0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Any> f49438a = e1.k(o.f49468c, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Any.getDefaultInstance());
    }

    /* synthetic */ VirtualHost(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static VirtualHost getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f49462a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Any> internalGetTypedPerFilterConfig() {
        g1<String, Any> g1Var = this.typedPerFilterConfig_;
        return g1Var == null ? g1.g(c.f49438a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static VirtualHost parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (VirtualHost) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static VirtualHost parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<VirtualHost> parser() {
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
        if (!(obj instanceof VirtualHost)) {
            return super.equals(obj);
        }
        VirtualHost virtualHost = (VirtualHost) obj;
        if (getName().equals(virtualHost.getName()) && m1628getDomainsList().equals(virtualHost.m1628getDomainsList()) && getRoutesList().equals(virtualHost.getRoutesList()) && this.requireTls_ == virtualHost.requireTls_ && getVirtualClustersList().equals(virtualHost.getVirtualClustersList()) && getRateLimitsList().equals(virtualHost.getRateLimitsList()) && getRequestHeadersToAddList().equals(virtualHost.getRequestHeadersToAddList()) && m1629getRequestHeadersToRemoveList().equals(virtualHost.m1629getRequestHeadersToRemoveList()) && getResponseHeadersToAddList().equals(virtualHost.getResponseHeadersToAddList()) && m1630getResponseHeadersToRemoveList().equals(virtualHost.m1630getResponseHeadersToRemoveList()) && hasCors() == virtualHost.hasCors()) {
            if ((!hasCors() || getCors().equals(virtualHost.getCors())) && internalGetTypedPerFilterConfig().equals(virtualHost.internalGetTypedPerFilterConfig()) && getIncludeRequestAttemptCount() == virtualHost.getIncludeRequestAttemptCount() && getIncludeAttemptCountInResponse() == virtualHost.getIncludeAttemptCountInResponse() && hasRetryPolicy() == virtualHost.hasRetryPolicy()) {
                if ((!hasRetryPolicy() || getRetryPolicy().equals(virtualHost.getRetryPolicy())) && hasRetryPolicyTypedConfig() == virtualHost.hasRetryPolicyTypedConfig()) {
                    if ((!hasRetryPolicyTypedConfig() || getRetryPolicyTypedConfig().equals(virtualHost.getRetryPolicyTypedConfig())) && hasHedgePolicy() == virtualHost.hasHedgePolicy()) {
                        if ((!hasHedgePolicy() || getHedgePolicy().equals(virtualHost.getHedgePolicy())) && hasPerRequestBufferLimitBytes() == virtualHost.hasPerRequestBufferLimitBytes()) {
                            return (!hasPerRequestBufferLimitBytes() || getPerRequestBufferLimitBytes().equals(virtualHost.getPerRequestBufferLimitBytes())) && this.unknownFields.equals(virtualHost.unknownFields);
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

    public CorsPolicy getCors() {
        CorsPolicy corsPolicy = this.cors_;
        return corsPolicy == null ? CorsPolicy.getDefaultInstance() : corsPolicy;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b getCorsOrBuilder() {
        return getCors();
    }

    public String getDomains(int i9) {
        return this.domains_.get(i9);
    }

    public ByteString getDomainsBytes(int i9) {
        return this.domains_.j0(i9);
    }

    public int getDomainsCount() {
        return this.domains_.size();
    }

    public HedgePolicy getHedgePolicy() {
        HedgePolicy hedgePolicy = this.hedgePolicy_;
        return hedgePolicy == null ? HedgePolicy.getDefaultInstance() : hedgePolicy;
    }

    public g getHedgePolicyOrBuilder() {
        return getHedgePolicy();
    }

    public boolean getIncludeAttemptCountInResponse() {
        return this.includeAttemptCountInResponse_;
    }

    public boolean getIncludeRequestAttemptCount() {
        return this.includeRequestAttemptCount_;
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<VirtualHost> getParserForType() {
        return PARSER;
    }

    public UInt32Value getPerRequestBufferLimitBytes() {
        UInt32Value uInt32Value = this.perRequestBufferLimitBytes_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getPerRequestBufferLimitBytesOrBuilder() {
        return getPerRequestBufferLimitBytes();
    }

    public RateLimit getRateLimits(int i9) {
        return this.rateLimits_.get(i9);
    }

    public int getRateLimitsCount() {
        return this.rateLimits_.size();
    }

    public List<RateLimit> getRateLimitsList() {
        return this.rateLimits_;
    }

    public k getRateLimitsOrBuilder(int i9) {
        return this.rateLimits_.get(i9);
    }

    public List<? extends k> getRateLimitsOrBuilderList() {
        return this.rateLimits_;
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

    public TlsRequirementType getRequireTls() {
        TlsRequirementType valueOf = TlsRequirementType.valueOf(this.requireTls_);
        return valueOf == null ? TlsRequirementType.UNRECOGNIZED : valueOf;
    }

    public int getRequireTlsValue() {
        return this.requireTls_;
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

    public RetryPolicy getRetryPolicy() {
        RetryPolicy retryPolicy = this.retryPolicy_;
        return retryPolicy == null ? RetryPolicy.getDefaultInstance() : retryPolicy;
    }

    public m getRetryPolicyOrBuilder() {
        return getRetryPolicy();
    }

    public Any getRetryPolicyTypedConfig() {
        Any any = this.retryPolicyTypedConfig_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public com.google.protobuf.f getRetryPolicyTypedConfigOrBuilder() {
        return getRetryPolicyTypedConfig();
    }

    public Route getRoutes(int i9) {
        return this.routes_.get(i9);
    }

    public int getRoutesCount() {
        return this.routes_.size();
    }

    public List<Route> getRoutesList() {
        return this.routes_;
    }

    public r getRoutesOrBuilder(int i9) {
        return this.routes_.get(i9);
    }

    public List<? extends r> getRoutesOrBuilderList() {
        return this.routes_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.domains_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.domains_.c1(i11));
        }
        int size = computeStringSize + i10 + (m1628getDomainsList().size() * 1);
        for (int i12 = 0; i12 < this.routes_.size(); i12++) {
            size += CodedOutputStream.G(3, this.routes_.get(i12));
        }
        if (this.requireTls_ != TlsRequirementType.NONE.getNumber()) {
            size += CodedOutputStream.l(4, this.requireTls_);
        }
        for (int i13 = 0; i13 < this.virtualClusters_.size(); i13++) {
            size += CodedOutputStream.G(5, this.virtualClusters_.get(i13));
        }
        for (int i14 = 0; i14 < this.rateLimits_.size(); i14++) {
            size += CodedOutputStream.G(6, this.rateLimits_.get(i14));
        }
        for (int i15 = 0; i15 < this.requestHeadersToAdd_.size(); i15++) {
            size += CodedOutputStream.G(7, this.requestHeadersToAdd_.get(i15));
        }
        if (this.cors_ != null) {
            size += CodedOutputStream.G(8, getCors());
        }
        for (int i16 = 0; i16 < this.responseHeadersToAdd_.size(); i16++) {
            size += CodedOutputStream.G(10, this.responseHeadersToAdd_.get(i16));
        }
        int i17 = 0;
        for (int i18 = 0; i18 < this.responseHeadersToRemove_.size(); i18++) {
            i17 += GeneratedMessageV3.computeStringSizeNoTag(this.responseHeadersToRemove_.c1(i18));
        }
        int size2 = size + i17 + (m1630getResponseHeadersToRemoveList().size() * 1);
        int i19 = 0;
        for (int i20 = 0; i20 < this.requestHeadersToRemove_.size(); i20++) {
            i19 += GeneratedMessageV3.computeStringSizeNoTag(this.requestHeadersToRemove_.c1(i20));
        }
        int size3 = size2 + i19 + (m1629getRequestHeadersToRemoveList().size() * 1);
        boolean z10 = this.includeRequestAttemptCount_;
        if (z10) {
            size3 += CodedOutputStream.e(14, z10);
        }
        for (Map.Entry<String, Any> entry : internalGetTypedPerFilterConfig().i().entrySet()) {
            size3 += CodedOutputStream.G(15, c.f49438a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (this.retryPolicy_ != null) {
            size3 += CodedOutputStream.G(16, getRetryPolicy());
        }
        if (this.hedgePolicy_ != null) {
            size3 += CodedOutputStream.G(17, getHedgePolicy());
        }
        if (this.perRequestBufferLimitBytes_ != null) {
            size3 += CodedOutputStream.G(18, getPerRequestBufferLimitBytes());
        }
        boolean z11 = this.includeAttemptCountInResponse_;
        if (z11) {
            size3 += CodedOutputStream.e(19, z11);
        }
        if (this.retryPolicyTypedConfig_ != null) {
            size3 += CodedOutputStream.G(20, getRetryPolicyTypedConfig());
        }
        int serializedSize = size3 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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

    public VirtualCluster getVirtualClusters(int i9) {
        return this.virtualClusters_.get(i9);
    }

    public int getVirtualClustersCount() {
        return this.virtualClusters_.size();
    }

    public List<VirtualCluster> getVirtualClustersList() {
        return this.virtualClusters_;
    }

    public x getVirtualClustersOrBuilder(int i9) {
        return this.virtualClusters_.get(i9);
    }

    public List<? extends x> getVirtualClustersOrBuilderList() {
        return this.virtualClusters_;
    }

    public boolean hasCors() {
        return this.cors_ != null;
    }

    public boolean hasHedgePolicy() {
        return this.hedgePolicy_ != null;
    }

    public boolean hasPerRequestBufferLimitBytes() {
        return this.perRequestBufferLimitBytes_ != null;
    }

    public boolean hasRetryPolicy() {
        return this.retryPolicy_ != null;
    }

    public boolean hasRetryPolicyTypedConfig() {
        return this.retryPolicyTypedConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getDomainsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m1628getDomainsList().hashCode();
        }
        if (getRoutesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRoutesList().hashCode();
        }
        int i10 = (((hashCode * 37) + 4) * 53) + this.requireTls_;
        if (getVirtualClustersCount() > 0) {
            i10 = (((i10 * 37) + 5) * 53) + getVirtualClustersList().hashCode();
        }
        if (getRateLimitsCount() > 0) {
            i10 = (((i10 * 37) + 6) * 53) + getRateLimitsList().hashCode();
        }
        if (getRequestHeadersToAddCount() > 0) {
            i10 = (((i10 * 37) + 7) * 53) + getRequestHeadersToAddList().hashCode();
        }
        if (getRequestHeadersToRemoveCount() > 0) {
            i10 = (((i10 * 37) + 13) * 53) + m1629getRequestHeadersToRemoveList().hashCode();
        }
        if (getResponseHeadersToAddCount() > 0) {
            i10 = (((i10 * 37) + 10) * 53) + getResponseHeadersToAddList().hashCode();
        }
        if (getResponseHeadersToRemoveCount() > 0) {
            i10 = (((i10 * 37) + 11) * 53) + m1630getResponseHeadersToRemoveList().hashCode();
        }
        if (hasCors()) {
            i10 = (((i10 * 37) + 8) * 53) + getCors().hashCode();
        }
        if (!internalGetTypedPerFilterConfig().i().isEmpty()) {
            i10 = (((i10 * 37) + 15) * 53) + internalGetTypedPerFilterConfig().hashCode();
        }
        int d10 = (((((((i10 * 37) + 14) * 53) + u0.d(getIncludeRequestAttemptCount())) * 37) + 19) * 53) + u0.d(getIncludeAttemptCountInResponse());
        if (hasRetryPolicy()) {
            d10 = (((d10 * 37) + 16) * 53) + getRetryPolicy().hashCode();
        }
        if (hasRetryPolicyTypedConfig()) {
            d10 = (((d10 * 37) + 20) * 53) + getRetryPolicyTypedConfig().hashCode();
        }
        if (hasHedgePolicy()) {
            d10 = (((d10 * 37) + 17) * 53) + getHedgePolicy().hashCode();
        }
        if (hasPerRequestBufferLimitBytes()) {
            d10 = (((d10 * 37) + 18) * 53) + getPerRequestBufferLimitBytes().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.f49465b.d(VirtualHost.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 15) {
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
        return new VirtualHost();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.domains_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.domains_.c1(i9));
        }
        for (int i10 = 0; i10 < this.routes_.size(); i10++) {
            codedOutputStream.L0(3, this.routes_.get(i10));
        }
        if (this.requireTls_ != TlsRequirementType.NONE.getNumber()) {
            codedOutputStream.v0(4, this.requireTls_);
        }
        for (int i11 = 0; i11 < this.virtualClusters_.size(); i11++) {
            codedOutputStream.L0(5, this.virtualClusters_.get(i11));
        }
        for (int i12 = 0; i12 < this.rateLimits_.size(); i12++) {
            codedOutputStream.L0(6, this.rateLimits_.get(i12));
        }
        for (int i13 = 0; i13 < this.requestHeadersToAdd_.size(); i13++) {
            codedOutputStream.L0(7, this.requestHeadersToAdd_.get(i13));
        }
        if (this.cors_ != null) {
            codedOutputStream.L0(8, getCors());
        }
        for (int i14 = 0; i14 < this.responseHeadersToAdd_.size(); i14++) {
            codedOutputStream.L0(10, this.responseHeadersToAdd_.get(i14));
        }
        for (int i15 = 0; i15 < this.responseHeadersToRemove_.size(); i15++) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.responseHeadersToRemove_.c1(i15));
        }
        for (int i16 = 0; i16 < this.requestHeadersToRemove_.size(); i16++) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.requestHeadersToRemove_.c1(i16));
        }
        boolean z10 = this.includeRequestAttemptCount_;
        if (z10) {
            codedOutputStream.n0(14, z10);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetTypedPerFilterConfig(), c.f49438a, 15);
        if (this.retryPolicy_ != null) {
            codedOutputStream.L0(16, getRetryPolicy());
        }
        if (this.hedgePolicy_ != null) {
            codedOutputStream.L0(17, getHedgePolicy());
        }
        if (this.perRequestBufferLimitBytes_ != null) {
            codedOutputStream.L0(18, getPerRequestBufferLimitBytes());
        }
        boolean z11 = this.includeAttemptCountInResponse_;
        if (z11) {
            codedOutputStream.n0(19, z11);
        }
        if (this.retryPolicyTypedConfig_ != null) {
            codedOutputStream.L0(20, getRetryPolicyTypedConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ VirtualHost(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(VirtualHost virtualHost) {
        return DEFAULT_INSTANCE.toBuilder().y0(virtualHost);
    }

    public static VirtualHost parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getDomainsList */
    public i2 m1628getDomainsList() {
        return this.domains_;
    }

    /* renamed from: getRequestHeadersToRemoveList */
    public i2 m1629getRequestHeadersToRemoveList() {
        return this.requestHeadersToRemove_;
    }

    /* renamed from: getResponseHeadersToRemoveList */
    public i2 m1630getResponseHeadersToRemoveList() {
        return this.responseHeadersToRemove_;
    }

    private VirtualHost(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static VirtualHost parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (VirtualHost) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static VirtualHost parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public VirtualHost getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).y0(this);
    }

    public static VirtualHost parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private VirtualHost() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        z0 z0Var = y0.f15344d;
        this.domains_ = z0Var;
        this.routes_ = Collections.emptyList();
        this.requireTls_ = 0;
        this.virtualClusters_ = Collections.emptyList();
        this.rateLimits_ = Collections.emptyList();
        this.requestHeadersToAdd_ = Collections.emptyList();
        this.requestHeadersToRemove_ = z0Var;
        this.responseHeadersToAdd_ = Collections.emptyList();
        this.responseHeadersToRemove_ = z0Var;
    }

    public static VirtualHost parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static VirtualHost parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static VirtualHost parseFrom(InputStream inputStream) throws IOException {
        return (VirtualHost) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static VirtualHost parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (VirtualHost) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static VirtualHost parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (VirtualHost) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static VirtualHost parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (VirtualHost) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private VirtualHost(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        switch (L) {
                            case 0:
                                break;
                            case 10:
                                this.name_ = pVar.K();
                                continue;
                            case 18:
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.domains_ = new y0();
                                    z11 |= true;
                                }
                                this.domains_.add(K);
                                continue;
                            case 26:
                                if (!(z11 & true)) {
                                    this.routes_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.routes_.add((Route) pVar.B(Route.parser(), f0Var));
                                continue;
                            case 32:
                                this.requireTls_ = pVar.u();
                                continue;
                            case 42:
                                if (!(z11 & true)) {
                                    this.virtualClusters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.virtualClusters_.add((VirtualCluster) pVar.B(VirtualCluster.parser(), f0Var));
                                continue;
                            case 50:
                                if (!(z11 & true)) {
                                    this.rateLimits_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.rateLimits_.add((RateLimit) pVar.B(RateLimit.parser(), f0Var));
                                continue;
                            case 58:
                                if (!(z11 & true)) {
                                    this.requestHeadersToAdd_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.requestHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                                continue;
                            case 66:
                                CorsPolicy corsPolicy = this.cors_;
                                CorsPolicy.c builder = corsPolicy != null ? corsPolicy.toBuilder() : null;
                                CorsPolicy corsPolicy2 = (CorsPolicy) pVar.B(CorsPolicy.parser(), f0Var);
                                this.cors_ = corsPolicy2;
                                if (builder != null) {
                                    builder.k0(corsPolicy2);
                                    this.cors_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 82:
                                if (!(z11 & true)) {
                                    this.responseHeadersToAdd_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.responseHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                                continue;
                            case 90:
                                String K2 = pVar.K();
                                if (!(z11 & true)) {
                                    this.responseHeadersToRemove_ = new y0();
                                    z11 |= true;
                                }
                                this.responseHeadersToRemove_.add(K2);
                                continue;
                            case 106:
                                String K3 = pVar.K();
                                if (!(z11 & true)) {
                                    this.requestHeadersToRemove_ = new y0();
                                    z11 |= true;
                                }
                                this.requestHeadersToRemove_.add(K3);
                                continue;
                            case 112:
                                this.includeRequestAttemptCount_ = pVar.r();
                                continue;
                            case 122:
                                if (!(z11 & true)) {
                                    this.typedPerFilterConfig_ = g1.p(c.f49438a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(c.f49438a.getParserForType(), f0Var);
                                this.typedPerFilterConfig_.l().put((String) e1Var.f(), (Any) e1Var.h());
                                continue;
                            case 130:
                                RetryPolicy retryPolicy = this.retryPolicy_;
                                RetryPolicy.c builder2 = retryPolicy != null ? retryPolicy.toBuilder() : null;
                                RetryPolicy retryPolicy2 = (RetryPolicy) pVar.B(RetryPolicy.parser(), f0Var);
                                this.retryPolicy_ = retryPolicy2;
                                if (builder2 != null) {
                                    builder2.n0(retryPolicy2);
                                    this.retryPolicy_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 138:
                                HedgePolicy hedgePolicy = this.hedgePolicy_;
                                HedgePolicy.b builder3 = hedgePolicy != null ? hedgePolicy.toBuilder() : null;
                                HedgePolicy hedgePolicy2 = (HedgePolicy) pVar.B(HedgePolicy.parser(), f0Var);
                                this.hedgePolicy_ = hedgePolicy2;
                                if (builder3 != null) {
                                    builder3.h0(hedgePolicy2);
                                    this.hedgePolicy_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                                UInt32Value uInt32Value = this.perRequestBufferLimitBytes_;
                                UInt32Value.b builder4 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.perRequestBufferLimitBytes_ = uInt32Value2;
                                if (builder4 != null) {
                                    builder4.g0(uInt32Value2);
                                    this.perRequestBufferLimitBytes_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 152:
                                this.includeAttemptCountInResponse_ = pVar.r();
                                continue;
                            case 162:
                                Any any = this.retryPolicyTypedConfig_;
                                Any.b builder5 = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.retryPolicyTypedConfig_ = any2;
                                if (builder5 != null) {
                                    builder5.d0(any2);
                                    this.retryPolicyTypedConfig_ = builder5.I();
                                } else {
                                    continue;
                                }
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.domains_ = this.domains_.V0();
                }
                if (z11 & true) {
                    this.routes_ = Collections.unmodifiableList(this.routes_);
                }
                if (z11 & true) {
                    this.virtualClusters_ = Collections.unmodifiableList(this.virtualClusters_);
                }
                if (z11 & true) {
                    this.rateLimits_ = Collections.unmodifiableList(this.rateLimits_);
                }
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
