package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

import cn.jiguang.android.BuildConfig;
import com.google.protobuf.Any;
import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.DoubleValue;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.UInt64Value;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.f3;
import com.google.protobuf.g1;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import com.google.protobuf.v;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.CircuitBreakers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Filter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.BindConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeDouble;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TransportSocket;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.c0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.ClusterLoadAssignment;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Percent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Cluster extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.c {
    public static final int ALT_STAT_NAME_FIELD_NUMBER = 28;
    public static final int CIRCUIT_BREAKERS_FIELD_NUMBER = 10;
    public static final int CLEANUP_INTERVAL_FIELD_NUMBER = 20;
    public static final int CLOSE_CONNECTIONS_ON_HOST_HEALTH_FAILURE_FIELD_NUMBER = 31;
    public static final int CLUSTER_TYPE_FIELD_NUMBER = 38;
    public static final int COMMON_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 29;
    public static final int COMMON_LB_CONFIG_FIELD_NUMBER = 27;
    public static final int CONNECTION_POOL_PER_DOWNSTREAM_CONNECTION_FIELD_NUMBER = 51;
    public static final int CONNECT_TIMEOUT_FIELD_NUMBER = 4;
    public static final int DNS_FAILURE_REFRESH_RATE_FIELD_NUMBER = 44;
    public static final int DNS_LOOKUP_FAMILY_FIELD_NUMBER = 17;
    public static final int DNS_REFRESH_RATE_FIELD_NUMBER = 16;
    public static final int DNS_RESOLUTION_CONFIG_FIELD_NUMBER = 53;
    public static final int DNS_RESOLVERS_FIELD_NUMBER = 18;
    public static final int EDS_CLUSTER_CONFIG_FIELD_NUMBER = 3;
    public static final int FILTERS_FIELD_NUMBER = 40;
    public static final int HEALTH_CHECKS_FIELD_NUMBER = 8;
    public static final int HTTP2_PROTOCOL_OPTIONS_FIELD_NUMBER = 14;
    public static final int HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 13;
    public static final int IGNORE_HEALTH_ON_HOST_REMOVAL_FIELD_NUMBER = 32;
    public static final int LB_POLICY_FIELD_NUMBER = 6;
    public static final int LB_SUBSET_CONFIG_FIELD_NUMBER = 22;
    public static final int LEAST_REQUEST_LB_CONFIG_FIELD_NUMBER = 37;
    public static final int LOAD_ASSIGNMENT_FIELD_NUMBER = 33;
    public static final int LOAD_BALANCING_POLICY_FIELD_NUMBER = 41;
    public static final int LRS_SERVER_FIELD_NUMBER = 42;
    public static final int MAGLEV_LB_CONFIG_FIELD_NUMBER = 52;
    public static final int MAX_REQUESTS_PER_CONNECTION_FIELD_NUMBER = 9;
    public static final int METADATA_FIELD_NUMBER = 25;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ORIGINAL_DST_LB_CONFIG_FIELD_NUMBER = 34;
    public static final int OUTLIER_DETECTION_FIELD_NUMBER = 19;
    public static final int PER_CONNECTION_BUFFER_LIMIT_BYTES_FIELD_NUMBER = 5;
    public static final int PRECONNECT_POLICY_FIELD_NUMBER = 50;
    public static final int PROTOCOL_SELECTION_FIELD_NUMBER = 26;
    public static final int RESPECT_DNS_TTL_FIELD_NUMBER = 39;
    public static final int RING_HASH_LB_CONFIG_FIELD_NUMBER = 23;
    public static final int TRACK_CLUSTER_STATS_FIELD_NUMBER = 49;
    public static final int TRACK_TIMEOUT_BUDGETS_FIELD_NUMBER = 47;
    public static final int TRANSPORT_SOCKET_FIELD_NUMBER = 24;
    public static final int TRANSPORT_SOCKET_MATCHES_FIELD_NUMBER = 43;
    public static final int TYPED_DNS_RESOLVER_CONFIG_FIELD_NUMBER = 55;
    public static final int TYPED_EXTENSION_PROTOCOL_OPTIONS_FIELD_NUMBER = 36;
    public static final int TYPE_FIELD_NUMBER = 2;
    public static final int UPSTREAM_BIND_CONFIG_FIELD_NUMBER = 21;
    public static final int UPSTREAM_CONFIG_FIELD_NUMBER = 48;
    public static final int UPSTREAM_CONNECTION_OPTIONS_FIELD_NUMBER = 30;
    public static final int UPSTREAM_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 46;
    public static final int USE_TCP_FOR_DNS_LOOKUPS_FIELD_NUMBER = 45;
    public static final int WAIT_FOR_WARM_ON_INIT_FIELD_NUMBER = 54;
    private static final long serialVersionUID = 0;
    private volatile Object altStatName_;
    private CircuitBreakers circuitBreakers_;
    private Duration cleanupInterval_;
    private boolean closeConnectionsOnHostHealthFailure_;
    private int clusterDiscoveryTypeCase_;
    private Object clusterDiscoveryType_;
    private HttpProtocolOptions commonHttpProtocolOptions_;
    private CommonLbConfig commonLbConfig_;
    private Duration connectTimeout_;
    private boolean connectionPoolPerDownstreamConnection_;
    private RefreshRate dnsFailureRefreshRate_;
    private int dnsLookupFamily_;
    private Duration dnsRefreshRate_;
    private DnsResolutionConfig dnsResolutionConfig_;
    private List<Address> dnsResolvers_;
    private EdsClusterConfig edsClusterConfig_;
    private List<Filter> filters_;
    private List<HealthCheck> healthChecks_;
    private Http2ProtocolOptions http2ProtocolOptions_;
    private Http1ProtocolOptions httpProtocolOptions_;
    private boolean ignoreHealthOnHostRemoval_;
    private int lbConfigCase_;
    private Object lbConfig_;
    private int lbPolicy_;
    private LbSubsetConfig lbSubsetConfig_;
    private ClusterLoadAssignment loadAssignment_;
    private LoadBalancingPolicy loadBalancingPolicy_;
    private ConfigSource lrsServer_;
    private UInt32Value maxRequestsPerConnection_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private volatile Object name_;
    private OutlierDetection outlierDetection_;
    private UInt32Value perConnectionBufferLimitBytes_;
    private PreconnectPolicy preconnectPolicy_;
    private int protocolSelection_;
    private boolean respectDnsTtl_;
    private TrackClusterStats trackClusterStats_;
    private boolean trackTimeoutBudgets_;
    private List<TransportSocketMatch> transportSocketMatches_;
    private TransportSocket transportSocket_;
    private TypedExtensionConfig typedDnsResolverConfig_;
    private g1<String, Any> typedExtensionProtocolOptions_;
    private BindConfig upstreamBindConfig_;
    private TypedExtensionConfig upstreamConfig_;
    private UpstreamConnectionOptions upstreamConnectionOptions_;
    private UpstreamHttpProtocolOptions upstreamHttpProtocolOptions_;
    private boolean useTcpForDnsLookups_;
    private BoolValue waitForWarmOnInit_;
    private static final Cluster DEFAULT_INSTANCE = new Cluster();
    private static final e2<Cluster> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ClusterDiscoveryTypeCase implements u0.c {
        TYPE(2),
        CLUSTER_TYPE(38),
        CLUSTERDISCOVERYTYPE_NOT_SET(0);
        
        private final int value;

        ClusterDiscoveryTypeCase(int i9) {
            this.value = i9;
        }

        public static ClusterDiscoveryTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 38) {
                        return null;
                    }
                    return CLUSTER_TYPE;
                }
                return TYPE;
            }
            return CLUSTERDISCOVERYTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ClusterDiscoveryTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public enum ClusterProtocolSelection implements h2 {
        USE_CONFIGURED_PROTOCOL(0),
        USE_DOWNSTREAM_PROTOCOL(1),
        UNRECOGNIZED(-1);
        
        public static final int USE_CONFIGURED_PROTOCOL_VALUE = 0;
        public static final int USE_DOWNSTREAM_PROTOCOL_VALUE = 1;
        private final int value;
        private static final u0.d<ClusterProtocolSelection> internalValueMap = new a();
        private static final ClusterProtocolSelection[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<ClusterProtocolSelection> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ClusterProtocolSelection a(int i9) {
                return ClusterProtocolSelection.forNumber(i9);
            }
        }

        ClusterProtocolSelection(int i9) {
            this.value = i9;
        }

        public static ClusterProtocolSelection forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return USE_DOWNSTREAM_PROTOCOL;
            }
            return USE_CONFIGURED_PROTOCOL;
        }

        public static final Descriptors.d getDescriptor() {
            return Cluster.getDescriptor().k().get(3);
        }

        public static u0.d<ClusterProtocolSelection> internalGetValueMap() {
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
        public static ClusterProtocolSelection valueOf(int i9) {
            return forNumber(i9);
        }

        public static ClusterProtocolSelection valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes6.dex */
    public static final class CommonLbConfig extends GeneratedMessageV3 implements d {
        public static final int CLOSE_CONNECTIONS_ON_HOST_SET_CHANGE_FIELD_NUMBER = 6;
        public static final int CONSISTENT_HASHING_LB_CONFIG_FIELD_NUMBER = 7;
        public static final int HEALTHY_PANIC_THRESHOLD_FIELD_NUMBER = 1;
        public static final int IGNORE_NEW_HOSTS_UNTIL_FIRST_HC_FIELD_NUMBER = 5;
        public static final int LOCALITY_WEIGHTED_LB_CONFIG_FIELD_NUMBER = 3;
        public static final int UPDATE_MERGE_WINDOW_FIELD_NUMBER = 4;
        public static final int ZONE_AWARE_LB_CONFIG_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private boolean closeConnectionsOnHostSetChange_;
        private ConsistentHashingLbConfig consistentHashingLbConfig_;
        private Percent healthyPanicThreshold_;
        private boolean ignoreNewHostsUntilFirstHc_;
        private int localityConfigSpecifierCase_;
        private Object localityConfigSpecifier_;
        private byte memoizedIsInitialized;
        private Duration updateMergeWindow_;
        private static final CommonLbConfig DEFAULT_INSTANCE = new CommonLbConfig();
        private static final e2<CommonLbConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        public static final class ConsistentHashingLbConfig extends GeneratedMessageV3 implements c {
            public static final int HASH_BALANCE_FACTOR_FIELD_NUMBER = 2;
            public static final int USE_HOSTNAME_FOR_HASHING_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private UInt32Value hashBalanceFactor_;
            private byte memoizedIsInitialized;
            private boolean useHostnameForHashing_;
            private static final ConsistentHashingLbConfig DEFAULT_INSTANCE = new ConsistentHashingLbConfig();
            private static final e2<ConsistentHashingLbConfig> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ConsistentHashingLbConfig> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ConsistentHashingLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ConsistentHashingLbConfig(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private boolean f47576e;

                /* renamed from: f  reason: collision with root package name */
                private UInt32Value f47577f;

                /* renamed from: g  reason: collision with root package name */
                private q2<UInt32Value, UInt32Value.b, e3> f47578g;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.D.d(ConsistentHashingLbConfig.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ConsistentHashingLbConfig build() {
                    ConsistentHashingLbConfig I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ConsistentHashingLbConfig I() {
                    ConsistentHashingLbConfig consistentHashingLbConfig = new ConsistentHashingLbConfig(this, (a) null);
                    consistentHashingLbConfig.useHostnameForHashing_ = this.f47576e;
                    q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47578g;
                    if (q2Var == null) {
                        consistentHashingLbConfig.hashBalanceFactor_ = this.f47577f;
                    } else {
                        consistentHashingLbConfig.hashBalanceFactor_ = q2Var.b();
                    }
                    Q();
                    return consistentHashingLbConfig;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ConsistentHashingLbConfig getDefaultInstanceForType() {
                    return ConsistentHashingLbConfig.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig.access$11800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$ConsistentHashingLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.g0(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$ConsistentHashingLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.g0(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$ConsistentHashingLbConfig$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof ConsistentHashingLbConfig) {
                        return g0((ConsistentHashingLbConfig) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ConsistentHashingLbConfig consistentHashingLbConfig) {
                    if (consistentHashingLbConfig == ConsistentHashingLbConfig.getDefaultInstance()) {
                        return this;
                    }
                    if (consistentHashingLbConfig.getUseHostnameForHashing()) {
                        l0(consistentHashingLbConfig.getUseHostnameForHashing());
                    }
                    if (consistentHashingLbConfig.hasHashBalanceFactor()) {
                        h0(consistentHashingLbConfig.getHashBalanceFactor());
                    }
                    z(((GeneratedMessageV3) consistentHashingLbConfig).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.C;
                }

                public b h0(UInt32Value uInt32Value) {
                    q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47578g;
                    if (q2Var == null) {
                        UInt32Value uInt32Value2 = this.f47577f;
                        if (uInt32Value2 != null) {
                            this.f47577f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                        } else {
                            this.f47577f = uInt32Value;
                        }
                        R();
                    } else {
                        q2Var.e(uInt32Value);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: i0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: k0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                public b l0(boolean z10) {
                    this.f47576e = z10;
                    R();
                    return this;
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ ConsistentHashingLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ConsistentHashingLbConfig getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.C;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ConsistentHashingLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ConsistentHashingLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ConsistentHashingLbConfig> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ConsistentHashingLbConfig)) {
                    return super.equals(obj);
                }
                ConsistentHashingLbConfig consistentHashingLbConfig = (ConsistentHashingLbConfig) obj;
                if (getUseHostnameForHashing() == consistentHashingLbConfig.getUseHostnameForHashing() && hasHashBalanceFactor() == consistentHashingLbConfig.hasHashBalanceFactor()) {
                    return (!hasHashBalanceFactor() || getHashBalanceFactor().equals(consistentHashingLbConfig.getHashBalanceFactor())) && this.unknownFields.equals(consistentHashingLbConfig.unknownFields);
                }
                return false;
            }

            public UInt32Value getHashBalanceFactor() {
                UInt32Value uInt32Value = this.hashBalanceFactor_;
                return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
            }

            public e3 getHashBalanceFactorOrBuilder() {
                return getHashBalanceFactor();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ConsistentHashingLbConfig> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                boolean z10 = this.useHostnameForHashing_;
                int e10 = z10 ? 0 + CodedOutputStream.e(1, z10) : 0;
                if (this.hashBalanceFactor_ != null) {
                    e10 += CodedOutputStream.G(2, getHashBalanceFactor());
                }
                int serializedSize = e10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean getUseHostnameForHashing() {
                return this.useHostnameForHashing_;
            }

            public boolean hasHashBalanceFactor() {
                return this.hashBalanceFactor_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getUseHostnameForHashing());
                if (hasHashBalanceFactor()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getHashBalanceFactor().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.D.d(ConsistentHashingLbConfig.class, b.class);
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
                return new ConsistentHashingLbConfig();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                boolean z10 = this.useHostnameForHashing_;
                if (z10) {
                    codedOutputStream.n0(1, z10);
                }
                if (this.hashBalanceFactor_ != null) {
                    codedOutputStream.L0(2, getHashBalanceFactor());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ConsistentHashingLbConfig(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ConsistentHashingLbConfig consistentHashingLbConfig) {
                return DEFAULT_INSTANCE.toBuilder().g0(consistentHashingLbConfig);
            }

            public static ConsistentHashingLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ConsistentHashingLbConfig(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ConsistentHashingLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ConsistentHashingLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ConsistentHashingLbConfig getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ConsistentHashingLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private ConsistentHashingLbConfig() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ConsistentHashingLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static ConsistentHashingLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private ConsistentHashingLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.useHostnameForHashing_ = pVar.r();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    UInt32Value uInt32Value = this.hashBalanceFactor_;
                                    UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.hashBalanceFactor_ = uInt32Value2;
                                    if (builder != null) {
                                        builder.g0(uInt32Value2);
                                        this.hashBalanceFactor_ = builder.I();
                                    }
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } finally {
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static ConsistentHashingLbConfig parseFrom(InputStream inputStream) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ConsistentHashingLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ConsistentHashingLbConfig parseFrom(p pVar) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ConsistentHashingLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public enum LocalityConfigSpecifierCase implements u0.c {
            ZONE_AWARE_LB_CONFIG(2),
            LOCALITY_WEIGHTED_LB_CONFIG(3),
            LOCALITYCONFIGSPECIFIER_NOT_SET(0);
            
            private final int value;

            LocalityConfigSpecifierCase(int i9) {
                this.value = i9;
            }

            public static LocalityConfigSpecifierCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return LOCALITY_WEIGHTED_LB_CONFIG;
                    }
                    return ZONE_AWARE_LB_CONFIG;
                }
                return LOCALITYCONFIGSPECIFIER_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static LocalityConfigSpecifierCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        public static final class LocalityWeightedLbConfig extends GeneratedMessageV3 implements d {
            private static final LocalityWeightedLbConfig DEFAULT_INSTANCE = new LocalityWeightedLbConfig();
            private static final e2<LocalityWeightedLbConfig> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<LocalityWeightedLbConfig> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public LocalityWeightedLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new LocalityWeightedLbConfig(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements d {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.B.d(LocalityWeightedLbConfig.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public LocalityWeightedLbConfig build() {
                    LocalityWeightedLbConfig I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public LocalityWeightedLbConfig I() {
                    LocalityWeightedLbConfig localityWeightedLbConfig = new LocalityWeightedLbConfig(this, (a) null);
                    Q();
                    return localityWeightedLbConfig;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public LocalityWeightedLbConfig getDefaultInstanceForType() {
                    return LocalityWeightedLbConfig.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfig.access$10900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$LocalityWeightedLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.g0(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$LocalityWeightedLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfig) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.g0(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$LocalityWeightedLbConfig$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof LocalityWeightedLbConfig) {
                        return g0((LocalityWeightedLbConfig) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(LocalityWeightedLbConfig localityWeightedLbConfig) {
                    if (localityWeightedLbConfig == LocalityWeightedLbConfig.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) localityWeightedLbConfig).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.A;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: i0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ LocalityWeightedLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static LocalityWeightedLbConfig getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.A;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static LocalityWeightedLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static LocalityWeightedLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<LocalityWeightedLbConfig> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof LocalityWeightedLbConfig) {
                    return this.unknownFields.equals(((LocalityWeightedLbConfig) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<LocalityWeightedLbConfig> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int serializedSize = this.unknownFields.getSerializedSize() + 0;
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.B.d(LocalityWeightedLbConfig.class, b.class);
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
                return new LocalityWeightedLbConfig();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ LocalityWeightedLbConfig(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(LocalityWeightedLbConfig localityWeightedLbConfig) {
                return DEFAULT_INSTANCE.toBuilder().g0(localityWeightedLbConfig);
            }

            public static LocalityWeightedLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private LocalityWeightedLbConfig(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static LocalityWeightedLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static LocalityWeightedLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public LocalityWeightedLbConfig getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static LocalityWeightedLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private LocalityWeightedLbConfig() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static LocalityWeightedLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static LocalityWeightedLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private LocalityWeightedLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                    z10 = true;
                                }
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } finally {
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static LocalityWeightedLbConfig parseFrom(InputStream inputStream) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static LocalityWeightedLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static LocalityWeightedLbConfig parseFrom(p pVar) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static LocalityWeightedLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class ZoneAwareLbConfig extends GeneratedMessageV3 implements e {
            public static final int FAIL_TRAFFIC_ON_PANIC_FIELD_NUMBER = 3;
            public static final int MIN_CLUSTER_SIZE_FIELD_NUMBER = 2;
            public static final int ROUTING_ENABLED_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private boolean failTrafficOnPanic_;
            private byte memoizedIsInitialized;
            private UInt64Value minClusterSize_;
            private Percent routingEnabled_;
            private static final ZoneAwareLbConfig DEFAULT_INSTANCE = new ZoneAwareLbConfig();
            private static final e2<ZoneAwareLbConfig> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ZoneAwareLbConfig> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ZoneAwareLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ZoneAwareLbConfig(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements e {

                /* renamed from: e  reason: collision with root package name */
                private Percent f47579e;

                /* renamed from: f  reason: collision with root package name */
                private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f47580f;

                /* renamed from: g  reason: collision with root package name */
                private UInt64Value f47581g;

                /* renamed from: h  reason: collision with root package name */
                private q2<UInt64Value, UInt64Value.b, f3> f47582h;

                /* renamed from: i  reason: collision with root package name */
                private boolean f47583i;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47757z.d(ZoneAwareLbConfig.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ZoneAwareLbConfig build() {
                    ZoneAwareLbConfig I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ZoneAwareLbConfig I() {
                    ZoneAwareLbConfig zoneAwareLbConfig = new ZoneAwareLbConfig(this, (a) null);
                    q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f47580f;
                    if (q2Var == null) {
                        zoneAwareLbConfig.routingEnabled_ = this.f47579e;
                    } else {
                        zoneAwareLbConfig.routingEnabled_ = q2Var.b();
                    }
                    q2<UInt64Value, UInt64Value.b, f3> q2Var2 = this.f47582h;
                    if (q2Var2 == null) {
                        zoneAwareLbConfig.minClusterSize_ = this.f47581g;
                    } else {
                        zoneAwareLbConfig.minClusterSize_ = q2Var2.b();
                    }
                    zoneAwareLbConfig.failTrafficOnPanic_ = this.f47583i;
                    Q();
                    return zoneAwareLbConfig;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ZoneAwareLbConfig getDefaultInstanceForType() {
                    return ZoneAwareLbConfig.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfig.access$10200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$ZoneAwareLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.g0(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$ZoneAwareLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfig) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.g0(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$ZoneAwareLbConfig$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof ZoneAwareLbConfig) {
                        return g0((ZoneAwareLbConfig) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ZoneAwareLbConfig zoneAwareLbConfig) {
                    if (zoneAwareLbConfig == ZoneAwareLbConfig.getDefaultInstance()) {
                        return this;
                    }
                    if (zoneAwareLbConfig.hasRoutingEnabled()) {
                        i0(zoneAwareLbConfig.getRoutingEnabled());
                    }
                    if (zoneAwareLbConfig.hasMinClusterSize()) {
                        h0(zoneAwareLbConfig.getMinClusterSize());
                    }
                    if (zoneAwareLbConfig.getFailTrafficOnPanic()) {
                        k0(zoneAwareLbConfig.getFailTrafficOnPanic());
                    }
                    z(((GeneratedMessageV3) zoneAwareLbConfig).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47756y;
                }

                public b h0(UInt64Value uInt64Value) {
                    q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f47582h;
                    if (q2Var == null) {
                        UInt64Value uInt64Value2 = this.f47581g;
                        if (uInt64Value2 != null) {
                            this.f47581g = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                        } else {
                            this.f47581g = uInt64Value;
                        }
                        R();
                    } else {
                        q2Var.e(uInt64Value);
                    }
                    return this;
                }

                public b i0(Percent percent) {
                    q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f47580f;
                    if (q2Var == null) {
                        Percent percent2 = this.f47579e;
                        if (percent2 != null) {
                            this.f47579e = Percent.newBuilder(percent2).g0(percent).I();
                        } else {
                            this.f47579e = percent;
                        }
                        R();
                    } else {
                        q2Var.e(percent);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: j0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                public b k0(boolean z10) {
                    this.f47583i = z10;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: l0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: m0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ ZoneAwareLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ZoneAwareLbConfig getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47756y;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ZoneAwareLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ZoneAwareLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ZoneAwareLbConfig> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ZoneAwareLbConfig)) {
                    return super.equals(obj);
                }
                ZoneAwareLbConfig zoneAwareLbConfig = (ZoneAwareLbConfig) obj;
                if (hasRoutingEnabled() != zoneAwareLbConfig.hasRoutingEnabled()) {
                    return false;
                }
                if ((!hasRoutingEnabled() || getRoutingEnabled().equals(zoneAwareLbConfig.getRoutingEnabled())) && hasMinClusterSize() == zoneAwareLbConfig.hasMinClusterSize()) {
                    return (!hasMinClusterSize() || getMinClusterSize().equals(zoneAwareLbConfig.getMinClusterSize())) && getFailTrafficOnPanic() == zoneAwareLbConfig.getFailTrafficOnPanic() && this.unknownFields.equals(zoneAwareLbConfig.unknownFields);
                }
                return false;
            }

            public boolean getFailTrafficOnPanic() {
                return this.failTrafficOnPanic_;
            }

            public UInt64Value getMinClusterSize() {
                UInt64Value uInt64Value = this.minClusterSize_;
                return uInt64Value == null ? UInt64Value.getDefaultInstance() : uInt64Value;
            }

            public f3 getMinClusterSizeOrBuilder() {
                return getMinClusterSize();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ZoneAwareLbConfig> getParserForType() {
                return PARSER;
            }

            public Percent getRoutingEnabled() {
                Percent percent = this.routingEnabled_;
                return percent == null ? Percent.getDefaultInstance() : percent;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getRoutingEnabledOrBuilder() {
                return getRoutingEnabled();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = this.routingEnabled_ != null ? 0 + CodedOutputStream.G(1, getRoutingEnabled()) : 0;
                if (this.minClusterSize_ != null) {
                    G += CodedOutputStream.G(2, getMinClusterSize());
                }
                boolean z10 = this.failTrafficOnPanic_;
                if (z10) {
                    G += CodedOutputStream.e(3, z10);
                }
                int serializedSize = G + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasMinClusterSize() {
                return this.minClusterSize_ != null;
            }

            public boolean hasRoutingEnabled() {
                return this.routingEnabled_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasRoutingEnabled()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getRoutingEnabled().hashCode();
                }
                if (hasMinClusterSize()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getMinClusterSize().hashCode();
                }
                int d10 = (((((hashCode * 37) + 3) * 53) + u0.d(getFailTrafficOnPanic())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = d10;
                return d10;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47757z.d(ZoneAwareLbConfig.class, b.class);
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
                return new ZoneAwareLbConfig();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.routingEnabled_ != null) {
                    codedOutputStream.L0(1, getRoutingEnabled());
                }
                if (this.minClusterSize_ != null) {
                    codedOutputStream.L0(2, getMinClusterSize());
                }
                boolean z10 = this.failTrafficOnPanic_;
                if (z10) {
                    codedOutputStream.n0(3, z10);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ZoneAwareLbConfig(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ZoneAwareLbConfig zoneAwareLbConfig) {
                return DEFAULT_INSTANCE.toBuilder().g0(zoneAwareLbConfig);
            }

            public static ZoneAwareLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ZoneAwareLbConfig(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ZoneAwareLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ZoneAwareLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ZoneAwareLbConfig getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ZoneAwareLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private ZoneAwareLbConfig() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ZoneAwareLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static ZoneAwareLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private ZoneAwareLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L != 0) {
                                    if (L == 10) {
                                        Percent percent = this.routingEnabled_;
                                        Percent.b builder = percent != null ? percent.toBuilder() : null;
                                        Percent percent2 = (Percent) pVar.B(Percent.parser(), f0Var);
                                        this.routingEnabled_ = percent2;
                                        if (builder != null) {
                                            builder.g0(percent2);
                                            this.routingEnabled_ = builder.I();
                                        }
                                    } else if (L == 18) {
                                        UInt64Value uInt64Value = this.minClusterSize_;
                                        UInt64Value.b builder2 = uInt64Value != null ? uInt64Value.toBuilder() : null;
                                        UInt64Value uInt64Value2 = (UInt64Value) pVar.B(UInt64Value.parser(), f0Var);
                                        this.minClusterSize_ = uInt64Value2;
                                        if (builder2 != null) {
                                            builder2.g0(uInt64Value2);
                                            this.minClusterSize_ = builder2.I();
                                        }
                                    } else if (L != 24) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.failTrafficOnPanic_ = pVar.r();
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
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static ZoneAwareLbConfig parseFrom(InputStream inputStream) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ZoneAwareLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ZoneAwareLbConfig parseFrom(p pVar) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ZoneAwareLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<CommonLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CommonLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CommonLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f47584e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47585f;

            /* renamed from: g  reason: collision with root package name */
            private Percent f47586g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f47587h;

            /* renamed from: i  reason: collision with root package name */
            private q2<ZoneAwareLbConfig, ZoneAwareLbConfig.b, e> f47588i;

            /* renamed from: j  reason: collision with root package name */
            private q2<LocalityWeightedLbConfig, LocalityWeightedLbConfig.b, d> f47589j;

            /* renamed from: k  reason: collision with root package name */
            private Duration f47590k;

            /* renamed from: l  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f47591l;

            /* renamed from: m  reason: collision with root package name */
            private boolean f47592m;

            /* renamed from: n  reason: collision with root package name */
            private boolean f47593n;

            /* renamed from: o  reason: collision with root package name */
            private ConsistentHashingLbConfig f47594o;

            /* renamed from: p  reason: collision with root package name */
            private q2<ConsistentHashingLbConfig, ConsistentHashingLbConfig.b, c> f47595p;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47755x.d(CommonLbConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CommonLbConfig build() {
                CommonLbConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CommonLbConfig I() {
                CommonLbConfig commonLbConfig = new CommonLbConfig(this, (a) null);
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f47587h;
                if (q2Var == null) {
                    commonLbConfig.healthyPanicThreshold_ = this.f47586g;
                } else {
                    commonLbConfig.healthyPanicThreshold_ = q2Var.b();
                }
                if (this.f47584e == 2) {
                    q2<ZoneAwareLbConfig, ZoneAwareLbConfig.b, e> q2Var2 = this.f47588i;
                    if (q2Var2 == null) {
                        commonLbConfig.localityConfigSpecifier_ = this.f47585f;
                    } else {
                        commonLbConfig.localityConfigSpecifier_ = q2Var2.b();
                    }
                }
                if (this.f47584e == 3) {
                    q2<LocalityWeightedLbConfig, LocalityWeightedLbConfig.b, d> q2Var3 = this.f47589j;
                    if (q2Var3 == null) {
                        commonLbConfig.localityConfigSpecifier_ = this.f47585f;
                    } else {
                        commonLbConfig.localityConfigSpecifier_ = q2Var3.b();
                    }
                }
                q2<Duration, Duration.b, v> q2Var4 = this.f47591l;
                if (q2Var4 == null) {
                    commonLbConfig.updateMergeWindow_ = this.f47590k;
                } else {
                    commonLbConfig.updateMergeWindow_ = q2Var4.b();
                }
                commonLbConfig.ignoreNewHostsUntilFirstHc_ = this.f47592m;
                commonLbConfig.closeConnectionsOnHostSetChange_ = this.f47593n;
                q2<ConsistentHashingLbConfig, ConsistentHashingLbConfig.b, c> q2Var5 = this.f47595p;
                if (q2Var5 == null) {
                    commonLbConfig.consistentHashingLbConfig_ = this.f47594o;
                } else {
                    commonLbConfig.consistentHashingLbConfig_ = q2Var5.b();
                }
                commonLbConfig.localityConfigSpecifierCase_ = this.f47584e;
                Q();
                return commonLbConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public CommonLbConfig getDefaultInstanceForType() {
                return CommonLbConfig.getDefaultInstance();
            }

            public b d0(ConsistentHashingLbConfig consistentHashingLbConfig) {
                q2<ConsistentHashingLbConfig, ConsistentHashingLbConfig.b, c> q2Var = this.f47595p;
                if (q2Var == null) {
                    ConsistentHashingLbConfig consistentHashingLbConfig2 = this.f47594o;
                    if (consistentHashingLbConfig2 != null) {
                        this.f47594o = ConsistentHashingLbConfig.newBuilder(consistentHashingLbConfig2).g0(consistentHashingLbConfig).I();
                    } else {
                        this.f47594o = consistentHashingLbConfig;
                    }
                    R();
                } else {
                    q2Var.e(consistentHashingLbConfig);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.access$13200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.h0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.h0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CommonLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CommonLbConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CommonLbConfig) {
                    return h0((CommonLbConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47754w;
            }

            public b h0(CommonLbConfig commonLbConfig) {
                if (commonLbConfig == CommonLbConfig.getDefaultInstance()) {
                    return this;
                }
                if (commonLbConfig.hasHealthyPanicThreshold()) {
                    i0(commonLbConfig.getHealthyPanicThreshold());
                }
                if (commonLbConfig.hasUpdateMergeWindow()) {
                    l0(commonLbConfig.getUpdateMergeWindow());
                }
                if (commonLbConfig.getIgnoreNewHostsUntilFirstHc()) {
                    q0(commonLbConfig.getIgnoreNewHostsUntilFirstHc());
                }
                if (commonLbConfig.getCloseConnectionsOnHostSetChange()) {
                    n0(commonLbConfig.getCloseConnectionsOnHostSetChange());
                }
                if (commonLbConfig.hasConsistentHashingLbConfig()) {
                    d0(commonLbConfig.getConsistentHashingLbConfig());
                }
                int i9 = b.f47642a[commonLbConfig.getLocalityConfigSpecifierCase().ordinal()];
                if (i9 == 1) {
                    m0(commonLbConfig.getZoneAwareLbConfig());
                } else if (i9 == 2) {
                    j0(commonLbConfig.getLocalityWeightedLbConfig());
                }
                z(((GeneratedMessageV3) commonLbConfig).unknownFields);
                R();
                return this;
            }

            public b i0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f47587h;
                if (q2Var == null) {
                    Percent percent2 = this.f47586g;
                    if (percent2 != null) {
                        this.f47586g = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f47586g = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            public b j0(LocalityWeightedLbConfig localityWeightedLbConfig) {
                q2<LocalityWeightedLbConfig, LocalityWeightedLbConfig.b, d> q2Var = this.f47589j;
                if (q2Var == null) {
                    if (this.f47584e == 3 && this.f47585f != LocalityWeightedLbConfig.getDefaultInstance()) {
                        this.f47585f = LocalityWeightedLbConfig.newBuilder((LocalityWeightedLbConfig) this.f47585f).g0(localityWeightedLbConfig).I();
                    } else {
                        this.f47585f = localityWeightedLbConfig;
                    }
                    R();
                } else {
                    if (this.f47584e == 3) {
                        q2Var.e(localityWeightedLbConfig);
                    }
                    this.f47589j.g(localityWeightedLbConfig);
                }
                this.f47584e = 3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b l0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f47591l;
                if (q2Var == null) {
                    Duration duration2 = this.f47590k;
                    if (duration2 != null) {
                        this.f47590k = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f47590k = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            public b m0(ZoneAwareLbConfig zoneAwareLbConfig) {
                q2<ZoneAwareLbConfig, ZoneAwareLbConfig.b, e> q2Var = this.f47588i;
                if (q2Var == null) {
                    if (this.f47584e == 2 && this.f47585f != ZoneAwareLbConfig.getDefaultInstance()) {
                        this.f47585f = ZoneAwareLbConfig.newBuilder((ZoneAwareLbConfig) this.f47585f).g0(zoneAwareLbConfig).I();
                    } else {
                        this.f47585f = zoneAwareLbConfig;
                    }
                    R();
                } else {
                    if (this.f47584e == 2) {
                        q2Var.e(zoneAwareLbConfig);
                    }
                    this.f47588i.g(zoneAwareLbConfig);
                }
                this.f47584e = 2;
                return this;
            }

            public b n0(boolean z10) {
                this.f47593n = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b q0(boolean z10) {
                this.f47592m = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47584e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47584e = 0;
                b0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface d extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface e extends r1 {
        }

        /* synthetic */ CommonLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CommonLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47754w;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CommonLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CommonLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CommonLbConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CommonLbConfig)) {
                return super.equals(obj);
            }
            CommonLbConfig commonLbConfig = (CommonLbConfig) obj;
            if (hasHealthyPanicThreshold() != commonLbConfig.hasHealthyPanicThreshold()) {
                return false;
            }
            if ((!hasHealthyPanicThreshold() || getHealthyPanicThreshold().equals(commonLbConfig.getHealthyPanicThreshold())) && hasUpdateMergeWindow() == commonLbConfig.hasUpdateMergeWindow()) {
                if ((!hasUpdateMergeWindow() || getUpdateMergeWindow().equals(commonLbConfig.getUpdateMergeWindow())) && getIgnoreNewHostsUntilFirstHc() == commonLbConfig.getIgnoreNewHostsUntilFirstHc() && getCloseConnectionsOnHostSetChange() == commonLbConfig.getCloseConnectionsOnHostSetChange() && hasConsistentHashingLbConfig() == commonLbConfig.hasConsistentHashingLbConfig()) {
                    if ((!hasConsistentHashingLbConfig() || getConsistentHashingLbConfig().equals(commonLbConfig.getConsistentHashingLbConfig())) && getLocalityConfigSpecifierCase().equals(commonLbConfig.getLocalityConfigSpecifierCase())) {
                        int i9 = this.localityConfigSpecifierCase_;
                        if (i9 != 2) {
                            if (i9 == 3 && !getLocalityWeightedLbConfig().equals(commonLbConfig.getLocalityWeightedLbConfig())) {
                                return false;
                            }
                        } else if (!getZoneAwareLbConfig().equals(commonLbConfig.getZoneAwareLbConfig())) {
                            return false;
                        }
                        return this.unknownFields.equals(commonLbConfig.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public boolean getCloseConnectionsOnHostSetChange() {
            return this.closeConnectionsOnHostSetChange_;
        }

        public ConsistentHashingLbConfig getConsistentHashingLbConfig() {
            ConsistentHashingLbConfig consistentHashingLbConfig = this.consistentHashingLbConfig_;
            return consistentHashingLbConfig == null ? ConsistentHashingLbConfig.getDefaultInstance() : consistentHashingLbConfig;
        }

        public c getConsistentHashingLbConfigOrBuilder() {
            return getConsistentHashingLbConfig();
        }

        public Percent getHealthyPanicThreshold() {
            Percent percent = this.healthyPanicThreshold_;
            return percent == null ? Percent.getDefaultInstance() : percent;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getHealthyPanicThresholdOrBuilder() {
            return getHealthyPanicThreshold();
        }

        public boolean getIgnoreNewHostsUntilFirstHc() {
            return this.ignoreNewHostsUntilFirstHc_;
        }

        public LocalityConfigSpecifierCase getLocalityConfigSpecifierCase() {
            return LocalityConfigSpecifierCase.forNumber(this.localityConfigSpecifierCase_);
        }

        public LocalityWeightedLbConfig getLocalityWeightedLbConfig() {
            if (this.localityConfigSpecifierCase_ == 3) {
                return (LocalityWeightedLbConfig) this.localityConfigSpecifier_;
            }
            return LocalityWeightedLbConfig.getDefaultInstance();
        }

        public d getLocalityWeightedLbConfigOrBuilder() {
            if (this.localityConfigSpecifierCase_ == 3) {
                return (LocalityWeightedLbConfig) this.localityConfigSpecifier_;
            }
            return LocalityWeightedLbConfig.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<CommonLbConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.healthyPanicThreshold_ != null ? 0 + CodedOutputStream.G(1, getHealthyPanicThreshold()) : 0;
            if (this.localityConfigSpecifierCase_ == 2) {
                G += CodedOutputStream.G(2, (ZoneAwareLbConfig) this.localityConfigSpecifier_);
            }
            if (this.localityConfigSpecifierCase_ == 3) {
                G += CodedOutputStream.G(3, (LocalityWeightedLbConfig) this.localityConfigSpecifier_);
            }
            if (this.updateMergeWindow_ != null) {
                G += CodedOutputStream.G(4, getUpdateMergeWindow());
            }
            boolean z10 = this.ignoreNewHostsUntilFirstHc_;
            if (z10) {
                G += CodedOutputStream.e(5, z10);
            }
            boolean z11 = this.closeConnectionsOnHostSetChange_;
            if (z11) {
                G += CodedOutputStream.e(6, z11);
            }
            if (this.consistentHashingLbConfig_ != null) {
                G += CodedOutputStream.G(7, getConsistentHashingLbConfig());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public Duration getUpdateMergeWindow() {
            Duration duration = this.updateMergeWindow_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getUpdateMergeWindowOrBuilder() {
            return getUpdateMergeWindow();
        }

        public ZoneAwareLbConfig getZoneAwareLbConfig() {
            if (this.localityConfigSpecifierCase_ == 2) {
                return (ZoneAwareLbConfig) this.localityConfigSpecifier_;
            }
            return ZoneAwareLbConfig.getDefaultInstance();
        }

        public e getZoneAwareLbConfigOrBuilder() {
            if (this.localityConfigSpecifierCase_ == 2) {
                return (ZoneAwareLbConfig) this.localityConfigSpecifier_;
            }
            return ZoneAwareLbConfig.getDefaultInstance();
        }

        public boolean hasConsistentHashingLbConfig() {
            return this.consistentHashingLbConfig_ != null;
        }

        public boolean hasHealthyPanicThreshold() {
            return this.healthyPanicThreshold_ != null;
        }

        public boolean hasLocalityWeightedLbConfig() {
            return this.localityConfigSpecifierCase_ == 3;
        }

        public boolean hasUpdateMergeWindow() {
            return this.updateMergeWindow_ != null;
        }

        public boolean hasZoneAwareLbConfig() {
            return this.localityConfigSpecifierCase_ == 2;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = 779 + getDescriptor().hashCode();
            if (hasHealthyPanicThreshold()) {
                hashCode2 = (((hashCode2 * 37) + 1) * 53) + getHealthyPanicThreshold().hashCode();
            }
            if (hasUpdateMergeWindow()) {
                hashCode2 = (((hashCode2 * 37) + 4) * 53) + getUpdateMergeWindow().hashCode();
            }
            int d10 = (((((((hashCode2 * 37) + 5) * 53) + u0.d(getIgnoreNewHostsUntilFirstHc())) * 37) + 6) * 53) + u0.d(getCloseConnectionsOnHostSetChange());
            if (hasConsistentHashingLbConfig()) {
                d10 = (((d10 * 37) + 7) * 53) + getConsistentHashingLbConfig().hashCode();
            }
            int i11 = this.localityConfigSpecifierCase_;
            if (i11 == 2) {
                i9 = ((d10 * 37) + 2) * 53;
                hashCode = getZoneAwareLbConfig().hashCode();
            } else {
                if (i11 == 3) {
                    i9 = ((d10 * 37) + 3) * 53;
                    hashCode = getLocalityWeightedLbConfig().hashCode();
                }
                int hashCode3 = (d10 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            }
            d10 = i9 + hashCode;
            int hashCode32 = (d10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode32;
            return hashCode32;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47755x.d(CommonLbConfig.class, b.class);
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
            return new CommonLbConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.healthyPanicThreshold_ != null) {
                codedOutputStream.L0(1, getHealthyPanicThreshold());
            }
            if (this.localityConfigSpecifierCase_ == 2) {
                codedOutputStream.L0(2, (ZoneAwareLbConfig) this.localityConfigSpecifier_);
            }
            if (this.localityConfigSpecifierCase_ == 3) {
                codedOutputStream.L0(3, (LocalityWeightedLbConfig) this.localityConfigSpecifier_);
            }
            if (this.updateMergeWindow_ != null) {
                codedOutputStream.L0(4, getUpdateMergeWindow());
            }
            boolean z10 = this.ignoreNewHostsUntilFirstHc_;
            if (z10) {
                codedOutputStream.n0(5, z10);
            }
            boolean z11 = this.closeConnectionsOnHostSetChange_;
            if (z11) {
                codedOutputStream.n0(6, z11);
            }
            if (this.consistentHashingLbConfig_ != null) {
                codedOutputStream.L0(7, getConsistentHashingLbConfig());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CommonLbConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CommonLbConfig commonLbConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(commonLbConfig);
        }

        public static CommonLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CommonLbConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.localityConfigSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CommonLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CommonLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CommonLbConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static CommonLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static CommonLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private CommonLbConfig() {
            this.localityConfigSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CommonLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CommonLbConfig parseFrom(InputStream inputStream) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private CommonLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                Percent percent = this.healthyPanicThreshold_;
                                Percent.b builder = percent != null ? percent.toBuilder() : null;
                                Percent percent2 = (Percent) pVar.B(Percent.parser(), f0Var);
                                this.healthyPanicThreshold_ = percent2;
                                if (builder != null) {
                                    builder.g0(percent2);
                                    this.healthyPanicThreshold_ = builder.I();
                                }
                            } else if (L == 18) {
                                ZoneAwareLbConfig.b builder2 = this.localityConfigSpecifierCase_ == 2 ? ((ZoneAwareLbConfig) this.localityConfigSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(ZoneAwareLbConfig.parser(), f0Var);
                                this.localityConfigSpecifier_ = B;
                                if (builder2 != null) {
                                    builder2.g0((ZoneAwareLbConfig) B);
                                    this.localityConfigSpecifier_ = builder2.I();
                                }
                                this.localityConfigSpecifierCase_ = 2;
                            } else if (L == 26) {
                                LocalityWeightedLbConfig.b builder3 = this.localityConfigSpecifierCase_ == 3 ? ((LocalityWeightedLbConfig) this.localityConfigSpecifier_).toBuilder() : null;
                                o1 B2 = pVar.B(LocalityWeightedLbConfig.parser(), f0Var);
                                this.localityConfigSpecifier_ = B2;
                                if (builder3 != null) {
                                    builder3.g0((LocalityWeightedLbConfig) B2);
                                    this.localityConfigSpecifier_ = builder3.I();
                                }
                                this.localityConfigSpecifierCase_ = 3;
                            } else if (L == 34) {
                                Duration duration = this.updateMergeWindow_;
                                Duration.b builder4 = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.updateMergeWindow_ = duration2;
                                if (builder4 != null) {
                                    builder4.e0(duration2);
                                    this.updateMergeWindow_ = builder4.I();
                                }
                            } else if (L == 40) {
                                this.ignoreNewHostsUntilFirstHc_ = pVar.r();
                            } else if (L == 48) {
                                this.closeConnectionsOnHostSetChange_ = pVar.r();
                            } else if (L != 58) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ConsistentHashingLbConfig consistentHashingLbConfig = this.consistentHashingLbConfig_;
                                ConsistentHashingLbConfig.b builder5 = consistentHashingLbConfig != null ? consistentHashingLbConfig.toBuilder() : null;
                                ConsistentHashingLbConfig consistentHashingLbConfig2 = (ConsistentHashingLbConfig) pVar.B(ConsistentHashingLbConfig.parser(), f0Var);
                                this.consistentHashingLbConfig_ = consistentHashingLbConfig2;
                                if (builder5 != null) {
                                    builder5.g0(consistentHashingLbConfig2);
                                    this.consistentHashingLbConfig_ = builder5.I();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CommonLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static CommonLbConfig parseFrom(p pVar) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CommonLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class CustomClusterType extends GeneratedMessageV3 implements e {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any typedConfig_;
        private static final CustomClusterType DEFAULT_INSTANCE = new CustomClusterType();
        private static final e2<CustomClusterType> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<CustomClusterType> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CustomClusterType m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CustomClusterType(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f47596e;

            /* renamed from: f  reason: collision with root package name */
            private Any f47597f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f47598g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47739h.d(CustomClusterType.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CustomClusterType build() {
                CustomClusterType I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CustomClusterType I() {
                CustomClusterType customClusterType = new CustomClusterType(this, (a) null);
                customClusterType.name_ = this.f47596e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47598g;
                if (q2Var == null) {
                    customClusterType.typedConfig_ = this.f47597f;
                } else {
                    customClusterType.typedConfig_ = q2Var.b();
                }
                Q();
                return customClusterType;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public CustomClusterType getDefaultInstanceForType() {
                return CustomClusterType.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CustomClusterType.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CustomClusterType.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CustomClusterType r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CustomClusterType) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.g0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CustomClusterType r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CustomClusterType) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.g0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.CustomClusterType.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$CustomClusterType$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CustomClusterType) {
                    return g0((CustomClusterType) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(CustomClusterType customClusterType) {
                if (customClusterType == CustomClusterType.getDefaultInstance()) {
                    return this;
                }
                if (!customClusterType.getName().isEmpty()) {
                    this.f47596e = customClusterType.name_;
                    R();
                }
                if (customClusterType.hasTypedConfig()) {
                    h0(customClusterType.getTypedConfig());
                }
                z(((GeneratedMessageV3) customClusterType).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47738g;
            }

            public b h0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47598g;
                if (q2Var == null) {
                    Any any2 = this.f47597f;
                    if (any2 != null) {
                        this.f47597f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f47597f = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47596e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47596e = "";
                b0();
            }
        }

        /* synthetic */ CustomClusterType(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CustomClusterType getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47738g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CustomClusterType parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CustomClusterType parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CustomClusterType> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CustomClusterType)) {
                return super.equals(obj);
            }
            CustomClusterType customClusterType = (CustomClusterType) obj;
            if (getName().equals(customClusterType.getName()) && hasTypedConfig() == customClusterType.hasTypedConfig()) {
                return (!hasTypedConfig() || getTypedConfig().equals(customClusterType.getTypedConfig())) && this.unknownFields.equals(customClusterType.unknownFields);
            }
            return false;
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
        public e2<CustomClusterType> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.typedConfig_ != null) {
                computeStringSize += CodedOutputStream.G(2, getTypedConfig());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Any getTypedConfig() {
            Any any = this.typedConfig_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getTypedConfigOrBuilder() {
            return getTypedConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasTypedConfig() {
            return this.typedConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasTypedConfig()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getTypedConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47739h.d(CustomClusterType.class, b.class);
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
            return new CustomClusterType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.typedConfig_ != null) {
                codedOutputStream.L0(2, getTypedConfig());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CustomClusterType(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CustomClusterType customClusterType) {
            return DEFAULT_INSTANCE.toBuilder().g0(customClusterType);
        }

        public static CustomClusterType parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CustomClusterType(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CustomClusterType parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CustomClusterType parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CustomClusterType getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static CustomClusterType parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private CustomClusterType() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static CustomClusterType parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static CustomClusterType parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CustomClusterType parseFrom(InputStream inputStream) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private CustomClusterType(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                this.name_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Any any = this.typedConfig_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.typedConfig_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.typedConfig_ = builder.I();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CustomClusterType parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static CustomClusterType parseFrom(p pVar) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CustomClusterType parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum DiscoveryType implements h2 {
        STATIC(0),
        STRICT_DNS(1),
        LOGICAL_DNS(2),
        EDS(3),
        ORIGINAL_DST(4),
        UNRECOGNIZED(-1);
        
        public static final int EDS_VALUE = 3;
        public static final int LOGICAL_DNS_VALUE = 2;
        public static final int ORIGINAL_DST_VALUE = 4;
        public static final int STATIC_VALUE = 0;
        public static final int STRICT_DNS_VALUE = 1;
        private final int value;
        private static final u0.d<DiscoveryType> internalValueMap = new a();
        private static final DiscoveryType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<DiscoveryType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public DiscoveryType a(int i9) {
                return DiscoveryType.forNumber(i9);
            }
        }

        DiscoveryType(int i9) {
            this.value = i9;
        }

        public static DiscoveryType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return ORIGINAL_DST;
                        }
                        return EDS;
                    }
                    return LOGICAL_DNS;
                }
                return STRICT_DNS;
            }
            return STATIC;
        }

        public static final Descriptors.d getDescriptor() {
            return Cluster.getDescriptor().k().get(0);
        }

        public static u0.d<DiscoveryType> internalGetValueMap() {
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
        public static DiscoveryType valueOf(int i9) {
            return forNumber(i9);
        }

        public static DiscoveryType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes6.dex */
    public enum DnsLookupFamily implements h2 {
        AUTO(0),
        V4_ONLY(1),
        V6_ONLY(2),
        UNRECOGNIZED(-1);
        
        public static final int AUTO_VALUE = 0;
        public static final int V4_ONLY_VALUE = 1;
        public static final int V6_ONLY_VALUE = 2;
        private final int value;
        private static final u0.d<DnsLookupFamily> internalValueMap = new a();
        private static final DnsLookupFamily[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<DnsLookupFamily> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public DnsLookupFamily a(int i9) {
                return DnsLookupFamily.forNumber(i9);
            }
        }

        DnsLookupFamily(int i9) {
            this.value = i9;
        }

        public static DnsLookupFamily forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return V6_ONLY;
                }
                return V4_ONLY;
            }
            return AUTO;
        }

        public static final Descriptors.d getDescriptor() {
            return Cluster.getDescriptor().k().get(2);
        }

        public static u0.d<DnsLookupFamily> internalGetValueMap() {
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
        public static DnsLookupFamily valueOf(int i9) {
            return forNumber(i9);
        }

        public static DnsLookupFamily valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes6.dex */
    public static final class EdsClusterConfig extends GeneratedMessageV3 implements f {
        public static final int EDS_CONFIG_FIELD_NUMBER = 1;
        public static final int SERVICE_NAME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private ConfigSource edsConfig_;
        private byte memoizedIsInitialized;
        private volatile Object serviceName_;
        private static final EdsClusterConfig DEFAULT_INSTANCE = new EdsClusterConfig();
        private static final e2<EdsClusterConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<EdsClusterConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public EdsClusterConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new EdsClusterConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private ConfigSource f47599e;

            /* renamed from: f  reason: collision with root package name */
            private q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> f47600f;

            /* renamed from: g  reason: collision with root package name */
            private Object f47601g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47741j.d(EdsClusterConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public EdsClusterConfig build() {
                EdsClusterConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public EdsClusterConfig I() {
                EdsClusterConfig edsClusterConfig = new EdsClusterConfig(this, (a) null);
                q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var = this.f47600f;
                if (q2Var == null) {
                    edsClusterConfig.edsConfig_ = this.f47599e;
                } else {
                    edsClusterConfig.edsConfig_ = q2Var.b();
                }
                edsClusterConfig.serviceName_ = this.f47601g;
                Q();
                return edsClusterConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public EdsClusterConfig getDefaultInstanceForType() {
                return EdsClusterConfig.getDefaultInstance();
            }

            public b d0(ConfigSource configSource) {
                q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var = this.f47600f;
                if (q2Var == null) {
                    ConfigSource configSource2 = this.f47599e;
                    if (configSource2 != null) {
                        this.f47599e = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                    } else {
                        this.f47599e = configSource;
                    }
                    R();
                } else {
                    q2Var.e(configSource);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.EdsClusterConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.EdsClusterConfig.access$2800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$EdsClusterConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.EdsClusterConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.h0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$EdsClusterConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.EdsClusterConfig) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.h0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.EdsClusterConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$EdsClusterConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof EdsClusterConfig) {
                    return h0((EdsClusterConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47740i;
            }

            public b h0(EdsClusterConfig edsClusterConfig) {
                if (edsClusterConfig == EdsClusterConfig.getDefaultInstance()) {
                    return this;
                }
                if (edsClusterConfig.hasEdsConfig()) {
                    d0(edsClusterConfig.getEdsConfig());
                }
                if (!edsClusterConfig.getServiceName().isEmpty()) {
                    this.f47601g = edsClusterConfig.serviceName_;
                    R();
                }
                z(((GeneratedMessageV3) edsClusterConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47601g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47601g = "";
                b0();
            }
        }

        /* synthetic */ EdsClusterConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static EdsClusterConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47740i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static EdsClusterConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static EdsClusterConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<EdsClusterConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EdsClusterConfig)) {
                return super.equals(obj);
            }
            EdsClusterConfig edsClusterConfig = (EdsClusterConfig) obj;
            if (hasEdsConfig() != edsClusterConfig.hasEdsConfig()) {
                return false;
            }
            return (!hasEdsConfig() || getEdsConfig().equals(edsClusterConfig.getEdsConfig())) && getServiceName().equals(edsClusterConfig.getServiceName()) && this.unknownFields.equals(edsClusterConfig.unknownFields);
        }

        public ConfigSource getEdsConfig() {
            ConfigSource configSource = this.edsConfig_;
            return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k getEdsConfigOrBuilder() {
            return getEdsConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<EdsClusterConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.edsConfig_ != null ? 0 + CodedOutputStream.G(1, getEdsConfig()) : 0;
            if (!GeneratedMessageV3.isStringEmpty(this.serviceName_)) {
                G += GeneratedMessageV3.computeStringSize(2, this.serviceName_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getServiceName() {
            Object obj = this.serviceName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.serviceName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getServiceNameBytes() {
            Object obj = this.serviceName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serviceName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasEdsConfig() {
            return this.edsConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasEdsConfig()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getEdsConfig().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 2) * 53) + getServiceName().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47741j.d(EdsClusterConfig.class, b.class);
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
            return new EdsClusterConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.edsConfig_ != null) {
                codedOutputStream.L0(1, getEdsConfig());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.serviceName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.serviceName_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ EdsClusterConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(EdsClusterConfig edsClusterConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(edsClusterConfig);
        }

        public static EdsClusterConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private EdsClusterConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static EdsClusterConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static EdsClusterConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public EdsClusterConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static EdsClusterConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private EdsClusterConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.serviceName_ = "";
        }

        public static EdsClusterConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static EdsClusterConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static EdsClusterConfig parseFrom(InputStream inputStream) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private EdsClusterConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                ConfigSource configSource = this.edsConfig_;
                                ConfigSource.c builder = configSource != null ? configSource.toBuilder() : null;
                                ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                                this.edsConfig_ = configSource2;
                                if (builder != null) {
                                    builder.k0(configSource2);
                                    this.edsConfig_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.serviceName_ = pVar.K();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static EdsClusterConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static EdsClusterConfig parseFrom(p pVar) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static EdsClusterConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum LbConfigCase implements u0.c {
        RING_HASH_LB_CONFIG(23),
        MAGLEV_LB_CONFIG(52),
        ORIGINAL_DST_LB_CONFIG(34),
        LEAST_REQUEST_LB_CONFIG(37),
        LBCONFIG_NOT_SET(0);
        
        private final int value;

        LbConfigCase(int i9) {
            this.value = i9;
        }

        public static LbConfigCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 23) {
                    if (i9 != 34) {
                        if (i9 != 37) {
                            if (i9 != 52) {
                                return null;
                            }
                            return MAGLEV_LB_CONFIG;
                        }
                        return LEAST_REQUEST_LB_CONFIG;
                    }
                    return ORIGINAL_DST_LB_CONFIG;
                }
                return RING_HASH_LB_CONFIG;
            }
            return LBCONFIG_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static LbConfigCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public enum LbPolicy implements h2 {
        ROUND_ROBIN(0),
        LEAST_REQUEST(1),
        RING_HASH(2),
        RANDOM(3),
        MAGLEV(5),
        CLUSTER_PROVIDED(6),
        LOAD_BALANCING_POLICY_CONFIG(7),
        UNRECOGNIZED(-1);
        
        public static final int CLUSTER_PROVIDED_VALUE = 6;
        public static final int LEAST_REQUEST_VALUE = 1;
        public static final int LOAD_BALANCING_POLICY_CONFIG_VALUE = 7;
        public static final int MAGLEV_VALUE = 5;
        public static final int RANDOM_VALUE = 3;
        public static final int RING_HASH_VALUE = 2;
        public static final int ROUND_ROBIN_VALUE = 0;
        private final int value;
        private static final u0.d<LbPolicy> internalValueMap = new a();
        private static final LbPolicy[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<LbPolicy> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public LbPolicy a(int i9) {
                return LbPolicy.forNumber(i9);
            }
        }

        LbPolicy(int i9) {
            this.value = i9;
        }

        public static LbPolicy forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 5) {
                                if (i9 != 6) {
                                    if (i9 != 7) {
                                        return null;
                                    }
                                    return LOAD_BALANCING_POLICY_CONFIG;
                                }
                                return CLUSTER_PROVIDED;
                            }
                            return MAGLEV;
                        }
                        return RANDOM;
                    }
                    return RING_HASH;
                }
                return LEAST_REQUEST;
            }
            return ROUND_ROBIN;
        }

        public static final Descriptors.d getDescriptor() {
            return Cluster.getDescriptor().k().get(1);
        }

        public static u0.d<LbPolicy> internalGetValueMap() {
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
        public static LbPolicy valueOf(int i9) {
            return forNumber(i9);
        }

        public static LbPolicy valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes6.dex */
    public static final class LbSubsetConfig extends GeneratedMessageV3 implements g {
        public static final int DEFAULT_SUBSET_FIELD_NUMBER = 2;
        public static final int FALLBACK_POLICY_FIELD_NUMBER = 1;
        public static final int LIST_AS_ANY_FIELD_NUMBER = 7;
        public static final int LOCALITY_WEIGHT_AWARE_FIELD_NUMBER = 4;
        public static final int PANIC_MODE_ANY_FIELD_NUMBER = 6;
        public static final int SCALE_LOCALITY_WEIGHT_FIELD_NUMBER = 5;
        public static final int SUBSET_SELECTORS_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private Struct defaultSubset_;
        private int fallbackPolicy_;
        private boolean listAsAny_;
        private boolean localityWeightAware_;
        private byte memoizedIsInitialized;
        private boolean panicModeAny_;
        private boolean scaleLocalityWeight_;
        private List<LbSubsetSelector> subsetSelectors_;
        private static final LbSubsetConfig DEFAULT_INSTANCE = new LbSubsetConfig();
        private static final e2<LbSubsetConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum LbSubsetFallbackPolicy implements h2 {
            NO_FALLBACK(0),
            ANY_ENDPOINT(1),
            DEFAULT_SUBSET(2),
            UNRECOGNIZED(-1);
            
            public static final int ANY_ENDPOINT_VALUE = 1;
            public static final int DEFAULT_SUBSET_VALUE = 2;
            public static final int NO_FALLBACK_VALUE = 0;
            private final int value;
            private static final u0.d<LbSubsetFallbackPolicy> internalValueMap = new a();
            private static final LbSubsetFallbackPolicy[] VALUES = values();

            /* loaded from: classes6.dex */
            class a implements u0.d<LbSubsetFallbackPolicy> {
                a() {
                }

                @Override // com.google.protobuf.u0.d
                /* renamed from: b */
                public LbSubsetFallbackPolicy a(int i9) {
                    return LbSubsetFallbackPolicy.forNumber(i9);
                }
            }

            LbSubsetFallbackPolicy(int i9) {
                this.value = i9;
            }

            public static LbSubsetFallbackPolicy forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return DEFAULT_SUBSET;
                    }
                    return ANY_ENDPOINT;
                }
                return NO_FALLBACK;
            }

            public static final Descriptors.d getDescriptor() {
                return LbSubsetConfig.getDescriptor().k().get(0);
            }

            public static u0.d<LbSubsetFallbackPolicy> internalGetValueMap() {
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
            public static LbSubsetFallbackPolicy valueOf(int i9) {
                return forNumber(i9);
            }

            public static LbSubsetFallbackPolicy valueOf(Descriptors.e eVar) {
                if (eVar.h() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes6.dex */
        public static final class LbSubsetSelector extends GeneratedMessageV3 implements c {
            public static final int FALLBACK_KEYS_SUBSET_FIELD_NUMBER = 3;
            public static final int FALLBACK_POLICY_FIELD_NUMBER = 2;
            public static final int KEYS_FIELD_NUMBER = 1;
            public static final int SINGLE_HOST_PER_SUBSET_FIELD_NUMBER = 4;
            private static final long serialVersionUID = 0;
            private z0 fallbackKeysSubset_;
            private int fallbackPolicy_;
            private z0 keys_;
            private byte memoizedIsInitialized;
            private boolean singleHostPerSubset_;
            private static final LbSubsetSelector DEFAULT_INSTANCE = new LbSubsetSelector();
            private static final e2<LbSubsetSelector> PARSER = new a();

            /* loaded from: classes6.dex */
            public enum LbSubsetSelectorFallbackPolicy implements h2 {
                NOT_DEFINED(0),
                NO_FALLBACK(1),
                ANY_ENDPOINT(2),
                DEFAULT_SUBSET(3),
                KEYS_SUBSET(4),
                UNRECOGNIZED(-1);
                
                public static final int ANY_ENDPOINT_VALUE = 2;
                public static final int DEFAULT_SUBSET_VALUE = 3;
                public static final int KEYS_SUBSET_VALUE = 4;
                public static final int NOT_DEFINED_VALUE = 0;
                public static final int NO_FALLBACK_VALUE = 1;
                private final int value;
                private static final u0.d<LbSubsetSelectorFallbackPolicy> internalValueMap = new a();
                private static final LbSubsetSelectorFallbackPolicy[] VALUES = values();

                /* loaded from: classes6.dex */
                class a implements u0.d<LbSubsetSelectorFallbackPolicy> {
                    a() {
                    }

                    @Override // com.google.protobuf.u0.d
                    /* renamed from: b */
                    public LbSubsetSelectorFallbackPolicy a(int i9) {
                        return LbSubsetSelectorFallbackPolicy.forNumber(i9);
                    }
                }

                LbSubsetSelectorFallbackPolicy(int i9) {
                    this.value = i9;
                }

                public static LbSubsetSelectorFallbackPolicy forNumber(int i9) {
                    if (i9 != 0) {
                        if (i9 != 1) {
                            if (i9 != 2) {
                                if (i9 != 3) {
                                    if (i9 != 4) {
                                        return null;
                                    }
                                    return KEYS_SUBSET;
                                }
                                return DEFAULT_SUBSET;
                            }
                            return ANY_ENDPOINT;
                        }
                        return NO_FALLBACK;
                    }
                    return NOT_DEFINED;
                }

                public static final Descriptors.d getDescriptor() {
                    return LbSubsetSelector.getDescriptor().k().get(0);
                }

                public static u0.d<LbSubsetSelectorFallbackPolicy> internalGetValueMap() {
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
                public static LbSubsetSelectorFallbackPolicy valueOf(int i9) {
                    return forNumber(i9);
                }

                public static LbSubsetSelectorFallbackPolicy valueOf(Descriptors.e eVar) {
                    if (eVar.h() == getDescriptor()) {
                        if (eVar.g() == -1) {
                            return UNRECOGNIZED;
                        }
                        return VALUES[eVar.g()];
                    }
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
            }

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<LbSubsetSelector> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public LbSubsetSelector m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new LbSubsetSelector(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f47602e;

                /* renamed from: f  reason: collision with root package name */
                private z0 f47603f;

                /* renamed from: g  reason: collision with root package name */
                private boolean f47604g;

                /* renamed from: h  reason: collision with root package name */
                private int f47605h;

                /* renamed from: i  reason: collision with root package name */
                private z0 f47606i;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void a0() {
                    if ((this.f47602e & 2) == 0) {
                        this.f47606i = new y0(this.f47606i);
                        this.f47602e |= 2;
                    }
                }

                private void b0() {
                    if ((this.f47602e & 1) == 0) {
                        this.f47603f = new y0(this.f47603f);
                        this.f47602e |= 1;
                    }
                }

                private void e0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47745n.d(LbSubsetSelector.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public LbSubsetSelector build() {
                    LbSubsetSelector I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public LbSubsetSelector I() {
                    LbSubsetSelector lbSubsetSelector = new LbSubsetSelector(this, (a) null);
                    if ((this.f47602e & 1) != 0) {
                        this.f47603f = this.f47603f.V0();
                        this.f47602e &= -2;
                    }
                    lbSubsetSelector.keys_ = this.f47603f;
                    lbSubsetSelector.singleHostPerSubset_ = this.f47604g;
                    lbSubsetSelector.fallbackPolicy_ = this.f47605h;
                    if ((this.f47602e & 2) != 0) {
                        this.f47606i = this.f47606i.V0();
                        this.f47602e &= -3;
                    }
                    lbSubsetSelector.fallbackKeysSubset_ = this.f47606i;
                    Q();
                    return lbSubsetSelector;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: d0 */
                public LbSubsetSelector getDefaultInstanceForType() {
                    return LbSubsetSelector.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.access$4000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LbSubsetConfig$LbSubsetSelector r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.i0(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LbSubsetConfig$LbSubsetSelector r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.i0(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LbSubsetConfig$LbSubsetSelector$b");
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47744m;
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof LbSubsetSelector) {
                        return i0((LbSubsetSelector) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b i0(LbSubsetSelector lbSubsetSelector) {
                    if (lbSubsetSelector == LbSubsetSelector.getDefaultInstance()) {
                        return this;
                    }
                    if (!lbSubsetSelector.keys_.isEmpty()) {
                        if (this.f47603f.isEmpty()) {
                            this.f47603f = lbSubsetSelector.keys_;
                            this.f47602e &= -2;
                        } else {
                            b0();
                            this.f47603f.addAll(lbSubsetSelector.keys_);
                        }
                        R();
                    }
                    if (lbSubsetSelector.getSingleHostPerSubset()) {
                        m0(lbSubsetSelector.getSingleHostPerSubset());
                    }
                    if (lbSubsetSelector.fallbackPolicy_ != 0) {
                        k0(lbSubsetSelector.getFallbackPolicyValue());
                    }
                    if (!lbSubsetSelector.fallbackKeysSubset_.isEmpty()) {
                        if (this.f47606i.isEmpty()) {
                            this.f47606i = lbSubsetSelector.fallbackKeysSubset_;
                            this.f47602e &= -3;
                        } else {
                            a0();
                            this.f47606i.addAll(lbSubsetSelector.fallbackKeysSubset_);
                        }
                        R();
                    }
                    z(((GeneratedMessageV3) lbSubsetSelector).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: j0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                public b k0(int i9) {
                    this.f47605h = i9;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: l0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                public b m0(boolean z10) {
                    this.f47604g = z10;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: n0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    z0 z0Var = y0.f15344d;
                    this.f47603f = z0Var;
                    this.f47605h = 0;
                    this.f47606i = z0Var;
                    e0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    z0 z0Var = y0.f15344d;
                    this.f47603f = z0Var;
                    this.f47605h = 0;
                    this.f47606i = z0Var;
                    e0();
                }
            }

            /* synthetic */ LbSubsetSelector(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static LbSubsetSelector getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47744m;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static LbSubsetSelector parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static LbSubsetSelector parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<LbSubsetSelector> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof LbSubsetSelector)) {
                    return super.equals(obj);
                }
                LbSubsetSelector lbSubsetSelector = (LbSubsetSelector) obj;
                return m1611getKeysList().equals(lbSubsetSelector.m1611getKeysList()) && getSingleHostPerSubset() == lbSubsetSelector.getSingleHostPerSubset() && this.fallbackPolicy_ == lbSubsetSelector.fallbackPolicy_ && m1610getFallbackKeysSubsetList().equals(lbSubsetSelector.m1610getFallbackKeysSubsetList()) && this.unknownFields.equals(lbSubsetSelector.unknownFields);
            }

            public String getFallbackKeysSubset(int i9) {
                return this.fallbackKeysSubset_.get(i9);
            }

            public ByteString getFallbackKeysSubsetBytes(int i9) {
                return this.fallbackKeysSubset_.j0(i9);
            }

            public int getFallbackKeysSubsetCount() {
                return this.fallbackKeysSubset_.size();
            }

            public LbSubsetSelectorFallbackPolicy getFallbackPolicy() {
                LbSubsetSelectorFallbackPolicy valueOf = LbSubsetSelectorFallbackPolicy.valueOf(this.fallbackPolicy_);
                return valueOf == null ? LbSubsetSelectorFallbackPolicy.UNRECOGNIZED : valueOf;
            }

            public int getFallbackPolicyValue() {
                return this.fallbackPolicy_;
            }

            public String getKeys(int i9) {
                return this.keys_.get(i9);
            }

            public ByteString getKeysBytes(int i9) {
                return this.keys_.j0(i9);
            }

            public int getKeysCount() {
                return this.keys_.size();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<LbSubsetSelector> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int i10 = 0;
                for (int i11 = 0; i11 < this.keys_.size(); i11++) {
                    i10 += GeneratedMessageV3.computeStringSizeNoTag(this.keys_.c1(i11));
                }
                int size = i10 + 0 + (m1611getKeysList().size() * 1);
                if (this.fallbackPolicy_ != LbSubsetSelectorFallbackPolicy.NOT_DEFINED.getNumber()) {
                    size += CodedOutputStream.l(2, this.fallbackPolicy_);
                }
                int i12 = 0;
                for (int i13 = 0; i13 < this.fallbackKeysSubset_.size(); i13++) {
                    i12 += GeneratedMessageV3.computeStringSizeNoTag(this.fallbackKeysSubset_.c1(i13));
                }
                int size2 = size + i12 + (m1610getFallbackKeysSubsetList().size() * 1);
                boolean z10 = this.singleHostPerSubset_;
                if (z10) {
                    size2 += CodedOutputStream.e(4, z10);
                }
                int serializedSize = size2 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public boolean getSingleHostPerSubset() {
                return this.singleHostPerSubset_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (getKeysCount() > 0) {
                    hashCode = (((hashCode * 37) + 1) * 53) + m1611getKeysList().hashCode();
                }
                int d10 = (((((((hashCode * 37) + 4) * 53) + u0.d(getSingleHostPerSubset())) * 37) + 2) * 53) + this.fallbackPolicy_;
                if (getFallbackKeysSubsetCount() > 0) {
                    d10 = (((d10 * 37) + 3) * 53) + m1610getFallbackKeysSubsetList().hashCode();
                }
                int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47745n.d(LbSubsetSelector.class, b.class);
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
                return new LbSubsetSelector();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                for (int i9 = 0; i9 < this.keys_.size(); i9++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.keys_.c1(i9));
                }
                if (this.fallbackPolicy_ != LbSubsetSelectorFallbackPolicy.NOT_DEFINED.getNumber()) {
                    codedOutputStream.v0(2, this.fallbackPolicy_);
                }
                for (int i10 = 0; i10 < this.fallbackKeysSubset_.size(); i10++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.fallbackKeysSubset_.c1(i10));
                }
                boolean z10 = this.singleHostPerSubset_;
                if (z10) {
                    codedOutputStream.n0(4, z10);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ LbSubsetSelector(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(LbSubsetSelector lbSubsetSelector) {
                return DEFAULT_INSTANCE.toBuilder().i0(lbSubsetSelector);
            }

            public static LbSubsetSelector parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            /* renamed from: getFallbackKeysSubsetList */
            public i2 m1610getFallbackKeysSubsetList() {
                return this.fallbackKeysSubset_;
            }

            /* renamed from: getKeysList */
            public i2 m1611getKeysList() {
                return this.keys_;
            }

            private LbSubsetSelector(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static LbSubsetSelector parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static LbSubsetSelector parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public LbSubsetSelector getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
            }

            public static LbSubsetSelector parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private LbSubsetSelector() {
                this.memoizedIsInitialized = (byte) -1;
                z0 z0Var = y0.f15344d;
                this.keys_ = z0Var;
                this.fallbackPolicy_ = 0;
                this.fallbackKeysSubset_ = z0Var;
            }

            public static LbSubsetSelector parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static LbSubsetSelector parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static LbSubsetSelector parseFrom(InputStream inputStream) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static LbSubsetSelector parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            private LbSubsetSelector(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    String K = pVar.K();
                                    if (!(z11 & true)) {
                                        this.keys_ = new y0();
                                        z11 |= true;
                                    }
                                    this.keys_.add(K);
                                } else if (L == 16) {
                                    this.fallbackPolicy_ = pVar.u();
                                } else if (L == 26) {
                                    String K2 = pVar.K();
                                    if (!(z11 & true)) {
                                        this.fallbackKeysSubset_ = new y0();
                                        z11 |= true;
                                    }
                                    this.fallbackKeysSubset_.add(K2);
                                } else if (L != 32) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.singleHostPerSubset_ = pVar.r();
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
                            this.keys_ = this.keys_.V0();
                        }
                        if (z11 & true) {
                            this.fallbackKeysSubset_ = this.fallbackKeysSubset_.V0();
                        }
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static LbSubsetSelector parseFrom(p pVar) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static LbSubsetSelector parseFrom(p pVar, f0 f0Var) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<LbSubsetConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public LbSubsetConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new LbSubsetConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f47607e;

            /* renamed from: f  reason: collision with root package name */
            private int f47608f;

            /* renamed from: g  reason: collision with root package name */
            private Struct f47609g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f47610h;

            /* renamed from: i  reason: collision with root package name */
            private List<LbSubsetSelector> f47611i;

            /* renamed from: j  reason: collision with root package name */
            private l2<LbSubsetSelector, LbSubsetSelector.b, c> f47612j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f47613k;

            /* renamed from: l  reason: collision with root package name */
            private boolean f47614l;

            /* renamed from: m  reason: collision with root package name */
            private boolean f47615m;

            /* renamed from: n  reason: collision with root package name */
            private boolean f47616n;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f47607e & 1) == 0) {
                    this.f47611i = new ArrayList(this.f47611i);
                    this.f47607e |= 1;
                }
            }

            private l2<LbSubsetSelector, LbSubsetSelector.b, c> d0() {
                if (this.f47612j == null) {
                    this.f47612j = new l2<>(this.f47611i, (this.f47607e & 1) != 0, H(), O());
                    this.f47611i = null;
                }
                return this.f47612j;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47743l.d(LbSubsetConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public LbSubsetConfig build() {
                LbSubsetConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public LbSubsetConfig I() {
                LbSubsetConfig lbSubsetConfig = new LbSubsetConfig(this, (a) null);
                lbSubsetConfig.fallbackPolicy_ = this.f47608f;
                q2<Struct, Struct.b, u2> q2Var = this.f47610h;
                if (q2Var == null) {
                    lbSubsetConfig.defaultSubset_ = this.f47609g;
                } else {
                    lbSubsetConfig.defaultSubset_ = q2Var.b();
                }
                l2<LbSubsetSelector, LbSubsetSelector.b, c> l2Var = this.f47612j;
                if (l2Var == null) {
                    if ((this.f47607e & 1) != 0) {
                        this.f47611i = Collections.unmodifiableList(this.f47611i);
                        this.f47607e &= -2;
                    }
                    lbSubsetConfig.subsetSelectors_ = this.f47611i;
                } else {
                    lbSubsetConfig.subsetSelectors_ = l2Var.e();
                }
                lbSubsetConfig.localityWeightAware_ = this.f47613k;
                lbSubsetConfig.scaleLocalityWeight_ = this.f47614l;
                lbSubsetConfig.panicModeAny_ = this.f47615m;
                lbSubsetConfig.listAsAny_ = this.f47616n;
                Q();
                return lbSubsetConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public LbSubsetConfig getDefaultInstanceForType() {
                return LbSubsetConfig.getDefaultInstance();
            }

            public b g0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f47610h;
                if (q2Var == null) {
                    Struct struct2 = this.f47609g;
                    if (struct2 != null) {
                        this.f47609g = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f47609g = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47742k;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.access$5700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LbSubsetConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.j0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LbSubsetConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.j0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LbSubsetConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LbSubsetConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof LbSubsetConfig) {
                    return j0((LbSubsetConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(LbSubsetConfig lbSubsetConfig) {
                if (lbSubsetConfig == LbSubsetConfig.getDefaultInstance()) {
                    return this;
                }
                if (lbSubsetConfig.fallbackPolicy_ != 0) {
                    l0(lbSubsetConfig.getFallbackPolicyValue());
                }
                if (lbSubsetConfig.hasDefaultSubset()) {
                    g0(lbSubsetConfig.getDefaultSubset());
                }
                if (this.f47612j == null) {
                    if (!lbSubsetConfig.subsetSelectors_.isEmpty()) {
                        if (this.f47611i.isEmpty()) {
                            this.f47611i = lbSubsetConfig.subsetSelectors_;
                            this.f47607e &= -2;
                        } else {
                            a0();
                            this.f47611i.addAll(lbSubsetConfig.subsetSelectors_);
                        }
                        R();
                    }
                } else if (!lbSubsetConfig.subsetSelectors_.isEmpty()) {
                    if (this.f47612j.k()) {
                        this.f47612j.f();
                        this.f47612j = null;
                        this.f47611i = lbSubsetConfig.subsetSelectors_;
                        this.f47607e &= -2;
                        this.f47612j = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f47612j.b(lbSubsetConfig.subsetSelectors_);
                    }
                }
                if (lbSubsetConfig.getLocalityWeightAware()) {
                    o0(lbSubsetConfig.getLocalityWeightAware());
                }
                if (lbSubsetConfig.getScaleLocalityWeight()) {
                    r0(lbSubsetConfig.getScaleLocalityWeight());
                }
                if (lbSubsetConfig.getPanicModeAny()) {
                    q0(lbSubsetConfig.getPanicModeAny());
                }
                if (lbSubsetConfig.getListAsAny()) {
                    n0(lbSubsetConfig.getListAsAny());
                }
                z(((GeneratedMessageV3) lbSubsetConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b l0(int i9) {
                this.f47608f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b n0(boolean z10) {
                this.f47616n = z10;
                R();
                return this;
            }

            public b o0(boolean z10) {
                this.f47613k = z10;
                R();
                return this;
            }

            public b q0(boolean z10) {
                this.f47615m = z10;
                R();
                return this;
            }

            public b r0(boolean z10) {
                this.f47614l = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: s0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47608f = 0;
                this.f47611i = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47608f = 0;
                this.f47611i = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* synthetic */ LbSubsetConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static LbSubsetConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47742k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LbSubsetConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LbSubsetConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<LbSubsetConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LbSubsetConfig)) {
                return super.equals(obj);
            }
            LbSubsetConfig lbSubsetConfig = (LbSubsetConfig) obj;
            if (this.fallbackPolicy_ == lbSubsetConfig.fallbackPolicy_ && hasDefaultSubset() == lbSubsetConfig.hasDefaultSubset()) {
                return (!hasDefaultSubset() || getDefaultSubset().equals(lbSubsetConfig.getDefaultSubset())) && getSubsetSelectorsList().equals(lbSubsetConfig.getSubsetSelectorsList()) && getLocalityWeightAware() == lbSubsetConfig.getLocalityWeightAware() && getScaleLocalityWeight() == lbSubsetConfig.getScaleLocalityWeight() && getPanicModeAny() == lbSubsetConfig.getPanicModeAny() && getListAsAny() == lbSubsetConfig.getListAsAny() && this.unknownFields.equals(lbSubsetConfig.unknownFields);
            }
            return false;
        }

        public Struct getDefaultSubset() {
            Struct struct = this.defaultSubset_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        public u2 getDefaultSubsetOrBuilder() {
            return getDefaultSubset();
        }

        public LbSubsetFallbackPolicy getFallbackPolicy() {
            LbSubsetFallbackPolicy valueOf = LbSubsetFallbackPolicy.valueOf(this.fallbackPolicy_);
            return valueOf == null ? LbSubsetFallbackPolicy.UNRECOGNIZED : valueOf;
        }

        public int getFallbackPolicyValue() {
            return this.fallbackPolicy_;
        }

        public boolean getListAsAny() {
            return this.listAsAny_;
        }

        public boolean getLocalityWeightAware() {
            return this.localityWeightAware_;
        }

        public boolean getPanicModeAny() {
            return this.panicModeAny_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<LbSubsetConfig> getParserForType() {
            return PARSER;
        }

        public boolean getScaleLocalityWeight() {
            return this.scaleLocalityWeight_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int l10 = this.fallbackPolicy_ != LbSubsetFallbackPolicy.NO_FALLBACK.getNumber() ? CodedOutputStream.l(1, this.fallbackPolicy_) + 0 : 0;
            if (this.defaultSubset_ != null) {
                l10 += CodedOutputStream.G(2, getDefaultSubset());
            }
            for (int i10 = 0; i10 < this.subsetSelectors_.size(); i10++) {
                l10 += CodedOutputStream.G(3, this.subsetSelectors_.get(i10));
            }
            boolean z10 = this.localityWeightAware_;
            if (z10) {
                l10 += CodedOutputStream.e(4, z10);
            }
            boolean z11 = this.scaleLocalityWeight_;
            if (z11) {
                l10 += CodedOutputStream.e(5, z11);
            }
            boolean z12 = this.panicModeAny_;
            if (z12) {
                l10 += CodedOutputStream.e(6, z12);
            }
            boolean z13 = this.listAsAny_;
            if (z13) {
                l10 += CodedOutputStream.e(7, z13);
            }
            int serializedSize = l10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public LbSubsetSelector getSubsetSelectors(int i9) {
            return this.subsetSelectors_.get(i9);
        }

        public int getSubsetSelectorsCount() {
            return this.subsetSelectors_.size();
        }

        public List<LbSubsetSelector> getSubsetSelectorsList() {
            return this.subsetSelectors_;
        }

        public c getSubsetSelectorsOrBuilder(int i9) {
            return this.subsetSelectors_.get(i9);
        }

        public List<? extends c> getSubsetSelectorsOrBuilderList() {
            return this.subsetSelectors_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasDefaultSubset() {
            return this.defaultSubset_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.fallbackPolicy_;
            if (hasDefaultSubset()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getDefaultSubset().hashCode();
            }
            if (getSubsetSelectorsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getSubsetSelectorsList().hashCode();
            }
            int d10 = (((((((((((((((((hashCode * 37) + 4) * 53) + u0.d(getLocalityWeightAware())) * 37) + 5) * 53) + u0.d(getScaleLocalityWeight())) * 37) + 6) * 53) + u0.d(getPanicModeAny())) * 37) + 7) * 53) + u0.d(getListAsAny())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = d10;
            return d10;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47743l.d(LbSubsetConfig.class, b.class);
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
            return new LbSubsetConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.fallbackPolicy_ != LbSubsetFallbackPolicy.NO_FALLBACK.getNumber()) {
                codedOutputStream.v0(1, this.fallbackPolicy_);
            }
            if (this.defaultSubset_ != null) {
                codedOutputStream.L0(2, getDefaultSubset());
            }
            for (int i9 = 0; i9 < this.subsetSelectors_.size(); i9++) {
                codedOutputStream.L0(3, this.subsetSelectors_.get(i9));
            }
            boolean z10 = this.localityWeightAware_;
            if (z10) {
                codedOutputStream.n0(4, z10);
            }
            boolean z11 = this.scaleLocalityWeight_;
            if (z11) {
                codedOutputStream.n0(5, z11);
            }
            boolean z12 = this.panicModeAny_;
            if (z12) {
                codedOutputStream.n0(6, z12);
            }
            boolean z13 = this.listAsAny_;
            if (z13) {
                codedOutputStream.n0(7, z13);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ LbSubsetConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(LbSubsetConfig lbSubsetConfig) {
            return DEFAULT_INSTANCE.toBuilder().j0(lbSubsetConfig);
        }

        public static LbSubsetConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private LbSubsetConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LbSubsetConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static LbSubsetConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public LbSubsetConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static LbSubsetConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private LbSubsetConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.fallbackPolicy_ = 0;
            this.subsetSelectors_ = Collections.emptyList();
        }

        public static LbSubsetConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static LbSubsetConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static LbSubsetConfig parseFrom(InputStream inputStream) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private LbSubsetConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 8) {
                                this.fallbackPolicy_ = pVar.u();
                            } else if (L == 18) {
                                Struct struct = this.defaultSubset_;
                                Struct.b builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                this.defaultSubset_ = struct2;
                                if (builder != null) {
                                    builder.i0(struct2);
                                    this.defaultSubset_ = builder.I();
                                }
                            } else if (L == 26) {
                                if (!(z11 & true)) {
                                    this.subsetSelectors_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.subsetSelectors_.add((LbSubsetSelector) pVar.B(LbSubsetSelector.parser(), f0Var));
                            } else if (L == 32) {
                                this.localityWeightAware_ = pVar.r();
                            } else if (L == 40) {
                                this.scaleLocalityWeight_ = pVar.r();
                            } else if (L == 48) {
                                this.panicModeAny_ = pVar.r();
                            } else if (L != 56) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.listAsAny_ = pVar.r();
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
                        this.subsetSelectors_ = Collections.unmodifiableList(this.subsetSelectors_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static LbSubsetConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static LbSubsetConfig parseFrom(p pVar) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static LbSubsetConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class LeastRequestLbConfig extends GeneratedMessageV3 implements h {
        public static final int ACTIVE_REQUEST_BIAS_FIELD_NUMBER = 2;
        public static final int CHOICE_COUNT_FIELD_NUMBER = 1;
        private static final LeastRequestLbConfig DEFAULT_INSTANCE = new LeastRequestLbConfig();
        private static final e2<LeastRequestLbConfig> PARSER = new a();
        private static final long serialVersionUID = 0;
        private RuntimeDouble activeRequestBias_;
        private UInt32Value choiceCount_;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<LeastRequestLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public LeastRequestLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new LeastRequestLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private UInt32Value f47617e;

            /* renamed from: f  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f47618f;

            /* renamed from: g  reason: collision with root package name */
            private RuntimeDouble f47619g;

            /* renamed from: h  reason: collision with root package name */
            private q2<RuntimeDouble, RuntimeDouble.b, v0> f47620h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47747p.d(LeastRequestLbConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public LeastRequestLbConfig build() {
                LeastRequestLbConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public LeastRequestLbConfig I() {
                LeastRequestLbConfig leastRequestLbConfig = new LeastRequestLbConfig(this, (a) null);
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47618f;
                if (q2Var == null) {
                    leastRequestLbConfig.choiceCount_ = this.f47617e;
                } else {
                    leastRequestLbConfig.choiceCount_ = q2Var.b();
                }
                q2<RuntimeDouble, RuntimeDouble.b, v0> q2Var2 = this.f47620h;
                if (q2Var2 == null) {
                    leastRequestLbConfig.activeRequestBias_ = this.f47619g;
                } else {
                    leastRequestLbConfig.activeRequestBias_ = q2Var2.b();
                }
                Q();
                return leastRequestLbConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public LeastRequestLbConfig getDefaultInstanceForType() {
                return LeastRequestLbConfig.getDefaultInstance();
            }

            public b d0(RuntimeDouble runtimeDouble) {
                q2<RuntimeDouble, RuntimeDouble.b, v0> q2Var = this.f47620h;
                if (q2Var == null) {
                    RuntimeDouble runtimeDouble2 = this.f47619g;
                    if (runtimeDouble2 != null) {
                        this.f47619g = RuntimeDouble.newBuilder(runtimeDouble2).g0(runtimeDouble).I();
                    } else {
                        this.f47619g = runtimeDouble;
                    }
                    R();
                } else {
                    q2Var.e(runtimeDouble);
                }
                return this;
            }

            public b e0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47618f;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f47617e;
                    if (uInt32Value2 != null) {
                        this.f47617e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f47617e = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LeastRequestLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LeastRequestLbConfig.access$6600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LeastRequestLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LeastRequestLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.i0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LeastRequestLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LeastRequestLbConfig) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.i0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.LeastRequestLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$LeastRequestLbConfig$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47746o;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof LeastRequestLbConfig) {
                    return i0((LeastRequestLbConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(LeastRequestLbConfig leastRequestLbConfig) {
                if (leastRequestLbConfig == LeastRequestLbConfig.getDefaultInstance()) {
                    return this;
                }
                if (leastRequestLbConfig.hasChoiceCount()) {
                    e0(leastRequestLbConfig.getChoiceCount());
                }
                if (leastRequestLbConfig.hasActiveRequestBias()) {
                    d0(leastRequestLbConfig.getActiveRequestBias());
                }
                z(((GeneratedMessageV3) leastRequestLbConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ LeastRequestLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static LeastRequestLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47746o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LeastRequestLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LeastRequestLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<LeastRequestLbConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LeastRequestLbConfig)) {
                return super.equals(obj);
            }
            LeastRequestLbConfig leastRequestLbConfig = (LeastRequestLbConfig) obj;
            if (hasChoiceCount() != leastRequestLbConfig.hasChoiceCount()) {
                return false;
            }
            if ((!hasChoiceCount() || getChoiceCount().equals(leastRequestLbConfig.getChoiceCount())) && hasActiveRequestBias() == leastRequestLbConfig.hasActiveRequestBias()) {
                return (!hasActiveRequestBias() || getActiveRequestBias().equals(leastRequestLbConfig.getActiveRequestBias())) && this.unknownFields.equals(leastRequestLbConfig.unknownFields);
            }
            return false;
        }

        public RuntimeDouble getActiveRequestBias() {
            RuntimeDouble runtimeDouble = this.activeRequestBias_;
            return runtimeDouble == null ? RuntimeDouble.getDefaultInstance() : runtimeDouble;
        }

        public v0 getActiveRequestBiasOrBuilder() {
            return getActiveRequestBias();
        }

        public UInt32Value getChoiceCount() {
            UInt32Value uInt32Value = this.choiceCount_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getChoiceCountOrBuilder() {
            return getChoiceCount();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<LeastRequestLbConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.choiceCount_ != null ? 0 + CodedOutputStream.G(1, getChoiceCount()) : 0;
            if (this.activeRequestBias_ != null) {
                G += CodedOutputStream.G(2, getActiveRequestBias());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasActiveRequestBias() {
            return this.activeRequestBias_ != null;
        }

        public boolean hasChoiceCount() {
            return this.choiceCount_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasChoiceCount()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getChoiceCount().hashCode();
            }
            if (hasActiveRequestBias()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getActiveRequestBias().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47747p.d(LeastRequestLbConfig.class, b.class);
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
            return new LeastRequestLbConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.choiceCount_ != null) {
                codedOutputStream.L0(1, getChoiceCount());
            }
            if (this.activeRequestBias_ != null) {
                codedOutputStream.L0(2, getActiveRequestBias());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ LeastRequestLbConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(LeastRequestLbConfig leastRequestLbConfig) {
            return DEFAULT_INSTANCE.toBuilder().i0(leastRequestLbConfig);
        }

        public static LeastRequestLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private LeastRequestLbConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LeastRequestLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static LeastRequestLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public LeastRequestLbConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static LeastRequestLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private LeastRequestLbConfig() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LeastRequestLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static LeastRequestLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private LeastRequestLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                UInt32Value uInt32Value = this.choiceCount_;
                                UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.choiceCount_ = uInt32Value2;
                                if (builder != null) {
                                    builder.g0(uInt32Value2);
                                    this.choiceCount_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                RuntimeDouble runtimeDouble = this.activeRequestBias_;
                                RuntimeDouble.b builder2 = runtimeDouble != null ? runtimeDouble.toBuilder() : null;
                                RuntimeDouble runtimeDouble2 = (RuntimeDouble) pVar.B(RuntimeDouble.parser(), f0Var);
                                this.activeRequestBias_ = runtimeDouble2;
                                if (builder2 != null) {
                                    builder2.g0(runtimeDouble2);
                                    this.activeRequestBias_ = builder2.I();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static LeastRequestLbConfig parseFrom(InputStream inputStream) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static LeastRequestLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static LeastRequestLbConfig parseFrom(p pVar) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static LeastRequestLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class MaglevLbConfig extends GeneratedMessageV3 implements i {
        private static final MaglevLbConfig DEFAULT_INSTANCE = new MaglevLbConfig();
        private static final e2<MaglevLbConfig> PARSER = new a();
        public static final int TABLE_SIZE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private UInt64Value tableSize_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<MaglevLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MaglevLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new MaglevLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements i {

            /* renamed from: e  reason: collision with root package name */
            private UInt64Value f47621e;

            /* renamed from: f  reason: collision with root package name */
            private q2<UInt64Value, UInt64Value.b, f3> f47622f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47751t.d(MaglevLbConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MaglevLbConfig build() {
                MaglevLbConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MaglevLbConfig I() {
                MaglevLbConfig maglevLbConfig = new MaglevLbConfig(this, (a) null);
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f47622f;
                if (q2Var == null) {
                    maglevLbConfig.tableSize_ = this.f47621e;
                } else {
                    maglevLbConfig.tableSize_ = q2Var.b();
                }
                Q();
                return maglevLbConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public MaglevLbConfig getDefaultInstanceForType() {
                return MaglevLbConfig.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.MaglevLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.MaglevLbConfig.access$8400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$MaglevLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.MaglevLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.g0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$MaglevLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.MaglevLbConfig) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.g0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.MaglevLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$MaglevLbConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof MaglevLbConfig) {
                    return g0((MaglevLbConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(MaglevLbConfig maglevLbConfig) {
                if (maglevLbConfig == MaglevLbConfig.getDefaultInstance()) {
                    return this;
                }
                if (maglevLbConfig.hasTableSize()) {
                    h0(maglevLbConfig.getTableSize());
                }
                z(((GeneratedMessageV3) maglevLbConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47750s;
            }

            public b h0(UInt64Value uInt64Value) {
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f47622f;
                if (q2Var == null) {
                    UInt64Value uInt64Value2 = this.f47621e;
                    if (uInt64Value2 != null) {
                        this.f47621e = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                    } else {
                        this.f47621e = uInt64Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt64Value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ MaglevLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MaglevLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47750s;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MaglevLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MaglevLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MaglevLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MaglevLbConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MaglevLbConfig)) {
                return super.equals(obj);
            }
            MaglevLbConfig maglevLbConfig = (MaglevLbConfig) obj;
            if (hasTableSize() != maglevLbConfig.hasTableSize()) {
                return false;
            }
            return (!hasTableSize() || getTableSize().equals(maglevLbConfig.getTableSize())) && this.unknownFields.equals(maglevLbConfig.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MaglevLbConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.tableSize_ != null ? 0 + CodedOutputStream.G(1, getTableSize()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        public UInt64Value getTableSize() {
            UInt64Value uInt64Value = this.tableSize_;
            return uInt64Value == null ? UInt64Value.getDefaultInstance() : uInt64Value;
        }

        public f3 getTableSizeOrBuilder() {
            return getTableSize();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasTableSize() {
            return this.tableSize_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasTableSize()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getTableSize().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47751t.d(MaglevLbConfig.class, b.class);
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
            return new MaglevLbConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.tableSize_ != null) {
                codedOutputStream.L0(1, getTableSize());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MaglevLbConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MaglevLbConfig maglevLbConfig) {
            return DEFAULT_INSTANCE.toBuilder().g0(maglevLbConfig);
        }

        public static MaglevLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MaglevLbConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MaglevLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MaglevLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MaglevLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MaglevLbConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static MaglevLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MaglevLbConfig() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MaglevLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MaglevLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private MaglevLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    UInt64Value uInt64Value = this.tableSize_;
                                    UInt64Value.b builder = uInt64Value != null ? uInt64Value.toBuilder() : null;
                                    UInt64Value uInt64Value2 = (UInt64Value) pVar.B(UInt64Value.parser(), f0Var);
                                    this.tableSize_ = uInt64Value2;
                                    if (builder != null) {
                                        builder.g0(uInt64Value2);
                                        this.tableSize_ = builder.I();
                                    }
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static MaglevLbConfig parseFrom(InputStream inputStream) throws IOException {
            return (MaglevLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static MaglevLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MaglevLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MaglevLbConfig parseFrom(p pVar) throws IOException {
            return (MaglevLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MaglevLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (MaglevLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class OriginalDstLbConfig extends GeneratedMessageV3 implements j {
        private static final OriginalDstLbConfig DEFAULT_INSTANCE = new OriginalDstLbConfig();
        private static final e2<OriginalDstLbConfig> PARSER = new a();
        public static final int USE_HTTP_HEADER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private boolean useHttpHeader_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<OriginalDstLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public OriginalDstLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new OriginalDstLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements j {

            /* renamed from: e  reason: collision with root package name */
            private boolean f47623e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47753v.d(OriginalDstLbConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public OriginalDstLbConfig build() {
                OriginalDstLbConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public OriginalDstLbConfig I() {
                OriginalDstLbConfig originalDstLbConfig = new OriginalDstLbConfig(this, (a) null);
                originalDstLbConfig.useHttpHeader_ = this.f47623e;
                Q();
                return originalDstLbConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public OriginalDstLbConfig getDefaultInstanceForType() {
                return OriginalDstLbConfig.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.OriginalDstLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.OriginalDstLbConfig.access$9200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$OriginalDstLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.OriginalDstLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.g0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$OriginalDstLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.OriginalDstLbConfig) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.g0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.OriginalDstLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$OriginalDstLbConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof OriginalDstLbConfig) {
                    return g0((OriginalDstLbConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(OriginalDstLbConfig originalDstLbConfig) {
                if (originalDstLbConfig == OriginalDstLbConfig.getDefaultInstance()) {
                    return this;
                }
                if (originalDstLbConfig.getUseHttpHeader()) {
                    k0(originalDstLbConfig.getUseHttpHeader());
                }
                z(((GeneratedMessageV3) originalDstLbConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47752u;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: i0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            public b k0(boolean z10) {
                this.f47623e = z10;
                R();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ OriginalDstLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static OriginalDstLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47752u;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static OriginalDstLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static OriginalDstLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<OriginalDstLbConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OriginalDstLbConfig)) {
                return super.equals(obj);
            }
            OriginalDstLbConfig originalDstLbConfig = (OriginalDstLbConfig) obj;
            return getUseHttpHeader() == originalDstLbConfig.getUseHttpHeader() && this.unknownFields.equals(originalDstLbConfig.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<OriginalDstLbConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            boolean z10 = this.useHttpHeader_;
            int e10 = (z10 ? 0 + CodedOutputStream.e(1, z10) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean getUseHttpHeader() {
            return this.useHttpHeader_;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getUseHttpHeader())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47753v.d(OriginalDstLbConfig.class, b.class);
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
            return new OriginalDstLbConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            boolean z10 = this.useHttpHeader_;
            if (z10) {
                codedOutputStream.n0(1, z10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ OriginalDstLbConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(OriginalDstLbConfig originalDstLbConfig) {
            return DEFAULT_INSTANCE.toBuilder().g0(originalDstLbConfig);
        }

        public static OriginalDstLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private OriginalDstLbConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static OriginalDstLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static OriginalDstLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public OriginalDstLbConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static OriginalDstLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private OriginalDstLbConfig() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static OriginalDstLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static OriginalDstLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private OriginalDstLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 8) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.useHttpHeader_ = pVar.r();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static OriginalDstLbConfig parseFrom(InputStream inputStream) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static OriginalDstLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static OriginalDstLbConfig parseFrom(p pVar) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static OriginalDstLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class PreconnectPolicy extends GeneratedMessageV3 implements k {
        private static final PreconnectPolicy DEFAULT_INSTANCE = new PreconnectPolicy();
        private static final e2<PreconnectPolicy> PARSER = new a();
        public static final int PER_UPSTREAM_PRECONNECT_RATIO_FIELD_NUMBER = 1;
        public static final int PREDICTIVE_PRECONNECT_RATIO_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private DoubleValue perUpstreamPreconnectRatio_;
        private DoubleValue predictivePreconnectRatio_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<PreconnectPolicy> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public PreconnectPolicy m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new PreconnectPolicy(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements k {

            /* renamed from: e  reason: collision with root package name */
            private DoubleValue f47624e;

            /* renamed from: f  reason: collision with root package name */
            private q2<DoubleValue, DoubleValue.b, u> f47625f;

            /* renamed from: g  reason: collision with root package name */
            private DoubleValue f47626g;

            /* renamed from: h  reason: collision with root package name */
            private q2<DoubleValue, DoubleValue.b, u> f47627h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.H.d(PreconnectPolicy.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public PreconnectPolicy build() {
                PreconnectPolicy I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public PreconnectPolicy I() {
                PreconnectPolicy preconnectPolicy = new PreconnectPolicy(this, (a) null);
                q2<DoubleValue, DoubleValue.b, u> q2Var = this.f47625f;
                if (q2Var == null) {
                    preconnectPolicy.perUpstreamPreconnectRatio_ = this.f47624e;
                } else {
                    preconnectPolicy.perUpstreamPreconnectRatio_ = q2Var.b();
                }
                q2<DoubleValue, DoubleValue.b, u> q2Var2 = this.f47627h;
                if (q2Var2 == null) {
                    preconnectPolicy.predictivePreconnectRatio_ = this.f47626g;
                } else {
                    preconnectPolicy.predictivePreconnectRatio_ = q2Var2.b();
                }
                Q();
                return preconnectPolicy;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public PreconnectPolicy getDefaultInstanceForType() {
                return PreconnectPolicy.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.PreconnectPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.PreconnectPolicy.access$15000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$PreconnectPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.PreconnectPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.g0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$PreconnectPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.PreconnectPolicy) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.g0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.PreconnectPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$PreconnectPolicy$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof PreconnectPolicy) {
                    return g0((PreconnectPolicy) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(PreconnectPolicy preconnectPolicy) {
                if (preconnectPolicy == PreconnectPolicy.getDefaultInstance()) {
                    return this;
                }
                if (preconnectPolicy.hasPerUpstreamPreconnectRatio()) {
                    h0(preconnectPolicy.getPerUpstreamPreconnectRatio());
                }
                if (preconnectPolicy.hasPredictivePreconnectRatio()) {
                    i0(preconnectPolicy.getPredictivePreconnectRatio());
                }
                z(((GeneratedMessageV3) preconnectPolicy).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.G;
            }

            public b h0(DoubleValue doubleValue) {
                q2<DoubleValue, DoubleValue.b, u> q2Var = this.f47625f;
                if (q2Var == null) {
                    DoubleValue doubleValue2 = this.f47624e;
                    if (doubleValue2 != null) {
                        this.f47624e = DoubleValue.newBuilder(doubleValue2).e0(doubleValue).I();
                    } else {
                        this.f47624e = doubleValue;
                    }
                    R();
                } else {
                    q2Var.e(doubleValue);
                }
                return this;
            }

            public b i0(DoubleValue doubleValue) {
                q2<DoubleValue, DoubleValue.b, u> q2Var = this.f47627h;
                if (q2Var == null) {
                    DoubleValue doubleValue2 = this.f47626g;
                    if (doubleValue2 != null) {
                        this.f47626g = DoubleValue.newBuilder(doubleValue2).e0(doubleValue).I();
                    } else {
                        this.f47626g = doubleValue;
                    }
                    R();
                } else {
                    q2Var.e(doubleValue);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ PreconnectPolicy(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static PreconnectPolicy getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.G;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PreconnectPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PreconnectPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PreconnectPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<PreconnectPolicy> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PreconnectPolicy)) {
                return super.equals(obj);
            }
            PreconnectPolicy preconnectPolicy = (PreconnectPolicy) obj;
            if (hasPerUpstreamPreconnectRatio() != preconnectPolicy.hasPerUpstreamPreconnectRatio()) {
                return false;
            }
            if ((!hasPerUpstreamPreconnectRatio() || getPerUpstreamPreconnectRatio().equals(preconnectPolicy.getPerUpstreamPreconnectRatio())) && hasPredictivePreconnectRatio() == preconnectPolicy.hasPredictivePreconnectRatio()) {
                return (!hasPredictivePreconnectRatio() || getPredictivePreconnectRatio().equals(preconnectPolicy.getPredictivePreconnectRatio())) && this.unknownFields.equals(preconnectPolicy.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<PreconnectPolicy> getParserForType() {
            return PARSER;
        }

        public DoubleValue getPerUpstreamPreconnectRatio() {
            DoubleValue doubleValue = this.perUpstreamPreconnectRatio_;
            return doubleValue == null ? DoubleValue.getDefaultInstance() : doubleValue;
        }

        public u getPerUpstreamPreconnectRatioOrBuilder() {
            return getPerUpstreamPreconnectRatio();
        }

        public DoubleValue getPredictivePreconnectRatio() {
            DoubleValue doubleValue = this.predictivePreconnectRatio_;
            return doubleValue == null ? DoubleValue.getDefaultInstance() : doubleValue;
        }

        public u getPredictivePreconnectRatioOrBuilder() {
            return getPredictivePreconnectRatio();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.perUpstreamPreconnectRatio_ != null ? 0 + CodedOutputStream.G(1, getPerUpstreamPreconnectRatio()) : 0;
            if (this.predictivePreconnectRatio_ != null) {
                G += CodedOutputStream.G(2, getPredictivePreconnectRatio());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasPerUpstreamPreconnectRatio() {
            return this.perUpstreamPreconnectRatio_ != null;
        }

        public boolean hasPredictivePreconnectRatio() {
            return this.predictivePreconnectRatio_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasPerUpstreamPreconnectRatio()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getPerUpstreamPreconnectRatio().hashCode();
            }
            if (hasPredictivePreconnectRatio()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getPredictivePreconnectRatio().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.H.d(PreconnectPolicy.class, b.class);
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
            return new PreconnectPolicy();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.perUpstreamPreconnectRatio_ != null) {
                codedOutputStream.L0(1, getPerUpstreamPreconnectRatio());
            }
            if (this.predictivePreconnectRatio_ != null) {
                codedOutputStream.L0(2, getPredictivePreconnectRatio());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ PreconnectPolicy(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(PreconnectPolicy preconnectPolicy) {
            return DEFAULT_INSTANCE.toBuilder().g0(preconnectPolicy);
        }

        public static PreconnectPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private PreconnectPolicy(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PreconnectPolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (PreconnectPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static PreconnectPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public PreconnectPolicy getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static PreconnectPolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private PreconnectPolicy() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PreconnectPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static PreconnectPolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private PreconnectPolicy(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            DoubleValue.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                DoubleValue doubleValue = this.perUpstreamPreconnectRatio_;
                                builder = doubleValue != null ? doubleValue.toBuilder() : null;
                                DoubleValue doubleValue2 = (DoubleValue) pVar.B(DoubleValue.parser(), f0Var);
                                this.perUpstreamPreconnectRatio_ = doubleValue2;
                                if (builder != null) {
                                    builder.e0(doubleValue2);
                                    this.perUpstreamPreconnectRatio_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                DoubleValue doubleValue3 = this.predictivePreconnectRatio_;
                                builder = doubleValue3 != null ? doubleValue3.toBuilder() : null;
                                DoubleValue doubleValue4 = (DoubleValue) pVar.B(DoubleValue.parser(), f0Var);
                                this.predictivePreconnectRatio_ = doubleValue4;
                                if (builder != null) {
                                    builder.e0(doubleValue4);
                                    this.predictivePreconnectRatio_ = builder.I();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static PreconnectPolicy parseFrom(InputStream inputStream) throws IOException {
            return (PreconnectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static PreconnectPolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (PreconnectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static PreconnectPolicy parseFrom(p pVar) throws IOException {
            return (PreconnectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static PreconnectPolicy parseFrom(p pVar, f0 f0Var) throws IOException {
            return (PreconnectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class RefreshRate extends GeneratedMessageV3 implements l {
        public static final int BASE_INTERVAL_FIELD_NUMBER = 1;
        public static final int MAX_INTERVAL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Duration baseInterval_;
        private Duration maxInterval_;
        private byte memoizedIsInitialized;
        private static final RefreshRate DEFAULT_INSTANCE = new RefreshRate();
        private static final e2<RefreshRate> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RefreshRate> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RefreshRate m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RefreshRate(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements l {

            /* renamed from: e  reason: collision with root package name */
            private Duration f47628e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f47629f;

            /* renamed from: g  reason: collision with root package name */
            private Duration f47630g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f47631h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.F.d(RefreshRate.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RefreshRate build() {
                RefreshRate I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RefreshRate I() {
                RefreshRate refreshRate = new RefreshRate(this, (a) null);
                q2<Duration, Duration.b, v> q2Var = this.f47629f;
                if (q2Var == null) {
                    refreshRate.baseInterval_ = this.f47628e;
                } else {
                    refreshRate.baseInterval_ = q2Var.b();
                }
                q2<Duration, Duration.b, v> q2Var2 = this.f47631h;
                if (q2Var2 == null) {
                    refreshRate.maxInterval_ = this.f47630g;
                } else {
                    refreshRate.maxInterval_ = q2Var2.b();
                }
                Q();
                return refreshRate;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RefreshRate getDefaultInstanceForType() {
                return RefreshRate.getDefaultInstance();
            }

            public b d0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f47629f;
                if (q2Var == null) {
                    Duration duration2 = this.f47628e;
                    if (duration2 != null) {
                        this.f47628e = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f47628e = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RefreshRate.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RefreshRate.access$14100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$RefreshRate r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RefreshRate) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.h0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$RefreshRate r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RefreshRate) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.h0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RefreshRate.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$RefreshRate$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RefreshRate) {
                    return h0((RefreshRate) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.E;
            }

            public b h0(RefreshRate refreshRate) {
                if (refreshRate == RefreshRate.getDefaultInstance()) {
                    return this;
                }
                if (refreshRate.hasBaseInterval()) {
                    d0(refreshRate.getBaseInterval());
                }
                if (refreshRate.hasMaxInterval()) {
                    i0(refreshRate.getMaxInterval());
                }
                z(((GeneratedMessageV3) refreshRate).unknownFields);
                R();
                return this;
            }

            public b i0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f47631h;
                if (q2Var == null) {
                    Duration duration2 = this.f47630g;
                    if (duration2 != null) {
                        this.f47630g = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f47630g = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ RefreshRate(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RefreshRate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.E;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RefreshRate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RefreshRate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RefreshRate> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RefreshRate)) {
                return super.equals(obj);
            }
            RefreshRate refreshRate = (RefreshRate) obj;
            if (hasBaseInterval() != refreshRate.hasBaseInterval()) {
                return false;
            }
            if ((!hasBaseInterval() || getBaseInterval().equals(refreshRate.getBaseInterval())) && hasMaxInterval() == refreshRate.hasMaxInterval()) {
                return (!hasMaxInterval() || getMaxInterval().equals(refreshRate.getMaxInterval())) && this.unknownFields.equals(refreshRate.unknownFields);
            }
            return false;
        }

        public Duration getBaseInterval() {
            Duration duration = this.baseInterval_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getBaseIntervalOrBuilder() {
            return getBaseInterval();
        }

        public Duration getMaxInterval() {
            Duration duration = this.maxInterval_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getMaxIntervalOrBuilder() {
            return getMaxInterval();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<RefreshRate> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.baseInterval_ != null ? 0 + CodedOutputStream.G(1, getBaseInterval()) : 0;
            if (this.maxInterval_ != null) {
                G += CodedOutputStream.G(2, getMaxInterval());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasBaseInterval() {
            return this.baseInterval_ != null;
        }

        public boolean hasMaxInterval() {
            return this.maxInterval_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasBaseInterval()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getBaseInterval().hashCode();
            }
            if (hasMaxInterval()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getMaxInterval().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.F.d(RefreshRate.class, b.class);
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
            return new RefreshRate();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.baseInterval_ != null) {
                codedOutputStream.L0(1, getBaseInterval());
            }
            if (this.maxInterval_ != null) {
                codedOutputStream.L0(2, getMaxInterval());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RefreshRate(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RefreshRate refreshRate) {
            return DEFAULT_INSTANCE.toBuilder().h0(refreshRate);
        }

        public static RefreshRate parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RefreshRate(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RefreshRate parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RefreshRate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RefreshRate getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static RefreshRate parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RefreshRate() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RefreshRate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RefreshRate parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private RefreshRate(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Duration.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                Duration duration = this.baseInterval_;
                                builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.baseInterval_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.baseInterval_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Duration duration3 = this.maxInterval_;
                                builder = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.maxInterval_ = duration4;
                                if (builder != null) {
                                    builder.e0(duration4);
                                    this.maxInterval_ = builder.I();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static RefreshRate parseFrom(InputStream inputStream) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RefreshRate parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RefreshRate parseFrom(p pVar) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RefreshRate parseFrom(p pVar, f0 f0Var) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class RingHashLbConfig extends GeneratedMessageV3 implements m {
        public static final int HASH_FUNCTION_FIELD_NUMBER = 3;
        public static final int MAXIMUM_RING_SIZE_FIELD_NUMBER = 4;
        public static final int MINIMUM_RING_SIZE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int hashFunction_;
        private UInt64Value maximumRingSize_;
        private byte memoizedIsInitialized;
        private UInt64Value minimumRingSize_;
        private static final RingHashLbConfig DEFAULT_INSTANCE = new RingHashLbConfig();
        private static final e2<RingHashLbConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum HashFunction implements h2 {
            XX_HASH(0),
            MURMUR_HASH_2(1),
            UNRECOGNIZED(-1);
            
            public static final int MURMUR_HASH_2_VALUE = 1;
            public static final int XX_HASH_VALUE = 0;
            private final int value;
            private static final u0.d<HashFunction> internalValueMap = new a();
            private static final HashFunction[] VALUES = values();

            /* loaded from: classes6.dex */
            class a implements u0.d<HashFunction> {
                a() {
                }

                @Override // com.google.protobuf.u0.d
                /* renamed from: b */
                public HashFunction a(int i9) {
                    return HashFunction.forNumber(i9);
                }
            }

            HashFunction(int i9) {
                this.value = i9;
            }

            public static HashFunction forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        return null;
                    }
                    return MURMUR_HASH_2;
                }
                return XX_HASH;
            }

            public static final Descriptors.d getDescriptor() {
                return RingHashLbConfig.getDescriptor().k().get(0);
            }

            public static u0.d<HashFunction> internalGetValueMap() {
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
            public static HashFunction valueOf(int i9) {
                return forNumber(i9);
            }

            public static HashFunction valueOf(Descriptors.e eVar) {
                if (eVar.h() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RingHashLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RingHashLbConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RingHashLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements m {

            /* renamed from: e  reason: collision with root package name */
            private UInt64Value f47632e;

            /* renamed from: f  reason: collision with root package name */
            private q2<UInt64Value, UInt64Value.b, f3> f47633f;

            /* renamed from: g  reason: collision with root package name */
            private int f47634g;

            /* renamed from: h  reason: collision with root package name */
            private UInt64Value f47635h;

            /* renamed from: i  reason: collision with root package name */
            private q2<UInt64Value, UInt64Value.b, f3> f47636i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47749r.d(RingHashLbConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RingHashLbConfig build() {
                RingHashLbConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RingHashLbConfig I() {
                RingHashLbConfig ringHashLbConfig = new RingHashLbConfig(this, (a) null);
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f47633f;
                if (q2Var == null) {
                    ringHashLbConfig.minimumRingSize_ = this.f47632e;
                } else {
                    ringHashLbConfig.minimumRingSize_ = q2Var.b();
                }
                ringHashLbConfig.hashFunction_ = this.f47634g;
                q2<UInt64Value, UInt64Value.b, f3> q2Var2 = this.f47636i;
                if (q2Var2 == null) {
                    ringHashLbConfig.maximumRingSize_ = this.f47635h;
                } else {
                    ringHashLbConfig.maximumRingSize_ = q2Var2.b();
                }
                Q();
                return ringHashLbConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RingHashLbConfig getDefaultInstanceForType() {
                return RingHashLbConfig.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RingHashLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RingHashLbConfig.access$7600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$RingHashLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RingHashLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.g0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$RingHashLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RingHashLbConfig) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.g0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.RingHashLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$RingHashLbConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RingHashLbConfig) {
                    return g0((RingHashLbConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(RingHashLbConfig ringHashLbConfig) {
                if (ringHashLbConfig == RingHashLbConfig.getDefaultInstance()) {
                    return this;
                }
                if (ringHashLbConfig.hasMinimumRingSize()) {
                    i0(ringHashLbConfig.getMinimumRingSize());
                }
                if (ringHashLbConfig.hashFunction_ != 0) {
                    l0(ringHashLbConfig.getHashFunctionValue());
                }
                if (ringHashLbConfig.hasMaximumRingSize()) {
                    h0(ringHashLbConfig.getMaximumRingSize());
                }
                z(((GeneratedMessageV3) ringHashLbConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47748q;
            }

            public b h0(UInt64Value uInt64Value) {
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f47636i;
                if (q2Var == null) {
                    UInt64Value uInt64Value2 = this.f47635h;
                    if (uInt64Value2 != null) {
                        this.f47635h = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                    } else {
                        this.f47635h = uInt64Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt64Value);
                }
                return this;
            }

            public b i0(UInt64Value uInt64Value) {
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f47633f;
                if (q2Var == null) {
                    UInt64Value uInt64Value2 = this.f47632e;
                    if (uInt64Value2 != null) {
                        this.f47632e = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                    } else {
                        this.f47632e = uInt64Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt64Value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b l0(int i9) {
                this.f47634g = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47634g = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47634g = 0;
                b0();
            }
        }

        /* synthetic */ RingHashLbConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RingHashLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47748q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RingHashLbConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RingHashLbConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RingHashLbConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RingHashLbConfig)) {
                return super.equals(obj);
            }
            RingHashLbConfig ringHashLbConfig = (RingHashLbConfig) obj;
            if (hasMinimumRingSize() != ringHashLbConfig.hasMinimumRingSize()) {
                return false;
            }
            if ((!hasMinimumRingSize() || getMinimumRingSize().equals(ringHashLbConfig.getMinimumRingSize())) && this.hashFunction_ == ringHashLbConfig.hashFunction_ && hasMaximumRingSize() == ringHashLbConfig.hasMaximumRingSize()) {
                return (!hasMaximumRingSize() || getMaximumRingSize().equals(ringHashLbConfig.getMaximumRingSize())) && this.unknownFields.equals(ringHashLbConfig.unknownFields);
            }
            return false;
        }

        public HashFunction getHashFunction() {
            HashFunction valueOf = HashFunction.valueOf(this.hashFunction_);
            return valueOf == null ? HashFunction.UNRECOGNIZED : valueOf;
        }

        public int getHashFunctionValue() {
            return this.hashFunction_;
        }

        public UInt64Value getMaximumRingSize() {
            UInt64Value uInt64Value = this.maximumRingSize_;
            return uInt64Value == null ? UInt64Value.getDefaultInstance() : uInt64Value;
        }

        public f3 getMaximumRingSizeOrBuilder() {
            return getMaximumRingSize();
        }

        public UInt64Value getMinimumRingSize() {
            UInt64Value uInt64Value = this.minimumRingSize_;
            return uInt64Value == null ? UInt64Value.getDefaultInstance() : uInt64Value;
        }

        public f3 getMinimumRingSizeOrBuilder() {
            return getMinimumRingSize();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<RingHashLbConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.minimumRingSize_ != null ? 0 + CodedOutputStream.G(1, getMinimumRingSize()) : 0;
            if (this.hashFunction_ != HashFunction.XX_HASH.getNumber()) {
                G += CodedOutputStream.l(3, this.hashFunction_);
            }
            if (this.maximumRingSize_ != null) {
                G += CodedOutputStream.G(4, getMaximumRingSize());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasMaximumRingSize() {
            return this.maximumRingSize_ != null;
        }

        public boolean hasMinimumRingSize() {
            return this.minimumRingSize_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasMinimumRingSize()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getMinimumRingSize().hashCode();
            }
            int i10 = (((hashCode * 37) + 3) * 53) + this.hashFunction_;
            if (hasMaximumRingSize()) {
                i10 = (((i10 * 37) + 4) * 53) + getMaximumRingSize().hashCode();
            }
            int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47749r.d(RingHashLbConfig.class, b.class);
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
            return new RingHashLbConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.minimumRingSize_ != null) {
                codedOutputStream.L0(1, getMinimumRingSize());
            }
            if (this.hashFunction_ != HashFunction.XX_HASH.getNumber()) {
                codedOutputStream.v0(3, this.hashFunction_);
            }
            if (this.maximumRingSize_ != null) {
                codedOutputStream.L0(4, getMaximumRingSize());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RingHashLbConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RingHashLbConfig ringHashLbConfig) {
            return DEFAULT_INSTANCE.toBuilder().g0(ringHashLbConfig);
        }

        public static RingHashLbConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RingHashLbConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RingHashLbConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RingHashLbConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RingHashLbConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static RingHashLbConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RingHashLbConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.hashFunction_ = 0;
        }

        public static RingHashLbConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RingHashLbConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static RingHashLbConfig parseFrom(InputStream inputStream) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private RingHashLbConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            UInt64Value.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    UInt64Value uInt64Value = this.minimumRingSize_;
                                    builder = uInt64Value != null ? uInt64Value.toBuilder() : null;
                                    UInt64Value uInt64Value2 = (UInt64Value) pVar.B(UInt64Value.parser(), f0Var);
                                    this.minimumRingSize_ = uInt64Value2;
                                    if (builder != null) {
                                        builder.g0(uInt64Value2);
                                        this.minimumRingSize_ = builder.I();
                                    }
                                } else if (L == 24) {
                                    this.hashFunction_ = pVar.u();
                                } else if (L != 34) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    UInt64Value uInt64Value3 = this.maximumRingSize_;
                                    builder = uInt64Value3 != null ? uInt64Value3.toBuilder() : null;
                                    UInt64Value uInt64Value4 = (UInt64Value) pVar.B(UInt64Value.parser(), f0Var);
                                    this.maximumRingSize_ = uInt64Value4;
                                    if (builder != null) {
                                        builder.g0(uInt64Value4);
                                        this.maximumRingSize_ = builder.I();
                                    }
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static RingHashLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RingHashLbConfig parseFrom(p pVar) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RingHashLbConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class TransportSocketMatch extends GeneratedMessageV3 implements n {
        public static final int MATCH_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TRANSPORT_SOCKET_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private Struct match_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private TransportSocket transportSocket_;
        private static final TransportSocketMatch DEFAULT_INSTANCE = new TransportSocketMatch();
        private static final e2<TransportSocketMatch> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<TransportSocketMatch> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TransportSocketMatch m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new TransportSocketMatch(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements n {

            /* renamed from: e  reason: collision with root package name */
            private Object f47637e;

            /* renamed from: f  reason: collision with root package name */
            private Struct f47638f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f47639g;

            /* renamed from: h  reason: collision with root package name */
            private TransportSocket f47640h;

            /* renamed from: i  reason: collision with root package name */
            private q2<TransportSocket, TransportSocket.c, h1> f47641i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47737f.d(TransportSocketMatch.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TransportSocketMatch build() {
                TransportSocketMatch I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TransportSocketMatch I() {
                TransportSocketMatch transportSocketMatch = new TransportSocketMatch(this, (a) null);
                transportSocketMatch.name_ = this.f47637e;
                q2<Struct, Struct.b, u2> q2Var = this.f47639g;
                if (q2Var == null) {
                    transportSocketMatch.match_ = this.f47638f;
                } else {
                    transportSocketMatch.match_ = q2Var.b();
                }
                q2<TransportSocket, TransportSocket.c, h1> q2Var2 = this.f47641i;
                if (q2Var2 == null) {
                    transportSocketMatch.transportSocket_ = this.f47640h;
                } else {
                    transportSocketMatch.transportSocket_ = q2Var2.b();
                }
                Q();
                return transportSocketMatch;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public TransportSocketMatch getDefaultInstanceForType() {
                return TransportSocketMatch.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.TransportSocketMatch.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.TransportSocketMatch.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$TransportSocketMatch r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.TransportSocketMatch) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.g0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$TransportSocketMatch r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.TransportSocketMatch) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.g0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.TransportSocketMatch.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$TransportSocketMatch$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof TransportSocketMatch) {
                    return g0((TransportSocketMatch) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(TransportSocketMatch transportSocketMatch) {
                if (transportSocketMatch == TransportSocketMatch.getDefaultInstance()) {
                    return this;
                }
                if (!transportSocketMatch.getName().isEmpty()) {
                    this.f47637e = transportSocketMatch.name_;
                    R();
                }
                if (transportSocketMatch.hasMatch()) {
                    h0(transportSocketMatch.getMatch());
                }
                if (transportSocketMatch.hasTransportSocket()) {
                    i0(transportSocketMatch.getTransportSocket());
                }
                z(((GeneratedMessageV3) transportSocketMatch).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47736e;
            }

            public b h0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f47639g;
                if (q2Var == null) {
                    Struct struct2 = this.f47638f;
                    if (struct2 != null) {
                        this.f47638f = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f47638f = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
                return this;
            }

            public b i0(TransportSocket transportSocket) {
                q2<TransportSocket, TransportSocket.c, h1> q2Var = this.f47641i;
                if (q2Var == null) {
                    TransportSocket transportSocket2 = this.f47640h;
                    if (transportSocket2 != null) {
                        this.f47640h = TransportSocket.newBuilder(transportSocket2).g0(transportSocket).I();
                    } else {
                        this.f47640h = transportSocket;
                    }
                    R();
                } else {
                    q2Var.e(transportSocket);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47637e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47637e = "";
                b0();
            }
        }

        /* synthetic */ TransportSocketMatch(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TransportSocketMatch getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47736e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TransportSocketMatch parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TransportSocketMatch parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TransportSocketMatch> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TransportSocketMatch)) {
                return super.equals(obj);
            }
            TransportSocketMatch transportSocketMatch = (TransportSocketMatch) obj;
            if (getName().equals(transportSocketMatch.getName()) && hasMatch() == transportSocketMatch.hasMatch()) {
                if ((!hasMatch() || getMatch().equals(transportSocketMatch.getMatch())) && hasTransportSocket() == transportSocketMatch.hasTransportSocket()) {
                    return (!hasTransportSocket() || getTransportSocket().equals(transportSocketMatch.getTransportSocket())) && this.unknownFields.equals(transportSocketMatch.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Struct getMatch() {
            Struct struct = this.match_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        public u2 getMatchOrBuilder() {
            return getMatch();
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
        public e2<TransportSocketMatch> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.match_ != null) {
                computeStringSize += CodedOutputStream.G(2, getMatch());
            }
            if (this.transportSocket_ != null) {
                computeStringSize += CodedOutputStream.G(3, getTransportSocket());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public TransportSocket getTransportSocket() {
            TransportSocket transportSocket = this.transportSocket_;
            return transportSocket == null ? TransportSocket.getDefaultInstance() : transportSocket;
        }

        public h1 getTransportSocketOrBuilder() {
            return getTransportSocket();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasMatch() {
            return this.match_ != null;
        }

        public boolean hasTransportSocket() {
            return this.transportSocket_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasMatch()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getMatch().hashCode();
            }
            if (hasTransportSocket()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getTransportSocket().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47737f.d(TransportSocketMatch.class, b.class);
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
            return new TransportSocketMatch();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.match_ != null) {
                codedOutputStream.L0(2, getMatch());
            }
            if (this.transportSocket_ != null) {
                codedOutputStream.L0(3, getTransportSocket());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TransportSocketMatch(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(TransportSocketMatch transportSocketMatch) {
            return DEFAULT_INSTANCE.toBuilder().g0(transportSocketMatch);
        }

        public static TransportSocketMatch parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private TransportSocketMatch(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TransportSocketMatch parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TransportSocketMatch parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TransportSocketMatch getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static TransportSocketMatch parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private TransportSocketMatch() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static TransportSocketMatch parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static TransportSocketMatch parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static TransportSocketMatch parseFrom(InputStream inputStream) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TransportSocketMatch(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (L == 18) {
                                        Struct struct = this.match_;
                                        Struct.b builder = struct != null ? struct.toBuilder() : null;
                                        Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                        this.match_ = struct2;
                                        if (builder != null) {
                                            builder.i0(struct2);
                                            this.match_ = builder.I();
                                        }
                                    } else if (L != 26) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        TransportSocket transportSocket = this.transportSocket_;
                                        TransportSocket.c builder2 = transportSocket != null ? transportSocket.toBuilder() : null;
                                        TransportSocket transportSocket2 = (TransportSocket) pVar.B(TransportSocket.parser(), f0Var);
                                        this.transportSocket_ = transportSocket2;
                                        if (builder2 != null) {
                                            builder2.g0(transportSocket2);
                                            this.transportSocket_ = builder2.I();
                                        }
                                    }
                                } else {
                                    this.name_ = pVar.K();
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static TransportSocketMatch parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static TransportSocketMatch parseFrom(p pVar) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TransportSocketMatch parseFrom(p pVar, f0 f0Var) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Cluster> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Cluster m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Cluster(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47642a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f47643b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f47644c;

        static {
            int[] iArr = new int[LbConfigCase.values().length];
            f47644c = iArr;
            try {
                iArr[LbConfigCase.RING_HASH_LB_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47644c[LbConfigCase.MAGLEV_LB_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47644c[LbConfigCase.ORIGINAL_DST_LB_CONFIG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47644c[LbConfigCase.LEAST_REQUEST_LB_CONFIG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47644c[LbConfigCase.LBCONFIG_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ClusterDiscoveryTypeCase.values().length];
            f47643b = iArr2;
            try {
                iArr2[ClusterDiscoveryTypeCase.TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f47643b[ClusterDiscoveryTypeCase.CLUSTER_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f47643b[ClusterDiscoveryTypeCase.CLUSTERDISCOVERYTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[CommonLbConfig.LocalityConfigSpecifierCase.values().length];
            f47642a = iArr3;
            try {
                iArr3[CommonLbConfig.LocalityConfigSpecifierCase.ZONE_AWARE_LB_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f47642a[CommonLbConfig.LocalityConfigSpecifierCase.LOCALITY_WEIGHTED_LB_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f47642a[CommonLbConfig.LocalityConfigSpecifierCase.LOCALITYCONFIGSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.c {
        private q2<UInt32Value, UInt32Value.b, e3> A;
        private CircuitBreakers B;
        private q2<DnsResolutionConfig, DnsResolutionConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.o> B3;
        private q2<CircuitBreakers, CircuitBreakers.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.b> C;
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> C4;
        private UpstreamHttpProtocolOptions D;
        private BoolValue D4;
        private q2<UpstreamHttpProtocolOptions, UpstreamHttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l1> E;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> E4;
        private HttpProtocolOptions F;
        private OutlierDetection F4;
        private q2<HttpProtocolOptions, HttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0> G;
        private q2<OutlierDetection, OutlierDetection.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.h> G4;
        private Http1ProtocolOptions H;
        private Duration H4;
        private q2<Http1ProtocolOptions, Http1ProtocolOptions.c, c0> I;
        private q2<Duration, Duration.b, v> I4;
        private Http2ProtocolOptions J;
        private BindConfig J4;
        private q2<Http2ProtocolOptions, Http2ProtocolOptions.b, d0> K;
        private q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h> K4;
        private g1<String, Any> L;
        private LbSubsetConfig L4;
        private Duration M;
        private q2<LbSubsetConfig, LbSubsetConfig.b, g> M4;
        private q2<Duration, Duration.b, v> N;
        private q2<RingHashLbConfig, RingHashLbConfig.b, m> N4;
        private RefreshRate O;
        private q2<MaglevLbConfig, MaglevLbConfig.b, i> O4;
        private q2<RefreshRate, RefreshRate.b, l> P;
        private q2<OriginalDstLbConfig, OriginalDstLbConfig.b, j> P4;
        private boolean Q;
        private q2<LeastRequestLbConfig, LeastRequestLbConfig.b, h> Q4;
        private int R;
        private CommonLbConfig R4;
        private q2<CommonLbConfig, CommonLbConfig.b, d> S4;
        private TransportSocket T4;
        private q2<TransportSocket, TransportSocket.c, h1> U4;
        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> V1;
        private DnsResolutionConfig V2;
        private TypedExtensionConfig V3;
        private Metadata V4;
        private q2<Metadata, Metadata.b, k0> W4;
        private int X4;
        private UpstreamConnectionOptions Y4;
        private q2<UpstreamConnectionOptions, UpstreamConnectionOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.k> Z4;

        /* renamed from: a1  reason: collision with root package name */
        private List<Address> f47645a1;

        /* renamed from: a2  reason: collision with root package name */
        private boolean f47646a2;

        /* renamed from: a5  reason: collision with root package name */
        private boolean f47647a5;

        /* renamed from: b5  reason: collision with root package name */
        private boolean f47648b5;

        /* renamed from: c5  reason: collision with root package name */
        private List<Filter> f47649c5;

        /* renamed from: d5  reason: collision with root package name */
        private l2<Filter, Filter.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.e> f47650d5;

        /* renamed from: e  reason: collision with root package name */
        private int f47651e;

        /* renamed from: e5  reason: collision with root package name */
        private LoadBalancingPolicy f47652e5;

        /* renamed from: f  reason: collision with root package name */
        private Object f47653f;

        /* renamed from: f5  reason: collision with root package name */
        private q2<LoadBalancingPolicy, LoadBalancingPolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.g> f47654f5;

        /* renamed from: g  reason: collision with root package name */
        private int f47655g;

        /* renamed from: g5  reason: collision with root package name */
        private ConfigSource f47656g5;

        /* renamed from: h  reason: collision with root package name */
        private Object f47657h;

        /* renamed from: h5  reason: collision with root package name */
        private q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> f47658h5;

        /* renamed from: i  reason: collision with root package name */
        private int f47659i;

        /* renamed from: i5  reason: collision with root package name */
        private boolean f47660i5;

        /* renamed from: j  reason: collision with root package name */
        private List<TransportSocketMatch> f47661j;

        /* renamed from: j5  reason: collision with root package name */
        private TypedExtensionConfig f47662j5;

        /* renamed from: k  reason: collision with root package name */
        private l2<TransportSocketMatch, TransportSocketMatch.b, n> f47663k;

        /* renamed from: k5  reason: collision with root package name */
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f47664k5;

        /* renamed from: l  reason: collision with root package name */
        private Object f47665l;

        /* renamed from: l5  reason: collision with root package name */
        private TrackClusterStats f47666l5;

        /* renamed from: m  reason: collision with root package name */
        private Object f47667m;

        /* renamed from: m5  reason: collision with root package name */
        private q2<TrackClusterStats, TrackClusterStats.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.j> f47668m5;

        /* renamed from: n  reason: collision with root package name */
        private q2<CustomClusterType, CustomClusterType.b, e> f47669n;

        /* renamed from: n5  reason: collision with root package name */
        private PreconnectPolicy f47670n5;

        /* renamed from: o  reason: collision with root package name */
        private EdsClusterConfig f47671o;

        /* renamed from: o5  reason: collision with root package name */
        private q2<PreconnectPolicy, PreconnectPolicy.b, k> f47672o5;

        /* renamed from: p  reason: collision with root package name */
        private q2<EdsClusterConfig, EdsClusterConfig.b, f> f47673p;

        /* renamed from: p5  reason: collision with root package name */
        private boolean f47674p5;

        /* renamed from: q  reason: collision with root package name */
        private Duration f47675q;

        /* renamed from: r  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47676r;

        /* renamed from: s  reason: collision with root package name */
        private UInt32Value f47677s;

        /* renamed from: t  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47678t;

        /* renamed from: u  reason: collision with root package name */
        private int f47679u;

        /* renamed from: v  reason: collision with root package name */
        private ClusterLoadAssignment f47680v;

        /* renamed from: w  reason: collision with root package name */
        private q2<ClusterLoadAssignment, ClusterLoadAssignment.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.a> f47681w;

        /* renamed from: x  reason: collision with root package name */
        private List<HealthCheck> f47682x;

        /* renamed from: y  reason: collision with root package name */
        private l2<HealthCheck, HealthCheck.c, a0> f47683y;

        /* renamed from: z  reason: collision with root package name */
        private UInt32Value f47684z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47659i & 8) == 0) {
                this.f47645a1 = new ArrayList(this.f47645a1);
                this.f47659i |= 8;
            }
        }

        private void b0() {
            if ((this.f47659i & 16) == 0) {
                this.f47649c5 = new ArrayList(this.f47649c5);
                this.f47659i |= 16;
            }
        }

        private void d0() {
            if ((this.f47659i & 2) == 0) {
                this.f47682x = new ArrayList(this.f47682x);
                this.f47659i |= 2;
            }
        }

        private void e0() {
            if ((this.f47659i & 1) == 0) {
                this.f47661j = new ArrayList(this.f47661j);
                this.f47659i |= 1;
            }
        }

        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> h0() {
            if (this.V1 == null) {
                this.V1 = new l2<>(this.f47645a1, (this.f47659i & 8) != 0, H(), O());
                this.f47645a1 = null;
            }
            return this.V1;
        }

        private l2<Filter, Filter.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.e> i0() {
            if (this.f47650d5 == null) {
                this.f47650d5 = new l2<>(this.f47649c5, (this.f47659i & 16) != 0, H(), O());
                this.f47649c5 = null;
            }
            return this.f47650d5;
        }

        private l2<HealthCheck, HealthCheck.c, a0> j0() {
            if (this.f47683y == null) {
                this.f47683y = new l2<>(this.f47682x, (this.f47659i & 2) != 0, H(), O());
                this.f47682x = null;
            }
            return this.f47683y;
        }

        private l2<TransportSocketMatch, TransportSocketMatch.b, n> k0() {
            if (this.f47663k == null) {
                this.f47663k = new l2<>(this.f47661j, (this.f47659i & 1) != 0, H(), O());
                this.f47661j = null;
            }
            return this.f47663k;
        }

        private g1<String, Any> l0() {
            R();
            if (this.L == null) {
                this.L = g1.p(o.f47685a);
            }
            if (!this.L.m()) {
                this.L = this.L.f();
            }
            return this.L;
        }

        private g1<String, Any> m0() {
            g1<String, Any> g1Var = this.L;
            return g1Var == null ? g1.g(o.f47685a) : g1Var;
        }

        private void n0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                k0();
                j0();
                h0();
                i0();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: B0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.access$21000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.H0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.H0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: D0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Cluster) {
                return H0((Cluster) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c H0(Cluster cluster) {
            if (cluster == Cluster.getDefaultInstance()) {
                return this;
            }
            if (this.f47663k == null) {
                if (!cluster.transportSocketMatches_.isEmpty()) {
                    if (this.f47661j.isEmpty()) {
                        this.f47661j = cluster.transportSocketMatches_;
                        this.f47659i &= -2;
                    } else {
                        e0();
                        this.f47661j.addAll(cluster.transportSocketMatches_);
                    }
                    R();
                }
            } else if (!cluster.transportSocketMatches_.isEmpty()) {
                if (this.f47663k.k()) {
                    this.f47663k.f();
                    this.f47663k = null;
                    this.f47661j = cluster.transportSocketMatches_;
                    this.f47659i &= -2;
                    this.f47663k = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.f47663k.b(cluster.transportSocketMatches_);
                }
            }
            if (!cluster.getName().isEmpty()) {
                this.f47665l = cluster.name_;
                R();
            }
            if (!cluster.getAltStatName().isEmpty()) {
                this.f47667m = cluster.altStatName_;
                R();
            }
            if (cluster.hasEdsClusterConfig()) {
                z0(cluster.getEdsClusterConfig());
            }
            if (cluster.hasConnectTimeout()) {
                u0(cluster.getConnectTimeout());
            }
            if (cluster.hasPerConnectionBufferLimitBytes()) {
                W0(cluster.getPerConnectionBufferLimitBytes());
            }
            if (cluster.lbPolicy_ != 0) {
                p1(cluster.getLbPolicyValue());
            }
            if (cluster.hasLoadAssignment()) {
                M0(cluster.getLoadAssignment());
            }
            if (this.f47683y == null) {
                if (!cluster.healthChecks_.isEmpty()) {
                    if (this.f47682x.isEmpty()) {
                        this.f47682x = cluster.healthChecks_;
                        this.f47659i &= -3;
                    } else {
                        d0();
                        this.f47682x.addAll(cluster.healthChecks_);
                    }
                    R();
                }
            } else if (!cluster.healthChecks_.isEmpty()) {
                if (this.f47683y.k()) {
                    this.f47683y.f();
                    this.f47683y = null;
                    this.f47682x = cluster.healthChecks_;
                    this.f47659i &= -3;
                    this.f47683y = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f47683y.b(cluster.healthChecks_);
                }
            }
            if (cluster.hasMaxRequestsPerConnection()) {
                S0(cluster.getMaxRequestsPerConnection());
            }
            if (cluster.hasCircuitBreakers()) {
                o0(cluster.getCircuitBreakers());
            }
            if (cluster.hasUpstreamHttpProtocolOptions()) {
                h1(cluster.getUpstreamHttpProtocolOptions());
            }
            if (cluster.hasCommonHttpProtocolOptions()) {
                s0(cluster.getCommonHttpProtocolOptions());
            }
            if (cluster.hasHttpProtocolOptions()) {
                J0(cluster.getHttpProtocolOptions());
            }
            if (cluster.hasHttp2ProtocolOptions()) {
                I0(cluster.getHttp2ProtocolOptions());
            }
            l0().o(cluster.internalGetTypedExtensionProtocolOptions());
            if (cluster.hasDnsRefreshRate()) {
                x0(cluster.getDnsRefreshRate());
            }
            if (cluster.hasDnsFailureRefreshRate()) {
                v0(cluster.getDnsFailureRefreshRate());
            }
            if (cluster.getRespectDnsTtl()) {
                r1(cluster.getRespectDnsTtl());
            }
            if (cluster.dnsLookupFamily_ != 0) {
                m1(cluster.getDnsLookupFamilyValue());
            }
            if (this.V1 == null) {
                if (!cluster.dnsResolvers_.isEmpty()) {
                    if (this.f47645a1.isEmpty()) {
                        this.f47645a1 = cluster.dnsResolvers_;
                        this.f47659i &= -9;
                    } else {
                        a0();
                        this.f47645a1.addAll(cluster.dnsResolvers_);
                    }
                    R();
                }
            } else if (!cluster.dnsResolvers_.isEmpty()) {
                if (this.V1.k()) {
                    this.V1.f();
                    this.V1 = null;
                    this.f47645a1 = cluster.dnsResolvers_;
                    this.f47659i &= -9;
                    this.V1 = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.V1.b(cluster.dnsResolvers_);
                }
            }
            if (cluster.getUseTcpForDnsLookups()) {
                v1(cluster.getUseTcpForDnsLookups());
            }
            if (cluster.hasDnsResolutionConfig()) {
                y0(cluster.getDnsResolutionConfig());
            }
            if (cluster.hasTypedDnsResolverConfig()) {
                b1(cluster.getTypedDnsResolverConfig());
            }
            if (cluster.hasWaitForWarmOnInit()) {
                i1(cluster.getWaitForWarmOnInit());
            }
            if (cluster.hasOutlierDetection()) {
                V0(cluster.getOutlierDetection());
            }
            if (cluster.hasCleanupInterval()) {
                q0(cluster.getCleanupInterval());
            }
            if (cluster.hasUpstreamBindConfig()) {
                d1(cluster.getUpstreamBindConfig());
            }
            if (cluster.hasLbSubsetConfig()) {
                K0(cluster.getLbSubsetConfig());
            }
            if (cluster.hasCommonLbConfig()) {
                t0(cluster.getCommonLbConfig());
            }
            if (cluster.hasTransportSocket()) {
                a1(cluster.getTransportSocket());
            }
            if (cluster.hasMetadata()) {
                T0(cluster.getMetadata());
            }
            if (cluster.protocolSelection_ != 0) {
                q1(cluster.getProtocolSelectionValue());
            }
            if (cluster.hasUpstreamConnectionOptions()) {
                g1(cluster.getUpstreamConnectionOptions());
            }
            if (cluster.getCloseConnectionsOnHostHealthFailure()) {
                k1(cluster.getCloseConnectionsOnHostHealthFailure());
            }
            if (cluster.getIgnoreHealthOnHostRemoval()) {
                o1(cluster.getIgnoreHealthOnHostRemoval());
            }
            if (this.f47650d5 == null) {
                if (!cluster.filters_.isEmpty()) {
                    if (this.f47649c5.isEmpty()) {
                        this.f47649c5 = cluster.filters_;
                        this.f47659i &= -17;
                    } else {
                        b0();
                        this.f47649c5.addAll(cluster.filters_);
                    }
                    R();
                }
            } else if (!cluster.filters_.isEmpty()) {
                if (this.f47650d5.k()) {
                    this.f47650d5.f();
                    this.f47650d5 = null;
                    this.f47649c5 = cluster.filters_;
                    this.f47659i &= -17;
                    this.f47650d5 = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f47650d5.b(cluster.filters_);
                }
            }
            if (cluster.hasLoadBalancingPolicy()) {
                N0(cluster.getLoadBalancingPolicy());
            }
            if (cluster.hasLrsServer()) {
                O0(cluster.getLrsServer());
            }
            if (cluster.getTrackTimeoutBudgets()) {
                s1(cluster.getTrackTimeoutBudgets());
            }
            if (cluster.hasUpstreamConfig()) {
                e1(cluster.getUpstreamConfig());
            }
            if (cluster.hasTrackClusterStats()) {
                Z0(cluster.getTrackClusterStats());
            }
            if (cluster.hasPreconnectPolicy()) {
                X0(cluster.getPreconnectPolicy());
            }
            if (cluster.getConnectionPoolPerDownstreamConnection()) {
                l1(cluster.getConnectionPoolPerDownstreamConnection());
            }
            int i9 = b.f47643b[cluster.getClusterDiscoveryTypeCase().ordinal()];
            if (i9 == 1) {
                t1(cluster.getTypeValue());
            } else if (i9 == 2) {
                r0(cluster.getClusterType());
            }
            int i10 = b.f47644c[cluster.getLbConfigCase().ordinal()];
            if (i10 == 1) {
                Y0(cluster.getRingHashLbConfig());
            } else if (i10 == 2) {
                Q0(cluster.getMaglevLbConfig());
            } else if (i10 == 3) {
                U0(cluster.getOriginalDstLbConfig());
            } else if (i10 == 4) {
                L0(cluster.getLeastRequestLbConfig());
            }
            z(((GeneratedMessageV3) cluster).unknownFields);
            R();
            return this;
        }

        @Deprecated
        public c I0(Http2ProtocolOptions http2ProtocolOptions) {
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, d0> q2Var = this.K;
            if (q2Var == null) {
                Http2ProtocolOptions http2ProtocolOptions2 = this.J;
                if (http2ProtocolOptions2 != null) {
                    this.J = Http2ProtocolOptions.newBuilder(http2ProtocolOptions2).j0(http2ProtocolOptions).I();
                } else {
                    this.J = http2ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http2ProtocolOptions);
            }
            return this;
        }

        @Deprecated
        public c J0(Http1ProtocolOptions http1ProtocolOptions) {
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, c0> q2Var = this.I;
            if (q2Var == null) {
                Http1ProtocolOptions http1ProtocolOptions2 = this.H;
                if (http1ProtocolOptions2 != null) {
                    this.H = Http1ProtocolOptions.newBuilder(http1ProtocolOptions2).h0(http1ProtocolOptions).I();
                } else {
                    this.H = http1ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http1ProtocolOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47735d.d(Cluster.class, c.class);
        }

        public c K0(LbSubsetConfig lbSubsetConfig) {
            q2<LbSubsetConfig, LbSubsetConfig.b, g> q2Var = this.M4;
            if (q2Var == null) {
                LbSubsetConfig lbSubsetConfig2 = this.L4;
                if (lbSubsetConfig2 != null) {
                    this.L4 = LbSubsetConfig.newBuilder(lbSubsetConfig2).j0(lbSubsetConfig).I();
                } else {
                    this.L4 = lbSubsetConfig;
                }
                R();
            } else {
                q2Var.e(lbSubsetConfig);
            }
            return this;
        }

        public c L0(LeastRequestLbConfig leastRequestLbConfig) {
            q2<LeastRequestLbConfig, LeastRequestLbConfig.b, h> q2Var = this.Q4;
            if (q2Var == null) {
                if (this.f47655g == 37 && this.f47657h != LeastRequestLbConfig.getDefaultInstance()) {
                    this.f47657h = LeastRequestLbConfig.newBuilder((LeastRequestLbConfig) this.f47657h).i0(leastRequestLbConfig).I();
                } else {
                    this.f47657h = leastRequestLbConfig;
                }
                R();
            } else {
                if (this.f47655g == 37) {
                    q2Var.e(leastRequestLbConfig);
                }
                this.Q4.g(leastRequestLbConfig);
            }
            this.f47655g = 37;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 36) {
                return m0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        public c M0(ClusterLoadAssignment clusterLoadAssignment) {
            q2<ClusterLoadAssignment, ClusterLoadAssignment.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.a> q2Var = this.f47681w;
            if (q2Var == null) {
                ClusterLoadAssignment clusterLoadAssignment2 = this.f47680v;
                if (clusterLoadAssignment2 != null) {
                    this.f47680v = ClusterLoadAssignment.newBuilder(clusterLoadAssignment2).k0(clusterLoadAssignment).I();
                } else {
                    this.f47680v = clusterLoadAssignment;
                }
                R();
            } else {
                q2Var.e(clusterLoadAssignment);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 36) {
                return l0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        public c N0(LoadBalancingPolicy loadBalancingPolicy) {
            q2<LoadBalancingPolicy, LoadBalancingPolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.g> q2Var = this.f47654f5;
            if (q2Var == null) {
                LoadBalancingPolicy loadBalancingPolicy2 = this.f47652e5;
                if (loadBalancingPolicy2 != null) {
                    this.f47652e5 = LoadBalancingPolicy.newBuilder(loadBalancingPolicy2).i0(loadBalancingPolicy).I();
                } else {
                    this.f47652e5 = loadBalancingPolicy;
                }
                R();
            } else {
                q2Var.e(loadBalancingPolicy);
            }
            return this;
        }

        public c O0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var = this.f47658h5;
            if (q2Var == null) {
                ConfigSource configSource2 = this.f47656g5;
                if (configSource2 != null) {
                    this.f47656g5 = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                } else {
                    this.f47656g5 = configSource;
                }
                R();
            } else {
                q2Var.e(configSource);
            }
            return this;
        }

        public c Q0(MaglevLbConfig maglevLbConfig) {
            q2<MaglevLbConfig, MaglevLbConfig.b, i> q2Var = this.O4;
            if (q2Var == null) {
                if (this.f47655g == 52 && this.f47657h != MaglevLbConfig.getDefaultInstance()) {
                    this.f47657h = MaglevLbConfig.newBuilder((MaglevLbConfig) this.f47657h).g0(maglevLbConfig).I();
                } else {
                    this.f47657h = maglevLbConfig;
                }
                R();
            } else {
                if (this.f47655g == 52) {
                    q2Var.e(maglevLbConfig);
                }
                this.O4.g(maglevLbConfig);
            }
            this.f47655g = 52;
            return this;
        }

        @Deprecated
        public c S0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.A;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47684z;
                if (uInt32Value2 != null) {
                    this.f47684z = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47684z = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c T0(Metadata metadata) {
            q2<Metadata, Metadata.b, k0> q2Var = this.W4;
            if (q2Var == null) {
                Metadata metadata2 = this.V4;
                if (metadata2 != null) {
                    this.V4 = Metadata.newBuilder(metadata2).k0(metadata).I();
                } else {
                    this.V4 = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        public c U0(OriginalDstLbConfig originalDstLbConfig) {
            q2<OriginalDstLbConfig, OriginalDstLbConfig.b, j> q2Var = this.P4;
            if (q2Var == null) {
                if (this.f47655g == 34 && this.f47657h != OriginalDstLbConfig.getDefaultInstance()) {
                    this.f47657h = OriginalDstLbConfig.newBuilder((OriginalDstLbConfig) this.f47657h).g0(originalDstLbConfig).I();
                } else {
                    this.f47657h = originalDstLbConfig;
                }
                R();
            } else {
                if (this.f47655g == 34) {
                    q2Var.e(originalDstLbConfig);
                }
                this.P4.g(originalDstLbConfig);
            }
            this.f47655g = 34;
            return this;
        }

        public c V0(OutlierDetection outlierDetection) {
            q2<OutlierDetection, OutlierDetection.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.h> q2Var = this.G4;
            if (q2Var == null) {
                OutlierDetection outlierDetection2 = this.F4;
                if (outlierDetection2 != null) {
                    this.F4 = OutlierDetection.newBuilder(outlierDetection2).v0(outlierDetection).I();
                } else {
                    this.F4 = outlierDetection;
                }
                R();
            } else {
                q2Var.e(outlierDetection);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        public c W0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47678t;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47677s;
                if (uInt32Value2 != null) {
                    this.f47677s = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47677s = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Cluster build() {
            Cluster I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        public c X0(PreconnectPolicy preconnectPolicy) {
            q2<PreconnectPolicy, PreconnectPolicy.b, k> q2Var = this.f47672o5;
            if (q2Var == null) {
                PreconnectPolicy preconnectPolicy2 = this.f47670n5;
                if (preconnectPolicy2 != null) {
                    this.f47670n5 = PreconnectPolicy.newBuilder(preconnectPolicy2).g0(preconnectPolicy).I();
                } else {
                    this.f47670n5 = preconnectPolicy;
                }
                R();
            } else {
                q2Var.e(preconnectPolicy);
            }
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Cluster I() {
            Cluster cluster = new Cluster(this, (a) null);
            int i9 = this.f47659i;
            l2<TransportSocketMatch, TransportSocketMatch.b, n> l2Var = this.f47663k;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f47661j = Collections.unmodifiableList(this.f47661j);
                    this.f47659i &= -2;
                }
                cluster.transportSocketMatches_ = this.f47661j;
            } else {
                cluster.transportSocketMatches_ = l2Var.e();
            }
            cluster.name_ = this.f47665l;
            cluster.altStatName_ = this.f47667m;
            if (this.f47651e == 2) {
                cluster.clusterDiscoveryType_ = this.f47653f;
            }
            if (this.f47651e == 38) {
                q2<CustomClusterType, CustomClusterType.b, e> q2Var = this.f47669n;
                if (q2Var == null) {
                    cluster.clusterDiscoveryType_ = this.f47653f;
                } else {
                    cluster.clusterDiscoveryType_ = q2Var.b();
                }
            }
            q2<EdsClusterConfig, EdsClusterConfig.b, f> q2Var2 = this.f47673p;
            if (q2Var2 == null) {
                cluster.edsClusterConfig_ = this.f47671o;
            } else {
                cluster.edsClusterConfig_ = q2Var2.b();
            }
            q2<Duration, Duration.b, v> q2Var3 = this.f47676r;
            if (q2Var3 == null) {
                cluster.connectTimeout_ = this.f47675q;
            } else {
                cluster.connectTimeout_ = q2Var3.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f47678t;
            if (q2Var4 == null) {
                cluster.perConnectionBufferLimitBytes_ = this.f47677s;
            } else {
                cluster.perConnectionBufferLimitBytes_ = q2Var4.b();
            }
            cluster.lbPolicy_ = this.f47679u;
            q2<ClusterLoadAssignment, ClusterLoadAssignment.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.a> q2Var5 = this.f47681w;
            if (q2Var5 == null) {
                cluster.loadAssignment_ = this.f47680v;
            } else {
                cluster.loadAssignment_ = q2Var5.b();
            }
            l2<HealthCheck, HealthCheck.c, a0> l2Var2 = this.f47683y;
            if (l2Var2 == null) {
                if ((this.f47659i & 2) != 0) {
                    this.f47682x = Collections.unmodifiableList(this.f47682x);
                    this.f47659i &= -3;
                }
                cluster.healthChecks_ = this.f47682x;
            } else {
                cluster.healthChecks_ = l2Var2.e();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var6 = this.A;
            if (q2Var6 == null) {
                cluster.maxRequestsPerConnection_ = this.f47684z;
            } else {
                cluster.maxRequestsPerConnection_ = q2Var6.b();
            }
            q2<CircuitBreakers, CircuitBreakers.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.b> q2Var7 = this.C;
            if (q2Var7 == null) {
                cluster.circuitBreakers_ = this.B;
            } else {
                cluster.circuitBreakers_ = q2Var7.b();
            }
            q2<UpstreamHttpProtocolOptions, UpstreamHttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l1> q2Var8 = this.E;
            if (q2Var8 == null) {
                cluster.upstreamHttpProtocolOptions_ = this.D;
            } else {
                cluster.upstreamHttpProtocolOptions_ = q2Var8.b();
            }
            q2<HttpProtocolOptions, HttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0> q2Var9 = this.G;
            if (q2Var9 == null) {
                cluster.commonHttpProtocolOptions_ = this.F;
            } else {
                cluster.commonHttpProtocolOptions_ = q2Var9.b();
            }
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, c0> q2Var10 = this.I;
            if (q2Var10 == null) {
                cluster.httpProtocolOptions_ = this.H;
            } else {
                cluster.httpProtocolOptions_ = q2Var10.b();
            }
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, d0> q2Var11 = this.K;
            if (q2Var11 == null) {
                cluster.http2ProtocolOptions_ = this.J;
            } else {
                cluster.http2ProtocolOptions_ = q2Var11.b();
            }
            cluster.typedExtensionProtocolOptions_ = m0();
            cluster.typedExtensionProtocolOptions_.n();
            q2<Duration, Duration.b, v> q2Var12 = this.N;
            if (q2Var12 == null) {
                cluster.dnsRefreshRate_ = this.M;
            } else {
                cluster.dnsRefreshRate_ = q2Var12.b();
            }
            q2<RefreshRate, RefreshRate.b, l> q2Var13 = this.P;
            if (q2Var13 == null) {
                cluster.dnsFailureRefreshRate_ = this.O;
            } else {
                cluster.dnsFailureRefreshRate_ = q2Var13.b();
            }
            cluster.respectDnsTtl_ = this.Q;
            cluster.dnsLookupFamily_ = this.R;
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> l2Var3 = this.V1;
            if (l2Var3 == null) {
                if ((this.f47659i & 8) != 0) {
                    this.f47645a1 = Collections.unmodifiableList(this.f47645a1);
                    this.f47659i &= -9;
                }
                cluster.dnsResolvers_ = this.f47645a1;
            } else {
                cluster.dnsResolvers_ = l2Var3.e();
            }
            cluster.useTcpForDnsLookups_ = this.f47646a2;
            q2<DnsResolutionConfig, DnsResolutionConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.o> q2Var14 = this.B3;
            if (q2Var14 == null) {
                cluster.dnsResolutionConfig_ = this.V2;
            } else {
                cluster.dnsResolutionConfig_ = q2Var14.b();
            }
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var15 = this.C4;
            if (q2Var15 == null) {
                cluster.typedDnsResolverConfig_ = this.V3;
            } else {
                cluster.typedDnsResolverConfig_ = q2Var15.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var16 = this.E4;
            if (q2Var16 == null) {
                cluster.waitForWarmOnInit_ = this.D4;
            } else {
                cluster.waitForWarmOnInit_ = q2Var16.b();
            }
            q2<OutlierDetection, OutlierDetection.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.h> q2Var17 = this.G4;
            if (q2Var17 == null) {
                cluster.outlierDetection_ = this.F4;
            } else {
                cluster.outlierDetection_ = q2Var17.b();
            }
            q2<Duration, Duration.b, v> q2Var18 = this.I4;
            if (q2Var18 == null) {
                cluster.cleanupInterval_ = this.H4;
            } else {
                cluster.cleanupInterval_ = q2Var18.b();
            }
            q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h> q2Var19 = this.K4;
            if (q2Var19 == null) {
                cluster.upstreamBindConfig_ = this.J4;
            } else {
                cluster.upstreamBindConfig_ = q2Var19.b();
            }
            q2<LbSubsetConfig, LbSubsetConfig.b, g> q2Var20 = this.M4;
            if (q2Var20 == null) {
                cluster.lbSubsetConfig_ = this.L4;
            } else {
                cluster.lbSubsetConfig_ = q2Var20.b();
            }
            if (this.f47655g == 23) {
                q2<RingHashLbConfig, RingHashLbConfig.b, m> q2Var21 = this.N4;
                if (q2Var21 == null) {
                    cluster.lbConfig_ = this.f47657h;
                } else {
                    cluster.lbConfig_ = q2Var21.b();
                }
            }
            if (this.f47655g == 52) {
                q2<MaglevLbConfig, MaglevLbConfig.b, i> q2Var22 = this.O4;
                if (q2Var22 == null) {
                    cluster.lbConfig_ = this.f47657h;
                } else {
                    cluster.lbConfig_ = q2Var22.b();
                }
            }
            if (this.f47655g == 34) {
                q2<OriginalDstLbConfig, OriginalDstLbConfig.b, j> q2Var23 = this.P4;
                if (q2Var23 == null) {
                    cluster.lbConfig_ = this.f47657h;
                } else {
                    cluster.lbConfig_ = q2Var23.b();
                }
            }
            if (this.f47655g == 37) {
                q2<LeastRequestLbConfig, LeastRequestLbConfig.b, h> q2Var24 = this.Q4;
                if (q2Var24 == null) {
                    cluster.lbConfig_ = this.f47657h;
                } else {
                    cluster.lbConfig_ = q2Var24.b();
                }
            }
            q2<CommonLbConfig, CommonLbConfig.b, d> q2Var25 = this.S4;
            if (q2Var25 == null) {
                cluster.commonLbConfig_ = this.R4;
            } else {
                cluster.commonLbConfig_ = q2Var25.b();
            }
            q2<TransportSocket, TransportSocket.c, h1> q2Var26 = this.U4;
            if (q2Var26 == null) {
                cluster.transportSocket_ = this.T4;
            } else {
                cluster.transportSocket_ = q2Var26.b();
            }
            q2<Metadata, Metadata.b, k0> q2Var27 = this.W4;
            if (q2Var27 == null) {
                cluster.metadata_ = this.V4;
            } else {
                cluster.metadata_ = q2Var27.b();
            }
            cluster.protocolSelection_ = this.X4;
            q2<UpstreamConnectionOptions, UpstreamConnectionOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.k> q2Var28 = this.Z4;
            if (q2Var28 == null) {
                cluster.upstreamConnectionOptions_ = this.Y4;
            } else {
                cluster.upstreamConnectionOptions_ = q2Var28.b();
            }
            cluster.closeConnectionsOnHostHealthFailure_ = this.f47647a5;
            cluster.ignoreHealthOnHostRemoval_ = this.f47648b5;
            l2<Filter, Filter.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.e> l2Var4 = this.f47650d5;
            if (l2Var4 == null) {
                if ((this.f47659i & 16) != 0) {
                    this.f47649c5 = Collections.unmodifiableList(this.f47649c5);
                    this.f47659i &= -17;
                }
                cluster.filters_ = this.f47649c5;
            } else {
                cluster.filters_ = l2Var4.e();
            }
            q2<LoadBalancingPolicy, LoadBalancingPolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.g> q2Var29 = this.f47654f5;
            if (q2Var29 == null) {
                cluster.loadBalancingPolicy_ = this.f47652e5;
            } else {
                cluster.loadBalancingPolicy_ = q2Var29.b();
            }
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var30 = this.f47658h5;
            if (q2Var30 == null) {
                cluster.lrsServer_ = this.f47656g5;
            } else {
                cluster.lrsServer_ = q2Var30.b();
            }
            cluster.trackTimeoutBudgets_ = this.f47660i5;
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var31 = this.f47664k5;
            if (q2Var31 == null) {
                cluster.upstreamConfig_ = this.f47662j5;
            } else {
                cluster.upstreamConfig_ = q2Var31.b();
            }
            q2<TrackClusterStats, TrackClusterStats.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.j> q2Var32 = this.f47668m5;
            if (q2Var32 == null) {
                cluster.trackClusterStats_ = this.f47666l5;
            } else {
                cluster.trackClusterStats_ = q2Var32.b();
            }
            q2<PreconnectPolicy, PreconnectPolicy.b, k> q2Var33 = this.f47672o5;
            if (q2Var33 == null) {
                cluster.preconnectPolicy_ = this.f47670n5;
            } else {
                cluster.preconnectPolicy_ = q2Var33.b();
            }
            cluster.connectionPoolPerDownstreamConnection_ = this.f47674p5;
            cluster.clusterDiscoveryTypeCase_ = this.f47651e;
            cluster.lbConfigCase_ = this.f47655g;
            Q();
            return cluster;
        }

        public c Y0(RingHashLbConfig ringHashLbConfig) {
            q2<RingHashLbConfig, RingHashLbConfig.b, m> q2Var = this.N4;
            if (q2Var == null) {
                if (this.f47655g == 23 && this.f47657h != RingHashLbConfig.getDefaultInstance()) {
                    this.f47657h = RingHashLbConfig.newBuilder((RingHashLbConfig) this.f47657h).g0(ringHashLbConfig).I();
                } else {
                    this.f47657h = ringHashLbConfig;
                }
                R();
            } else {
                if (this.f47655g == 23) {
                    q2Var.e(ringHashLbConfig);
                }
                this.N4.g(ringHashLbConfig);
            }
            this.f47655g = 23;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        public c Z0(TrackClusterStats trackClusterStats) {
            q2<TrackClusterStats, TrackClusterStats.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.j> q2Var = this.f47668m5;
            if (q2Var == null) {
                TrackClusterStats trackClusterStats2 = this.f47666l5;
                if (trackClusterStats2 != null) {
                    this.f47666l5 = TrackClusterStats.newBuilder(trackClusterStats2).g0(trackClusterStats).I();
                } else {
                    this.f47666l5 = trackClusterStats;
                }
                R();
            } else {
                q2Var.e(trackClusterStats);
            }
            return this;
        }

        public c a1(TransportSocket transportSocket) {
            q2<TransportSocket, TransportSocket.c, h1> q2Var = this.U4;
            if (q2Var == null) {
                TransportSocket transportSocket2 = this.T4;
                if (transportSocket2 != null) {
                    this.T4 = TransportSocket.newBuilder(transportSocket2).g0(transportSocket).I();
                } else {
                    this.T4 = transportSocket;
                }
                R();
            } else {
                q2Var.e(transportSocket);
            }
            return this;
        }

        public c b1(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.C4;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.V3;
                if (typedExtensionConfig2 != null) {
                    this.V3 = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.V3 = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: c1 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c d1(BindConfig bindConfig) {
            q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h> q2Var = this.K4;
            if (q2Var == null) {
                BindConfig bindConfig2 = this.J4;
                if (bindConfig2 != null) {
                    this.J4 = BindConfig.newBuilder(bindConfig2).j0(bindConfig).I();
                } else {
                    this.J4 = bindConfig;
                }
                R();
            } else {
                q2Var.e(bindConfig);
            }
            return this;
        }

        public c e1(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f47664k5;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.f47662j5;
                if (typedExtensionConfig2 != null) {
                    this.f47662j5 = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.f47662j5 = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public Cluster getDefaultInstanceForType() {
            return Cluster.getDefaultInstance();
        }

        public c g1(UpstreamConnectionOptions upstreamConnectionOptions) {
            q2<UpstreamConnectionOptions, UpstreamConnectionOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.k> q2Var = this.Z4;
            if (q2Var == null) {
                UpstreamConnectionOptions upstreamConnectionOptions2 = this.Y4;
                if (upstreamConnectionOptions2 != null) {
                    this.Y4 = UpstreamConnectionOptions.newBuilder(upstreamConnectionOptions2).g0(upstreamConnectionOptions).I();
                } else {
                    this.Y4 = upstreamConnectionOptions;
                }
                R();
            } else {
                q2Var.e(upstreamConnectionOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47734c;
        }

        @Deprecated
        public c h1(UpstreamHttpProtocolOptions upstreamHttpProtocolOptions) {
            q2<UpstreamHttpProtocolOptions, UpstreamHttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l1> q2Var = this.E;
            if (q2Var == null) {
                UpstreamHttpProtocolOptions upstreamHttpProtocolOptions2 = this.D;
                if (upstreamHttpProtocolOptions2 != null) {
                    this.D = UpstreamHttpProtocolOptions.newBuilder(upstreamHttpProtocolOptions2).g0(upstreamHttpProtocolOptions).I();
                } else {
                    this.D = upstreamHttpProtocolOptions;
                }
                R();
            } else {
                q2Var.e(upstreamHttpProtocolOptions);
            }
            return this;
        }

        public c i1(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.E4;
            if (q2Var == null) {
                BoolValue boolValue2 = this.D4;
                if (boolValue2 != null) {
                    this.D4 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.D4 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c k1(boolean z10) {
            this.f47647a5 = z10;
            R();
            return this;
        }

        public c l1(boolean z10) {
            this.f47674p5 = z10;
            R();
            return this;
        }

        public c m1(int i9) {
            this.R = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n1 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c o0(CircuitBreakers circuitBreakers) {
            q2<CircuitBreakers, CircuitBreakers.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.b> q2Var = this.C;
            if (q2Var == null) {
                CircuitBreakers circuitBreakers2 = this.B;
                if (circuitBreakers2 != null) {
                    this.B = CircuitBreakers.newBuilder(circuitBreakers2).i0(circuitBreakers).I();
                } else {
                    this.B = circuitBreakers;
                }
                R();
            } else {
                q2Var.e(circuitBreakers);
            }
            return this;
        }

        public c o1(boolean z10) {
            this.f47648b5 = z10;
            R();
            return this;
        }

        public c p1(int i9) {
            this.f47679u = i9;
            R();
            return this;
        }

        public c q0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.I4;
            if (q2Var == null) {
                Duration duration2 = this.H4;
                if (duration2 != null) {
                    this.H4 = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.H4 = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Deprecated
        public c q1(int i9) {
            this.X4 = i9;
            R();
            return this;
        }

        public c r0(CustomClusterType customClusterType) {
            q2<CustomClusterType, CustomClusterType.b, e> q2Var = this.f47669n;
            if (q2Var == null) {
                if (this.f47651e == 38 && this.f47653f != CustomClusterType.getDefaultInstance()) {
                    this.f47653f = CustomClusterType.newBuilder((CustomClusterType) this.f47653f).g0(customClusterType).I();
                } else {
                    this.f47653f = customClusterType;
                }
                R();
            } else {
                if (this.f47651e == 38) {
                    q2Var.e(customClusterType);
                }
                this.f47669n.g(customClusterType);
            }
            this.f47651e = 38;
            return this;
        }

        public c r1(boolean z10) {
            this.Q = z10;
            R();
            return this;
        }

        @Deprecated
        public c s0(HttpProtocolOptions httpProtocolOptions) {
            q2<HttpProtocolOptions, HttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0> q2Var = this.G;
            if (q2Var == null) {
                HttpProtocolOptions httpProtocolOptions2 = this.F;
                if (httpProtocolOptions2 != null) {
                    this.F = HttpProtocolOptions.newBuilder(httpProtocolOptions2).g0(httpProtocolOptions).I();
                } else {
                    this.F = httpProtocolOptions;
                }
                R();
            } else {
                q2Var.e(httpProtocolOptions);
            }
            return this;
        }

        @Deprecated
        public c s1(boolean z10) {
            this.f47660i5 = z10;
            R();
            return this;
        }

        public c t0(CommonLbConfig commonLbConfig) {
            q2<CommonLbConfig, CommonLbConfig.b, d> q2Var = this.S4;
            if (q2Var == null) {
                CommonLbConfig commonLbConfig2 = this.R4;
                if (commonLbConfig2 != null) {
                    this.R4 = CommonLbConfig.newBuilder(commonLbConfig2).h0(commonLbConfig).I();
                } else {
                    this.R4 = commonLbConfig;
                }
                R();
            } else {
                q2Var.e(commonLbConfig);
            }
            return this;
        }

        public c t1(int i9) {
            this.f47651e = 2;
            this.f47653f = Integer.valueOf(i9);
            R();
            return this;
        }

        public c u0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47676r;
            if (q2Var == null) {
                Duration duration2 = this.f47675q;
                if (duration2 != null) {
                    this.f47675q = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47675q = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u1 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        public c v0(RefreshRate refreshRate) {
            q2<RefreshRate, RefreshRate.b, l> q2Var = this.P;
            if (q2Var == null) {
                RefreshRate refreshRate2 = this.O;
                if (refreshRate2 != null) {
                    this.O = RefreshRate.newBuilder(refreshRate2).h0(refreshRate).I();
                } else {
                    this.O = refreshRate;
                }
                R();
            } else {
                q2Var.e(refreshRate);
            }
            return this;
        }

        @Deprecated
        public c v1(boolean z10) {
            this.f47646a2 = z10;
            R();
            return this;
        }

        public c x0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.N;
            if (q2Var == null) {
                Duration duration2 = this.M;
                if (duration2 != null) {
                    this.M = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.M = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c y0(DnsResolutionConfig dnsResolutionConfig) {
            q2<DnsResolutionConfig, DnsResolutionConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.o> q2Var = this.B3;
            if (q2Var == null) {
                DnsResolutionConfig dnsResolutionConfig2 = this.V2;
                if (dnsResolutionConfig2 != null) {
                    this.V2 = DnsResolutionConfig.newBuilder(dnsResolutionConfig2).j0(dnsResolutionConfig).I();
                } else {
                    this.V2 = dnsResolutionConfig;
                }
                R();
            } else {
                q2Var.e(dnsResolutionConfig);
            }
            return this;
        }

        public c z0(EdsClusterConfig edsClusterConfig) {
            q2<EdsClusterConfig, EdsClusterConfig.b, f> q2Var = this.f47673p;
            if (q2Var == null) {
                EdsClusterConfig edsClusterConfig2 = this.f47671o;
                if (edsClusterConfig2 != null) {
                    this.f47671o = EdsClusterConfig.newBuilder(edsClusterConfig2).h0(edsClusterConfig).I();
                } else {
                    this.f47671o = edsClusterConfig;
                }
                R();
            } else {
                q2Var.e(edsClusterConfig);
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47651e = 0;
            this.f47655g = 0;
            this.f47661j = Collections.emptyList();
            this.f47665l = "";
            this.f47667m = "";
            this.f47679u = 0;
            this.f47682x = Collections.emptyList();
            this.R = 0;
            this.f47645a1 = Collections.emptyList();
            this.X4 = 0;
            this.f47649c5 = Collections.emptyList();
            n0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47651e = 0;
            this.f47655g = 0;
            this.f47661j = Collections.emptyList();
            this.f47665l = "";
            this.f47667m = "";
            this.f47679u = 0;
            this.f47682x = Collections.emptyList();
            this.R = 0;
            this.f47645a1 = Collections.emptyList();
            this.X4 = 0;
            this.f47649c5 = Collections.emptyList();
            n0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface f extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface g extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface h extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface i extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface j extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface k extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface l extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface m extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface n extends r1 {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class o {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Any> f47685a = e1.k(io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.I, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Any.getDefaultInstance());
    }

    /* synthetic */ Cluster(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Cluster getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47734c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Any> internalGetTypedExtensionProtocolOptions() {
        g1<String, Any> g1Var = this.typedExtensionProtocolOptions_;
        return g1Var == null ? g1.g(o.f47685a) : g1Var;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Cluster parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Cluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Cluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Cluster> parser() {
        return PARSER;
    }

    public boolean containsTypedExtensionProtocolOptions(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetTypedExtensionProtocolOptions().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cluster)) {
            return super.equals(obj);
        }
        Cluster cluster = (Cluster) obj;
        if (getTransportSocketMatchesList().equals(cluster.getTransportSocketMatchesList()) && getName().equals(cluster.getName()) && getAltStatName().equals(cluster.getAltStatName()) && hasEdsClusterConfig() == cluster.hasEdsClusterConfig()) {
            if ((!hasEdsClusterConfig() || getEdsClusterConfig().equals(cluster.getEdsClusterConfig())) && hasConnectTimeout() == cluster.hasConnectTimeout()) {
                if ((!hasConnectTimeout() || getConnectTimeout().equals(cluster.getConnectTimeout())) && hasPerConnectionBufferLimitBytes() == cluster.hasPerConnectionBufferLimitBytes()) {
                    if ((!hasPerConnectionBufferLimitBytes() || getPerConnectionBufferLimitBytes().equals(cluster.getPerConnectionBufferLimitBytes())) && this.lbPolicy_ == cluster.lbPolicy_ && hasLoadAssignment() == cluster.hasLoadAssignment()) {
                        if ((!hasLoadAssignment() || getLoadAssignment().equals(cluster.getLoadAssignment())) && getHealthChecksList().equals(cluster.getHealthChecksList()) && hasMaxRequestsPerConnection() == cluster.hasMaxRequestsPerConnection()) {
                            if ((!hasMaxRequestsPerConnection() || getMaxRequestsPerConnection().equals(cluster.getMaxRequestsPerConnection())) && hasCircuitBreakers() == cluster.hasCircuitBreakers()) {
                                if ((!hasCircuitBreakers() || getCircuitBreakers().equals(cluster.getCircuitBreakers())) && hasUpstreamHttpProtocolOptions() == cluster.hasUpstreamHttpProtocolOptions()) {
                                    if ((!hasUpstreamHttpProtocolOptions() || getUpstreamHttpProtocolOptions().equals(cluster.getUpstreamHttpProtocolOptions())) && hasCommonHttpProtocolOptions() == cluster.hasCommonHttpProtocolOptions()) {
                                        if ((!hasCommonHttpProtocolOptions() || getCommonHttpProtocolOptions().equals(cluster.getCommonHttpProtocolOptions())) && hasHttpProtocolOptions() == cluster.hasHttpProtocolOptions()) {
                                            if ((!hasHttpProtocolOptions() || getHttpProtocolOptions().equals(cluster.getHttpProtocolOptions())) && hasHttp2ProtocolOptions() == cluster.hasHttp2ProtocolOptions()) {
                                                if ((!hasHttp2ProtocolOptions() || getHttp2ProtocolOptions().equals(cluster.getHttp2ProtocolOptions())) && internalGetTypedExtensionProtocolOptions().equals(cluster.internalGetTypedExtensionProtocolOptions()) && hasDnsRefreshRate() == cluster.hasDnsRefreshRate()) {
                                                    if ((!hasDnsRefreshRate() || getDnsRefreshRate().equals(cluster.getDnsRefreshRate())) && hasDnsFailureRefreshRate() == cluster.hasDnsFailureRefreshRate()) {
                                                        if ((!hasDnsFailureRefreshRate() || getDnsFailureRefreshRate().equals(cluster.getDnsFailureRefreshRate())) && getRespectDnsTtl() == cluster.getRespectDnsTtl() && this.dnsLookupFamily_ == cluster.dnsLookupFamily_ && getDnsResolversList().equals(cluster.getDnsResolversList()) && getUseTcpForDnsLookups() == cluster.getUseTcpForDnsLookups() && hasDnsResolutionConfig() == cluster.hasDnsResolutionConfig()) {
                                                            if ((!hasDnsResolutionConfig() || getDnsResolutionConfig().equals(cluster.getDnsResolutionConfig())) && hasTypedDnsResolverConfig() == cluster.hasTypedDnsResolverConfig()) {
                                                                if ((!hasTypedDnsResolverConfig() || getTypedDnsResolverConfig().equals(cluster.getTypedDnsResolverConfig())) && hasWaitForWarmOnInit() == cluster.hasWaitForWarmOnInit()) {
                                                                    if ((!hasWaitForWarmOnInit() || getWaitForWarmOnInit().equals(cluster.getWaitForWarmOnInit())) && hasOutlierDetection() == cluster.hasOutlierDetection()) {
                                                                        if ((!hasOutlierDetection() || getOutlierDetection().equals(cluster.getOutlierDetection())) && hasCleanupInterval() == cluster.hasCleanupInterval()) {
                                                                            if ((!hasCleanupInterval() || getCleanupInterval().equals(cluster.getCleanupInterval())) && hasUpstreamBindConfig() == cluster.hasUpstreamBindConfig()) {
                                                                                if ((!hasUpstreamBindConfig() || getUpstreamBindConfig().equals(cluster.getUpstreamBindConfig())) && hasLbSubsetConfig() == cluster.hasLbSubsetConfig()) {
                                                                                    if ((!hasLbSubsetConfig() || getLbSubsetConfig().equals(cluster.getLbSubsetConfig())) && hasCommonLbConfig() == cluster.hasCommonLbConfig()) {
                                                                                        if ((!hasCommonLbConfig() || getCommonLbConfig().equals(cluster.getCommonLbConfig())) && hasTransportSocket() == cluster.hasTransportSocket()) {
                                                                                            if ((!hasTransportSocket() || getTransportSocket().equals(cluster.getTransportSocket())) && hasMetadata() == cluster.hasMetadata()) {
                                                                                                if ((!hasMetadata() || getMetadata().equals(cluster.getMetadata())) && this.protocolSelection_ == cluster.protocolSelection_ && hasUpstreamConnectionOptions() == cluster.hasUpstreamConnectionOptions()) {
                                                                                                    if ((!hasUpstreamConnectionOptions() || getUpstreamConnectionOptions().equals(cluster.getUpstreamConnectionOptions())) && getCloseConnectionsOnHostHealthFailure() == cluster.getCloseConnectionsOnHostHealthFailure() && getIgnoreHealthOnHostRemoval() == cluster.getIgnoreHealthOnHostRemoval() && getFiltersList().equals(cluster.getFiltersList()) && hasLoadBalancingPolicy() == cluster.hasLoadBalancingPolicy()) {
                                                                                                        if ((!hasLoadBalancingPolicy() || getLoadBalancingPolicy().equals(cluster.getLoadBalancingPolicy())) && hasLrsServer() == cluster.hasLrsServer()) {
                                                                                                            if ((!hasLrsServer() || getLrsServer().equals(cluster.getLrsServer())) && getTrackTimeoutBudgets() == cluster.getTrackTimeoutBudgets() && hasUpstreamConfig() == cluster.hasUpstreamConfig()) {
                                                                                                                if ((!hasUpstreamConfig() || getUpstreamConfig().equals(cluster.getUpstreamConfig())) && hasTrackClusterStats() == cluster.hasTrackClusterStats()) {
                                                                                                                    if ((!hasTrackClusterStats() || getTrackClusterStats().equals(cluster.getTrackClusterStats())) && hasPreconnectPolicy() == cluster.hasPreconnectPolicy()) {
                                                                                                                        if ((!hasPreconnectPolicy() || getPreconnectPolicy().equals(cluster.getPreconnectPolicy())) && getConnectionPoolPerDownstreamConnection() == cluster.getConnectionPoolPerDownstreamConnection() && getClusterDiscoveryTypeCase().equals(cluster.getClusterDiscoveryTypeCase())) {
                                                                                                                            int i9 = this.clusterDiscoveryTypeCase_;
                                                                                                                            if (i9 != 2) {
                                                                                                                                if (i9 == 38 && !getClusterType().equals(cluster.getClusterType())) {
                                                                                                                                    return false;
                                                                                                                                }
                                                                                                                            } else if (getTypeValue() != cluster.getTypeValue()) {
                                                                                                                                return false;
                                                                                                                            }
                                                                                                                            if (getLbConfigCase().equals(cluster.getLbConfigCase())) {
                                                                                                                                int i10 = this.lbConfigCase_;
                                                                                                                                if (i10 != 23) {
                                                                                                                                    if (i10 != 34) {
                                                                                                                                        if (i10 != 37) {
                                                                                                                                            if (i10 == 52 && !getMaglevLbConfig().equals(cluster.getMaglevLbConfig())) {
                                                                                                                                                return false;
                                                                                                                                            }
                                                                                                                                        } else if (!getLeastRequestLbConfig().equals(cluster.getLeastRequestLbConfig())) {
                                                                                                                                            return false;
                                                                                                                                        }
                                                                                                                                    } else if (!getOriginalDstLbConfig().equals(cluster.getOriginalDstLbConfig())) {
                                                                                                                                        return false;
                                                                                                                                    }
                                                                                                                                } else if (!getRingHashLbConfig().equals(cluster.getRingHashLbConfig())) {
                                                                                                                                    return false;
                                                                                                                                }
                                                                                                                                return this.unknownFields.equals(cluster.unknownFields);
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

    public String getAltStatName() {
        Object obj = this.altStatName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.altStatName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAltStatNameBytes() {
        Object obj = this.altStatName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.altStatName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public CircuitBreakers getCircuitBreakers() {
        CircuitBreakers circuitBreakers = this.circuitBreakers_;
        return circuitBreakers == null ? CircuitBreakers.getDefaultInstance() : circuitBreakers;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.b getCircuitBreakersOrBuilder() {
        return getCircuitBreakers();
    }

    public Duration getCleanupInterval() {
        Duration duration = this.cleanupInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getCleanupIntervalOrBuilder() {
        return getCleanupInterval();
    }

    public boolean getCloseConnectionsOnHostHealthFailure() {
        return this.closeConnectionsOnHostHealthFailure_;
    }

    public ClusterDiscoveryTypeCase getClusterDiscoveryTypeCase() {
        return ClusterDiscoveryTypeCase.forNumber(this.clusterDiscoveryTypeCase_);
    }

    public CustomClusterType getClusterType() {
        if (this.clusterDiscoveryTypeCase_ == 38) {
            return (CustomClusterType) this.clusterDiscoveryType_;
        }
        return CustomClusterType.getDefaultInstance();
    }

    public e getClusterTypeOrBuilder() {
        if (this.clusterDiscoveryTypeCase_ == 38) {
            return (CustomClusterType) this.clusterDiscoveryType_;
        }
        return CustomClusterType.getDefaultInstance();
    }

    @Deprecated
    public HttpProtocolOptions getCommonHttpProtocolOptions() {
        HttpProtocolOptions httpProtocolOptions = this.commonHttpProtocolOptions_;
        return httpProtocolOptions == null ? HttpProtocolOptions.getDefaultInstance() : httpProtocolOptions;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0 getCommonHttpProtocolOptionsOrBuilder() {
        return getCommonHttpProtocolOptions();
    }

    public CommonLbConfig getCommonLbConfig() {
        CommonLbConfig commonLbConfig = this.commonLbConfig_;
        return commonLbConfig == null ? CommonLbConfig.getDefaultInstance() : commonLbConfig;
    }

    public d getCommonLbConfigOrBuilder() {
        return getCommonLbConfig();
    }

    public Duration getConnectTimeout() {
        Duration duration = this.connectTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getConnectTimeoutOrBuilder() {
        return getConnectTimeout();
    }

    public boolean getConnectionPoolPerDownstreamConnection() {
        return this.connectionPoolPerDownstreamConnection_;
    }

    public RefreshRate getDnsFailureRefreshRate() {
        RefreshRate refreshRate = this.dnsFailureRefreshRate_;
        return refreshRate == null ? RefreshRate.getDefaultInstance() : refreshRate;
    }

    public l getDnsFailureRefreshRateOrBuilder() {
        return getDnsFailureRefreshRate();
    }

    public DnsLookupFamily getDnsLookupFamily() {
        DnsLookupFamily valueOf = DnsLookupFamily.valueOf(this.dnsLookupFamily_);
        return valueOf == null ? DnsLookupFamily.UNRECOGNIZED : valueOf;
    }

    public int getDnsLookupFamilyValue() {
        return this.dnsLookupFamily_;
    }

    public Duration getDnsRefreshRate() {
        Duration duration = this.dnsRefreshRate_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getDnsRefreshRateOrBuilder() {
        return getDnsRefreshRate();
    }

    public DnsResolutionConfig getDnsResolutionConfig() {
        DnsResolutionConfig dnsResolutionConfig = this.dnsResolutionConfig_;
        return dnsResolutionConfig == null ? DnsResolutionConfig.getDefaultInstance() : dnsResolutionConfig;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.o getDnsResolutionConfigOrBuilder() {
        return getDnsResolutionConfig();
    }

    @Deprecated
    public Address getDnsResolvers(int i9) {
        return this.dnsResolvers_.get(i9);
    }

    @Deprecated
    public int getDnsResolversCount() {
        return this.dnsResolvers_.size();
    }

    @Deprecated
    public List<Address> getDnsResolversList() {
        return this.dnsResolvers_;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getDnsResolversOrBuilder(int i9) {
        return this.dnsResolvers_.get(i9);
    }

    @Deprecated
    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> getDnsResolversOrBuilderList() {
        return this.dnsResolvers_;
    }

    public EdsClusterConfig getEdsClusterConfig() {
        EdsClusterConfig edsClusterConfig = this.edsClusterConfig_;
        return edsClusterConfig == null ? EdsClusterConfig.getDefaultInstance() : edsClusterConfig;
    }

    public f getEdsClusterConfigOrBuilder() {
        return getEdsClusterConfig();
    }

    public Filter getFilters(int i9) {
        return this.filters_.get(i9);
    }

    public int getFiltersCount() {
        return this.filters_.size();
    }

    public List<Filter> getFiltersList() {
        return this.filters_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.e getFiltersOrBuilder(int i9) {
        return this.filters_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.e> getFiltersOrBuilderList() {
        return this.filters_;
    }

    public HealthCheck getHealthChecks(int i9) {
        return this.healthChecks_.get(i9);
    }

    public int getHealthChecksCount() {
        return this.healthChecks_.size();
    }

    public List<HealthCheck> getHealthChecksList() {
        return this.healthChecks_;
    }

    public a0 getHealthChecksOrBuilder(int i9) {
        return this.healthChecks_.get(i9);
    }

    public List<? extends a0> getHealthChecksOrBuilderList() {
        return this.healthChecks_;
    }

    @Deprecated
    public Http2ProtocolOptions getHttp2ProtocolOptions() {
        Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
        return http2ProtocolOptions == null ? Http2ProtocolOptions.getDefaultInstance() : http2ProtocolOptions;
    }

    @Deprecated
    public d0 getHttp2ProtocolOptionsOrBuilder() {
        return getHttp2ProtocolOptions();
    }

    @Deprecated
    public Http1ProtocolOptions getHttpProtocolOptions() {
        Http1ProtocolOptions http1ProtocolOptions = this.httpProtocolOptions_;
        return http1ProtocolOptions == null ? Http1ProtocolOptions.getDefaultInstance() : http1ProtocolOptions;
    }

    @Deprecated
    public c0 getHttpProtocolOptionsOrBuilder() {
        return getHttpProtocolOptions();
    }

    public boolean getIgnoreHealthOnHostRemoval() {
        return this.ignoreHealthOnHostRemoval_;
    }

    public LbConfigCase getLbConfigCase() {
        return LbConfigCase.forNumber(this.lbConfigCase_);
    }

    public LbPolicy getLbPolicy() {
        LbPolicy valueOf = LbPolicy.valueOf(this.lbPolicy_);
        return valueOf == null ? LbPolicy.UNRECOGNIZED : valueOf;
    }

    public int getLbPolicyValue() {
        return this.lbPolicy_;
    }

    public LbSubsetConfig getLbSubsetConfig() {
        LbSubsetConfig lbSubsetConfig = this.lbSubsetConfig_;
        return lbSubsetConfig == null ? LbSubsetConfig.getDefaultInstance() : lbSubsetConfig;
    }

    public g getLbSubsetConfigOrBuilder() {
        return getLbSubsetConfig();
    }

    public LeastRequestLbConfig getLeastRequestLbConfig() {
        if (this.lbConfigCase_ == 37) {
            return (LeastRequestLbConfig) this.lbConfig_;
        }
        return LeastRequestLbConfig.getDefaultInstance();
    }

    public h getLeastRequestLbConfigOrBuilder() {
        if (this.lbConfigCase_ == 37) {
            return (LeastRequestLbConfig) this.lbConfig_;
        }
        return LeastRequestLbConfig.getDefaultInstance();
    }

    public ClusterLoadAssignment getLoadAssignment() {
        ClusterLoadAssignment clusterLoadAssignment = this.loadAssignment_;
        return clusterLoadAssignment == null ? ClusterLoadAssignment.getDefaultInstance() : clusterLoadAssignment;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.a getLoadAssignmentOrBuilder() {
        return getLoadAssignment();
    }

    public LoadBalancingPolicy getLoadBalancingPolicy() {
        LoadBalancingPolicy loadBalancingPolicy = this.loadBalancingPolicy_;
        return loadBalancingPolicy == null ? LoadBalancingPolicy.getDefaultInstance() : loadBalancingPolicy;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.g getLoadBalancingPolicyOrBuilder() {
        return getLoadBalancingPolicy();
    }

    public ConfigSource getLrsServer() {
        ConfigSource configSource = this.lrsServer_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k getLrsServerOrBuilder() {
        return getLrsServer();
    }

    public MaglevLbConfig getMaglevLbConfig() {
        if (this.lbConfigCase_ == 52) {
            return (MaglevLbConfig) this.lbConfig_;
        }
        return MaglevLbConfig.getDefaultInstance();
    }

    public i getMaglevLbConfigOrBuilder() {
        if (this.lbConfigCase_ == 52) {
            return (MaglevLbConfig) this.lbConfig_;
        }
        return MaglevLbConfig.getDefaultInstance();
    }

    @Deprecated
    public UInt32Value getMaxRequestsPerConnection() {
        UInt32Value uInt32Value = this.maxRequestsPerConnection_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    @Deprecated
    public e3 getMaxRequestsPerConnectionOrBuilder() {
        return getMaxRequestsPerConnection();
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

    public OriginalDstLbConfig getOriginalDstLbConfig() {
        if (this.lbConfigCase_ == 34) {
            return (OriginalDstLbConfig) this.lbConfig_;
        }
        return OriginalDstLbConfig.getDefaultInstance();
    }

    public j getOriginalDstLbConfigOrBuilder() {
        if (this.lbConfigCase_ == 34) {
            return (OriginalDstLbConfig) this.lbConfig_;
        }
        return OriginalDstLbConfig.getDefaultInstance();
    }

    public OutlierDetection getOutlierDetection() {
        OutlierDetection outlierDetection = this.outlierDetection_;
        return outlierDetection == null ? OutlierDetection.getDefaultInstance() : outlierDetection;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.h getOutlierDetectionOrBuilder() {
        return getOutlierDetection();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Cluster> getParserForType() {
        return PARSER;
    }

    public UInt32Value getPerConnectionBufferLimitBytes() {
        UInt32Value uInt32Value = this.perConnectionBufferLimitBytes_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getPerConnectionBufferLimitBytesOrBuilder() {
        return getPerConnectionBufferLimitBytes();
    }

    public PreconnectPolicy getPreconnectPolicy() {
        PreconnectPolicy preconnectPolicy = this.preconnectPolicy_;
        return preconnectPolicy == null ? PreconnectPolicy.getDefaultInstance() : preconnectPolicy;
    }

    public k getPreconnectPolicyOrBuilder() {
        return getPreconnectPolicy();
    }

    @Deprecated
    public ClusterProtocolSelection getProtocolSelection() {
        ClusterProtocolSelection valueOf = ClusterProtocolSelection.valueOf(this.protocolSelection_);
        return valueOf == null ? ClusterProtocolSelection.UNRECOGNIZED : valueOf;
    }

    @Deprecated
    public int getProtocolSelectionValue() {
        return this.protocolSelection_;
    }

    public boolean getRespectDnsTtl() {
        return this.respectDnsTtl_;
    }

    public RingHashLbConfig getRingHashLbConfig() {
        if (this.lbConfigCase_ == 23) {
            return (RingHashLbConfig) this.lbConfig_;
        }
        return RingHashLbConfig.getDefaultInstance();
    }

    public m getRingHashLbConfigOrBuilder() {
        if (this.lbConfigCase_ == 23) {
            return (RingHashLbConfig) this.lbConfig_;
        }
        return RingHashLbConfig.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (this.clusterDiscoveryTypeCase_ == 2) {
            computeStringSize += CodedOutputStream.l(2, ((Integer) this.clusterDiscoveryType_).intValue());
        }
        if (this.edsClusterConfig_ != null) {
            computeStringSize += CodedOutputStream.G(3, getEdsClusterConfig());
        }
        if (this.connectTimeout_ != null) {
            computeStringSize += CodedOutputStream.G(4, getConnectTimeout());
        }
        if (this.perConnectionBufferLimitBytes_ != null) {
            computeStringSize += CodedOutputStream.G(5, getPerConnectionBufferLimitBytes());
        }
        if (this.lbPolicy_ != LbPolicy.ROUND_ROBIN.getNumber()) {
            computeStringSize += CodedOutputStream.l(6, this.lbPolicy_);
        }
        for (int i10 = 0; i10 < this.healthChecks_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(8, this.healthChecks_.get(i10));
        }
        if (this.maxRequestsPerConnection_ != null) {
            computeStringSize += CodedOutputStream.G(9, getMaxRequestsPerConnection());
        }
        if (this.circuitBreakers_ != null) {
            computeStringSize += CodedOutputStream.G(10, getCircuitBreakers());
        }
        if (this.httpProtocolOptions_ != null) {
            computeStringSize += CodedOutputStream.G(13, getHttpProtocolOptions());
        }
        if (this.http2ProtocolOptions_ != null) {
            computeStringSize += CodedOutputStream.G(14, getHttp2ProtocolOptions());
        }
        if (this.dnsRefreshRate_ != null) {
            computeStringSize += CodedOutputStream.G(16, getDnsRefreshRate());
        }
        if (this.dnsLookupFamily_ != DnsLookupFamily.AUTO.getNumber()) {
            computeStringSize += CodedOutputStream.l(17, this.dnsLookupFamily_);
        }
        for (int i11 = 0; i11 < this.dnsResolvers_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(18, this.dnsResolvers_.get(i11));
        }
        if (this.outlierDetection_ != null) {
            computeStringSize += CodedOutputStream.G(19, getOutlierDetection());
        }
        if (this.cleanupInterval_ != null) {
            computeStringSize += CodedOutputStream.G(20, getCleanupInterval());
        }
        if (this.upstreamBindConfig_ != null) {
            computeStringSize += CodedOutputStream.G(21, getUpstreamBindConfig());
        }
        if (this.lbSubsetConfig_ != null) {
            computeStringSize += CodedOutputStream.G(22, getLbSubsetConfig());
        }
        if (this.lbConfigCase_ == 23) {
            computeStringSize += CodedOutputStream.G(23, (RingHashLbConfig) this.lbConfig_);
        }
        if (this.transportSocket_ != null) {
            computeStringSize += CodedOutputStream.G(24, getTransportSocket());
        }
        if (this.metadata_ != null) {
            computeStringSize += CodedOutputStream.G(25, getMetadata());
        }
        if (this.protocolSelection_ != ClusterProtocolSelection.USE_CONFIGURED_PROTOCOL.getNumber()) {
            computeStringSize += CodedOutputStream.l(26, this.protocolSelection_);
        }
        if (this.commonLbConfig_ != null) {
            computeStringSize += CodedOutputStream.G(27, getCommonLbConfig());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.altStatName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(28, this.altStatName_);
        }
        if (this.commonHttpProtocolOptions_ != null) {
            computeStringSize += CodedOutputStream.G(29, getCommonHttpProtocolOptions());
        }
        if (this.upstreamConnectionOptions_ != null) {
            computeStringSize += CodedOutputStream.G(30, getUpstreamConnectionOptions());
        }
        boolean z10 = this.closeConnectionsOnHostHealthFailure_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(31, z10);
        }
        boolean z11 = this.ignoreHealthOnHostRemoval_;
        if (z11) {
            computeStringSize += CodedOutputStream.e(32, z11);
        }
        if (this.loadAssignment_ != null) {
            computeStringSize += CodedOutputStream.G(33, getLoadAssignment());
        }
        if (this.lbConfigCase_ == 34) {
            computeStringSize += CodedOutputStream.G(34, (OriginalDstLbConfig) this.lbConfig_);
        }
        for (Map.Entry<String, Any> entry : internalGetTypedExtensionProtocolOptions().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(36, o.f47685a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (this.lbConfigCase_ == 37) {
            computeStringSize += CodedOutputStream.G(37, (LeastRequestLbConfig) this.lbConfig_);
        }
        if (this.clusterDiscoveryTypeCase_ == 38) {
            computeStringSize += CodedOutputStream.G(38, (CustomClusterType) this.clusterDiscoveryType_);
        }
        boolean z12 = this.respectDnsTtl_;
        if (z12) {
            computeStringSize += CodedOutputStream.e(39, z12);
        }
        for (int i12 = 0; i12 < this.filters_.size(); i12++) {
            computeStringSize += CodedOutputStream.G(40, this.filters_.get(i12));
        }
        if (this.loadBalancingPolicy_ != null) {
            computeStringSize += CodedOutputStream.G(41, getLoadBalancingPolicy());
        }
        if (this.lrsServer_ != null) {
            computeStringSize += CodedOutputStream.G(42, getLrsServer());
        }
        for (int i13 = 0; i13 < this.transportSocketMatches_.size(); i13++) {
            computeStringSize += CodedOutputStream.G(43, this.transportSocketMatches_.get(i13));
        }
        if (this.dnsFailureRefreshRate_ != null) {
            computeStringSize += CodedOutputStream.G(44, getDnsFailureRefreshRate());
        }
        boolean z13 = this.useTcpForDnsLookups_;
        if (z13) {
            computeStringSize += CodedOutputStream.e(45, z13);
        }
        if (this.upstreamHttpProtocolOptions_ != null) {
            computeStringSize += CodedOutputStream.G(46, getUpstreamHttpProtocolOptions());
        }
        boolean z14 = this.trackTimeoutBudgets_;
        if (z14) {
            computeStringSize += CodedOutputStream.e(47, z14);
        }
        if (this.upstreamConfig_ != null) {
            computeStringSize += CodedOutputStream.G(48, getUpstreamConfig());
        }
        if (this.trackClusterStats_ != null) {
            computeStringSize += CodedOutputStream.G(49, getTrackClusterStats());
        }
        if (this.preconnectPolicy_ != null) {
            computeStringSize += CodedOutputStream.G(50, getPreconnectPolicy());
        }
        boolean z15 = this.connectionPoolPerDownstreamConnection_;
        if (z15) {
            computeStringSize += CodedOutputStream.e(51, z15);
        }
        if (this.lbConfigCase_ == 52) {
            computeStringSize += CodedOutputStream.G(52, (MaglevLbConfig) this.lbConfig_);
        }
        if (this.dnsResolutionConfig_ != null) {
            computeStringSize += CodedOutputStream.G(53, getDnsResolutionConfig());
        }
        if (this.waitForWarmOnInit_ != null) {
            computeStringSize += CodedOutputStream.G(54, getWaitForWarmOnInit());
        }
        if (this.typedDnsResolverConfig_ != null) {
            computeStringSize += CodedOutputStream.G(55, getTypedDnsResolverConfig());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TrackClusterStats getTrackClusterStats() {
        TrackClusterStats trackClusterStats = this.trackClusterStats_;
        return trackClusterStats == null ? TrackClusterStats.getDefaultInstance() : trackClusterStats;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.j getTrackClusterStatsOrBuilder() {
        return getTrackClusterStats();
    }

    @Deprecated
    public boolean getTrackTimeoutBudgets() {
        return this.trackTimeoutBudgets_;
    }

    public TransportSocket getTransportSocket() {
        TransportSocket transportSocket = this.transportSocket_;
        return transportSocket == null ? TransportSocket.getDefaultInstance() : transportSocket;
    }

    public TransportSocketMatch getTransportSocketMatches(int i9) {
        return this.transportSocketMatches_.get(i9);
    }

    public int getTransportSocketMatchesCount() {
        return this.transportSocketMatches_.size();
    }

    public List<TransportSocketMatch> getTransportSocketMatchesList() {
        return this.transportSocketMatches_;
    }

    public n getTransportSocketMatchesOrBuilder(int i9) {
        return this.transportSocketMatches_.get(i9);
    }

    public List<? extends n> getTransportSocketMatchesOrBuilderList() {
        return this.transportSocketMatches_;
    }

    public h1 getTransportSocketOrBuilder() {
        return getTransportSocket();
    }

    public DiscoveryType getType() {
        if (this.clusterDiscoveryTypeCase_ == 2) {
            DiscoveryType valueOf = DiscoveryType.valueOf(((Integer) this.clusterDiscoveryType_).intValue());
            return valueOf == null ? DiscoveryType.UNRECOGNIZED : valueOf;
        }
        return DiscoveryType.STATIC;
    }

    public int getTypeValue() {
        if (this.clusterDiscoveryTypeCase_ == 2) {
            return ((Integer) this.clusterDiscoveryType_).intValue();
        }
        return 0;
    }

    public TypedExtensionConfig getTypedDnsResolverConfig() {
        TypedExtensionConfig typedExtensionConfig = this.typedDnsResolverConfig_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getTypedDnsResolverConfigOrBuilder() {
        return getTypedDnsResolverConfig();
    }

    @Deprecated
    public Map<String, Any> getTypedExtensionProtocolOptions() {
        return getTypedExtensionProtocolOptionsMap();
    }

    public int getTypedExtensionProtocolOptionsCount() {
        return internalGetTypedExtensionProtocolOptions().i().size();
    }

    public Map<String, Any> getTypedExtensionProtocolOptionsMap() {
        return internalGetTypedExtensionProtocolOptions().i();
    }

    public Any getTypedExtensionProtocolOptionsOrDefault(String str, Any any) {
        Objects.requireNonNull(str, "map key");
        Map<String, Any> i9 = internalGetTypedExtensionProtocolOptions().i();
        return i9.containsKey(str) ? i9.get(str) : any;
    }

    public Any getTypedExtensionProtocolOptionsOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Any> i9 = internalGetTypedExtensionProtocolOptions().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BindConfig getUpstreamBindConfig() {
        BindConfig bindConfig = this.upstreamBindConfig_;
        return bindConfig == null ? BindConfig.getDefaultInstance() : bindConfig;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h getUpstreamBindConfigOrBuilder() {
        return getUpstreamBindConfig();
    }

    public TypedExtensionConfig getUpstreamConfig() {
        TypedExtensionConfig typedExtensionConfig = this.upstreamConfig_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getUpstreamConfigOrBuilder() {
        return getUpstreamConfig();
    }

    public UpstreamConnectionOptions getUpstreamConnectionOptions() {
        UpstreamConnectionOptions upstreamConnectionOptions = this.upstreamConnectionOptions_;
        return upstreamConnectionOptions == null ? UpstreamConnectionOptions.getDefaultInstance() : upstreamConnectionOptions;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.k getUpstreamConnectionOptionsOrBuilder() {
        return getUpstreamConnectionOptions();
    }

    @Deprecated
    public UpstreamHttpProtocolOptions getUpstreamHttpProtocolOptions() {
        UpstreamHttpProtocolOptions upstreamHttpProtocolOptions = this.upstreamHttpProtocolOptions_;
        return upstreamHttpProtocolOptions == null ? UpstreamHttpProtocolOptions.getDefaultInstance() : upstreamHttpProtocolOptions;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l1 getUpstreamHttpProtocolOptionsOrBuilder() {
        return getUpstreamHttpProtocolOptions();
    }

    @Deprecated
    public boolean getUseTcpForDnsLookups() {
        return this.useTcpForDnsLookups_;
    }

    public BoolValue getWaitForWarmOnInit() {
        BoolValue boolValue = this.waitForWarmOnInit_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getWaitForWarmOnInitOrBuilder() {
        return getWaitForWarmOnInit();
    }

    public boolean hasCircuitBreakers() {
        return this.circuitBreakers_ != null;
    }

    public boolean hasCleanupInterval() {
        return this.cleanupInterval_ != null;
    }

    public boolean hasClusterType() {
        return this.clusterDiscoveryTypeCase_ == 38;
    }

    @Deprecated
    public boolean hasCommonHttpProtocolOptions() {
        return this.commonHttpProtocolOptions_ != null;
    }

    public boolean hasCommonLbConfig() {
        return this.commonLbConfig_ != null;
    }

    public boolean hasConnectTimeout() {
        return this.connectTimeout_ != null;
    }

    public boolean hasDnsFailureRefreshRate() {
        return this.dnsFailureRefreshRate_ != null;
    }

    public boolean hasDnsRefreshRate() {
        return this.dnsRefreshRate_ != null;
    }

    public boolean hasDnsResolutionConfig() {
        return this.dnsResolutionConfig_ != null;
    }

    public boolean hasEdsClusterConfig() {
        return this.edsClusterConfig_ != null;
    }

    @Deprecated
    public boolean hasHttp2ProtocolOptions() {
        return this.http2ProtocolOptions_ != null;
    }

    @Deprecated
    public boolean hasHttpProtocolOptions() {
        return this.httpProtocolOptions_ != null;
    }

    public boolean hasLbSubsetConfig() {
        return this.lbSubsetConfig_ != null;
    }

    public boolean hasLeastRequestLbConfig() {
        return this.lbConfigCase_ == 37;
    }

    public boolean hasLoadAssignment() {
        return this.loadAssignment_ != null;
    }

    public boolean hasLoadBalancingPolicy() {
        return this.loadBalancingPolicy_ != null;
    }

    public boolean hasLrsServer() {
        return this.lrsServer_ != null;
    }

    public boolean hasMaglevLbConfig() {
        return this.lbConfigCase_ == 52;
    }

    @Deprecated
    public boolean hasMaxRequestsPerConnection() {
        return this.maxRequestsPerConnection_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasOriginalDstLbConfig() {
        return this.lbConfigCase_ == 34;
    }

    public boolean hasOutlierDetection() {
        return this.outlierDetection_ != null;
    }

    public boolean hasPerConnectionBufferLimitBytes() {
        return this.perConnectionBufferLimitBytes_ != null;
    }

    public boolean hasPreconnectPolicy() {
        return this.preconnectPolicy_ != null;
    }

    public boolean hasRingHashLbConfig() {
        return this.lbConfigCase_ == 23;
    }

    public boolean hasTrackClusterStats() {
        return this.trackClusterStats_ != null;
    }

    public boolean hasTransportSocket() {
        return this.transportSocket_ != null;
    }

    public boolean hasType() {
        return this.clusterDiscoveryTypeCase_ == 2;
    }

    public boolean hasTypedDnsResolverConfig() {
        return this.typedDnsResolverConfig_ != null;
    }

    public boolean hasUpstreamBindConfig() {
        return this.upstreamBindConfig_ != null;
    }

    public boolean hasUpstreamConfig() {
        return this.upstreamConfig_ != null;
    }

    public boolean hasUpstreamConnectionOptions() {
        return this.upstreamConnectionOptions_ != null;
    }

    @Deprecated
    public boolean hasUpstreamHttpProtocolOptions() {
        return this.upstreamHttpProtocolOptions_ != null;
    }

    public boolean hasWaitForWarmOnInit() {
        return this.waitForWarmOnInit_ != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03bf  */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hashCode() {
        /*
            Method dump skipped, instructions count: 985
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster.hashCode():int");
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.f47735d.d(Cluster.class, c.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 36) {
            return internalGetTypedExtensionProtocolOptions();
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
        return new Cluster();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.clusterDiscoveryTypeCase_ == 2) {
            codedOutputStream.v0(2, ((Integer) this.clusterDiscoveryType_).intValue());
        }
        if (this.edsClusterConfig_ != null) {
            codedOutputStream.L0(3, getEdsClusterConfig());
        }
        if (this.connectTimeout_ != null) {
            codedOutputStream.L0(4, getConnectTimeout());
        }
        if (this.perConnectionBufferLimitBytes_ != null) {
            codedOutputStream.L0(5, getPerConnectionBufferLimitBytes());
        }
        if (this.lbPolicy_ != LbPolicy.ROUND_ROBIN.getNumber()) {
            codedOutputStream.v0(6, this.lbPolicy_);
        }
        for (int i9 = 0; i9 < this.healthChecks_.size(); i9++) {
            codedOutputStream.L0(8, this.healthChecks_.get(i9));
        }
        if (this.maxRequestsPerConnection_ != null) {
            codedOutputStream.L0(9, getMaxRequestsPerConnection());
        }
        if (this.circuitBreakers_ != null) {
            codedOutputStream.L0(10, getCircuitBreakers());
        }
        if (this.httpProtocolOptions_ != null) {
            codedOutputStream.L0(13, getHttpProtocolOptions());
        }
        if (this.http2ProtocolOptions_ != null) {
            codedOutputStream.L0(14, getHttp2ProtocolOptions());
        }
        if (this.dnsRefreshRate_ != null) {
            codedOutputStream.L0(16, getDnsRefreshRate());
        }
        if (this.dnsLookupFamily_ != DnsLookupFamily.AUTO.getNumber()) {
            codedOutputStream.v0(17, this.dnsLookupFamily_);
        }
        for (int i10 = 0; i10 < this.dnsResolvers_.size(); i10++) {
            codedOutputStream.L0(18, this.dnsResolvers_.get(i10));
        }
        if (this.outlierDetection_ != null) {
            codedOutputStream.L0(19, getOutlierDetection());
        }
        if (this.cleanupInterval_ != null) {
            codedOutputStream.L0(20, getCleanupInterval());
        }
        if (this.upstreamBindConfig_ != null) {
            codedOutputStream.L0(21, getUpstreamBindConfig());
        }
        if (this.lbSubsetConfig_ != null) {
            codedOutputStream.L0(22, getLbSubsetConfig());
        }
        if (this.lbConfigCase_ == 23) {
            codedOutputStream.L0(23, (RingHashLbConfig) this.lbConfig_);
        }
        if (this.transportSocket_ != null) {
            codedOutputStream.L0(24, getTransportSocket());
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(25, getMetadata());
        }
        if (this.protocolSelection_ != ClusterProtocolSelection.USE_CONFIGURED_PROTOCOL.getNumber()) {
            codedOutputStream.v0(26, this.protocolSelection_);
        }
        if (this.commonLbConfig_ != null) {
            codedOutputStream.L0(27, getCommonLbConfig());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.altStatName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 28, this.altStatName_);
        }
        if (this.commonHttpProtocolOptions_ != null) {
            codedOutputStream.L0(29, getCommonHttpProtocolOptions());
        }
        if (this.upstreamConnectionOptions_ != null) {
            codedOutputStream.L0(30, getUpstreamConnectionOptions());
        }
        boolean z10 = this.closeConnectionsOnHostHealthFailure_;
        if (z10) {
            codedOutputStream.n0(31, z10);
        }
        boolean z11 = this.ignoreHealthOnHostRemoval_;
        if (z11) {
            codedOutputStream.n0(32, z11);
        }
        if (this.loadAssignment_ != null) {
            codedOutputStream.L0(33, getLoadAssignment());
        }
        if (this.lbConfigCase_ == 34) {
            codedOutputStream.L0(34, (OriginalDstLbConfig) this.lbConfig_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetTypedExtensionProtocolOptions(), o.f47685a, 36);
        if (this.lbConfigCase_ == 37) {
            codedOutputStream.L0(37, (LeastRequestLbConfig) this.lbConfig_);
        }
        if (this.clusterDiscoveryTypeCase_ == 38) {
            codedOutputStream.L0(38, (CustomClusterType) this.clusterDiscoveryType_);
        }
        boolean z12 = this.respectDnsTtl_;
        if (z12) {
            codedOutputStream.n0(39, z12);
        }
        for (int i11 = 0; i11 < this.filters_.size(); i11++) {
            codedOutputStream.L0(40, this.filters_.get(i11));
        }
        if (this.loadBalancingPolicy_ != null) {
            codedOutputStream.L0(41, getLoadBalancingPolicy());
        }
        if (this.lrsServer_ != null) {
            codedOutputStream.L0(42, getLrsServer());
        }
        for (int i12 = 0; i12 < this.transportSocketMatches_.size(); i12++) {
            codedOutputStream.L0(43, this.transportSocketMatches_.get(i12));
        }
        if (this.dnsFailureRefreshRate_ != null) {
            codedOutputStream.L0(44, getDnsFailureRefreshRate());
        }
        boolean z13 = this.useTcpForDnsLookups_;
        if (z13) {
            codedOutputStream.n0(45, z13);
        }
        if (this.upstreamHttpProtocolOptions_ != null) {
            codedOutputStream.L0(46, getUpstreamHttpProtocolOptions());
        }
        boolean z14 = this.trackTimeoutBudgets_;
        if (z14) {
            codedOutputStream.n0(47, z14);
        }
        if (this.upstreamConfig_ != null) {
            codedOutputStream.L0(48, getUpstreamConfig());
        }
        if (this.trackClusterStats_ != null) {
            codedOutputStream.L0(49, getTrackClusterStats());
        }
        if (this.preconnectPolicy_ != null) {
            codedOutputStream.L0(50, getPreconnectPolicy());
        }
        boolean z15 = this.connectionPoolPerDownstreamConnection_;
        if (z15) {
            codedOutputStream.n0(51, z15);
        }
        if (this.lbConfigCase_ == 52) {
            codedOutputStream.L0(52, (MaglevLbConfig) this.lbConfig_);
        }
        if (this.dnsResolutionConfig_ != null) {
            codedOutputStream.L0(53, getDnsResolutionConfig());
        }
        if (this.waitForWarmOnInit_ != null) {
            codedOutputStream.L0(54, getWaitForWarmOnInit());
        }
        if (this.typedDnsResolverConfig_ != null) {
            codedOutputStream.L0(55, getTypedDnsResolverConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Cluster(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Cluster cluster) {
        return DEFAULT_INSTANCE.toBuilder().H0(cluster);
    }

    public static Cluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Cluster(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.clusterDiscoveryTypeCase_ = 0;
        this.lbConfigCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Cluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Cluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Cluster getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).H0(this);
    }

    public static Cluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Cluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static Cluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Cluster() {
        this.clusterDiscoveryTypeCase_ = 0;
        this.lbConfigCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.transportSocketMatches_ = Collections.emptyList();
        this.name_ = "";
        this.altStatName_ = "";
        this.lbPolicy_ = 0;
        this.healthChecks_ = Collections.emptyList();
        this.dnsLookupFamily_ = 0;
        this.dnsResolvers_ = Collections.emptyList();
        this.protocolSelection_ = 0;
        this.filters_ = Collections.emptyList();
    }

    public static Cluster parseFrom(InputStream inputStream) throws IOException {
        return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Cluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Cluster parseFrom(p pVar) throws IOException {
        return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Cluster parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private Cluster(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.name_ = pVar.K();
                            continue;
                        case 16:
                            int u10 = pVar.u();
                            this.clusterDiscoveryTypeCase_ = 2;
                            this.clusterDiscoveryType_ = Integer.valueOf(u10);
                            continue;
                        case 26:
                            EdsClusterConfig edsClusterConfig = this.edsClusterConfig_;
                            EdsClusterConfig.b builder = edsClusterConfig != null ? edsClusterConfig.toBuilder() : null;
                            EdsClusterConfig edsClusterConfig2 = (EdsClusterConfig) pVar.B(EdsClusterConfig.parser(), f0Var);
                            this.edsClusterConfig_ = edsClusterConfig2;
                            if (builder != null) {
                                builder.h0(edsClusterConfig2);
                                this.edsClusterConfig_ = builder.I();
                            } else {
                                continue;
                            }
                        case 34:
                            Duration duration = this.connectTimeout_;
                            Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.connectTimeout_ = duration2;
                            if (builder2 != null) {
                                builder2.e0(duration2);
                                this.connectTimeout_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 42:
                            UInt32Value uInt32Value = this.perConnectionBufferLimitBytes_;
                            UInt32Value.b builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.perConnectionBufferLimitBytes_ = uInt32Value2;
                            if (builder3 != null) {
                                builder3.g0(uInt32Value2);
                                this.perConnectionBufferLimitBytes_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 48:
                            this.lbPolicy_ = pVar.u();
                            continue;
                        case 66:
                            if (!(z11 & true)) {
                                this.healthChecks_ = new ArrayList();
                                z11 |= true;
                            }
                            this.healthChecks_.add((HealthCheck) pVar.B(HealthCheck.parser(), f0Var));
                            continue;
                        case 74:
                            UInt32Value uInt32Value3 = this.maxRequestsPerConnection_;
                            UInt32Value.b builder4 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxRequestsPerConnection_ = uInt32Value4;
                            if (builder4 != null) {
                                builder4.g0(uInt32Value4);
                                this.maxRequestsPerConnection_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 82:
                            CircuitBreakers circuitBreakers = this.circuitBreakers_;
                            CircuitBreakers.b builder5 = circuitBreakers != null ? circuitBreakers.toBuilder() : null;
                            CircuitBreakers circuitBreakers2 = (CircuitBreakers) pVar.B(CircuitBreakers.parser(), f0Var);
                            this.circuitBreakers_ = circuitBreakers2;
                            if (builder5 != null) {
                                builder5.i0(circuitBreakers2);
                                this.circuitBreakers_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 106:
                            Http1ProtocolOptions http1ProtocolOptions = this.httpProtocolOptions_;
                            Http1ProtocolOptions.c builder6 = http1ProtocolOptions != null ? http1ProtocolOptions.toBuilder() : null;
                            Http1ProtocolOptions http1ProtocolOptions2 = (Http1ProtocolOptions) pVar.B(Http1ProtocolOptions.parser(), f0Var);
                            this.httpProtocolOptions_ = http1ProtocolOptions2;
                            if (builder6 != null) {
                                builder6.h0(http1ProtocolOptions2);
                                this.httpProtocolOptions_ = builder6.I();
                            } else {
                                continue;
                            }
                        case 114:
                            Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
                            Http2ProtocolOptions.b builder7 = http2ProtocolOptions != null ? http2ProtocolOptions.toBuilder() : null;
                            Http2ProtocolOptions http2ProtocolOptions2 = (Http2ProtocolOptions) pVar.B(Http2ProtocolOptions.parser(), f0Var);
                            this.http2ProtocolOptions_ = http2ProtocolOptions2;
                            if (builder7 != null) {
                                builder7.j0(http2ProtocolOptions2);
                                this.http2ProtocolOptions_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 130:
                            Duration duration3 = this.dnsRefreshRate_;
                            Duration.b builder8 = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.dnsRefreshRate_ = duration4;
                            if (builder8 != null) {
                                builder8.e0(duration4);
                                this.dnsRefreshRate_ = builder8.I();
                            } else {
                                continue;
                            }
                        case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
                            this.dnsLookupFamily_ = pVar.u();
                            continue;
                        case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                            if (!(z11 & true)) {
                                this.dnsResolvers_ = new ArrayList();
                                z11 |= true;
                            }
                            this.dnsResolvers_.add((Address) pVar.B(Address.parser(), f0Var));
                            continue;
                        case 154:
                            OutlierDetection outlierDetection = this.outlierDetection_;
                            OutlierDetection.b builder9 = outlierDetection != null ? outlierDetection.toBuilder() : null;
                            OutlierDetection outlierDetection2 = (OutlierDetection) pVar.B(OutlierDetection.parser(), f0Var);
                            this.outlierDetection_ = outlierDetection2;
                            if (builder9 != null) {
                                builder9.v0(outlierDetection2);
                                this.outlierDetection_ = builder9.I();
                            } else {
                                continue;
                            }
                        case 162:
                            Duration duration5 = this.cleanupInterval_;
                            Duration.b builder10 = duration5 != null ? duration5.toBuilder() : null;
                            Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.cleanupInterval_ = duration6;
                            if (builder10 != null) {
                                builder10.e0(duration6);
                                this.cleanupInterval_ = builder10.I();
                            } else {
                                continue;
                            }
                        case 170:
                            BindConfig bindConfig = this.upstreamBindConfig_;
                            BindConfig.b builder11 = bindConfig != null ? bindConfig.toBuilder() : null;
                            BindConfig bindConfig2 = (BindConfig) pVar.B(BindConfig.parser(), f0Var);
                            this.upstreamBindConfig_ = bindConfig2;
                            if (builder11 != null) {
                                builder11.j0(bindConfig2);
                                this.upstreamBindConfig_ = builder11.I();
                            } else {
                                continue;
                            }
                        case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                            LbSubsetConfig lbSubsetConfig = this.lbSubsetConfig_;
                            LbSubsetConfig.b builder12 = lbSubsetConfig != null ? lbSubsetConfig.toBuilder() : null;
                            LbSubsetConfig lbSubsetConfig2 = (LbSubsetConfig) pVar.B(LbSubsetConfig.parser(), f0Var);
                            this.lbSubsetConfig_ = lbSubsetConfig2;
                            if (builder12 != null) {
                                builder12.j0(lbSubsetConfig2);
                                this.lbSubsetConfig_ = builder12.I();
                            } else {
                                continue;
                            }
                        case 186:
                            RingHashLbConfig.b builder13 = this.lbConfigCase_ == 23 ? ((RingHashLbConfig) this.lbConfig_).toBuilder() : null;
                            o1 B = pVar.B(RingHashLbConfig.parser(), f0Var);
                            this.lbConfig_ = B;
                            if (builder13 != null) {
                                builder13.g0((RingHashLbConfig) B);
                                this.lbConfig_ = builder13.I();
                            }
                            this.lbConfigCase_ = 23;
                            continue;
                        case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                            TransportSocket transportSocket = this.transportSocket_;
                            TransportSocket.c builder14 = transportSocket != null ? transportSocket.toBuilder() : null;
                            TransportSocket transportSocket2 = (TransportSocket) pVar.B(TransportSocket.parser(), f0Var);
                            this.transportSocket_ = transportSocket2;
                            if (builder14 != null) {
                                builder14.g0(transportSocket2);
                                this.transportSocket_ = builder14.I();
                            } else {
                                continue;
                            }
                        case 202:
                            Metadata metadata = this.metadata_;
                            Metadata.b builder15 = metadata != null ? metadata.toBuilder() : null;
                            Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                            this.metadata_ = metadata2;
                            if (builder15 != null) {
                                builder15.k0(metadata2);
                                this.metadata_ = builder15.I();
                            } else {
                                continue;
                            }
                        case 208:
                            this.protocolSelection_ = pVar.u();
                            continue;
                        case 218:
                            CommonLbConfig commonLbConfig = this.commonLbConfig_;
                            CommonLbConfig.b builder16 = commonLbConfig != null ? commonLbConfig.toBuilder() : null;
                            CommonLbConfig commonLbConfig2 = (CommonLbConfig) pVar.B(CommonLbConfig.parser(), f0Var);
                            this.commonLbConfig_ = commonLbConfig2;
                            if (builder16 != null) {
                                builder16.h0(commonLbConfig2);
                                this.commonLbConfig_ = builder16.I();
                            } else {
                                continue;
                            }
                        case 226:
                            this.altStatName_ = pVar.K();
                            continue;
                        case 234:
                            HttpProtocolOptions httpProtocolOptions = this.commonHttpProtocolOptions_;
                            HttpProtocolOptions.b builder17 = httpProtocolOptions != null ? httpProtocolOptions.toBuilder() : null;
                            HttpProtocolOptions httpProtocolOptions2 = (HttpProtocolOptions) pVar.B(HttpProtocolOptions.parser(), f0Var);
                            this.commonHttpProtocolOptions_ = httpProtocolOptions2;
                            if (builder17 != null) {
                                builder17.g0(httpProtocolOptions2);
                                this.commonHttpProtocolOptions_ = builder17.I();
                            } else {
                                continue;
                            }
                        case 242:
                            UpstreamConnectionOptions upstreamConnectionOptions = this.upstreamConnectionOptions_;
                            UpstreamConnectionOptions.b builder18 = upstreamConnectionOptions != null ? upstreamConnectionOptions.toBuilder() : null;
                            UpstreamConnectionOptions upstreamConnectionOptions2 = (UpstreamConnectionOptions) pVar.B(UpstreamConnectionOptions.parser(), f0Var);
                            this.upstreamConnectionOptions_ = upstreamConnectionOptions2;
                            if (builder18 != null) {
                                builder18.g0(upstreamConnectionOptions2);
                                this.upstreamConnectionOptions_ = builder18.I();
                            } else {
                                continue;
                            }
                        case 248:
                            this.closeConnectionsOnHostHealthFailure_ = pVar.r();
                            continue;
                        case 256:
                            this.ignoreHealthOnHostRemoval_ = pVar.r();
                            continue;
                        case 266:
                            ClusterLoadAssignment clusterLoadAssignment = this.loadAssignment_;
                            ClusterLoadAssignment.b builder19 = clusterLoadAssignment != null ? clusterLoadAssignment.toBuilder() : null;
                            ClusterLoadAssignment clusterLoadAssignment2 = (ClusterLoadAssignment) pVar.B(ClusterLoadAssignment.parser(), f0Var);
                            this.loadAssignment_ = clusterLoadAssignment2;
                            if (builder19 != null) {
                                builder19.k0(clusterLoadAssignment2);
                                this.loadAssignment_ = builder19.I();
                            } else {
                                continue;
                            }
                        case 274:
                            OriginalDstLbConfig.b builder20 = this.lbConfigCase_ == 34 ? ((OriginalDstLbConfig) this.lbConfig_).toBuilder() : null;
                            o1 B2 = pVar.B(OriginalDstLbConfig.parser(), f0Var);
                            this.lbConfig_ = B2;
                            if (builder20 != null) {
                                builder20.g0((OriginalDstLbConfig) B2);
                                this.lbConfig_ = builder20.I();
                            }
                            this.lbConfigCase_ = 34;
                            continue;
                        case BuildConfig.VERSION_CODE /* 290 */:
                            if (!(z11 & true)) {
                                this.typedExtensionProtocolOptions_ = g1.p(o.f47685a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(o.f47685a.getParserForType(), f0Var);
                            this.typedExtensionProtocolOptions_.l().put((String) e1Var.f(), (Any) e1Var.h());
                            continue;
                        case 298:
                            LeastRequestLbConfig.b builder21 = this.lbConfigCase_ == 37 ? ((LeastRequestLbConfig) this.lbConfig_).toBuilder() : null;
                            o1 B3 = pVar.B(LeastRequestLbConfig.parser(), f0Var);
                            this.lbConfig_ = B3;
                            if (builder21 != null) {
                                builder21.i0((LeastRequestLbConfig) B3);
                                this.lbConfig_ = builder21.I();
                            }
                            this.lbConfigCase_ = 37;
                            continue;
                        case 306:
                            CustomClusterType.b builder22 = this.clusterDiscoveryTypeCase_ == 38 ? ((CustomClusterType) this.clusterDiscoveryType_).toBuilder() : null;
                            o1 B4 = pVar.B(CustomClusterType.parser(), f0Var);
                            this.clusterDiscoveryType_ = B4;
                            if (builder22 != null) {
                                builder22.g0((CustomClusterType) B4);
                                this.clusterDiscoveryType_ = builder22.I();
                            }
                            this.clusterDiscoveryTypeCase_ = 38;
                            continue;
                        case 312:
                            this.respectDnsTtl_ = pVar.r();
                            continue;
                        case com.tencent.xmagic.BuildConfig.VERSION_CODE /* 322 */:
                            if (!(z11 & true)) {
                                this.filters_ = new ArrayList();
                                z11 |= true;
                            }
                            this.filters_.add((Filter) pVar.B(Filter.parser(), f0Var));
                            continue;
                        case 330:
                            LoadBalancingPolicy loadBalancingPolicy = this.loadBalancingPolicy_;
                            LoadBalancingPolicy.b builder23 = loadBalancingPolicy != null ? loadBalancingPolicy.toBuilder() : null;
                            LoadBalancingPolicy loadBalancingPolicy2 = (LoadBalancingPolicy) pVar.B(LoadBalancingPolicy.parser(), f0Var);
                            this.loadBalancingPolicy_ = loadBalancingPolicy2;
                            if (builder23 != null) {
                                builder23.i0(loadBalancingPolicy2);
                                this.loadBalancingPolicy_ = builder23.I();
                            } else {
                                continue;
                            }
                        case 338:
                            ConfigSource configSource = this.lrsServer_;
                            ConfigSource.c builder24 = configSource != null ? configSource.toBuilder() : null;
                            ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                            this.lrsServer_ = configSource2;
                            if (builder24 != null) {
                                builder24.k0(configSource2);
                                this.lrsServer_ = builder24.I();
                            } else {
                                continue;
                            }
                        case 346:
                            if (!(z11 & true)) {
                                this.transportSocketMatches_ = new ArrayList();
                                z11 |= true;
                            }
                            this.transportSocketMatches_.add((TransportSocketMatch) pVar.B(TransportSocketMatch.parser(), f0Var));
                            continue;
                        case 354:
                            RefreshRate refreshRate = this.dnsFailureRefreshRate_;
                            RefreshRate.b builder25 = refreshRate != null ? refreshRate.toBuilder() : null;
                            RefreshRate refreshRate2 = (RefreshRate) pVar.B(RefreshRate.parser(), f0Var);
                            this.dnsFailureRefreshRate_ = refreshRate2;
                            if (builder25 != null) {
                                builder25.h0(refreshRate2);
                                this.dnsFailureRefreshRate_ = builder25.I();
                            } else {
                                continue;
                            }
                        case 360:
                            this.useTcpForDnsLookups_ = pVar.r();
                            continue;
                        case 370:
                            UpstreamHttpProtocolOptions upstreamHttpProtocolOptions = this.upstreamHttpProtocolOptions_;
                            UpstreamHttpProtocolOptions.b builder26 = upstreamHttpProtocolOptions != null ? upstreamHttpProtocolOptions.toBuilder() : null;
                            UpstreamHttpProtocolOptions upstreamHttpProtocolOptions2 = (UpstreamHttpProtocolOptions) pVar.B(UpstreamHttpProtocolOptions.parser(), f0Var);
                            this.upstreamHttpProtocolOptions_ = upstreamHttpProtocolOptions2;
                            if (builder26 != null) {
                                builder26.g0(upstreamHttpProtocolOptions2);
                                this.upstreamHttpProtocolOptions_ = builder26.I();
                            } else {
                                continue;
                            }
                        case 376:
                            this.trackTimeoutBudgets_ = pVar.r();
                            continue;
                        case 386:
                            TypedExtensionConfig typedExtensionConfig = this.upstreamConfig_;
                            TypedExtensionConfig.b builder27 = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                            TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                            this.upstreamConfig_ = typedExtensionConfig2;
                            if (builder27 != null) {
                                builder27.g0(typedExtensionConfig2);
                                this.upstreamConfig_ = builder27.I();
                            } else {
                                continue;
                            }
                        case 394:
                            TrackClusterStats trackClusterStats = this.trackClusterStats_;
                            TrackClusterStats.b builder28 = trackClusterStats != null ? trackClusterStats.toBuilder() : null;
                            TrackClusterStats trackClusterStats2 = (TrackClusterStats) pVar.B(TrackClusterStats.parser(), f0Var);
                            this.trackClusterStats_ = trackClusterStats2;
                            if (builder28 != null) {
                                builder28.g0(trackClusterStats2);
                                this.trackClusterStats_ = builder28.I();
                            } else {
                                continue;
                            }
                        case 402:
                            PreconnectPolicy preconnectPolicy = this.preconnectPolicy_;
                            PreconnectPolicy.b builder29 = preconnectPolicy != null ? preconnectPolicy.toBuilder() : null;
                            PreconnectPolicy preconnectPolicy2 = (PreconnectPolicy) pVar.B(PreconnectPolicy.parser(), f0Var);
                            this.preconnectPolicy_ = preconnectPolicy2;
                            if (builder29 != null) {
                                builder29.g0(preconnectPolicy2);
                                this.preconnectPolicy_ = builder29.I();
                            } else {
                                continue;
                            }
                        case 408:
                            this.connectionPoolPerDownstreamConnection_ = pVar.r();
                            continue;
                        case 418:
                            MaglevLbConfig.b builder30 = this.lbConfigCase_ == 52 ? ((MaglevLbConfig) this.lbConfig_).toBuilder() : null;
                            o1 B5 = pVar.B(MaglevLbConfig.parser(), f0Var);
                            this.lbConfig_ = B5;
                            if (builder30 != null) {
                                builder30.g0((MaglevLbConfig) B5);
                                this.lbConfig_ = builder30.I();
                            }
                            this.lbConfigCase_ = 52;
                            continue;
                        case 426:
                            DnsResolutionConfig dnsResolutionConfig = this.dnsResolutionConfig_;
                            DnsResolutionConfig.b builder31 = dnsResolutionConfig != null ? dnsResolutionConfig.toBuilder() : null;
                            DnsResolutionConfig dnsResolutionConfig2 = (DnsResolutionConfig) pVar.B(DnsResolutionConfig.parser(), f0Var);
                            this.dnsResolutionConfig_ = dnsResolutionConfig2;
                            if (builder31 != null) {
                                builder31.j0(dnsResolutionConfig2);
                                this.dnsResolutionConfig_ = builder31.I();
                            } else {
                                continue;
                            }
                        case 434:
                            BoolValue boolValue = this.waitForWarmOnInit_;
                            BoolValue.b builder32 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.waitForWarmOnInit_ = boolValue2;
                            if (builder32 != null) {
                                builder32.d0(boolValue2);
                                this.waitForWarmOnInit_ = builder32.I();
                            } else {
                                continue;
                            }
                        case 442:
                            TypedExtensionConfig typedExtensionConfig3 = this.typedDnsResolverConfig_;
                            TypedExtensionConfig.b builder33 = typedExtensionConfig3 != null ? typedExtensionConfig3.toBuilder() : null;
                            TypedExtensionConfig typedExtensionConfig4 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                            this.typedDnsResolverConfig_ = typedExtensionConfig4;
                            if (builder33 != null) {
                                builder33.g0(typedExtensionConfig4);
                                this.typedDnsResolverConfig_ = builder33.I();
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
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.healthChecks_ = Collections.unmodifiableList(this.healthChecks_);
                }
                if (z11 & true) {
                    this.dnsResolvers_ = Collections.unmodifiableList(this.dnsResolvers_);
                }
                if (z11 & true) {
                    this.filters_ = Collections.unmodifiableList(this.filters_);
                }
                if (z11 & true) {
                    this.transportSocketMatches_ = Collections.unmodifiableList(this.transportSocketMatches_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
