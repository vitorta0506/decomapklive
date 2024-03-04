package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import cn.jiguang.android.BuildConfig;
import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
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
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import com.google.protobuf.v;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.UpstreamConnectionOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.Filter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.OutlierDetection;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HealthCheck;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Http1ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Http2ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.TransportSocket;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.UpstreamHttpProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.r0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.s0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.x;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.y;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.z;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.Percent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Cluster extends GeneratedMessageV3 implements r1 {
    public static final int ALT_STAT_NAME_FIELD_NUMBER = 28;
    public static final int CIRCUIT_BREAKERS_FIELD_NUMBER = 10;
    public static final int CLEANUP_INTERVAL_FIELD_NUMBER = 20;
    public static final int CLOSE_CONNECTIONS_ON_HOST_HEALTH_FAILURE_FIELD_NUMBER = 31;
    public static final int CLUSTER_TYPE_FIELD_NUMBER = 38;
    public static final int COMMON_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 29;
    public static final int COMMON_LB_CONFIG_FIELD_NUMBER = 27;
    public static final int CONNECT_TIMEOUT_FIELD_NUMBER = 4;
    public static final int DNS_FAILURE_REFRESH_RATE_FIELD_NUMBER = 44;
    public static final int DNS_LOOKUP_FAMILY_FIELD_NUMBER = 17;
    public static final int DNS_REFRESH_RATE_FIELD_NUMBER = 16;
    public static final int DNS_RESOLVERS_FIELD_NUMBER = 18;
    public static final int DRAIN_CONNECTIONS_ON_HOST_REMOVAL_FIELD_NUMBER = 32;
    public static final int EDS_CLUSTER_CONFIG_FIELD_NUMBER = 3;
    public static final int EXTENSION_PROTOCOL_OPTIONS_FIELD_NUMBER = 35;
    public static final int FILTERS_FIELD_NUMBER = 40;
    public static final int HEALTH_CHECKS_FIELD_NUMBER = 8;
    public static final int HOSTS_FIELD_NUMBER = 7;
    public static final int HTTP2_PROTOCOL_OPTIONS_FIELD_NUMBER = 14;
    public static final int HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 13;
    public static final int LB_POLICY_FIELD_NUMBER = 6;
    public static final int LB_SUBSET_CONFIG_FIELD_NUMBER = 22;
    public static final int LEAST_REQUEST_LB_CONFIG_FIELD_NUMBER = 37;
    public static final int LOAD_ASSIGNMENT_FIELD_NUMBER = 33;
    public static final int LOAD_BALANCING_POLICY_FIELD_NUMBER = 41;
    public static final int LRS_SERVER_FIELD_NUMBER = 42;
    public static final int MAX_REQUESTS_PER_CONNECTION_FIELD_NUMBER = 9;
    public static final int METADATA_FIELD_NUMBER = 25;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ORIGINAL_DST_LB_CONFIG_FIELD_NUMBER = 34;
    public static final int OUTLIER_DETECTION_FIELD_NUMBER = 19;
    public static final int PER_CONNECTION_BUFFER_LIMIT_BYTES_FIELD_NUMBER = 5;
    public static final int PROTOCOL_SELECTION_FIELD_NUMBER = 26;
    public static final int RESPECT_DNS_TTL_FIELD_NUMBER = 39;
    public static final int RING_HASH_LB_CONFIG_FIELD_NUMBER = 23;
    public static final int TLS_CONTEXT_FIELD_NUMBER = 11;
    public static final int TRACK_TIMEOUT_BUDGETS_FIELD_NUMBER = 47;
    public static final int TRANSPORT_SOCKET_FIELD_NUMBER = 24;
    public static final int TRANSPORT_SOCKET_MATCHES_FIELD_NUMBER = 43;
    public static final int TYPED_EXTENSION_PROTOCOL_OPTIONS_FIELD_NUMBER = 36;
    public static final int TYPE_FIELD_NUMBER = 2;
    public static final int UPSTREAM_BIND_CONFIG_FIELD_NUMBER = 21;
    public static final int UPSTREAM_CONNECTION_OPTIONS_FIELD_NUMBER = 30;
    public static final int UPSTREAM_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 46;
    public static final int USE_TCP_FOR_DNS_LOOKUPS_FIELD_NUMBER = 45;
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
    private RefreshRate dnsFailureRefreshRate_;
    private int dnsLookupFamily_;
    private Duration dnsRefreshRate_;
    private List<Address> dnsResolvers_;
    private boolean drainConnectionsOnHostRemoval_;
    private EdsClusterConfig edsClusterConfig_;
    private g1<String, Struct> extensionProtocolOptions_;
    private List<Filter> filters_;
    private List<HealthCheck> healthChecks_;
    private List<Address> hosts_;
    private Http2ProtocolOptions http2ProtocolOptions_;
    private Http1ProtocolOptions httpProtocolOptions_;
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
    private int protocolSelection_;
    private boolean respectDnsTtl_;
    private UpstreamTlsContext tlsContext_;
    private boolean trackTimeoutBudgets_;
    private List<TransportSocketMatch> transportSocketMatches_;
    private TransportSocket transportSocket_;
    private g1<String, Any> typedExtensionProtocolOptions_;
    private BindConfig upstreamBindConfig_;
    private UpstreamConnectionOptions upstreamConnectionOptions_;
    private UpstreamHttpProtocolOptions upstreamHttpProtocolOptions_;
    private boolean useTcpForDnsLookups_;
    private static final Cluster DEFAULT_INSTANCE = new Cluster();
    private static final e2<Cluster> PARSER = new a();

    /* loaded from: classes5.dex */
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

    /* loaded from: classes5.dex */
    public enum ClusterProtocolSelection implements h2 {
        USE_CONFIGURED_PROTOCOL(0),
        USE_DOWNSTREAM_PROTOCOL(1),
        UNRECOGNIZED(-1);
        
        public static final int USE_CONFIGURED_PROTOCOL_VALUE = 0;
        public static final int USE_DOWNSTREAM_PROTOCOL_VALUE = 1;
        private final int value;
        private static final u0.d<ClusterProtocolSelection> internalValueMap = new a();
        private static final ClusterProtocolSelection[] VALUES = values();

        /* loaded from: classes5.dex */
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

    /* loaded from: classes5.dex */
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

        /* loaded from: classes5.dex */
        public static final class ConsistentHashingLbConfig extends GeneratedMessageV3 implements c {
            private static final ConsistentHashingLbConfig DEFAULT_INSTANCE = new ConsistentHashingLbConfig();
            private static final e2<ConsistentHashingLbConfig> PARSER = new a();
            public static final int USE_HOSTNAME_FOR_HASHING_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private boolean useHostnameForHashing_;

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<ConsistentHashingLbConfig> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ConsistentHashingLbConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ConsistentHashingLbConfig(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private boolean f45922e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46290z.d(ConsistentHashingLbConfig.class, b.class);
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
                    consistentHashingLbConfig.useHostnameForHashing_ = this.f45922e;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig.access$10700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$ConsistentHashingLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$ConsistentHashingLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$ConsistentHashingLbConfig$b");
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
                        k0(consistentHashingLbConfig.getUseHostnameForHashing());
                    }
                    z(((GeneratedMessageV3) consistentHashingLbConfig).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46289y;
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
                    this.f45922e = z10;
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

            /* synthetic */ ConsistentHashingLbConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ConsistentHashingLbConfig getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46289y;
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
                return getUseHostnameForHashing() == consistentHashingLbConfig.getUseHostnameForHashing() && this.unknownFields.equals(consistentHashingLbConfig.unknownFields);
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
                int e10 = (z10 ? 0 + CodedOutputStream.e(1, z10) : 0) + this.unknownFields.getSerializedSize();
                this.memoizedSize = e10;
                return e10;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean getUseHostnameForHashing() {
                return this.useHostnameForHashing_;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getUseHostnameForHashing())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46290z.d(ConsistentHashingLbConfig.class, b.class);
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

            private ConsistentHashingLbConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.useHostnameForHashing_ = pVar.r();
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

            public static ConsistentHashingLbConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ConsistentHashingLbConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (ConsistentHashingLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
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

        /* loaded from: classes5.dex */
        public static final class LocalityWeightedLbConfig extends GeneratedMessageV3 implements d {
            private static final LocalityWeightedLbConfig DEFAULT_INSTANCE = new LocalityWeightedLbConfig();
            private static final e2<LocalityWeightedLbConfig> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<LocalityWeightedLbConfig> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public LocalityWeightedLbConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new LocalityWeightedLbConfig(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements d {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46288x.d(LocalityWeightedLbConfig.class, b.class);
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig.access$9900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$LocalityWeightedLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$LocalityWeightedLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$LocalityWeightedLbConfig$b");
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
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46287w;
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

            /* synthetic */ LocalityWeightedLbConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static LocalityWeightedLbConfig getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46287w;
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46288x.d(LocalityWeightedLbConfig.class, b.class);
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

            private LocalityWeightedLbConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

            public static LocalityWeightedLbConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static LocalityWeightedLbConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (LocalityWeightedLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
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

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<ZoneAwareLbConfig> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ZoneAwareLbConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ZoneAwareLbConfig(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements e {

                /* renamed from: e  reason: collision with root package name */
                private Percent f45923e;

                /* renamed from: f  reason: collision with root package name */
                private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> f45924f;

                /* renamed from: g  reason: collision with root package name */
                private UInt64Value f45925g;

                /* renamed from: h  reason: collision with root package name */
                private q2<UInt64Value, UInt64Value.b, f3> f45926h;

                /* renamed from: i  reason: collision with root package name */
                private boolean f45927i;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46286v.d(ZoneAwareLbConfig.class, b.class);
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
                    q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f45924f;
                    if (q2Var == null) {
                        zoneAwareLbConfig.routingEnabled_ = this.f45923e;
                    } else {
                        zoneAwareLbConfig.routingEnabled_ = q2Var.b();
                    }
                    q2<UInt64Value, UInt64Value.b, f3> q2Var2 = this.f45926h;
                    if (q2Var2 == null) {
                        zoneAwareLbConfig.minClusterSize_ = this.f45925g;
                    } else {
                        zoneAwareLbConfig.minClusterSize_ = q2Var2.b();
                    }
                    zoneAwareLbConfig.failTrafficOnPanic_ = this.f45927i;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig.access$9200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$ZoneAwareLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$ZoneAwareLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$ZoneAwareLbConfig$b");
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
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46285u;
                }

                public b h0(UInt64Value uInt64Value) {
                    q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f45926h;
                    if (q2Var == null) {
                        UInt64Value uInt64Value2 = this.f45925g;
                        if (uInt64Value2 != null) {
                            this.f45925g = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                        } else {
                            this.f45925g = uInt64Value;
                        }
                        R();
                    } else {
                        q2Var.e(uInt64Value);
                    }
                    return this;
                }

                public b i0(Percent percent) {
                    q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f45924f;
                    if (q2Var == null) {
                        Percent percent2 = this.f45923e;
                        if (percent2 != null) {
                            this.f45923e = Percent.newBuilder(percent2).g0(percent).I();
                        } else {
                            this.f45923e = percent;
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
                    this.f45927i = z10;
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

            /* synthetic */ ZoneAwareLbConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ZoneAwareLbConfig getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46285u;
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

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.f getRoutingEnabledOrBuilder() {
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46286v.d(ZoneAwareLbConfig.class, b.class);
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

            private ZoneAwareLbConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

            public static ZoneAwareLbConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ZoneAwareLbConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (ZoneAwareLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<CommonLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CommonLbConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CommonLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f45928e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45929f;

            /* renamed from: g  reason: collision with root package name */
            private Percent f45930g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> f45931h;

            /* renamed from: i  reason: collision with root package name */
            private q2<ZoneAwareLbConfig, ZoneAwareLbConfig.b, e> f45932i;

            /* renamed from: j  reason: collision with root package name */
            private q2<LocalityWeightedLbConfig, LocalityWeightedLbConfig.b, d> f45933j;

            /* renamed from: k  reason: collision with root package name */
            private Duration f45934k;

            /* renamed from: l  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f45935l;

            /* renamed from: m  reason: collision with root package name */
            private boolean f45936m;

            /* renamed from: n  reason: collision with root package name */
            private boolean f45937n;

            /* renamed from: o  reason: collision with root package name */
            private ConsistentHashingLbConfig f45938o;

            /* renamed from: p  reason: collision with root package name */
            private q2<ConsistentHashingLbConfig, ConsistentHashingLbConfig.b, c> f45939p;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46284t.d(CommonLbConfig.class, b.class);
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
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f45931h;
                if (q2Var == null) {
                    commonLbConfig.healthyPanicThreshold_ = this.f45930g;
                } else {
                    commonLbConfig.healthyPanicThreshold_ = q2Var.b();
                }
                if (this.f45928e == 2) {
                    q2<ZoneAwareLbConfig, ZoneAwareLbConfig.b, e> q2Var2 = this.f45932i;
                    if (q2Var2 == null) {
                        commonLbConfig.localityConfigSpecifier_ = this.f45929f;
                    } else {
                        commonLbConfig.localityConfigSpecifier_ = q2Var2.b();
                    }
                }
                if (this.f45928e == 3) {
                    q2<LocalityWeightedLbConfig, LocalityWeightedLbConfig.b, d> q2Var3 = this.f45933j;
                    if (q2Var3 == null) {
                        commonLbConfig.localityConfigSpecifier_ = this.f45929f;
                    } else {
                        commonLbConfig.localityConfigSpecifier_ = q2Var3.b();
                    }
                }
                q2<Duration, Duration.b, v> q2Var4 = this.f45935l;
                if (q2Var4 == null) {
                    commonLbConfig.updateMergeWindow_ = this.f45934k;
                } else {
                    commonLbConfig.updateMergeWindow_ = q2Var4.b();
                }
                commonLbConfig.ignoreNewHostsUntilFirstHc_ = this.f45936m;
                commonLbConfig.closeConnectionsOnHostSetChange_ = this.f45937n;
                q2<ConsistentHashingLbConfig, ConsistentHashingLbConfig.b, c> q2Var5 = this.f45939p;
                if (q2Var5 == null) {
                    commonLbConfig.consistentHashingLbConfig_ = this.f45938o;
                } else {
                    commonLbConfig.consistentHashingLbConfig_ = q2Var5.b();
                }
                commonLbConfig.localityConfigSpecifierCase_ = this.f45928e;
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
                q2<ConsistentHashingLbConfig, ConsistentHashingLbConfig.b, c> q2Var = this.f45939p;
                if (q2Var == null) {
                    ConsistentHashingLbConfig consistentHashingLbConfig2 = this.f45938o;
                    if (consistentHashingLbConfig2 != null) {
                        this.f45938o = ConsistentHashingLbConfig.newBuilder(consistentHashingLbConfig2).g0(consistentHashingLbConfig).I();
                    } else {
                        this.f45938o = consistentHashingLbConfig;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.access$12100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CommonLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CommonLbConfig$b");
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46283s;
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
                int i9 = b.f45977a[commonLbConfig.getLocalityConfigSpecifierCase().ordinal()];
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
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f45931h;
                if (q2Var == null) {
                    Percent percent2 = this.f45930g;
                    if (percent2 != null) {
                        this.f45930g = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f45930g = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            public b j0(LocalityWeightedLbConfig localityWeightedLbConfig) {
                q2<LocalityWeightedLbConfig, LocalityWeightedLbConfig.b, d> q2Var = this.f45933j;
                if (q2Var == null) {
                    if (this.f45928e == 3 && this.f45929f != LocalityWeightedLbConfig.getDefaultInstance()) {
                        this.f45929f = LocalityWeightedLbConfig.newBuilder((LocalityWeightedLbConfig) this.f45929f).g0(localityWeightedLbConfig).I();
                    } else {
                        this.f45929f = localityWeightedLbConfig;
                    }
                    R();
                } else {
                    if (this.f45928e == 3) {
                        q2Var.e(localityWeightedLbConfig);
                    }
                    this.f45933j.g(localityWeightedLbConfig);
                }
                this.f45928e = 3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b l0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f45935l;
                if (q2Var == null) {
                    Duration duration2 = this.f45934k;
                    if (duration2 != null) {
                        this.f45934k = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f45934k = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            public b m0(ZoneAwareLbConfig zoneAwareLbConfig) {
                q2<ZoneAwareLbConfig, ZoneAwareLbConfig.b, e> q2Var = this.f45932i;
                if (q2Var == null) {
                    if (this.f45928e == 2 && this.f45929f != ZoneAwareLbConfig.getDefaultInstance()) {
                        this.f45929f = ZoneAwareLbConfig.newBuilder((ZoneAwareLbConfig) this.f45929f).g0(zoneAwareLbConfig).I();
                    } else {
                        this.f45929f = zoneAwareLbConfig;
                    }
                    R();
                } else {
                    if (this.f45928e == 2) {
                        q2Var.e(zoneAwareLbConfig);
                    }
                    this.f45932i.g(zoneAwareLbConfig);
                }
                this.f45928e = 2;
                return this;
            }

            public b n0(boolean z10) {
                this.f45937n = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b q0(boolean z10) {
                this.f45936m = z10;
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
                this.f45928e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45928e = 0;
                b0();
            }
        }

        /* loaded from: classes5.dex */
        public interface c extends r1 {
        }

        /* loaded from: classes5.dex */
        public interface d extends r1 {
        }

        /* loaded from: classes5.dex */
        public interface e extends r1 {
        }

        /* synthetic */ CommonLbConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CommonLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46283s;
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

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.f getHealthyPanicThresholdOrBuilder() {
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46284t.d(CommonLbConfig.class, b.class);
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

        private CommonLbConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static CommonLbConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CommonLbConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (CommonLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class CustomClusterType extends GeneratedMessageV3 implements e {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any typedConfig_;
        private static final CustomClusterType DEFAULT_INSTANCE = new CustomClusterType();
        private static final e2<CustomClusterType> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<CustomClusterType> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CustomClusterType m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CustomClusterType(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f45940e;

            /* renamed from: f  reason: collision with root package name */
            private Any f45941f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45942g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46270f.d(CustomClusterType.class, b.class);
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
                customClusterType.name_ = this.f45940e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45942g;
                if (q2Var == null) {
                    customClusterType.typedConfig_ = this.f45941f;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CustomClusterType.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CustomClusterType.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CustomClusterType r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CustomClusterType) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CustomClusterType r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CustomClusterType) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.CustomClusterType.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$CustomClusterType$b");
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
                    this.f45940e = customClusterType.name_;
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46269e;
            }

            public b h0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45942g;
                if (q2Var == null) {
                    Any any2 = this.f45941f;
                    if (any2 != null) {
                        this.f45941f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45941f = any;
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
                this.f45940e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45940e = "";
                b0();
            }
        }

        /* synthetic */ CustomClusterType(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CustomClusterType getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46269e;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46270f.d(CustomClusterType.class, b.class);
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

        private CustomClusterType(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static CustomClusterType parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CustomClusterType parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (CustomClusterType) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
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

        /* loaded from: classes5.dex */
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

    /* loaded from: classes5.dex */
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

        /* loaded from: classes5.dex */
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

    /* loaded from: classes5.dex */
    public static final class EdsClusterConfig extends GeneratedMessageV3 implements f {
        public static final int EDS_CONFIG_FIELD_NUMBER = 1;
        public static final int SERVICE_NAME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private ConfigSource edsConfig_;
        private byte memoizedIsInitialized;
        private volatile Object serviceName_;
        private static final EdsClusterConfig DEFAULT_INSTANCE = new EdsClusterConfig();
        private static final e2<EdsClusterConfig> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<EdsClusterConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public EdsClusterConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new EdsClusterConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private ConfigSource f45943e;

            /* renamed from: f  reason: collision with root package name */
            private q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k> f45944f;

            /* renamed from: g  reason: collision with root package name */
            private Object f45945g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46272h.d(EdsClusterConfig.class, b.class);
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
                q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k> q2Var = this.f45944f;
                if (q2Var == null) {
                    edsClusterConfig.edsConfig_ = this.f45943e;
                } else {
                    edsClusterConfig.edsConfig_ = q2Var.b();
                }
                edsClusterConfig.serviceName_ = this.f45945g;
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
                q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k> q2Var = this.f45944f;
                if (q2Var == null) {
                    ConfigSource configSource2 = this.f45943e;
                    if (configSource2 != null) {
                        this.f45943e = ConfigSource.newBuilder(configSource2).i0(configSource).I();
                    } else {
                        this.f45943e = configSource;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.EdsClusterConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.EdsClusterConfig.access$2800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$EdsClusterConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.EdsClusterConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$EdsClusterConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.EdsClusterConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.EdsClusterConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$EdsClusterConfig$b");
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46271g;
            }

            public b h0(EdsClusterConfig edsClusterConfig) {
                if (edsClusterConfig == EdsClusterConfig.getDefaultInstance()) {
                    return this;
                }
                if (edsClusterConfig.hasEdsConfig()) {
                    d0(edsClusterConfig.getEdsConfig());
                }
                if (!edsClusterConfig.getServiceName().isEmpty()) {
                    this.f45945g = edsClusterConfig.serviceName_;
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
                this.f45945g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45945g = "";
                b0();
            }
        }

        /* synthetic */ EdsClusterConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static EdsClusterConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46271g;
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

        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k getEdsConfigOrBuilder() {
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46272h.d(EdsClusterConfig.class, b.class);
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

        private EdsClusterConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    builder.i0(configSource2);
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

        public static EdsClusterConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static EdsClusterConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (EdsClusterConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public enum LbConfigCase implements u0.c {
        RING_HASH_LB_CONFIG(23),
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
                            return null;
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

    /* loaded from: classes5.dex */
    public enum LbPolicy implements h2 {
        ROUND_ROBIN(0),
        LEAST_REQUEST(1),
        RING_HASH(2),
        RANDOM(3),
        ORIGINAL_DST_LB(4),
        MAGLEV(5),
        CLUSTER_PROVIDED(6),
        LOAD_BALANCING_POLICY_CONFIG(7),
        UNRECOGNIZED(-1);
        
        public static final int CLUSTER_PROVIDED_VALUE = 6;
        public static final int LEAST_REQUEST_VALUE = 1;
        public static final int LOAD_BALANCING_POLICY_CONFIG_VALUE = 7;
        public static final int MAGLEV_VALUE = 5;
        @Deprecated
        public static final int ORIGINAL_DST_LB_VALUE = 4;
        public static final int RANDOM_VALUE = 3;
        public static final int RING_HASH_VALUE = 2;
        public static final int ROUND_ROBIN_VALUE = 0;
        private final int value;
        private static final u0.d<LbPolicy> internalValueMap = new a();
        private static final LbPolicy[] VALUES = values();

        /* loaded from: classes5.dex */
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
            switch (i9) {
                case 0:
                    return ROUND_ROBIN;
                case 1:
                    return LEAST_REQUEST;
                case 2:
                    return RING_HASH;
                case 3:
                    return RANDOM;
                case 4:
                    return ORIGINAL_DST_LB;
                case 5:
                    return MAGLEV;
                case 6:
                    return CLUSTER_PROVIDED;
                case 7:
                    return LOAD_BALANCING_POLICY_CONFIG;
                default:
                    return null;
            }
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

    /* loaded from: classes5.dex */
    public static final class LbSubsetConfig extends GeneratedMessageV3 implements h {
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

        /* loaded from: classes5.dex */
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

            /* loaded from: classes5.dex */
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

        /* loaded from: classes5.dex */
        public static final class LbSubsetSelector extends GeneratedMessageV3 implements c {
            public static final int FALLBACK_KEYS_SUBSET_FIELD_NUMBER = 3;
            public static final int FALLBACK_POLICY_FIELD_NUMBER = 2;
            public static final int KEYS_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private z0 fallbackKeysSubset_;
            private int fallbackPolicy_;
            private z0 keys_;
            private byte memoizedIsInitialized;
            private static final LbSubsetSelector DEFAULT_INSTANCE = new LbSubsetSelector();
            private static final e2<LbSubsetSelector> PARSER = new a();

            /* loaded from: classes5.dex */
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

                /* loaded from: classes5.dex */
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

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<LbSubsetSelector> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public LbSubsetSelector m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new LbSubsetSelector(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f45946e;

                /* renamed from: f  reason: collision with root package name */
                private z0 f45947f;

                /* renamed from: g  reason: collision with root package name */
                private int f45948g;

                /* renamed from: h  reason: collision with root package name */
                private z0 f45949h;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void a0() {
                    if ((this.f45946e & 2) == 0) {
                        this.f45949h = new y0(this.f45949h);
                        this.f45946e |= 2;
                    }
                }

                private void b0() {
                    if ((this.f45946e & 1) == 0) {
                        this.f45947f = new y0(this.f45947f);
                        this.f45946e |= 1;
                    }
                }

                private void e0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46276l.d(LbSubsetSelector.class, b.class);
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
                    if ((this.f45946e & 1) != 0) {
                        this.f45947f = this.f45947f.V0();
                        this.f45946e &= -2;
                    }
                    lbSubsetSelector.keys_ = this.f45947f;
                    lbSubsetSelector.fallbackPolicy_ = this.f45948g;
                    if ((this.f45946e & 2) != 0) {
                        this.f45949h = this.f45949h.V0();
                        this.f45946e &= -3;
                    }
                    lbSubsetSelector.fallbackKeysSubset_ = this.f45949h;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector.access$3900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LbSubsetConfig$LbSubsetSelector r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LbSubsetConfig$LbSubsetSelector r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LbSubsetConfig$LbSubsetSelector$b");
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46275k;
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
                        if (this.f45947f.isEmpty()) {
                            this.f45947f = lbSubsetSelector.keys_;
                            this.f45946e &= -2;
                        } else {
                            b0();
                            this.f45947f.addAll(lbSubsetSelector.keys_);
                        }
                        R();
                    }
                    if (lbSubsetSelector.fallbackPolicy_ != 0) {
                        k0(lbSubsetSelector.getFallbackPolicyValue());
                    }
                    if (!lbSubsetSelector.fallbackKeysSubset_.isEmpty()) {
                        if (this.f45949h.isEmpty()) {
                            this.f45949h = lbSubsetSelector.fallbackKeysSubset_;
                            this.f45946e &= -3;
                        } else {
                            a0();
                            this.f45949h.addAll(lbSubsetSelector.fallbackKeysSubset_);
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
                    this.f45948g = i9;
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
                    z0 z0Var = y0.f15344d;
                    this.f45947f = z0Var;
                    this.f45948g = 0;
                    this.f45949h = z0Var;
                    e0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    z0 z0Var = y0.f15344d;
                    this.f45947f = z0Var;
                    this.f45948g = 0;
                    this.f45949h = z0Var;
                    e0();
                }
            }

            /* synthetic */ LbSubsetSelector(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static LbSubsetSelector getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46275k;
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
                return m1577getKeysList().equals(lbSubsetSelector.m1577getKeysList()) && this.fallbackPolicy_ == lbSubsetSelector.fallbackPolicy_ && m1576getFallbackKeysSubsetList().equals(lbSubsetSelector.m1576getFallbackKeysSubsetList()) && this.unknownFields.equals(lbSubsetSelector.unknownFields);
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
                int size = i10 + 0 + (m1577getKeysList().size() * 1);
                if (this.fallbackPolicy_ != LbSubsetSelectorFallbackPolicy.NOT_DEFINED.getNumber()) {
                    size += CodedOutputStream.l(2, this.fallbackPolicy_);
                }
                int i12 = 0;
                for (int i13 = 0; i13 < this.fallbackKeysSubset_.size(); i13++) {
                    i12 += GeneratedMessageV3.computeStringSizeNoTag(this.fallbackKeysSubset_.c1(i13));
                }
                int size2 = size + i12 + (m1576getFallbackKeysSubsetList().size() * 1) + this.unknownFields.getSerializedSize();
                this.memoizedSize = size2;
                return size2;
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
                    hashCode = (((hashCode * 37) + 1) * 53) + m1577getKeysList().hashCode();
                }
                int i10 = (((hashCode * 37) + 2) * 53) + this.fallbackPolicy_;
                if (getFallbackKeysSubsetCount() > 0) {
                    i10 = (((i10 * 37) + 3) * 53) + m1576getFallbackKeysSubsetList().hashCode();
                }
                int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46276l.d(LbSubsetSelector.class, b.class);
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
            public i2 m1576getFallbackKeysSubsetList() {
                return this.fallbackKeysSubset_;
            }

            /* renamed from: getKeysList */
            public i2 m1577getKeysList() {
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

            private LbSubsetSelector(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    String K2 = pVar.K();
                                    if (!(z11 & true)) {
                                        this.fallbackKeysSubset_ = new y0();
                                        z11 |= true;
                                    }
                                    this.fallbackKeysSubset_.add(K2);
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

            public static LbSubsetSelector parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static LbSubsetSelector parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (LbSubsetSelector) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<LbSubsetConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public LbSubsetConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new LbSubsetConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private int f45950e;

            /* renamed from: f  reason: collision with root package name */
            private int f45951f;

            /* renamed from: g  reason: collision with root package name */
            private Struct f45952g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f45953h;

            /* renamed from: i  reason: collision with root package name */
            private List<LbSubsetSelector> f45954i;

            /* renamed from: j  reason: collision with root package name */
            private l2<LbSubsetSelector, LbSubsetSelector.b, c> f45955j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f45956k;

            /* renamed from: l  reason: collision with root package name */
            private boolean f45957l;

            /* renamed from: m  reason: collision with root package name */
            private boolean f45958m;

            /* renamed from: n  reason: collision with root package name */
            private boolean f45959n;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45950e & 1) == 0) {
                    this.f45954i = new ArrayList(this.f45954i);
                    this.f45950e |= 1;
                }
            }

            private l2<LbSubsetSelector, LbSubsetSelector.b, c> d0() {
                if (this.f45955j == null) {
                    this.f45955j = new l2<>(this.f45954i, (this.f45950e & 1) != 0, H(), O());
                    this.f45954i = null;
                }
                return this.f45955j;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46274j.d(LbSubsetConfig.class, b.class);
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
                lbSubsetConfig.fallbackPolicy_ = this.f45951f;
                q2<Struct, Struct.b, u2> q2Var = this.f45953h;
                if (q2Var == null) {
                    lbSubsetConfig.defaultSubset_ = this.f45952g;
                } else {
                    lbSubsetConfig.defaultSubset_ = q2Var.b();
                }
                l2<LbSubsetSelector, LbSubsetSelector.b, c> l2Var = this.f45955j;
                if (l2Var == null) {
                    if ((this.f45950e & 1) != 0) {
                        this.f45954i = Collections.unmodifiableList(this.f45954i);
                        this.f45950e &= -2;
                    }
                    lbSubsetConfig.subsetSelectors_ = this.f45954i;
                } else {
                    lbSubsetConfig.subsetSelectors_ = l2Var.e();
                }
                lbSubsetConfig.localityWeightAware_ = this.f45956k;
                lbSubsetConfig.scaleLocalityWeight_ = this.f45957l;
                lbSubsetConfig.panicModeAny_ = this.f45958m;
                lbSubsetConfig.listAsAny_ = this.f45959n;
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
                q2<Struct, Struct.b, u2> q2Var = this.f45953h;
                if (q2Var == null) {
                    Struct struct2 = this.f45952g;
                    if (struct2 != null) {
                        this.f45952g = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f45952g = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46273i;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.access$5600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LbSubsetConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LbSubsetConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LbSubsetConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LbSubsetConfig$b");
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
                if (this.f45955j == null) {
                    if (!lbSubsetConfig.subsetSelectors_.isEmpty()) {
                        if (this.f45954i.isEmpty()) {
                            this.f45954i = lbSubsetConfig.subsetSelectors_;
                            this.f45950e &= -2;
                        } else {
                            a0();
                            this.f45954i.addAll(lbSubsetConfig.subsetSelectors_);
                        }
                        R();
                    }
                } else if (!lbSubsetConfig.subsetSelectors_.isEmpty()) {
                    if (this.f45955j.k()) {
                        this.f45955j.f();
                        this.f45955j = null;
                        this.f45954i = lbSubsetConfig.subsetSelectors_;
                        this.f45950e &= -2;
                        this.f45955j = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f45955j.b(lbSubsetConfig.subsetSelectors_);
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
                this.f45951f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b n0(boolean z10) {
                this.f45959n = z10;
                R();
                return this;
            }

            public b o0(boolean z10) {
                this.f45956k = z10;
                R();
                return this;
            }

            public b q0(boolean z10) {
                this.f45958m = z10;
                R();
                return this;
            }

            public b r0(boolean z10) {
                this.f45957l = z10;
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
                this.f45951f = 0;
                this.f45954i = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45951f = 0;
                this.f45954i = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes5.dex */
        public interface c extends r1 {
        }

        /* synthetic */ LbSubsetConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static LbSubsetConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46273i;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46274j.d(LbSubsetConfig.class, b.class);
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

        private LbSubsetConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static LbSubsetConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static LbSubsetConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (LbSubsetConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class LeastRequestLbConfig extends GeneratedMessageV3 implements i {
        public static final int CHOICE_COUNT_FIELD_NUMBER = 1;
        private static final LeastRequestLbConfig DEFAULT_INSTANCE = new LeastRequestLbConfig();
        private static final e2<LeastRequestLbConfig> PARSER = new a();
        private static final long serialVersionUID = 0;
        private UInt32Value choiceCount_;
        private byte memoizedIsInitialized;

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<LeastRequestLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public LeastRequestLbConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new LeastRequestLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements i {

            /* renamed from: e  reason: collision with root package name */
            private UInt32Value f45960e;

            /* renamed from: f  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f45961f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46278n.d(LeastRequestLbConfig.class, b.class);
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
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f45961f;
                if (q2Var == null) {
                    leastRequestLbConfig.choiceCount_ = this.f45960e;
                } else {
                    leastRequestLbConfig.choiceCount_ = q2Var.b();
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

            public b d0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f45961f;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f45960e;
                    if (uInt32Value2 != null) {
                        this.f45960e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f45960e = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LeastRequestLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LeastRequestLbConfig.access$6400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LeastRequestLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LeastRequestLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LeastRequestLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LeastRequestLbConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.LeastRequestLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$LeastRequestLbConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof LeastRequestLbConfig) {
                    return h0((LeastRequestLbConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46277m;
            }

            public b h0(LeastRequestLbConfig leastRequestLbConfig) {
                if (leastRequestLbConfig == LeastRequestLbConfig.getDefaultInstance()) {
                    return this;
                }
                if (leastRequestLbConfig.hasChoiceCount()) {
                    d0(leastRequestLbConfig.getChoiceCount());
                }
                z(((GeneratedMessageV3) leastRequestLbConfig).unknownFields);
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
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ LeastRequestLbConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static LeastRequestLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46277m;
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
            return (!hasChoiceCount() || getChoiceCount().equals(leastRequestLbConfig.getChoiceCount())) && this.unknownFields.equals(leastRequestLbConfig.unknownFields);
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
            int G = (this.choiceCount_ != null ? 0 + CodedOutputStream.G(1, getChoiceCount()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
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
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46278n.d(LeastRequestLbConfig.class, b.class);
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
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ LeastRequestLbConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(LeastRequestLbConfig leastRequestLbConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(leastRequestLbConfig);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
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

        private LeastRequestLbConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    UInt32Value uInt32Value = this.choiceCount_;
                                    UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.choiceCount_ = uInt32Value2;
                                    if (builder != null) {
                                        builder.g0(uInt32Value2);
                                        this.choiceCount_ = builder.I();
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

        public static LeastRequestLbConfig parseFrom(InputStream inputStream) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static LeastRequestLbConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static LeastRequestLbConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static LeastRequestLbConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (LeastRequestLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class OriginalDstLbConfig extends GeneratedMessageV3 implements j {
        private static final OriginalDstLbConfig DEFAULT_INSTANCE = new OriginalDstLbConfig();
        private static final e2<OriginalDstLbConfig> PARSER = new a();
        public static final int USE_HTTP_HEADER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private boolean useHttpHeader_;

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<OriginalDstLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public OriginalDstLbConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new OriginalDstLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements j {

            /* renamed from: e  reason: collision with root package name */
            private boolean f45962e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46282r.d(OriginalDstLbConfig.class, b.class);
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
                originalDstLbConfig.useHttpHeader_ = this.f45962e;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.OriginalDstLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.OriginalDstLbConfig.access$8200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$OriginalDstLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.OriginalDstLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$OriginalDstLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.OriginalDstLbConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.OriginalDstLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$OriginalDstLbConfig$b");
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46281q;
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
                this.f45962e = z10;
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

        /* synthetic */ OriginalDstLbConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static OriginalDstLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46281q;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46282r.d(OriginalDstLbConfig.class, b.class);
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

        private OriginalDstLbConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static OriginalDstLbConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static OriginalDstLbConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (OriginalDstLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class RefreshRate extends GeneratedMessageV3 implements k {
        public static final int BASE_INTERVAL_FIELD_NUMBER = 1;
        public static final int MAX_INTERVAL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Duration baseInterval_;
        private Duration maxInterval_;
        private byte memoizedIsInitialized;
        private static final RefreshRate DEFAULT_INSTANCE = new RefreshRate();
        private static final e2<RefreshRate> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<RefreshRate> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RefreshRate m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RefreshRate(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements k {

            /* renamed from: e  reason: collision with root package name */
            private Duration f45963e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f45964f;

            /* renamed from: g  reason: collision with root package name */
            private Duration f45965g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f45966h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.B.d(RefreshRate.class, b.class);
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
                q2<Duration, Duration.b, v> q2Var = this.f45964f;
                if (q2Var == null) {
                    refreshRate.baseInterval_ = this.f45963e;
                } else {
                    refreshRate.baseInterval_ = q2Var.b();
                }
                q2<Duration, Duration.b, v> q2Var2 = this.f45966h;
                if (q2Var2 == null) {
                    refreshRate.maxInterval_ = this.f45965g;
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
                q2<Duration, Duration.b, v> q2Var = this.f45964f;
                if (q2Var == null) {
                    Duration duration2 = this.f45963e;
                    if (duration2 != null) {
                        this.f45963e = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f45963e = duration;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RefreshRate.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RefreshRate.access$13000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$RefreshRate r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RefreshRate) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$RefreshRate r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RefreshRate) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RefreshRate.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$RefreshRate$b");
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.A;
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
                q2<Duration, Duration.b, v> q2Var = this.f45966h;
                if (q2Var == null) {
                    Duration duration2 = this.f45965g;
                    if (duration2 != null) {
                        this.f45965g = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f45965g = duration;
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

        /* synthetic */ RefreshRate(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RefreshRate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.A;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.B.d(RefreshRate.class, b.class);
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

        private RefreshRate(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static RefreshRate parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RefreshRate parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RefreshRate) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class RingHashLbConfig extends GeneratedMessageV3 implements l {
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

        /* loaded from: classes5.dex */
        public enum HashFunction implements h2 {
            XX_HASH(0),
            MURMUR_HASH_2(1),
            UNRECOGNIZED(-1);
            
            public static final int MURMUR_HASH_2_VALUE = 1;
            public static final int XX_HASH_VALUE = 0;
            private final int value;
            private static final u0.d<HashFunction> internalValueMap = new a();
            private static final HashFunction[] VALUES = values();

            /* loaded from: classes5.dex */
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

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<RingHashLbConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RingHashLbConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RingHashLbConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements l {

            /* renamed from: e  reason: collision with root package name */
            private UInt64Value f45967e;

            /* renamed from: f  reason: collision with root package name */
            private q2<UInt64Value, UInt64Value.b, f3> f45968f;

            /* renamed from: g  reason: collision with root package name */
            private int f45969g;

            /* renamed from: h  reason: collision with root package name */
            private UInt64Value f45970h;

            /* renamed from: i  reason: collision with root package name */
            private q2<UInt64Value, UInt64Value.b, f3> f45971i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46280p.d(RingHashLbConfig.class, b.class);
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
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f45968f;
                if (q2Var == null) {
                    ringHashLbConfig.minimumRingSize_ = this.f45967e;
                } else {
                    ringHashLbConfig.minimumRingSize_ = q2Var.b();
                }
                ringHashLbConfig.hashFunction_ = this.f45969g;
                q2<UInt64Value, UInt64Value.b, f3> q2Var2 = this.f45971i;
                if (q2Var2 == null) {
                    ringHashLbConfig.maximumRingSize_ = this.f45970h;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RingHashLbConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RingHashLbConfig.access$7400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$RingHashLbConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RingHashLbConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$RingHashLbConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RingHashLbConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.RingHashLbConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$RingHashLbConfig$b");
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46279o;
            }

            public b h0(UInt64Value uInt64Value) {
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f45971i;
                if (q2Var == null) {
                    UInt64Value uInt64Value2 = this.f45970h;
                    if (uInt64Value2 != null) {
                        this.f45970h = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                    } else {
                        this.f45970h = uInt64Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt64Value);
                }
                return this;
            }

            public b i0(UInt64Value uInt64Value) {
                q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f45968f;
                if (q2Var == null) {
                    UInt64Value uInt64Value2 = this.f45967e;
                    if (uInt64Value2 != null) {
                        this.f45967e = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                    } else {
                        this.f45967e = uInt64Value;
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
                this.f45969g = i9;
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
                this.f45969g = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45969g = 0;
                b0();
            }
        }

        /* synthetic */ RingHashLbConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RingHashLbConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46279o;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46280p.d(RingHashLbConfig.class, b.class);
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

        private RingHashLbConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static RingHashLbConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RingHashLbConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RingHashLbConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class TransportSocketMatch extends GeneratedMessageV3 implements m {
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

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<TransportSocketMatch> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TransportSocketMatch m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new TransportSocketMatch(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements m {

            /* renamed from: e  reason: collision with root package name */
            private Object f45972e;

            /* renamed from: f  reason: collision with root package name */
            private Struct f45973f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f45974g;

            /* renamed from: h  reason: collision with root package name */
            private TransportSocket f45975h;

            /* renamed from: i  reason: collision with root package name */
            private q2<TransportSocket, TransportSocket.c, r0> f45976i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46268d.d(TransportSocketMatch.class, b.class);
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
                transportSocketMatch.name_ = this.f45972e;
                q2<Struct, Struct.b, u2> q2Var = this.f45974g;
                if (q2Var == null) {
                    transportSocketMatch.match_ = this.f45973f;
                } else {
                    transportSocketMatch.match_ = q2Var.b();
                }
                q2<TransportSocket, TransportSocket.c, r0> q2Var2 = this.f45976i;
                if (q2Var2 == null) {
                    transportSocketMatch.transportSocket_ = this.f45975h;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.TransportSocketMatch.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.TransportSocketMatch.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$TransportSocketMatch r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.TransportSocketMatch) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$TransportSocketMatch r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.TransportSocketMatch) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.TransportSocketMatch.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$TransportSocketMatch$b");
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
                    this.f45972e = transportSocketMatch.name_;
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46267c;
            }

            public b h0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f45974g;
                if (q2Var == null) {
                    Struct struct2 = this.f45973f;
                    if (struct2 != null) {
                        this.f45973f = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f45973f = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
                return this;
            }

            public b i0(TransportSocket transportSocket) {
                q2<TransportSocket, TransportSocket.c, r0> q2Var = this.f45976i;
                if (q2Var == null) {
                    TransportSocket transportSocket2 = this.f45975h;
                    if (transportSocket2 != null) {
                        this.f45975h = TransportSocket.newBuilder(transportSocket2).h0(transportSocket).I();
                    } else {
                        this.f45975h = transportSocket;
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
                this.f45972e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45972e = "";
                b0();
            }
        }

        /* synthetic */ TransportSocketMatch(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TransportSocketMatch getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46267c;
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

        public r0 getTransportSocketOrBuilder() {
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46268d.d(TransportSocketMatch.class, b.class);
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

        private TransportSocketMatch(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                            builder2.h0(transportSocket2);
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

        public static TransportSocketMatch parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TransportSocketMatch parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (TransportSocketMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Cluster> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Cluster m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Cluster(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45977a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f45978b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f45979c;

        static {
            int[] iArr = new int[LbConfigCase.values().length];
            f45979c = iArr;
            try {
                iArr[LbConfigCase.RING_HASH_LB_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45979c[LbConfigCase.ORIGINAL_DST_LB_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45979c[LbConfigCase.LEAST_REQUEST_LB_CONFIG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45979c[LbConfigCase.LBCONFIG_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ClusterDiscoveryTypeCase.values().length];
            f45978b = iArr2;
            try {
                iArr2[ClusterDiscoveryTypeCase.TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f45978b[ClusterDiscoveryTypeCase.CLUSTER_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f45978b[ClusterDiscoveryTypeCase.CLUSTERDISCOVERYTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[CommonLbConfig.LocalityConfigSpecifierCase.values().length];
            f45977a = iArr3;
            try {
                iArr3[CommonLbConfig.LocalityConfigSpecifierCase.ZONE_AWARE_LB_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f45977a[CommonLbConfig.LocalityConfigSpecifierCase.LOCALITY_WEIGHTED_LB_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f45977a[CommonLbConfig.LocalityConfigSpecifierCase.LOCALITYCONFIGSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {
        private l2<HealthCheck, HealthCheck.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.v> A;
        private UInt32Value B;
        private int B3;
        private q2<UInt32Value, UInt32Value.b, e3> C;
        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> C4;
        private CircuitBreakers D;
        private boolean D4;
        private q2<CircuitBreakers, CircuitBreakers.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.b> E;
        private OutlierDetection E4;
        private UpstreamTlsContext F;
        private q2<OutlierDetection, OutlierDetection.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.e> F4;
        private q2<UpstreamTlsContext, UpstreamTlsContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.m> G;
        private Duration G4;
        private UpstreamHttpProtocolOptions H;
        private q2<Duration, Duration.b, v> H4;
        private q2<UpstreamHttpProtocolOptions, UpstreamHttpProtocolOptions.b, s0> I;
        private BindConfig I4;
        private HttpProtocolOptions J;
        private q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.h> J4;
        private q2<HttpProtocolOptions, HttpProtocolOptions.b, z> K;
        private LbSubsetConfig K4;
        private Http1ProtocolOptions L;
        private q2<LbSubsetConfig, LbSubsetConfig.b, h> L4;
        private q2<Http1ProtocolOptions, Http1ProtocolOptions.c, x> M;
        private q2<RingHashLbConfig, RingHashLbConfig.b, l> M4;
        private Http2ProtocolOptions N;
        private q2<OriginalDstLbConfig, OriginalDstLbConfig.b, j> N4;
        private q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> O;
        private q2<LeastRequestLbConfig, LeastRequestLbConfig.b, i> O4;
        private g1<String, Struct> P;
        private CommonLbConfig P4;
        private g1<String, Any> Q;
        private q2<CommonLbConfig, CommonLbConfig.b, d> Q4;
        private Duration R;
        private TransportSocket R4;
        private q2<TransportSocket, TransportSocket.c, r0> S4;
        private Metadata T4;
        private q2<Metadata, Metadata.b, d0> U4;
        private RefreshRate V1;
        private boolean V2;
        private List<Address> V3;
        private int V4;
        private UpstreamConnectionOptions W4;
        private q2<UpstreamConnectionOptions, UpstreamConnectionOptions.b, q> X4;
        private boolean Y4;
        private boolean Z4;

        /* renamed from: a1  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f45980a1;

        /* renamed from: a2  reason: collision with root package name */
        private q2<RefreshRate, RefreshRate.b, k> f45981a2;

        /* renamed from: a5  reason: collision with root package name */
        private List<Filter> f45982a5;

        /* renamed from: b5  reason: collision with root package name */
        private l2<Filter, Filter.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.c> f45983b5;

        /* renamed from: c5  reason: collision with root package name */
        private LoadBalancingPolicy f45984c5;

        /* renamed from: d5  reason: collision with root package name */
        private q2<LoadBalancingPolicy, LoadBalancingPolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.i> f45985d5;

        /* renamed from: e  reason: collision with root package name */
        private int f45986e;

        /* renamed from: e5  reason: collision with root package name */
        private ConfigSource f45987e5;

        /* renamed from: f  reason: collision with root package name */
        private Object f45988f;

        /* renamed from: f5  reason: collision with root package name */
        private q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k> f45989f5;

        /* renamed from: g  reason: collision with root package name */
        private int f45990g;

        /* renamed from: g5  reason: collision with root package name */
        private boolean f45991g5;

        /* renamed from: h  reason: collision with root package name */
        private Object f45992h;

        /* renamed from: i  reason: collision with root package name */
        private int f45993i;

        /* renamed from: j  reason: collision with root package name */
        private List<TransportSocketMatch> f45994j;

        /* renamed from: k  reason: collision with root package name */
        private l2<TransportSocketMatch, TransportSocketMatch.b, m> f45995k;

        /* renamed from: l  reason: collision with root package name */
        private Object f45996l;

        /* renamed from: m  reason: collision with root package name */
        private Object f45997m;

        /* renamed from: n  reason: collision with root package name */
        private q2<CustomClusterType, CustomClusterType.b, e> f45998n;

        /* renamed from: o  reason: collision with root package name */
        private EdsClusterConfig f45999o;

        /* renamed from: p  reason: collision with root package name */
        private q2<EdsClusterConfig, EdsClusterConfig.b, f> f46000p;

        /* renamed from: q  reason: collision with root package name */
        private Duration f46001q;

        /* renamed from: r  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f46002r;

        /* renamed from: s  reason: collision with root package name */
        private UInt32Value f46003s;

        /* renamed from: t  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46004t;

        /* renamed from: u  reason: collision with root package name */
        private int f46005u;

        /* renamed from: v  reason: collision with root package name */
        private List<Address> f46006v;

        /* renamed from: w  reason: collision with root package name */
        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> f46007w;

        /* renamed from: x  reason: collision with root package name */
        private ClusterLoadAssignment f46008x;

        /* renamed from: y  reason: collision with root package name */
        private q2<ClusterLoadAssignment, ClusterLoadAssignment.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.b> f46009y;

        /* renamed from: z  reason: collision with root package name */
        private List<HealthCheck> f46010z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45993i & 32) == 0) {
                this.V3 = new ArrayList(this.V3);
                this.f45993i |= 32;
            }
        }

        private void b0() {
            if ((this.f45993i & 64) == 0) {
                this.f45982a5 = new ArrayList(this.f45982a5);
                this.f45993i |= 64;
            }
        }

        private void d0() {
            if ((this.f45993i & 4) == 0) {
                this.f46010z = new ArrayList(this.f46010z);
                this.f45993i |= 4;
            }
        }

        private void e0() {
            if ((this.f45993i & 2) == 0) {
                this.f46006v = new ArrayList(this.f46006v);
                this.f45993i |= 2;
            }
        }

        private void g0() {
            if ((this.f45993i & 1) == 0) {
                this.f45994j = new ArrayList(this.f45994j);
                this.f45993i |= 1;
            }
        }

        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> i0() {
            if (this.C4 == null) {
                this.C4 = new l2<>(this.V3, (this.f45993i & 32) != 0, H(), O());
                this.V3 = null;
            }
            return this.C4;
        }

        private l2<Filter, Filter.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.c> j0() {
            if (this.f45983b5 == null) {
                this.f45983b5 = new l2<>(this.f45982a5, (this.f45993i & 64) != 0, H(), O());
                this.f45982a5 = null;
            }
            return this.f45983b5;
        }

        private l2<HealthCheck, HealthCheck.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.v> k0() {
            if (this.A == null) {
                this.A = new l2<>(this.f46010z, (this.f45993i & 4) != 0, H(), O());
                this.f46010z = null;
            }
            return this.A;
        }

        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> l0() {
            if (this.f46007w == null) {
                this.f46007w = new l2<>(this.f46006v, (this.f45993i & 2) != 0, H(), O());
                this.f46006v = null;
            }
            return this.f46007w;
        }

        private l2<TransportSocketMatch, TransportSocketMatch.b, m> m0() {
            if (this.f45995k == null) {
                this.f45995k = new l2<>(this.f45994j, (this.f45993i & 1) != 0, H(), O());
                this.f45994j = null;
            }
            return this.f45995k;
        }

        private g1<String, Struct> n0() {
            g1<String, Struct> g1Var = this.P;
            return g1Var == null ? g1.g(g.f46011a) : g1Var;
        }

        private g1<String, Struct> o0() {
            R();
            if (this.P == null) {
                this.P = g1.p(g.f46011a);
            }
            if (!this.P.m()) {
                this.P = this.P.f();
            }
            return this.P;
        }

        private g1<String, Any> q0() {
            R();
            if (this.Q == null) {
                this.Q = g1.p(n.f46012a);
            }
            if (!this.Q.m()) {
                this.Q = this.Q.f();
            }
            return this.Q;
        }

        private g1<String, Any> r0() {
            g1<String, Any> g1Var = this.Q;
            return g1Var == null ? g1.g(n.f46012a) : g1Var;
        }

        private void s0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m0();
                l0();
                k0();
                i0();
                j0();
            }
        }

        public c B0(RefreshRate refreshRate) {
            q2<RefreshRate, RefreshRate.b, k> q2Var = this.f45981a2;
            if (q2Var == null) {
                RefreshRate refreshRate2 = this.V1;
                if (refreshRate2 != null) {
                    this.V1 = RefreshRate.newBuilder(refreshRate2).h0(refreshRate).I();
                } else {
                    this.V1 = refreshRate;
                }
                R();
            } else {
                q2Var.e(refreshRate);
            }
            return this;
        }

        public c D0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f45980a1;
            if (q2Var == null) {
                Duration duration2 = this.R;
                if (duration2 != null) {
                    this.R = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.R = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c H0(EdsClusterConfig edsClusterConfig) {
            q2<EdsClusterConfig, EdsClusterConfig.b, f> q2Var = this.f46000p;
            if (q2Var == null) {
                EdsClusterConfig edsClusterConfig2 = this.f45999o;
                if (edsClusterConfig2 != null) {
                    this.f45999o = EdsClusterConfig.newBuilder(edsClusterConfig2).h0(edsClusterConfig).I();
                } else {
                    this.f45999o = edsClusterConfig;
                }
                R();
            } else {
                q2Var.e(edsClusterConfig);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: I0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.access$18800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.K0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.K0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: J0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Cluster) {
                return K0((Cluster) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46266b.d(Cluster.class, c.class);
        }

        public c K0(Cluster cluster) {
            if (cluster == Cluster.getDefaultInstance()) {
                return this;
            }
            if (this.f45995k == null) {
                if (!cluster.transportSocketMatches_.isEmpty()) {
                    if (this.f45994j.isEmpty()) {
                        this.f45994j = cluster.transportSocketMatches_;
                        this.f45993i &= -2;
                    } else {
                        g0();
                        this.f45994j.addAll(cluster.transportSocketMatches_);
                    }
                    R();
                }
            } else if (!cluster.transportSocketMatches_.isEmpty()) {
                if (this.f45995k.k()) {
                    this.f45995k.f();
                    this.f45995k = null;
                    this.f45994j = cluster.transportSocketMatches_;
                    this.f45993i &= -2;
                    this.f45995k = GeneratedMessageV3.alwaysUseFieldBuilders ? m0() : null;
                } else {
                    this.f45995k.b(cluster.transportSocketMatches_);
                }
            }
            if (!cluster.getName().isEmpty()) {
                this.f45996l = cluster.name_;
                R();
            }
            if (!cluster.getAltStatName().isEmpty()) {
                this.f45997m = cluster.altStatName_;
                R();
            }
            if (cluster.hasEdsClusterConfig()) {
                H0(cluster.getEdsClusterConfig());
            }
            if (cluster.hasConnectTimeout()) {
                z0(cluster.getConnectTimeout());
            }
            if (cluster.hasPerConnectionBufferLimitBytes()) {
                Y0(cluster.getPerConnectionBufferLimitBytes());
            }
            if (cluster.lbPolicy_ != 0) {
                m1(cluster.getLbPolicyValue());
            }
            if (this.f46007w == null) {
                if (!cluster.hosts_.isEmpty()) {
                    if (this.f46006v.isEmpty()) {
                        this.f46006v = cluster.hosts_;
                        this.f45993i &= -3;
                    } else {
                        e0();
                        this.f46006v.addAll(cluster.hosts_);
                    }
                    R();
                }
            } else if (!cluster.hosts_.isEmpty()) {
                if (this.f46007w.k()) {
                    this.f46007w.f();
                    this.f46007w = null;
                    this.f46006v = cluster.hosts_;
                    this.f45993i &= -3;
                    this.f46007w = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                } else {
                    this.f46007w.b(cluster.hosts_);
                }
            }
            if (cluster.hasLoadAssignment()) {
                Q0(cluster.getLoadAssignment());
            }
            if (this.A == null) {
                if (!cluster.healthChecks_.isEmpty()) {
                    if (this.f46010z.isEmpty()) {
                        this.f46010z = cluster.healthChecks_;
                        this.f45993i &= -5;
                    } else {
                        d0();
                        this.f46010z.addAll(cluster.healthChecks_);
                    }
                    R();
                }
            } else if (!cluster.healthChecks_.isEmpty()) {
                if (this.A.k()) {
                    this.A.f();
                    this.A = null;
                    this.f46010z = cluster.healthChecks_;
                    this.f45993i &= -5;
                    this.A = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.A.b(cluster.healthChecks_);
                }
            }
            if (cluster.hasMaxRequestsPerConnection()) {
                U0(cluster.getMaxRequestsPerConnection());
            }
            if (cluster.hasCircuitBreakers()) {
                t0(cluster.getCircuitBreakers());
            }
            if (cluster.hasTlsContext()) {
                a1(cluster.getTlsContext());
            }
            if (cluster.hasUpstreamHttpProtocolOptions()) {
                g1(cluster.getUpstreamHttpProtocolOptions());
            }
            if (cluster.hasCommonHttpProtocolOptions()) {
                x0(cluster.getCommonHttpProtocolOptions());
            }
            if (cluster.hasHttpProtocolOptions()) {
                M0(cluster.getHttpProtocolOptions());
            }
            if (cluster.hasHttp2ProtocolOptions()) {
                L0(cluster.getHttp2ProtocolOptions());
            }
            o0().o(cluster.internalGetExtensionProtocolOptions());
            q0().o(cluster.internalGetTypedExtensionProtocolOptions());
            if (cluster.hasDnsRefreshRate()) {
                D0(cluster.getDnsRefreshRate());
            }
            if (cluster.hasDnsFailureRefreshRate()) {
                B0(cluster.getDnsFailureRefreshRate());
            }
            if (cluster.getRespectDnsTtl()) {
                o1(cluster.getRespectDnsTtl());
            }
            if (cluster.dnsLookupFamily_ != 0) {
                i1(cluster.getDnsLookupFamilyValue());
            }
            if (this.C4 == null) {
                if (!cluster.dnsResolvers_.isEmpty()) {
                    if (this.V3.isEmpty()) {
                        this.V3 = cluster.dnsResolvers_;
                        this.f45993i &= -33;
                    } else {
                        a0();
                        this.V3.addAll(cluster.dnsResolvers_);
                    }
                    R();
                }
            } else if (!cluster.dnsResolvers_.isEmpty()) {
                if (this.C4.k()) {
                    this.C4.f();
                    this.C4 = null;
                    this.V3 = cluster.dnsResolvers_;
                    this.f45993i &= -33;
                    this.C4 = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.C4.b(cluster.dnsResolvers_);
                }
            }
            if (cluster.getUseTcpForDnsLookups()) {
                s1(cluster.getUseTcpForDnsLookups());
            }
            if (cluster.hasOutlierDetection()) {
                X0(cluster.getOutlierDetection());
            }
            if (cluster.hasCleanupInterval()) {
                u0(cluster.getCleanupInterval());
            }
            if (cluster.hasUpstreamBindConfig()) {
                d1(cluster.getUpstreamBindConfig());
            }
            if (cluster.hasLbSubsetConfig()) {
                N0(cluster.getLbSubsetConfig());
            }
            if (cluster.hasCommonLbConfig()) {
                y0(cluster.getCommonLbConfig());
            }
            if (cluster.hasTransportSocket()) {
                b1(cluster.getTransportSocket());
            }
            if (cluster.hasMetadata()) {
                V0(cluster.getMetadata());
            }
            if (cluster.protocolSelection_ != 0) {
                n1(cluster.getProtocolSelectionValue());
            }
            if (cluster.hasUpstreamConnectionOptions()) {
                e1(cluster.getUpstreamConnectionOptions());
            }
            if (cluster.getCloseConnectionsOnHostHealthFailure()) {
                h1(cluster.getCloseConnectionsOnHostHealthFailure());
            }
            if (cluster.getDrainConnectionsOnHostRemoval()) {
                k1(cluster.getDrainConnectionsOnHostRemoval());
            }
            if (this.f45983b5 == null) {
                if (!cluster.filters_.isEmpty()) {
                    if (this.f45982a5.isEmpty()) {
                        this.f45982a5 = cluster.filters_;
                        this.f45993i &= -65;
                    } else {
                        b0();
                        this.f45982a5.addAll(cluster.filters_);
                    }
                    R();
                }
            } else if (!cluster.filters_.isEmpty()) {
                if (this.f45983b5.k()) {
                    this.f45983b5.f();
                    this.f45983b5 = null;
                    this.f45982a5 = cluster.filters_;
                    this.f45993i &= -65;
                    this.f45983b5 = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f45983b5.b(cluster.filters_);
                }
            }
            if (cluster.hasLoadBalancingPolicy()) {
                S0(cluster.getLoadBalancingPolicy());
            }
            if (cluster.hasLrsServer()) {
                T0(cluster.getLrsServer());
            }
            if (cluster.getTrackTimeoutBudgets()) {
                p1(cluster.getTrackTimeoutBudgets());
            }
            int i9 = b.f45978b[cluster.getClusterDiscoveryTypeCase().ordinal()];
            if (i9 == 1) {
                q1(cluster.getTypeValue());
            } else if (i9 == 2) {
                v0(cluster.getClusterType());
            }
            int i10 = b.f45979c[cluster.getLbConfigCase().ordinal()];
            if (i10 == 1) {
                Z0(cluster.getRingHashLbConfig());
            } else if (i10 == 2) {
                W0(cluster.getOriginalDstLbConfig());
            } else if (i10 == 3) {
                O0(cluster.getLeastRequestLbConfig());
            }
            z(((GeneratedMessageV3) cluster).unknownFields);
            R();
            return this;
        }

        public c L0(Http2ProtocolOptions http2ProtocolOptions) {
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> q2Var = this.O;
            if (q2Var == null) {
                Http2ProtocolOptions http2ProtocolOptions2 = this.N;
                if (http2ProtocolOptions2 != null) {
                    this.N = Http2ProtocolOptions.newBuilder(http2ProtocolOptions2).i0(http2ProtocolOptions).I();
                } else {
                    this.N = http2ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http2ProtocolOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 != 35) {
                if (i9 == 36) {
                    return r0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return n0();
        }

        public c M0(Http1ProtocolOptions http1ProtocolOptions) {
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, x> q2Var = this.M;
            if (q2Var == null) {
                Http1ProtocolOptions http1ProtocolOptions2 = this.L;
                if (http1ProtocolOptions2 != null) {
                    this.L = Http1ProtocolOptions.newBuilder(http1ProtocolOptions2).h0(http1ProtocolOptions).I();
                } else {
                    this.L = http1ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http1ProtocolOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 != 35) {
                if (i9 == 36) {
                    return q0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return o0();
        }

        public c N0(LbSubsetConfig lbSubsetConfig) {
            q2<LbSubsetConfig, LbSubsetConfig.b, h> q2Var = this.L4;
            if (q2Var == null) {
                LbSubsetConfig lbSubsetConfig2 = this.K4;
                if (lbSubsetConfig2 != null) {
                    this.K4 = LbSubsetConfig.newBuilder(lbSubsetConfig2).j0(lbSubsetConfig).I();
                } else {
                    this.K4 = lbSubsetConfig;
                }
                R();
            } else {
                q2Var.e(lbSubsetConfig);
            }
            return this;
        }

        public c O0(LeastRequestLbConfig leastRequestLbConfig) {
            q2<LeastRequestLbConfig, LeastRequestLbConfig.b, i> q2Var = this.O4;
            if (q2Var == null) {
                if (this.f45990g == 37 && this.f45992h != LeastRequestLbConfig.getDefaultInstance()) {
                    this.f45992h = LeastRequestLbConfig.newBuilder((LeastRequestLbConfig) this.f45992h).h0(leastRequestLbConfig).I();
                } else {
                    this.f45992h = leastRequestLbConfig;
                }
                R();
            } else {
                if (this.f45990g == 37) {
                    q2Var.e(leastRequestLbConfig);
                }
                this.O4.g(leastRequestLbConfig);
            }
            this.f45990g = 37;
            return this;
        }

        public c Q0(ClusterLoadAssignment clusterLoadAssignment) {
            q2<ClusterLoadAssignment, ClusterLoadAssignment.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.b> q2Var = this.f46009y;
            if (q2Var == null) {
                ClusterLoadAssignment clusterLoadAssignment2 = this.f46008x;
                if (clusterLoadAssignment2 != null) {
                    this.f46008x = ClusterLoadAssignment.newBuilder(clusterLoadAssignment2).k0(clusterLoadAssignment).I();
                } else {
                    this.f46008x = clusterLoadAssignment;
                }
                R();
            } else {
                q2Var.e(clusterLoadAssignment);
            }
            return this;
        }

        public c S0(LoadBalancingPolicy loadBalancingPolicy) {
            q2<LoadBalancingPolicy, LoadBalancingPolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.i> q2Var = this.f45985d5;
            if (q2Var == null) {
                LoadBalancingPolicy loadBalancingPolicy2 = this.f45984c5;
                if (loadBalancingPolicy2 != null) {
                    this.f45984c5 = LoadBalancingPolicy.newBuilder(loadBalancingPolicy2).i0(loadBalancingPolicy).I();
                } else {
                    this.f45984c5 = loadBalancingPolicy;
                }
                R();
            } else {
                q2Var.e(loadBalancingPolicy);
            }
            return this;
        }

        public c T0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k> q2Var = this.f45989f5;
            if (q2Var == null) {
                ConfigSource configSource2 = this.f45987e5;
                if (configSource2 != null) {
                    this.f45987e5 = ConfigSource.newBuilder(configSource2).i0(configSource).I();
                } else {
                    this.f45987e5 = configSource;
                }
                R();
            } else {
                q2Var.e(configSource);
            }
            return this;
        }

        public c U0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.C;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.B;
                if (uInt32Value2 != null) {
                    this.B = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.B = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c V0(Metadata metadata) {
            q2<Metadata, Metadata.b, d0> q2Var = this.U4;
            if (q2Var == null) {
                Metadata metadata2 = this.T4;
                if (metadata2 != null) {
                    this.T4 = Metadata.newBuilder(metadata2).i0(metadata).I();
                } else {
                    this.T4 = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        public c W0(OriginalDstLbConfig originalDstLbConfig) {
            q2<OriginalDstLbConfig, OriginalDstLbConfig.b, j> q2Var = this.N4;
            if (q2Var == null) {
                if (this.f45990g == 34 && this.f45992h != OriginalDstLbConfig.getDefaultInstance()) {
                    this.f45992h = OriginalDstLbConfig.newBuilder((OriginalDstLbConfig) this.f45992h).g0(originalDstLbConfig).I();
                } else {
                    this.f45992h = originalDstLbConfig;
                }
                R();
            } else {
                if (this.f45990g == 34) {
                    q2Var.e(originalDstLbConfig);
                }
                this.N4.g(originalDstLbConfig);
            }
            this.f45990g = 34;
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

        public c X0(OutlierDetection outlierDetection) {
            q2<OutlierDetection, OutlierDetection.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.e> q2Var = this.F4;
            if (q2Var == null) {
                OutlierDetection outlierDetection2 = this.E4;
                if (outlierDetection2 != null) {
                    this.E4 = OutlierDetection.newBuilder(outlierDetection2).v0(outlierDetection).I();
                } else {
                    this.E4 = outlierDetection;
                }
                R();
            } else {
                q2Var.e(outlierDetection);
            }
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Cluster I() {
            Cluster cluster = new Cluster(this, (a) null);
            int i9 = this.f45993i;
            l2<TransportSocketMatch, TransportSocketMatch.b, m> l2Var = this.f45995k;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f45994j = Collections.unmodifiableList(this.f45994j);
                    this.f45993i &= -2;
                }
                cluster.transportSocketMatches_ = this.f45994j;
            } else {
                cluster.transportSocketMatches_ = l2Var.e();
            }
            cluster.name_ = this.f45996l;
            cluster.altStatName_ = this.f45997m;
            if (this.f45986e == 2) {
                cluster.clusterDiscoveryType_ = this.f45988f;
            }
            if (this.f45986e == 38) {
                q2<CustomClusterType, CustomClusterType.b, e> q2Var = this.f45998n;
                if (q2Var == null) {
                    cluster.clusterDiscoveryType_ = this.f45988f;
                } else {
                    cluster.clusterDiscoveryType_ = q2Var.b();
                }
            }
            q2<EdsClusterConfig, EdsClusterConfig.b, f> q2Var2 = this.f46000p;
            if (q2Var2 == null) {
                cluster.edsClusterConfig_ = this.f45999o;
            } else {
                cluster.edsClusterConfig_ = q2Var2.b();
            }
            q2<Duration, Duration.b, v> q2Var3 = this.f46002r;
            if (q2Var3 == null) {
                cluster.connectTimeout_ = this.f46001q;
            } else {
                cluster.connectTimeout_ = q2Var3.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f46004t;
            if (q2Var4 == null) {
                cluster.perConnectionBufferLimitBytes_ = this.f46003s;
            } else {
                cluster.perConnectionBufferLimitBytes_ = q2Var4.b();
            }
            cluster.lbPolicy_ = this.f46005u;
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> l2Var2 = this.f46007w;
            if (l2Var2 == null) {
                if ((this.f45993i & 2) != 0) {
                    this.f46006v = Collections.unmodifiableList(this.f46006v);
                    this.f45993i &= -3;
                }
                cluster.hosts_ = this.f46006v;
            } else {
                cluster.hosts_ = l2Var2.e();
            }
            q2<ClusterLoadAssignment, ClusterLoadAssignment.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.b> q2Var5 = this.f46009y;
            if (q2Var5 == null) {
                cluster.loadAssignment_ = this.f46008x;
            } else {
                cluster.loadAssignment_ = q2Var5.b();
            }
            l2<HealthCheck, HealthCheck.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.v> l2Var3 = this.A;
            if (l2Var3 == null) {
                if ((this.f45993i & 4) != 0) {
                    this.f46010z = Collections.unmodifiableList(this.f46010z);
                    this.f45993i &= -5;
                }
                cluster.healthChecks_ = this.f46010z;
            } else {
                cluster.healthChecks_ = l2Var3.e();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var6 = this.C;
            if (q2Var6 == null) {
                cluster.maxRequestsPerConnection_ = this.B;
            } else {
                cluster.maxRequestsPerConnection_ = q2Var6.b();
            }
            q2<CircuitBreakers, CircuitBreakers.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.b> q2Var7 = this.E;
            if (q2Var7 == null) {
                cluster.circuitBreakers_ = this.D;
            } else {
                cluster.circuitBreakers_ = q2Var7.b();
            }
            q2<UpstreamTlsContext, UpstreamTlsContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.m> q2Var8 = this.G;
            if (q2Var8 == null) {
                cluster.tlsContext_ = this.F;
            } else {
                cluster.tlsContext_ = q2Var8.b();
            }
            q2<UpstreamHttpProtocolOptions, UpstreamHttpProtocolOptions.b, s0> q2Var9 = this.I;
            if (q2Var9 == null) {
                cluster.upstreamHttpProtocolOptions_ = this.H;
            } else {
                cluster.upstreamHttpProtocolOptions_ = q2Var9.b();
            }
            q2<HttpProtocolOptions, HttpProtocolOptions.b, z> q2Var10 = this.K;
            if (q2Var10 == null) {
                cluster.commonHttpProtocolOptions_ = this.J;
            } else {
                cluster.commonHttpProtocolOptions_ = q2Var10.b();
            }
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, x> q2Var11 = this.M;
            if (q2Var11 == null) {
                cluster.httpProtocolOptions_ = this.L;
            } else {
                cluster.httpProtocolOptions_ = q2Var11.b();
            }
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> q2Var12 = this.O;
            if (q2Var12 == null) {
                cluster.http2ProtocolOptions_ = this.N;
            } else {
                cluster.http2ProtocolOptions_ = q2Var12.b();
            }
            cluster.extensionProtocolOptions_ = n0();
            cluster.extensionProtocolOptions_.n();
            cluster.typedExtensionProtocolOptions_ = r0();
            cluster.typedExtensionProtocolOptions_.n();
            q2<Duration, Duration.b, v> q2Var13 = this.f45980a1;
            if (q2Var13 == null) {
                cluster.dnsRefreshRate_ = this.R;
            } else {
                cluster.dnsRefreshRate_ = q2Var13.b();
            }
            q2<RefreshRate, RefreshRate.b, k> q2Var14 = this.f45981a2;
            if (q2Var14 == null) {
                cluster.dnsFailureRefreshRate_ = this.V1;
            } else {
                cluster.dnsFailureRefreshRate_ = q2Var14.b();
            }
            cluster.respectDnsTtl_ = this.V2;
            cluster.dnsLookupFamily_ = this.B3;
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> l2Var4 = this.C4;
            if (l2Var4 == null) {
                if ((this.f45993i & 32) != 0) {
                    this.V3 = Collections.unmodifiableList(this.V3);
                    this.f45993i &= -33;
                }
                cluster.dnsResolvers_ = this.V3;
            } else {
                cluster.dnsResolvers_ = l2Var4.e();
            }
            cluster.useTcpForDnsLookups_ = this.D4;
            q2<OutlierDetection, OutlierDetection.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.e> q2Var15 = this.F4;
            if (q2Var15 == null) {
                cluster.outlierDetection_ = this.E4;
            } else {
                cluster.outlierDetection_ = q2Var15.b();
            }
            q2<Duration, Duration.b, v> q2Var16 = this.H4;
            if (q2Var16 == null) {
                cluster.cleanupInterval_ = this.G4;
            } else {
                cluster.cleanupInterval_ = q2Var16.b();
            }
            q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.h> q2Var17 = this.J4;
            if (q2Var17 == null) {
                cluster.upstreamBindConfig_ = this.I4;
            } else {
                cluster.upstreamBindConfig_ = q2Var17.b();
            }
            q2<LbSubsetConfig, LbSubsetConfig.b, h> q2Var18 = this.L4;
            if (q2Var18 == null) {
                cluster.lbSubsetConfig_ = this.K4;
            } else {
                cluster.lbSubsetConfig_ = q2Var18.b();
            }
            if (this.f45990g == 23) {
                q2<RingHashLbConfig, RingHashLbConfig.b, l> q2Var19 = this.M4;
                if (q2Var19 == null) {
                    cluster.lbConfig_ = this.f45992h;
                } else {
                    cluster.lbConfig_ = q2Var19.b();
                }
            }
            if (this.f45990g == 34) {
                q2<OriginalDstLbConfig, OriginalDstLbConfig.b, j> q2Var20 = this.N4;
                if (q2Var20 == null) {
                    cluster.lbConfig_ = this.f45992h;
                } else {
                    cluster.lbConfig_ = q2Var20.b();
                }
            }
            if (this.f45990g == 37) {
                q2<LeastRequestLbConfig, LeastRequestLbConfig.b, i> q2Var21 = this.O4;
                if (q2Var21 == null) {
                    cluster.lbConfig_ = this.f45992h;
                } else {
                    cluster.lbConfig_ = q2Var21.b();
                }
            }
            q2<CommonLbConfig, CommonLbConfig.b, d> q2Var22 = this.Q4;
            if (q2Var22 == null) {
                cluster.commonLbConfig_ = this.P4;
            } else {
                cluster.commonLbConfig_ = q2Var22.b();
            }
            q2<TransportSocket, TransportSocket.c, r0> q2Var23 = this.S4;
            if (q2Var23 == null) {
                cluster.transportSocket_ = this.R4;
            } else {
                cluster.transportSocket_ = q2Var23.b();
            }
            q2<Metadata, Metadata.b, d0> q2Var24 = this.U4;
            if (q2Var24 == null) {
                cluster.metadata_ = this.T4;
            } else {
                cluster.metadata_ = q2Var24.b();
            }
            cluster.protocolSelection_ = this.V4;
            q2<UpstreamConnectionOptions, UpstreamConnectionOptions.b, q> q2Var25 = this.X4;
            if (q2Var25 == null) {
                cluster.upstreamConnectionOptions_ = this.W4;
            } else {
                cluster.upstreamConnectionOptions_ = q2Var25.b();
            }
            cluster.closeConnectionsOnHostHealthFailure_ = this.Y4;
            cluster.drainConnectionsOnHostRemoval_ = this.Z4;
            l2<Filter, Filter.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.c> l2Var5 = this.f45983b5;
            if (l2Var5 == null) {
                if ((this.f45993i & 64) != 0) {
                    this.f45982a5 = Collections.unmodifiableList(this.f45982a5);
                    this.f45993i &= -65;
                }
                cluster.filters_ = this.f45982a5;
            } else {
                cluster.filters_ = l2Var5.e();
            }
            q2<LoadBalancingPolicy, LoadBalancingPolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.i> q2Var26 = this.f45985d5;
            if (q2Var26 == null) {
                cluster.loadBalancingPolicy_ = this.f45984c5;
            } else {
                cluster.loadBalancingPolicy_ = q2Var26.b();
            }
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k> q2Var27 = this.f45989f5;
            if (q2Var27 == null) {
                cluster.lrsServer_ = this.f45987e5;
            } else {
                cluster.lrsServer_ = q2Var27.b();
            }
            cluster.trackTimeoutBudgets_ = this.f45991g5;
            cluster.clusterDiscoveryTypeCase_ = this.f45986e;
            cluster.lbConfigCase_ = this.f45990g;
            Q();
            return cluster;
        }

        public c Y0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46004t;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46003s;
                if (uInt32Value2 != null) {
                    this.f46003s = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46003s = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        public c Z0(RingHashLbConfig ringHashLbConfig) {
            q2<RingHashLbConfig, RingHashLbConfig.b, l> q2Var = this.M4;
            if (q2Var == null) {
                if (this.f45990g == 23 && this.f45992h != RingHashLbConfig.getDefaultInstance()) {
                    this.f45992h = RingHashLbConfig.newBuilder((RingHashLbConfig) this.f45992h).g0(ringHashLbConfig).I();
                } else {
                    this.f45992h = ringHashLbConfig;
                }
                R();
            } else {
                if (this.f45990g == 23) {
                    q2Var.e(ringHashLbConfig);
                }
                this.M4.g(ringHashLbConfig);
            }
            this.f45990g = 23;
            return this;
        }

        @Deprecated
        public c a1(UpstreamTlsContext upstreamTlsContext) {
            q2<UpstreamTlsContext, UpstreamTlsContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.m> q2Var = this.G;
            if (q2Var == null) {
                UpstreamTlsContext upstreamTlsContext2 = this.F;
                if (upstreamTlsContext2 != null) {
                    this.F = UpstreamTlsContext.newBuilder(upstreamTlsContext2).h0(upstreamTlsContext).I();
                } else {
                    this.F = upstreamTlsContext;
                }
                R();
            } else {
                q2Var.e(upstreamTlsContext);
            }
            return this;
        }

        public c b1(TransportSocket transportSocket) {
            q2<TransportSocket, TransportSocket.c, r0> q2Var = this.S4;
            if (q2Var == null) {
                TransportSocket transportSocket2 = this.R4;
                if (transportSocket2 != null) {
                    this.R4 = TransportSocket.newBuilder(transportSocket2).h0(transportSocket).I();
                } else {
                    this.R4 = transportSocket;
                }
                R();
            } else {
                q2Var.e(transportSocket);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: c1 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c d1(BindConfig bindConfig) {
            q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.h> q2Var = this.J4;
            if (q2Var == null) {
                BindConfig bindConfig2 = this.I4;
                if (bindConfig2 != null) {
                    this.I4 = BindConfig.newBuilder(bindConfig2).j0(bindConfig).I();
                } else {
                    this.I4 = bindConfig;
                }
                R();
            } else {
                q2Var.e(bindConfig);
            }
            return this;
        }

        public c e1(UpstreamConnectionOptions upstreamConnectionOptions) {
            q2<UpstreamConnectionOptions, UpstreamConnectionOptions.b, q> q2Var = this.X4;
            if (q2Var == null) {
                UpstreamConnectionOptions upstreamConnectionOptions2 = this.W4;
                if (upstreamConnectionOptions2 != null) {
                    this.W4 = UpstreamConnectionOptions.newBuilder(upstreamConnectionOptions2).g0(upstreamConnectionOptions).I();
                } else {
                    this.W4 = upstreamConnectionOptions;
                }
                R();
            } else {
                q2Var.e(upstreamConnectionOptions);
            }
            return this;
        }

        public c g1(UpstreamHttpProtocolOptions upstreamHttpProtocolOptions) {
            q2<UpstreamHttpProtocolOptions, UpstreamHttpProtocolOptions.b, s0> q2Var = this.I;
            if (q2Var == null) {
                UpstreamHttpProtocolOptions upstreamHttpProtocolOptions2 = this.H;
                if (upstreamHttpProtocolOptions2 != null) {
                    this.H = UpstreamHttpProtocolOptions.newBuilder(upstreamHttpProtocolOptions2).g0(upstreamHttpProtocolOptions).I();
                } else {
                    this.H = upstreamHttpProtocolOptions;
                }
                R();
            } else {
                q2Var.e(upstreamHttpProtocolOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46265a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: h0 */
        public Cluster getDefaultInstanceForType() {
            return Cluster.getDefaultInstance();
        }

        public c h1(boolean z10) {
            this.Y4 = z10;
            R();
            return this;
        }

        public c i1(int i9) {
            this.B3 = i9;
            R();
            return this;
        }

        public c k1(boolean z10) {
            this.Z4 = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l1 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m1(int i9) {
            this.f46005u = i9;
            R();
            return this;
        }

        public c n1(int i9) {
            this.V4 = i9;
            R();
            return this;
        }

        public c o1(boolean z10) {
            this.V2 = z10;
            R();
            return this;
        }

        public c p1(boolean z10) {
            this.f45991g5 = z10;
            R();
            return this;
        }

        public c q1(int i9) {
            this.f45986e = 2;
            this.f45988f = Integer.valueOf(i9);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r1 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        public c s1(boolean z10) {
            this.D4 = z10;
            R();
            return this;
        }

        public c t0(CircuitBreakers circuitBreakers) {
            q2<CircuitBreakers, CircuitBreakers.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.b> q2Var = this.E;
            if (q2Var == null) {
                CircuitBreakers circuitBreakers2 = this.D;
                if (circuitBreakers2 != null) {
                    this.D = CircuitBreakers.newBuilder(circuitBreakers2).i0(circuitBreakers).I();
                } else {
                    this.D = circuitBreakers;
                }
                R();
            } else {
                q2Var.e(circuitBreakers);
            }
            return this;
        }

        public c u0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.H4;
            if (q2Var == null) {
                Duration duration2 = this.G4;
                if (duration2 != null) {
                    this.G4 = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.G4 = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c v0(CustomClusterType customClusterType) {
            q2<CustomClusterType, CustomClusterType.b, e> q2Var = this.f45998n;
            if (q2Var == null) {
                if (this.f45986e == 38 && this.f45988f != CustomClusterType.getDefaultInstance()) {
                    this.f45988f = CustomClusterType.newBuilder((CustomClusterType) this.f45988f).g0(customClusterType).I();
                } else {
                    this.f45988f = customClusterType;
                }
                R();
            } else {
                if (this.f45986e == 38) {
                    q2Var.e(customClusterType);
                }
                this.f45998n.g(customClusterType);
            }
            this.f45986e = 38;
            return this;
        }

        public c x0(HttpProtocolOptions httpProtocolOptions) {
            q2<HttpProtocolOptions, HttpProtocolOptions.b, z> q2Var = this.K;
            if (q2Var == null) {
                HttpProtocolOptions httpProtocolOptions2 = this.J;
                if (httpProtocolOptions2 != null) {
                    this.J = HttpProtocolOptions.newBuilder(httpProtocolOptions2).g0(httpProtocolOptions).I();
                } else {
                    this.J = httpProtocolOptions;
                }
                R();
            } else {
                q2Var.e(httpProtocolOptions);
            }
            return this;
        }

        public c y0(CommonLbConfig commonLbConfig) {
            q2<CommonLbConfig, CommonLbConfig.b, d> q2Var = this.Q4;
            if (q2Var == null) {
                CommonLbConfig commonLbConfig2 = this.P4;
                if (commonLbConfig2 != null) {
                    this.P4 = CommonLbConfig.newBuilder(commonLbConfig2).h0(commonLbConfig).I();
                } else {
                    this.P4 = commonLbConfig;
                }
                R();
            } else {
                q2Var.e(commonLbConfig);
            }
            return this;
        }

        public c z0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f46002r;
            if (q2Var == null) {
                Duration duration2 = this.f46001q;
                if (duration2 != null) {
                    this.f46001q = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46001q = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f45986e = 0;
            this.f45990g = 0;
            this.f45994j = Collections.emptyList();
            this.f45996l = "";
            this.f45997m = "";
            this.f46005u = 0;
            this.f46006v = Collections.emptyList();
            this.f46010z = Collections.emptyList();
            this.B3 = 0;
            this.V3 = Collections.emptyList();
            this.V4 = 0;
            this.f45982a5 = Collections.emptyList();
            s0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45986e = 0;
            this.f45990g = 0;
            this.f45994j = Collections.emptyList();
            this.f45996l = "";
            this.f45997m = "";
            this.f46005u = 0;
            this.f46006v = Collections.emptyList();
            this.f46010z = Collections.emptyList();
            this.B3 = 0;
            this.V3 = Collections.emptyList();
            this.V4 = 0;
            this.f45982a5 = Collections.emptyList();
            s0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface f extends r1 {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Struct> f46011a = e1.k(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.C, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Struct.getDefaultInstance());
    }

    /* loaded from: classes5.dex */
    public interface h extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface i extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface j extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface k extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface l extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface m extends r1 {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class n {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Any> f46012a = e1.k(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.E, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Any.getDefaultInstance());
    }

    /* synthetic */ Cluster(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Cluster getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46265a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Struct> internalGetExtensionProtocolOptions() {
        g1<String, Struct> g1Var = this.extensionProtocolOptions_;
        return g1Var == null ? g1.g(g.f46011a) : g1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Any> internalGetTypedExtensionProtocolOptions() {
        g1<String, Any> g1Var = this.typedExtensionProtocolOptions_;
        return g1Var == null ? g1.g(n.f46012a) : g1Var;
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

    @Deprecated
    public boolean containsExtensionProtocolOptions(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetExtensionProtocolOptions().i().containsKey(str);
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
                    if ((!hasPerConnectionBufferLimitBytes() || getPerConnectionBufferLimitBytes().equals(cluster.getPerConnectionBufferLimitBytes())) && this.lbPolicy_ == cluster.lbPolicy_ && getHostsList().equals(cluster.getHostsList()) && hasLoadAssignment() == cluster.hasLoadAssignment()) {
                        if ((!hasLoadAssignment() || getLoadAssignment().equals(cluster.getLoadAssignment())) && getHealthChecksList().equals(cluster.getHealthChecksList()) && hasMaxRequestsPerConnection() == cluster.hasMaxRequestsPerConnection()) {
                            if ((!hasMaxRequestsPerConnection() || getMaxRequestsPerConnection().equals(cluster.getMaxRequestsPerConnection())) && hasCircuitBreakers() == cluster.hasCircuitBreakers()) {
                                if ((!hasCircuitBreakers() || getCircuitBreakers().equals(cluster.getCircuitBreakers())) && hasTlsContext() == cluster.hasTlsContext()) {
                                    if ((!hasTlsContext() || getTlsContext().equals(cluster.getTlsContext())) && hasUpstreamHttpProtocolOptions() == cluster.hasUpstreamHttpProtocolOptions()) {
                                        if ((!hasUpstreamHttpProtocolOptions() || getUpstreamHttpProtocolOptions().equals(cluster.getUpstreamHttpProtocolOptions())) && hasCommonHttpProtocolOptions() == cluster.hasCommonHttpProtocolOptions()) {
                                            if ((!hasCommonHttpProtocolOptions() || getCommonHttpProtocolOptions().equals(cluster.getCommonHttpProtocolOptions())) && hasHttpProtocolOptions() == cluster.hasHttpProtocolOptions()) {
                                                if ((!hasHttpProtocolOptions() || getHttpProtocolOptions().equals(cluster.getHttpProtocolOptions())) && hasHttp2ProtocolOptions() == cluster.hasHttp2ProtocolOptions()) {
                                                    if ((!hasHttp2ProtocolOptions() || getHttp2ProtocolOptions().equals(cluster.getHttp2ProtocolOptions())) && internalGetExtensionProtocolOptions().equals(cluster.internalGetExtensionProtocolOptions()) && internalGetTypedExtensionProtocolOptions().equals(cluster.internalGetTypedExtensionProtocolOptions()) && hasDnsRefreshRate() == cluster.hasDnsRefreshRate()) {
                                                        if ((!hasDnsRefreshRate() || getDnsRefreshRate().equals(cluster.getDnsRefreshRate())) && hasDnsFailureRefreshRate() == cluster.hasDnsFailureRefreshRate()) {
                                                            if ((!hasDnsFailureRefreshRate() || getDnsFailureRefreshRate().equals(cluster.getDnsFailureRefreshRate())) && getRespectDnsTtl() == cluster.getRespectDnsTtl() && this.dnsLookupFamily_ == cluster.dnsLookupFamily_ && getDnsResolversList().equals(cluster.getDnsResolversList()) && getUseTcpForDnsLookups() == cluster.getUseTcpForDnsLookups() && hasOutlierDetection() == cluster.hasOutlierDetection()) {
                                                                if ((!hasOutlierDetection() || getOutlierDetection().equals(cluster.getOutlierDetection())) && hasCleanupInterval() == cluster.hasCleanupInterval()) {
                                                                    if ((!hasCleanupInterval() || getCleanupInterval().equals(cluster.getCleanupInterval())) && hasUpstreamBindConfig() == cluster.hasUpstreamBindConfig()) {
                                                                        if ((!hasUpstreamBindConfig() || getUpstreamBindConfig().equals(cluster.getUpstreamBindConfig())) && hasLbSubsetConfig() == cluster.hasLbSubsetConfig()) {
                                                                            if ((!hasLbSubsetConfig() || getLbSubsetConfig().equals(cluster.getLbSubsetConfig())) && hasCommonLbConfig() == cluster.hasCommonLbConfig()) {
                                                                                if ((!hasCommonLbConfig() || getCommonLbConfig().equals(cluster.getCommonLbConfig())) && hasTransportSocket() == cluster.hasTransportSocket()) {
                                                                                    if ((!hasTransportSocket() || getTransportSocket().equals(cluster.getTransportSocket())) && hasMetadata() == cluster.hasMetadata()) {
                                                                                        if ((!hasMetadata() || getMetadata().equals(cluster.getMetadata())) && this.protocolSelection_ == cluster.protocolSelection_ && hasUpstreamConnectionOptions() == cluster.hasUpstreamConnectionOptions()) {
                                                                                            if ((!hasUpstreamConnectionOptions() || getUpstreamConnectionOptions().equals(cluster.getUpstreamConnectionOptions())) && getCloseConnectionsOnHostHealthFailure() == cluster.getCloseConnectionsOnHostHealthFailure() && getDrainConnectionsOnHostRemoval() == cluster.getDrainConnectionsOnHostRemoval() && getFiltersList().equals(cluster.getFiltersList()) && hasLoadBalancingPolicy() == cluster.hasLoadBalancingPolicy()) {
                                                                                                if ((!hasLoadBalancingPolicy() || getLoadBalancingPolicy().equals(cluster.getLoadBalancingPolicy())) && hasLrsServer() == cluster.hasLrsServer()) {
                                                                                                    if ((!hasLrsServer() || getLrsServer().equals(cluster.getLrsServer())) && getTrackTimeoutBudgets() == cluster.getTrackTimeoutBudgets() && getClusterDiscoveryTypeCase().equals(cluster.getClusterDiscoveryTypeCase())) {
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
                                                                                                                    if (i10 == 37 && !getLeastRequestLbConfig().equals(cluster.getLeastRequestLbConfig())) {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.b getCircuitBreakersOrBuilder() {
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

    public HttpProtocolOptions getCommonHttpProtocolOptions() {
        HttpProtocolOptions httpProtocolOptions = this.commonHttpProtocolOptions_;
        return httpProtocolOptions == null ? HttpProtocolOptions.getDefaultInstance() : httpProtocolOptions;
    }

    public z getCommonHttpProtocolOptionsOrBuilder() {
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

    public RefreshRate getDnsFailureRefreshRate() {
        RefreshRate refreshRate = this.dnsFailureRefreshRate_;
        return refreshRate == null ? RefreshRate.getDefaultInstance() : refreshRate;
    }

    public k getDnsFailureRefreshRateOrBuilder() {
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

    public Address getDnsResolvers(int i9) {
        return this.dnsResolvers_.get(i9);
    }

    public int getDnsResolversCount() {
        return this.dnsResolvers_.size();
    }

    public List<Address> getDnsResolversList() {
        return this.dnsResolvers_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a getDnsResolversOrBuilder(int i9) {
        return this.dnsResolvers_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> getDnsResolversOrBuilderList() {
        return this.dnsResolvers_;
    }

    public boolean getDrainConnectionsOnHostRemoval() {
        return this.drainConnectionsOnHostRemoval_;
    }

    public EdsClusterConfig getEdsClusterConfig() {
        EdsClusterConfig edsClusterConfig = this.edsClusterConfig_;
        return edsClusterConfig == null ? EdsClusterConfig.getDefaultInstance() : edsClusterConfig;
    }

    public f getEdsClusterConfigOrBuilder() {
        return getEdsClusterConfig();
    }

    @Deprecated
    public Map<String, Struct> getExtensionProtocolOptions() {
        return getExtensionProtocolOptionsMap();
    }

    @Deprecated
    public int getExtensionProtocolOptionsCount() {
        return internalGetExtensionProtocolOptions().i().size();
    }

    @Deprecated
    public Map<String, Struct> getExtensionProtocolOptionsMap() {
        return internalGetExtensionProtocolOptions().i();
    }

    @Deprecated
    public Struct getExtensionProtocolOptionsOrDefault(String str, Struct struct) {
        Objects.requireNonNull(str, "map key");
        Map<String, Struct> i9 = internalGetExtensionProtocolOptions().i();
        return i9.containsKey(str) ? i9.get(str) : struct;
    }

    @Deprecated
    public Struct getExtensionProtocolOptionsOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Struct> i9 = internalGetExtensionProtocolOptions().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.c getFiltersOrBuilder(int i9) {
        return this.filters_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.c> getFiltersOrBuilderList() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.v getHealthChecksOrBuilder(int i9) {
        return this.healthChecks_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.v> getHealthChecksOrBuilderList() {
        return this.healthChecks_;
    }

    @Deprecated
    public Address getHosts(int i9) {
        return this.hosts_.get(i9);
    }

    @Deprecated
    public int getHostsCount() {
        return this.hosts_.size();
    }

    @Deprecated
    public List<Address> getHostsList() {
        return this.hosts_;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a getHostsOrBuilder(int i9) {
        return this.hosts_.get(i9);
    }

    @Deprecated
    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> getHostsOrBuilderList() {
        return this.hosts_;
    }

    public Http2ProtocolOptions getHttp2ProtocolOptions() {
        Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
        return http2ProtocolOptions == null ? Http2ProtocolOptions.getDefaultInstance() : http2ProtocolOptions;
    }

    public y getHttp2ProtocolOptionsOrBuilder() {
        return getHttp2ProtocolOptions();
    }

    public Http1ProtocolOptions getHttpProtocolOptions() {
        Http1ProtocolOptions http1ProtocolOptions = this.httpProtocolOptions_;
        return http1ProtocolOptions == null ? Http1ProtocolOptions.getDefaultInstance() : http1ProtocolOptions;
    }

    public x getHttpProtocolOptionsOrBuilder() {
        return getHttpProtocolOptions();
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

    public h getLbSubsetConfigOrBuilder() {
        return getLbSubsetConfig();
    }

    public LeastRequestLbConfig getLeastRequestLbConfig() {
        if (this.lbConfigCase_ == 37) {
            return (LeastRequestLbConfig) this.lbConfig_;
        }
        return LeastRequestLbConfig.getDefaultInstance();
    }

    public i getLeastRequestLbConfigOrBuilder() {
        if (this.lbConfigCase_ == 37) {
            return (LeastRequestLbConfig) this.lbConfig_;
        }
        return LeastRequestLbConfig.getDefaultInstance();
    }

    public ClusterLoadAssignment getLoadAssignment() {
        ClusterLoadAssignment clusterLoadAssignment = this.loadAssignment_;
        return clusterLoadAssignment == null ? ClusterLoadAssignment.getDefaultInstance() : clusterLoadAssignment;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.b getLoadAssignmentOrBuilder() {
        return getLoadAssignment();
    }

    public LoadBalancingPolicy getLoadBalancingPolicy() {
        LoadBalancingPolicy loadBalancingPolicy = this.loadBalancingPolicy_;
        return loadBalancingPolicy == null ? LoadBalancingPolicy.getDefaultInstance() : loadBalancingPolicy;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.i getLoadBalancingPolicyOrBuilder() {
        return getLoadBalancingPolicy();
    }

    public ConfigSource getLrsServer() {
        ConfigSource configSource = this.lrsServer_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k getLrsServerOrBuilder() {
        return getLrsServer();
    }

    public UInt32Value getMaxRequestsPerConnection() {
        UInt32Value uInt32Value = this.maxRequestsPerConnection_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxRequestsPerConnectionOrBuilder() {
        return getMaxRequestsPerConnection();
    }

    public Metadata getMetadata() {
        Metadata metadata = this.metadata_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public d0 getMetadataOrBuilder() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.e getOutlierDetectionOrBuilder() {
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

    public ClusterProtocolSelection getProtocolSelection() {
        ClusterProtocolSelection valueOf = ClusterProtocolSelection.valueOf(this.protocolSelection_);
        return valueOf == null ? ClusterProtocolSelection.UNRECOGNIZED : valueOf;
    }

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

    public l getRingHashLbConfigOrBuilder() {
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
        for (int i10 = 0; i10 < this.hosts_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(7, this.hosts_.get(i10));
        }
        for (int i11 = 0; i11 < this.healthChecks_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(8, this.healthChecks_.get(i11));
        }
        if (this.maxRequestsPerConnection_ != null) {
            computeStringSize += CodedOutputStream.G(9, getMaxRequestsPerConnection());
        }
        if (this.circuitBreakers_ != null) {
            computeStringSize += CodedOutputStream.G(10, getCircuitBreakers());
        }
        if (this.tlsContext_ != null) {
            computeStringSize += CodedOutputStream.G(11, getTlsContext());
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
        for (int i12 = 0; i12 < this.dnsResolvers_.size(); i12++) {
            computeStringSize += CodedOutputStream.G(18, this.dnsResolvers_.get(i12));
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
        boolean z11 = this.drainConnectionsOnHostRemoval_;
        if (z11) {
            computeStringSize += CodedOutputStream.e(32, z11);
        }
        if (this.loadAssignment_ != null) {
            computeStringSize += CodedOutputStream.G(33, getLoadAssignment());
        }
        if (this.lbConfigCase_ == 34) {
            computeStringSize += CodedOutputStream.G(34, (OriginalDstLbConfig) this.lbConfig_);
        }
        for (Map.Entry<String, Struct> entry : internalGetExtensionProtocolOptions().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(35, g.f46011a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        for (Map.Entry<String, Any> entry2 : internalGetTypedExtensionProtocolOptions().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(36, n.f46012a.newBuilderForType().N(entry2.getKey()).P(entry2.getValue()).build());
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
        for (int i13 = 0; i13 < this.filters_.size(); i13++) {
            computeStringSize += CodedOutputStream.G(40, this.filters_.get(i13));
        }
        if (this.loadBalancingPolicy_ != null) {
            computeStringSize += CodedOutputStream.G(41, getLoadBalancingPolicy());
        }
        if (this.lrsServer_ != null) {
            computeStringSize += CodedOutputStream.G(42, getLrsServer());
        }
        for (int i14 = 0; i14 < this.transportSocketMatches_.size(); i14++) {
            computeStringSize += CodedOutputStream.G(43, this.transportSocketMatches_.get(i14));
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
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public UpstreamTlsContext getTlsContext() {
        UpstreamTlsContext upstreamTlsContext = this.tlsContext_;
        return upstreamTlsContext == null ? UpstreamTlsContext.getDefaultInstance() : upstreamTlsContext;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.m getTlsContextOrBuilder() {
        return getTlsContext();
    }

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

    public m getTransportSocketMatchesOrBuilder(int i9) {
        return this.transportSocketMatches_.get(i9);
    }

    public List<? extends m> getTransportSocketMatchesOrBuilderList() {
        return this.transportSocketMatches_;
    }

    public r0 getTransportSocketOrBuilder() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.h getUpstreamBindConfigOrBuilder() {
        return getUpstreamBindConfig();
    }

    public UpstreamConnectionOptions getUpstreamConnectionOptions() {
        UpstreamConnectionOptions upstreamConnectionOptions = this.upstreamConnectionOptions_;
        return upstreamConnectionOptions == null ? UpstreamConnectionOptions.getDefaultInstance() : upstreamConnectionOptions;
    }

    public q getUpstreamConnectionOptionsOrBuilder() {
        return getUpstreamConnectionOptions();
    }

    public UpstreamHttpProtocolOptions getUpstreamHttpProtocolOptions() {
        UpstreamHttpProtocolOptions upstreamHttpProtocolOptions = this.upstreamHttpProtocolOptions_;
        return upstreamHttpProtocolOptions == null ? UpstreamHttpProtocolOptions.getDefaultInstance() : upstreamHttpProtocolOptions;
    }

    public s0 getUpstreamHttpProtocolOptionsOrBuilder() {
        return getUpstreamHttpProtocolOptions();
    }

    public boolean getUseTcpForDnsLookups() {
        return this.useTcpForDnsLookups_;
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

    public boolean hasEdsClusterConfig() {
        return this.edsClusterConfig_ != null;
    }

    public boolean hasHttp2ProtocolOptions() {
        return this.http2ProtocolOptions_ != null;
    }

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

    public boolean hasRingHashLbConfig() {
        return this.lbConfigCase_ == 23;
    }

    @Deprecated
    public boolean hasTlsContext() {
        return this.tlsContext_ != null;
    }

    public boolean hasTransportSocket() {
        return this.transportSocket_ != null;
    }

    public boolean hasType() {
        return this.clusterDiscoveryTypeCase_ == 2;
    }

    public boolean hasUpstreamBindConfig() {
        return this.upstreamBindConfig_ != null;
    }

    public boolean hasUpstreamConnectionOptions() {
        return this.upstreamConnectionOptions_ != null;
    }

    public boolean hasUpstreamHttpProtocolOptions() {
        return this.upstreamHttpProtocolOptions_ != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0367  */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hashCode() {
        /*
            Method dump skipped, instructions count: 897
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.hashCode():int");
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.f46266b.d(Cluster.class, c.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 != 35) {
            if (i9 == 36) {
                return internalGetTypedExtensionProtocolOptions();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }
        return internalGetExtensionProtocolOptions();
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
        for (int i9 = 0; i9 < this.hosts_.size(); i9++) {
            codedOutputStream.L0(7, this.hosts_.get(i9));
        }
        for (int i10 = 0; i10 < this.healthChecks_.size(); i10++) {
            codedOutputStream.L0(8, this.healthChecks_.get(i10));
        }
        if (this.maxRequestsPerConnection_ != null) {
            codedOutputStream.L0(9, getMaxRequestsPerConnection());
        }
        if (this.circuitBreakers_ != null) {
            codedOutputStream.L0(10, getCircuitBreakers());
        }
        if (this.tlsContext_ != null) {
            codedOutputStream.L0(11, getTlsContext());
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
        for (int i11 = 0; i11 < this.dnsResolvers_.size(); i11++) {
            codedOutputStream.L0(18, this.dnsResolvers_.get(i11));
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
        boolean z11 = this.drainConnectionsOnHostRemoval_;
        if (z11) {
            codedOutputStream.n0(32, z11);
        }
        if (this.loadAssignment_ != null) {
            codedOutputStream.L0(33, getLoadAssignment());
        }
        if (this.lbConfigCase_ == 34) {
            codedOutputStream.L0(34, (OriginalDstLbConfig) this.lbConfig_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetExtensionProtocolOptions(), g.f46011a, 35);
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetTypedExtensionProtocolOptions(), n.f46012a, 36);
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
        for (int i12 = 0; i12 < this.filters_.size(); i12++) {
            codedOutputStream.L0(40, this.filters_.get(i12));
        }
        if (this.loadBalancingPolicy_ != null) {
            codedOutputStream.L0(41, getLoadBalancingPolicy());
        }
        if (this.lrsServer_ != null) {
            codedOutputStream.L0(42, getLrsServer());
        }
        for (int i13 = 0; i13 < this.transportSocketMatches_.size(); i13++) {
            codedOutputStream.L0(43, this.transportSocketMatches_.get(i13));
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
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Cluster(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Cluster cluster) {
        return DEFAULT_INSTANCE.toBuilder().K0(cluster);
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
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).K0(this);
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
        this.hosts_ = Collections.emptyList();
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

    public static Cluster parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Cluster parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private Cluster(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            case 58:
                                if (!(z11 & true)) {
                                    this.hosts_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.hosts_.add((Address) pVar.B(Address.parser(), f0Var));
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
                            case 90:
                                UpstreamTlsContext upstreamTlsContext = this.tlsContext_;
                                UpstreamTlsContext.b builder6 = upstreamTlsContext != null ? upstreamTlsContext.toBuilder() : null;
                                UpstreamTlsContext upstreamTlsContext2 = (UpstreamTlsContext) pVar.B(UpstreamTlsContext.parser(), f0Var);
                                this.tlsContext_ = upstreamTlsContext2;
                                if (builder6 != null) {
                                    builder6.h0(upstreamTlsContext2);
                                    this.tlsContext_ = builder6.I();
                                } else {
                                    continue;
                                }
                            case 106:
                                Http1ProtocolOptions http1ProtocolOptions = this.httpProtocolOptions_;
                                Http1ProtocolOptions.c builder7 = http1ProtocolOptions != null ? http1ProtocolOptions.toBuilder() : null;
                                Http1ProtocolOptions http1ProtocolOptions2 = (Http1ProtocolOptions) pVar.B(Http1ProtocolOptions.parser(), f0Var);
                                this.httpProtocolOptions_ = http1ProtocolOptions2;
                                if (builder7 != null) {
                                    builder7.h0(http1ProtocolOptions2);
                                    this.httpProtocolOptions_ = builder7.I();
                                } else {
                                    continue;
                                }
                            case 114:
                                Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
                                Http2ProtocolOptions.b builder8 = http2ProtocolOptions != null ? http2ProtocolOptions.toBuilder() : null;
                                Http2ProtocolOptions http2ProtocolOptions2 = (Http2ProtocolOptions) pVar.B(Http2ProtocolOptions.parser(), f0Var);
                                this.http2ProtocolOptions_ = http2ProtocolOptions2;
                                if (builder8 != null) {
                                    builder8.i0(http2ProtocolOptions2);
                                    this.http2ProtocolOptions_ = builder8.I();
                                } else {
                                    continue;
                                }
                            case 130:
                                Duration duration3 = this.dnsRefreshRate_;
                                Duration.b builder9 = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.dnsRefreshRate_ = duration4;
                                if (builder9 != null) {
                                    builder9.e0(duration4);
                                    this.dnsRefreshRate_ = builder9.I();
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
                                OutlierDetection.b builder10 = outlierDetection != null ? outlierDetection.toBuilder() : null;
                                OutlierDetection outlierDetection2 = (OutlierDetection) pVar.B(OutlierDetection.parser(), f0Var);
                                this.outlierDetection_ = outlierDetection2;
                                if (builder10 != null) {
                                    builder10.v0(outlierDetection2);
                                    this.outlierDetection_ = builder10.I();
                                } else {
                                    continue;
                                }
                            case 162:
                                Duration duration5 = this.cleanupInterval_;
                                Duration.b builder11 = duration5 != null ? duration5.toBuilder() : null;
                                Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.cleanupInterval_ = duration6;
                                if (builder11 != null) {
                                    builder11.e0(duration6);
                                    this.cleanupInterval_ = builder11.I();
                                } else {
                                    continue;
                                }
                            case 170:
                                BindConfig bindConfig = this.upstreamBindConfig_;
                                BindConfig.b builder12 = bindConfig != null ? bindConfig.toBuilder() : null;
                                BindConfig bindConfig2 = (BindConfig) pVar.B(BindConfig.parser(), f0Var);
                                this.upstreamBindConfig_ = bindConfig2;
                                if (builder12 != null) {
                                    builder12.j0(bindConfig2);
                                    this.upstreamBindConfig_ = builder12.I();
                                } else {
                                    continue;
                                }
                            case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                                LbSubsetConfig lbSubsetConfig = this.lbSubsetConfig_;
                                LbSubsetConfig.b builder13 = lbSubsetConfig != null ? lbSubsetConfig.toBuilder() : null;
                                LbSubsetConfig lbSubsetConfig2 = (LbSubsetConfig) pVar.B(LbSubsetConfig.parser(), f0Var);
                                this.lbSubsetConfig_ = lbSubsetConfig2;
                                if (builder13 != null) {
                                    builder13.j0(lbSubsetConfig2);
                                    this.lbSubsetConfig_ = builder13.I();
                                } else {
                                    continue;
                                }
                            case 186:
                                RingHashLbConfig.b builder14 = this.lbConfigCase_ == 23 ? ((RingHashLbConfig) this.lbConfig_).toBuilder() : null;
                                o1 B = pVar.B(RingHashLbConfig.parser(), f0Var);
                                this.lbConfig_ = B;
                                if (builder14 != null) {
                                    builder14.g0((RingHashLbConfig) B);
                                    this.lbConfig_ = builder14.I();
                                }
                                this.lbConfigCase_ = 23;
                                continue;
                            case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                                TransportSocket transportSocket = this.transportSocket_;
                                TransportSocket.c builder15 = transportSocket != null ? transportSocket.toBuilder() : null;
                                TransportSocket transportSocket2 = (TransportSocket) pVar.B(TransportSocket.parser(), f0Var);
                                this.transportSocket_ = transportSocket2;
                                if (builder15 != null) {
                                    builder15.h0(transportSocket2);
                                    this.transportSocket_ = builder15.I();
                                } else {
                                    continue;
                                }
                            case 202:
                                Metadata metadata = this.metadata_;
                                Metadata.b builder16 = metadata != null ? metadata.toBuilder() : null;
                                Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                                this.metadata_ = metadata2;
                                if (builder16 != null) {
                                    builder16.i0(metadata2);
                                    this.metadata_ = builder16.I();
                                } else {
                                    continue;
                                }
                            case 208:
                                this.protocolSelection_ = pVar.u();
                                continue;
                            case 218:
                                CommonLbConfig commonLbConfig = this.commonLbConfig_;
                                CommonLbConfig.b builder17 = commonLbConfig != null ? commonLbConfig.toBuilder() : null;
                                CommonLbConfig commonLbConfig2 = (CommonLbConfig) pVar.B(CommonLbConfig.parser(), f0Var);
                                this.commonLbConfig_ = commonLbConfig2;
                                if (builder17 != null) {
                                    builder17.h0(commonLbConfig2);
                                    this.commonLbConfig_ = builder17.I();
                                } else {
                                    continue;
                                }
                            case 226:
                                this.altStatName_ = pVar.K();
                                continue;
                            case 234:
                                HttpProtocolOptions httpProtocolOptions = this.commonHttpProtocolOptions_;
                                HttpProtocolOptions.b builder18 = httpProtocolOptions != null ? httpProtocolOptions.toBuilder() : null;
                                HttpProtocolOptions httpProtocolOptions2 = (HttpProtocolOptions) pVar.B(HttpProtocolOptions.parser(), f0Var);
                                this.commonHttpProtocolOptions_ = httpProtocolOptions2;
                                if (builder18 != null) {
                                    builder18.g0(httpProtocolOptions2);
                                    this.commonHttpProtocolOptions_ = builder18.I();
                                } else {
                                    continue;
                                }
                            case 242:
                                UpstreamConnectionOptions upstreamConnectionOptions = this.upstreamConnectionOptions_;
                                UpstreamConnectionOptions.b builder19 = upstreamConnectionOptions != null ? upstreamConnectionOptions.toBuilder() : null;
                                UpstreamConnectionOptions upstreamConnectionOptions2 = (UpstreamConnectionOptions) pVar.B(UpstreamConnectionOptions.parser(), f0Var);
                                this.upstreamConnectionOptions_ = upstreamConnectionOptions2;
                                if (builder19 != null) {
                                    builder19.g0(upstreamConnectionOptions2);
                                    this.upstreamConnectionOptions_ = builder19.I();
                                } else {
                                    continue;
                                }
                            case 248:
                                this.closeConnectionsOnHostHealthFailure_ = pVar.r();
                                continue;
                            case 256:
                                this.drainConnectionsOnHostRemoval_ = pVar.r();
                                continue;
                            case 266:
                                ClusterLoadAssignment clusterLoadAssignment = this.loadAssignment_;
                                ClusterLoadAssignment.b builder20 = clusterLoadAssignment != null ? clusterLoadAssignment.toBuilder() : null;
                                ClusterLoadAssignment clusterLoadAssignment2 = (ClusterLoadAssignment) pVar.B(ClusterLoadAssignment.parser(), f0Var);
                                this.loadAssignment_ = clusterLoadAssignment2;
                                if (builder20 != null) {
                                    builder20.k0(clusterLoadAssignment2);
                                    this.loadAssignment_ = builder20.I();
                                } else {
                                    continue;
                                }
                            case 274:
                                OriginalDstLbConfig.b builder21 = this.lbConfigCase_ == 34 ? ((OriginalDstLbConfig) this.lbConfig_).toBuilder() : null;
                                o1 B2 = pVar.B(OriginalDstLbConfig.parser(), f0Var);
                                this.lbConfig_ = B2;
                                if (builder21 != null) {
                                    builder21.g0((OriginalDstLbConfig) B2);
                                    this.lbConfig_ = builder21.I();
                                }
                                this.lbConfigCase_ = 34;
                                continue;
                            case 282:
                                if (!(z11 & true)) {
                                    this.extensionProtocolOptions_ = g1.p(g.f46011a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(g.f46011a.getParserForType(), f0Var);
                                this.extensionProtocolOptions_.l().put((String) e1Var.f(), (Struct) e1Var.h());
                                continue;
                            case BuildConfig.VERSION_CODE /* 290 */:
                                if (!(z11 & true)) {
                                    this.typedExtensionProtocolOptions_ = g1.p(n.f46012a);
                                    z11 |= true;
                                }
                                e1 e1Var2 = (e1) pVar.B(n.f46012a.getParserForType(), f0Var);
                                this.typedExtensionProtocolOptions_.l().put((String) e1Var2.f(), (Any) e1Var2.h());
                                continue;
                            case 298:
                                LeastRequestLbConfig.b builder22 = this.lbConfigCase_ == 37 ? ((LeastRequestLbConfig) this.lbConfig_).toBuilder() : null;
                                o1 B3 = pVar.B(LeastRequestLbConfig.parser(), f0Var);
                                this.lbConfig_ = B3;
                                if (builder22 != null) {
                                    builder22.h0((LeastRequestLbConfig) B3);
                                    this.lbConfig_ = builder22.I();
                                }
                                this.lbConfigCase_ = 37;
                                continue;
                            case 306:
                                CustomClusterType.b builder23 = this.clusterDiscoveryTypeCase_ == 38 ? ((CustomClusterType) this.clusterDiscoveryType_).toBuilder() : null;
                                o1 B4 = pVar.B(CustomClusterType.parser(), f0Var);
                                this.clusterDiscoveryType_ = B4;
                                if (builder23 != null) {
                                    builder23.g0((CustomClusterType) B4);
                                    this.clusterDiscoveryType_ = builder23.I();
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
                                LoadBalancingPolicy.b builder24 = loadBalancingPolicy != null ? loadBalancingPolicy.toBuilder() : null;
                                LoadBalancingPolicy loadBalancingPolicy2 = (LoadBalancingPolicy) pVar.B(LoadBalancingPolicy.parser(), f0Var);
                                this.loadBalancingPolicy_ = loadBalancingPolicy2;
                                if (builder24 != null) {
                                    builder24.i0(loadBalancingPolicy2);
                                    this.loadBalancingPolicy_ = builder24.I();
                                } else {
                                    continue;
                                }
                            case 338:
                                ConfigSource configSource = this.lrsServer_;
                                ConfigSource.c builder25 = configSource != null ? configSource.toBuilder() : null;
                                ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                                this.lrsServer_ = configSource2;
                                if (builder25 != null) {
                                    builder25.i0(configSource2);
                                    this.lrsServer_ = builder25.I();
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
                                RefreshRate.b builder26 = refreshRate != null ? refreshRate.toBuilder() : null;
                                RefreshRate refreshRate2 = (RefreshRate) pVar.B(RefreshRate.parser(), f0Var);
                                this.dnsFailureRefreshRate_ = refreshRate2;
                                if (builder26 != null) {
                                    builder26.h0(refreshRate2);
                                    this.dnsFailureRefreshRate_ = builder26.I();
                                } else {
                                    continue;
                                }
                            case 360:
                                this.useTcpForDnsLookups_ = pVar.r();
                                continue;
                            case 370:
                                UpstreamHttpProtocolOptions upstreamHttpProtocolOptions = this.upstreamHttpProtocolOptions_;
                                UpstreamHttpProtocolOptions.b builder27 = upstreamHttpProtocolOptions != null ? upstreamHttpProtocolOptions.toBuilder() : null;
                                UpstreamHttpProtocolOptions upstreamHttpProtocolOptions2 = (UpstreamHttpProtocolOptions) pVar.B(UpstreamHttpProtocolOptions.parser(), f0Var);
                                this.upstreamHttpProtocolOptions_ = upstreamHttpProtocolOptions2;
                                if (builder27 != null) {
                                    builder27.g0(upstreamHttpProtocolOptions2);
                                    this.upstreamHttpProtocolOptions_ = builder27.I();
                                } else {
                                    continue;
                                }
                            case 376:
                                this.trackTimeoutBudgets_ = pVar.r();
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
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.hosts_ = Collections.unmodifiableList(this.hosts_);
                }
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
