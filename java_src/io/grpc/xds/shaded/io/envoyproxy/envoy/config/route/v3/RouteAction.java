package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import cn.jiguang.android.BuildConfig;
import com.google.protobuf.Any;
import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ProxyProtocolConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RoutingPriority;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFractionalPercent;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.o0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.x0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HedgePolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.WeightedCluster;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RouteAction extends GeneratedMessageV3 implements n {
    public static final int AUTO_HOST_REWRITE_FIELD_NUMBER = 7;
    public static final int CLUSTER_FIELD_NUMBER = 1;
    public static final int CLUSTER_HEADER_FIELD_NUMBER = 2;
    public static final int CLUSTER_NOT_FOUND_RESPONSE_CODE_FIELD_NUMBER = 20;
    public static final int CLUSTER_SPECIFIER_PLUGIN_FIELD_NUMBER = 37;
    public static final int CORS_FIELD_NUMBER = 17;
    public static final int GRPC_TIMEOUT_OFFSET_FIELD_NUMBER = 28;
    public static final int HASH_POLICY_FIELD_NUMBER = 15;
    public static final int HEDGE_POLICY_FIELD_NUMBER = 27;
    public static final int HOST_REWRITE_HEADER_FIELD_NUMBER = 29;
    public static final int HOST_REWRITE_LITERAL_FIELD_NUMBER = 6;
    public static final int HOST_REWRITE_PATH_REGEX_FIELD_NUMBER = 35;
    public static final int IDLE_TIMEOUT_FIELD_NUMBER = 24;
    public static final int INCLUDE_VH_RATE_LIMITS_FIELD_NUMBER = 14;
    public static final int INTERNAL_REDIRECT_ACTION_FIELD_NUMBER = 26;
    public static final int INTERNAL_REDIRECT_POLICY_FIELD_NUMBER = 34;
    public static final int MAX_GRPC_TIMEOUT_FIELD_NUMBER = 23;
    public static final int MAX_INTERNAL_REDIRECTS_FIELD_NUMBER = 31;
    public static final int MAX_STREAM_DURATION_FIELD_NUMBER = 36;
    public static final int METADATA_MATCH_FIELD_NUMBER = 4;
    public static final int PREFIX_REWRITE_FIELD_NUMBER = 5;
    public static final int PRIORITY_FIELD_NUMBER = 11;
    public static final int RATE_LIMITS_FIELD_NUMBER = 13;
    public static final int REGEX_REWRITE_FIELD_NUMBER = 32;
    public static final int REQUEST_MIRROR_POLICIES_FIELD_NUMBER = 30;
    public static final int RETRY_POLICY_FIELD_NUMBER = 9;
    public static final int RETRY_POLICY_TYPED_CONFIG_FIELD_NUMBER = 33;
    public static final int TIMEOUT_FIELD_NUMBER = 8;
    public static final int UPGRADE_CONFIGS_FIELD_NUMBER = 25;
    public static final int WEIGHTED_CLUSTERS_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int clusterNotFoundResponseCode_;
    private int clusterSpecifierCase_;
    private Object clusterSpecifier_;
    private CorsPolicy cors_;
    private Duration grpcTimeoutOffset_;
    private List<HashPolicy> hashPolicy_;
    private HedgePolicy hedgePolicy_;
    private int hostRewriteSpecifierCase_;
    private Object hostRewriteSpecifier_;
    private Duration idleTimeout_;
    private BoolValue includeVhRateLimits_;
    private int internalRedirectAction_;
    private InternalRedirectPolicy internalRedirectPolicy_;
    private Duration maxGrpcTimeout_;
    private UInt32Value maxInternalRedirects_;
    private MaxStreamDuration maxStreamDuration_;
    private byte memoizedIsInitialized;
    private Metadata metadataMatch_;
    private volatile Object prefixRewrite_;
    private int priority_;
    private List<RateLimit> rateLimits_;
    private RegexMatchAndSubstitute regexRewrite_;
    private List<RequestMirrorPolicy> requestMirrorPolicies_;
    private Any retryPolicyTypedConfig_;
    private RetryPolicy retryPolicy_;
    private Duration timeout_;
    private List<UpgradeConfig> upgradeConfigs_;
    private static final RouteAction DEFAULT_INSTANCE = new RouteAction();
    private static final e2<RouteAction> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ClusterNotFoundResponseCode implements h2 {
        SERVICE_UNAVAILABLE(0),
        NOT_FOUND(1),
        UNRECOGNIZED(-1);
        
        public static final int NOT_FOUND_VALUE = 1;
        public static final int SERVICE_UNAVAILABLE_VALUE = 0;
        private final int value;
        private static final u0.d<ClusterNotFoundResponseCode> internalValueMap = new a();
        private static final ClusterNotFoundResponseCode[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<ClusterNotFoundResponseCode> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ClusterNotFoundResponseCode a(int i9) {
                return ClusterNotFoundResponseCode.forNumber(i9);
            }
        }

        ClusterNotFoundResponseCode(int i9) {
            this.value = i9;
        }

        public static ClusterNotFoundResponseCode forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return NOT_FOUND;
            }
            return SERVICE_UNAVAILABLE;
        }

        public static final Descriptors.d getDescriptor() {
            return RouteAction.getDescriptor().k().get(0);
        }

        public static u0.d<ClusterNotFoundResponseCode> internalGetValueMap() {
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
        public static ClusterNotFoundResponseCode valueOf(int i9) {
            return forNumber(i9);
        }

        public static ClusterNotFoundResponseCode valueOf(Descriptors.e eVar) {
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
    public enum ClusterSpecifierCase implements u0.c {
        CLUSTER(1),
        CLUSTER_HEADER(2),
        WEIGHTED_CLUSTERS(3),
        CLUSTER_SPECIFIER_PLUGIN(37),
        CLUSTERSPECIFIER_NOT_SET(0);
        
        private final int value;

        ClusterSpecifierCase(int i9) {
            this.value = i9;
        }

        public static ClusterSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 37) {
                                return null;
                            }
                            return CLUSTER_SPECIFIER_PLUGIN;
                        }
                        return WEIGHTED_CLUSTERS;
                    }
                    return CLUSTER_HEADER;
                }
                return CLUSTER;
            }
            return CLUSTERSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ClusterSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class HashPolicy extends GeneratedMessageV3 implements d {
        public static final int CONNECTION_PROPERTIES_FIELD_NUMBER = 3;
        public static final int COOKIE_FIELD_NUMBER = 2;
        public static final int FILTER_STATE_FIELD_NUMBER = 6;
        public static final int HEADER_FIELD_NUMBER = 1;
        public static final int QUERY_PARAMETER_FIELD_NUMBER = 5;
        public static final int TERMINAL_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int policySpecifierCase_;
        private Object policySpecifier_;
        private boolean terminal_;
        private static final HashPolicy DEFAULT_INSTANCE = new HashPolicy();
        private static final e2<HashPolicy> PARSER = new a();

        /* loaded from: classes6.dex */
        public static final class ConnectionProperties extends GeneratedMessageV3 implements c {
            private static final ConnectionProperties DEFAULT_INSTANCE = new ConnectionProperties();
            private static final e2<ConnectionProperties> PARSER = new a();
            public static final int SOURCE_IP_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private boolean sourceIp_;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ConnectionProperties> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ConnectionProperties m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ConnectionProperties(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private boolean f49284e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.L.d(ConnectionProperties.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ConnectionProperties build() {
                    ConnectionProperties I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ConnectionProperties I() {
                    ConnectionProperties connectionProperties = new ConnectionProperties(this, (a) null);
                    connectionProperties.sourceIp_ = this.f49284e;
                    Q();
                    return connectionProperties;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ConnectionProperties getDefaultInstanceForType() {
                    return ConnectionProperties.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.ConnectionProperties.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.ConnectionProperties.access$3900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$ConnectionProperties r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.ConnectionProperties) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$ConnectionProperties r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.ConnectionProperties) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.ConnectionProperties.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$ConnectionProperties$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof ConnectionProperties) {
                        return g0((ConnectionProperties) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ConnectionProperties connectionProperties) {
                    if (connectionProperties == ConnectionProperties.getDefaultInstance()) {
                        return this;
                    }
                    if (connectionProperties.getSourceIp()) {
                        j0(connectionProperties.getSourceIp());
                    }
                    z(((GeneratedMessageV3) connectionProperties).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.K;
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

                public b j0(boolean z10) {
                    this.f49284e = z10;
                    R();
                    return this;
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

            /* synthetic */ ConnectionProperties(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ConnectionProperties getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.K;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ConnectionProperties parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ConnectionProperties) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ConnectionProperties parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ConnectionProperties> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ConnectionProperties)) {
                    return super.equals(obj);
                }
                ConnectionProperties connectionProperties = (ConnectionProperties) obj;
                return getSourceIp() == connectionProperties.getSourceIp() && this.unknownFields.equals(connectionProperties.unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ConnectionProperties> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                boolean z10 = this.sourceIp_;
                int e10 = (z10 ? 0 + CodedOutputStream.e(1, z10) : 0) + this.unknownFields.getSerializedSize();
                this.memoizedSize = e10;
                return e10;
            }

            public boolean getSourceIp() {
                return this.sourceIp_;
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
                int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getSourceIp())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.L.d(ConnectionProperties.class, b.class);
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
                return new ConnectionProperties();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                boolean z10 = this.sourceIp_;
                if (z10) {
                    codedOutputStream.n0(1, z10);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ConnectionProperties(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ConnectionProperties connectionProperties) {
                return DEFAULT_INSTANCE.toBuilder().g0(connectionProperties);
            }

            public static ConnectionProperties parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ConnectionProperties(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ConnectionProperties parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ConnectionProperties) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ConnectionProperties parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ConnectionProperties getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ConnectionProperties parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private ConnectionProperties() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ConnectionProperties parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static ConnectionProperties parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private ConnectionProperties(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.sourceIp_ = pVar.r();
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

            public static ConnectionProperties parseFrom(InputStream inputStream) throws IOException {
                return (ConnectionProperties) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ConnectionProperties parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ConnectionProperties) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ConnectionProperties parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ConnectionProperties) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ConnectionProperties parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (ConnectionProperties) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Cookie extends GeneratedMessageV3 implements d {
            public static final int NAME_FIELD_NUMBER = 1;
            public static final int PATH_FIELD_NUMBER = 3;
            public static final int TTL_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private volatile Object path_;
            private Duration ttl_;
            private static final Cookie DEFAULT_INSTANCE = new Cookie();
            private static final e2<Cookie> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<Cookie> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Cookie m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Cookie(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements d {

                /* renamed from: e  reason: collision with root package name */
                private Object f49285e;

                /* renamed from: f  reason: collision with root package name */
                private Duration f49286f;

                /* renamed from: g  reason: collision with root package name */
                private q2<Duration, Duration.b, com.google.protobuf.v> f49287g;

                /* renamed from: h  reason: collision with root package name */
                private Object f49288h;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.J.d(Cookie.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Cookie build() {
                    Cookie I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Cookie I() {
                    Cookie cookie = new Cookie(this, (a) null);
                    cookie.name_ = this.f49285e;
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49287g;
                    if (q2Var == null) {
                        cookie.ttl_ = this.f49286f;
                    } else {
                        cookie.ttl_ = q2Var.b();
                    }
                    cookie.path_ = this.f49288h;
                    Q();
                    return cookie;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Cookie getDefaultInstanceForType() {
                    return Cookie.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Cookie.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Cookie.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$Cookie r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Cookie) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$Cookie r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Cookie) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Cookie.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$Cookie$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Cookie) {
                        return g0((Cookie) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(Cookie cookie) {
                    if (cookie == Cookie.getDefaultInstance()) {
                        return this;
                    }
                    if (!cookie.getName().isEmpty()) {
                        this.f49285e = cookie.name_;
                        R();
                    }
                    if (cookie.hasTtl()) {
                        h0(cookie.getTtl());
                    }
                    if (!cookie.getPath().isEmpty()) {
                        this.f49288h = cookie.path_;
                        R();
                    }
                    z(((GeneratedMessageV3) cookie).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.I;
                }

                public b h0(Duration duration) {
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49287g;
                    if (q2Var == null) {
                        Duration duration2 = this.f49286f;
                        if (duration2 != null) {
                            this.f49286f = Duration.newBuilder(duration2).e0(duration).I();
                        } else {
                            this.f49286f = duration;
                        }
                        R();
                    } else {
                        q2Var.e(duration);
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
                    this.f49285e = "";
                    this.f49288h = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49285e = "";
                    this.f49288h = "";
                    b0();
                }
            }

            /* synthetic */ Cookie(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Cookie getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.I;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Cookie parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Cookie) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Cookie parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Cookie> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Cookie)) {
                    return super.equals(obj);
                }
                Cookie cookie = (Cookie) obj;
                if (getName().equals(cookie.getName()) && hasTtl() == cookie.hasTtl()) {
                    return (!hasTtl() || getTtl().equals(cookie.getTtl())) && getPath().equals(cookie.getPath()) && this.unknownFields.equals(cookie.unknownFields);
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
            public e2<Cookie> getParserForType() {
                return PARSER;
            }

            public String getPath() {
                Object obj = this.path_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.path_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getPathBytes() {
                Object obj = this.path_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.path_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
                if (this.ttl_ != null) {
                    computeStringSize += CodedOutputStream.G(2, getTtl());
                }
                if (!GeneratedMessageV3.isStringEmpty(this.path_)) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(3, this.path_);
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public Duration getTtl() {
                Duration duration = this.ttl_;
                return duration == null ? Duration.getDefaultInstance() : duration;
            }

            public com.google.protobuf.v getTtlOrBuilder() {
                return getTtl();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasTtl() {
                return this.ttl_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
                if (hasTtl()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getTtl().hashCode();
                }
                int hashCode2 = (((((hashCode * 37) + 3) * 53) + getPath().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.J.d(Cookie.class, b.class);
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
                return new Cookie();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                }
                if (this.ttl_ != null) {
                    codedOutputStream.L0(2, getTtl());
                }
                if (!GeneratedMessageV3.isStringEmpty(this.path_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.path_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Cookie(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Cookie cookie) {
                return DEFAULT_INSTANCE.toBuilder().g0(cookie);
            }

            public static Cookie parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Cookie(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Cookie parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Cookie) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Cookie parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Cookie getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static Cookie parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private Cookie() {
                this.memoizedIsInitialized = (byte) -1;
                this.name_ = "";
                this.path_ = "";
            }

            public static Cookie parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static Cookie parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Cookie parseFrom(InputStream inputStream) throws IOException {
                return (Cookie) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private Cookie(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                } else if (L == 18) {
                                    Duration duration = this.ttl_;
                                    Duration.b builder = duration != null ? duration.toBuilder() : null;
                                    Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.ttl_ = duration2;
                                    if (builder != null) {
                                        builder.e0(duration2);
                                        this.ttl_ = builder.I();
                                    }
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.path_ = pVar.K();
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

            public static Cookie parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Cookie) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Cookie parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (Cookie) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Cookie parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (Cookie) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class FilterState extends GeneratedMessageV3 implements e {
            public static final int KEY_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private volatile Object key_;
            private byte memoizedIsInitialized;
            private static final FilterState DEFAULT_INSTANCE = new FilterState();
            private static final e2<FilterState> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<FilterState> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public FilterState m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new FilterState(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements e {

                /* renamed from: e  reason: collision with root package name */
                private Object f49289e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.P.d(FilterState.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public FilterState build() {
                    FilterState I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public FilterState I() {
                    FilterState filterState = new FilterState(this, (a) null);
                    filterState.key_ = this.f49289e;
                    Q();
                    return filterState;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public FilterState getDefaultInstanceForType() {
                    return FilterState.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.FilterState.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.FilterState.access$5600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$FilterState r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.FilterState) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$FilterState r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.FilterState) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.FilterState.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$FilterState$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof FilterState) {
                        return g0((FilterState) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(FilterState filterState) {
                    if (filterState == FilterState.getDefaultInstance()) {
                        return this;
                    }
                    if (!filterState.getKey().isEmpty()) {
                        this.f49289e = filterState.key_;
                        R();
                    }
                    z(((GeneratedMessageV3) filterState).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.O;
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
                    this.f49289e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49289e = "";
                    b0();
                }
            }

            /* synthetic */ FilterState(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static FilterState getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.O;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static FilterState parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (FilterState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static FilterState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<FilterState> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof FilterState)) {
                    return super.equals(obj);
                }
                FilterState filterState = (FilterState) obj;
                return getKey().equals(filterState.getKey()) && this.unknownFields.equals(filterState.unknownFields);
            }

            public String getKey() {
                Object obj = this.key_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.key_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getKeyBytes() {
                Object obj = this.key_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.key_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<FilterState> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.key_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.key_)) + this.unknownFields.getSerializedSize();
                this.memoizedSize = computeStringSize;
                return computeStringSize;
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
                int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getKey().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.P.d(FilterState.class, b.class);
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
                return new FilterState();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.key_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.key_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ FilterState(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(FilterState filterState) {
                return DEFAULT_INSTANCE.toBuilder().g0(filterState);
            }

            public static FilterState parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private FilterState(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static FilterState parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (FilterState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static FilterState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public FilterState getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static FilterState parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private FilterState() {
                this.memoizedIsInitialized = (byte) -1;
                this.key_ = "";
            }

            public static FilterState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static FilterState parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static FilterState parseFrom(InputStream inputStream) throws IOException {
                return (FilterState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private FilterState(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.key_ = pVar.K();
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

            public static FilterState parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (FilterState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static FilterState parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (FilterState) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static FilterState parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (FilterState) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Header extends GeneratedMessageV3 implements f {
            public static final int HEADER_NAME_FIELD_NUMBER = 1;
            public static final int REGEX_REWRITE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private volatile Object headerName_;
            private byte memoizedIsInitialized;
            private RegexMatchAndSubstitute regexRewrite_;
            private static final Header DEFAULT_INSTANCE = new Header();
            private static final e2<Header> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<Header> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Header m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Header(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements f {

                /* renamed from: e  reason: collision with root package name */
                private Object f49290e;

                /* renamed from: f  reason: collision with root package name */
                private RegexMatchAndSubstitute f49291f;

                /* renamed from: g  reason: collision with root package name */
                private q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> f49292g;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.H.d(Header.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Header build() {
                    Header I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Header I() {
                    Header header = new Header(this, (a) null);
                    header.headerName_ = this.f49290e;
                    q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var = this.f49292g;
                    if (q2Var == null) {
                        header.regexRewrite_ = this.f49291f;
                    } else {
                        header.regexRewrite_ = q2Var.b();
                    }
                    Q();
                    return header;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Header getDefaultInstanceForType() {
                    return Header.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Header.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Header.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$Header r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Header) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$Header r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Header) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.Header.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$Header$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Header) {
                        return g0((Header) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(Header header) {
                    if (header == Header.getDefaultInstance()) {
                        return this;
                    }
                    if (!header.getHeaderName().isEmpty()) {
                        this.f49290e = header.headerName_;
                        R();
                    }
                    if (header.hasRegexRewrite()) {
                        h0(header.getRegexRewrite());
                    }
                    z(((GeneratedMessageV3) header).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.G;
                }

                public b h0(RegexMatchAndSubstitute regexMatchAndSubstitute) {
                    q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var = this.f49292g;
                    if (q2Var == null) {
                        RegexMatchAndSubstitute regexMatchAndSubstitute2 = this.f49291f;
                        if (regexMatchAndSubstitute2 != null) {
                            this.f49291f = RegexMatchAndSubstitute.newBuilder(regexMatchAndSubstitute2).g0(regexMatchAndSubstitute).I();
                        } else {
                            this.f49291f = regexMatchAndSubstitute;
                        }
                        R();
                    } else {
                        q2Var.e(regexMatchAndSubstitute);
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
                    this.f49290e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49290e = "";
                    b0();
                }
            }

            /* synthetic */ Header(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Header getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.G;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Header parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Header) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Header parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Header> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Header)) {
                    return super.equals(obj);
                }
                Header header = (Header) obj;
                if (getHeaderName().equals(header.getHeaderName()) && hasRegexRewrite() == header.hasRegexRewrite()) {
                    return (!hasRegexRewrite() || getRegexRewrite().equals(header.getRegexRewrite())) && this.unknownFields.equals(header.unknownFields);
                }
                return false;
            }

            public String getHeaderName() {
                Object obj = this.headerName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.headerName_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getHeaderNameBytes() {
                Object obj = this.headerName_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.headerName_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Header> getParserForType() {
                return PARSER;
            }

            public RegexMatchAndSubstitute getRegexRewrite() {
                RegexMatchAndSubstitute regexMatchAndSubstitute = this.regexRewrite_;
                return regexMatchAndSubstitute == null ? RegexMatchAndSubstitute.getDefaultInstance() : regexMatchAndSubstitute;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k getRegexRewriteOrBuilder() {
                return getRegexRewrite();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = GeneratedMessageV3.isStringEmpty(this.headerName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.headerName_);
                if (this.regexRewrite_ != null) {
                    computeStringSize += CodedOutputStream.G(2, getRegexRewrite());
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasRegexRewrite() {
                return this.regexRewrite_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHeaderName().hashCode();
                if (hasRegexRewrite()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getRegexRewrite().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.H.d(Header.class, b.class);
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
                return new Header();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.headerName_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.headerName_);
                }
                if (this.regexRewrite_ != null) {
                    codedOutputStream.L0(2, getRegexRewrite());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Header(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Header header) {
                return DEFAULT_INSTANCE.toBuilder().g0(header);
            }

            public static Header parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Header(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Header parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Header) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Header parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Header getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static Header parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private Header() {
                this.memoizedIsInitialized = (byte) -1;
                this.headerName_ = "";
            }

            public static Header parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static Header parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Header parseFrom(InputStream inputStream) throws IOException {
                return (Header) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private Header(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.headerName_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    RegexMatchAndSubstitute regexMatchAndSubstitute = this.regexRewrite_;
                                    RegexMatchAndSubstitute.b builder = regexMatchAndSubstitute != null ? regexMatchAndSubstitute.toBuilder() : null;
                                    RegexMatchAndSubstitute regexMatchAndSubstitute2 = (RegexMatchAndSubstitute) pVar.B(RegexMatchAndSubstitute.parser(), f0Var);
                                    this.regexRewrite_ = regexMatchAndSubstitute2;
                                    if (builder != null) {
                                        builder.g0(regexMatchAndSubstitute2);
                                        this.regexRewrite_ = builder.I();
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

            public static Header parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Header) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Header parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (Header) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Header parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (Header) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public enum PolicySpecifierCase implements u0.c {
            HEADER(1),
            COOKIE(2),
            CONNECTION_PROPERTIES(3),
            QUERY_PARAMETER(5),
            FILTER_STATE(6),
            POLICYSPECIFIER_NOT_SET(0);
            
            private final int value;

            PolicySpecifierCase(int i9) {
                this.value = i9;
            }

            public static PolicySpecifierCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            if (i9 != 3) {
                                if (i9 != 5) {
                                    if (i9 != 6) {
                                        return null;
                                    }
                                    return FILTER_STATE;
                                }
                                return QUERY_PARAMETER;
                            }
                            return CONNECTION_PROPERTIES;
                        }
                        return COOKIE;
                    }
                    return HEADER;
                }
                return POLICYSPECIFIER_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static PolicySpecifierCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        public static final class QueryParameter extends GeneratedMessageV3 implements g {
            public static final int NAME_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private static final QueryParameter DEFAULT_INSTANCE = new QueryParameter();
            private static final e2<QueryParameter> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<QueryParameter> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public QueryParameter m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new QueryParameter(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements g {

                /* renamed from: e  reason: collision with root package name */
                private Object f49293e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.N.d(QueryParameter.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public QueryParameter build() {
                    QueryParameter I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public QueryParameter I() {
                    QueryParameter queryParameter = new QueryParameter(this, (a) null);
                    queryParameter.name_ = this.f49293e;
                    Q();
                    return queryParameter;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public QueryParameter getDefaultInstanceForType() {
                    return QueryParameter.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.QueryParameter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.QueryParameter.access$4700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$QueryParameter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.QueryParameter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$QueryParameter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.QueryParameter) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.QueryParameter.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$QueryParameter$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof QueryParameter) {
                        return g0((QueryParameter) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(QueryParameter queryParameter) {
                    if (queryParameter == QueryParameter.getDefaultInstance()) {
                        return this;
                    }
                    if (!queryParameter.getName().isEmpty()) {
                        this.f49293e = queryParameter.name_;
                        R();
                    }
                    z(((GeneratedMessageV3) queryParameter).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.M;
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
                    this.f49293e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49293e = "";
                    b0();
                }
            }

            /* synthetic */ QueryParameter(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static QueryParameter getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.M;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static QueryParameter parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (QueryParameter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static QueryParameter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<QueryParameter> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof QueryParameter)) {
                    return super.equals(obj);
                }
                QueryParameter queryParameter = (QueryParameter) obj;
                return getName().equals(queryParameter.getName()) && this.unknownFields.equals(queryParameter.unknownFields);
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
            public e2<QueryParameter> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_)) + this.unknownFields.getSerializedSize();
                this.memoizedSize = computeStringSize;
                return computeStringSize;
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
                int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.N.d(QueryParameter.class, b.class);
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
                return new QueryParameter();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ QueryParameter(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(QueryParameter queryParameter) {
                return DEFAULT_INSTANCE.toBuilder().g0(queryParameter);
            }

            public static QueryParameter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private QueryParameter(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static QueryParameter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (QueryParameter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static QueryParameter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public QueryParameter getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static QueryParameter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private QueryParameter() {
                this.memoizedIsInitialized = (byte) -1;
                this.name_ = "";
            }

            public static QueryParameter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static QueryParameter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static QueryParameter parseFrom(InputStream inputStream) throws IOException {
                return (QueryParameter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private QueryParameter(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.name_ = pVar.K();
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

            public static QueryParameter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (QueryParameter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static QueryParameter parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (QueryParameter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static QueryParameter parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (QueryParameter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<HashPolicy> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public HashPolicy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new HashPolicy(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f49294e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49295f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Header, Header.b, f> f49296g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Cookie, Cookie.b, d> f49297h;

            /* renamed from: i  reason: collision with root package name */
            private q2<ConnectionProperties, ConnectionProperties.b, c> f49298i;

            /* renamed from: j  reason: collision with root package name */
            private q2<QueryParameter, QueryParameter.b, g> f49299j;

            /* renamed from: k  reason: collision with root package name */
            private q2<FilterState, FilterState.b, e> f49300k;

            /* renamed from: l  reason: collision with root package name */
            private boolean f49301l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.F.d(HashPolicy.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public HashPolicy build() {
                HashPolicy I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public HashPolicy I() {
                HashPolicy hashPolicy = new HashPolicy(this, (a) null);
                if (this.f49294e == 1) {
                    q2<Header, Header.b, f> q2Var = this.f49296g;
                    if (q2Var == null) {
                        hashPolicy.policySpecifier_ = this.f49295f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var.b();
                    }
                }
                if (this.f49294e == 2) {
                    q2<Cookie, Cookie.b, d> q2Var2 = this.f49297h;
                    if (q2Var2 == null) {
                        hashPolicy.policySpecifier_ = this.f49295f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var2.b();
                    }
                }
                if (this.f49294e == 3) {
                    q2<ConnectionProperties, ConnectionProperties.b, c> q2Var3 = this.f49298i;
                    if (q2Var3 == null) {
                        hashPolicy.policySpecifier_ = this.f49295f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var3.b();
                    }
                }
                if (this.f49294e == 5) {
                    q2<QueryParameter, QueryParameter.b, g> q2Var4 = this.f49299j;
                    if (q2Var4 == null) {
                        hashPolicy.policySpecifier_ = this.f49295f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var4.b();
                    }
                }
                if (this.f49294e == 6) {
                    q2<FilterState, FilterState.b, e> q2Var5 = this.f49300k;
                    if (q2Var5 == null) {
                        hashPolicy.policySpecifier_ = this.f49295f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var5.b();
                    }
                }
                hashPolicy.terminal_ = this.f49301l;
                hashPolicy.policySpecifierCase_ = this.f49294e;
                Q();
                return hashPolicy;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public HashPolicy getDefaultInstanceForType() {
                return HashPolicy.getDefaultInstance();
            }

            public b d0(ConnectionProperties connectionProperties) {
                q2<ConnectionProperties, ConnectionProperties.b, c> q2Var = this.f49298i;
                if (q2Var == null) {
                    if (this.f49294e == 3 && this.f49295f != ConnectionProperties.getDefaultInstance()) {
                        this.f49295f = ConnectionProperties.newBuilder((ConnectionProperties) this.f49295f).g0(connectionProperties).I();
                    } else {
                        this.f49295f = connectionProperties;
                    }
                    R();
                } else {
                    if (this.f49294e == 3) {
                        q2Var.e(connectionProperties);
                    }
                    this.f49298i.g(connectionProperties);
                }
                this.f49294e = 3;
                return this;
            }

            public b e0(Cookie cookie) {
                q2<Cookie, Cookie.b, d> q2Var = this.f49297h;
                if (q2Var == null) {
                    if (this.f49294e == 2 && this.f49295f != Cookie.getDefaultInstance()) {
                        this.f49295f = Cookie.newBuilder((Cookie) this.f49295f).g0(cookie).I();
                    } else {
                        this.f49295f = cookie;
                    }
                    R();
                } else {
                    if (this.f49294e == 2) {
                        q2Var.e(cookie);
                    }
                    this.f49297h.g(cookie);
                }
                this.f49294e = 2;
                return this;
            }

            public b g0(FilterState filterState) {
                q2<FilterState, FilterState.b, e> q2Var = this.f49300k;
                if (q2Var == null) {
                    if (this.f49294e == 6 && this.f49295f != FilterState.getDefaultInstance()) {
                        this.f49295f = FilterState.newBuilder((FilterState) this.f49295f).g0(filterState).I();
                    } else {
                        this.f49295f = filterState;
                    }
                    R();
                } else {
                    if (this.f49294e == 6) {
                        q2Var.e(filterState);
                    }
                    this.f49300k.g(filterState);
                }
                this.f49294e = 6;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.E;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.access$6700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.HashPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$HashPolicy$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof HashPolicy) {
                    return j0((HashPolicy) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(HashPolicy hashPolicy) {
                if (hashPolicy == HashPolicy.getDefaultInstance()) {
                    return this;
                }
                if (hashPolicy.getTerminal()) {
                    o0(hashPolicy.getTerminal());
                }
                int i9 = b.f49321a[hashPolicy.getPolicySpecifierCase().ordinal()];
                if (i9 == 1) {
                    k0(hashPolicy.getHeader());
                } else if (i9 == 2) {
                    e0(hashPolicy.getCookie());
                } else if (i9 == 3) {
                    d0(hashPolicy.getConnectionProperties());
                } else if (i9 == 4) {
                    l0(hashPolicy.getQueryParameter());
                } else if (i9 == 5) {
                    g0(hashPolicy.getFilterState());
                }
                z(((GeneratedMessageV3) hashPolicy).unknownFields);
                R();
                return this;
            }

            public b k0(Header header) {
                q2<Header, Header.b, f> q2Var = this.f49296g;
                if (q2Var == null) {
                    if (this.f49294e == 1 && this.f49295f != Header.getDefaultInstance()) {
                        this.f49295f = Header.newBuilder((Header) this.f49295f).g0(header).I();
                    } else {
                        this.f49295f = header;
                    }
                    R();
                } else {
                    if (this.f49294e == 1) {
                        q2Var.e(header);
                    }
                    this.f49296g.g(header);
                }
                this.f49294e = 1;
                return this;
            }

            public b l0(QueryParameter queryParameter) {
                q2<QueryParameter, QueryParameter.b, g> q2Var = this.f49299j;
                if (q2Var == null) {
                    if (this.f49294e == 5 && this.f49295f != QueryParameter.getDefaultInstance()) {
                        this.f49295f = QueryParameter.newBuilder((QueryParameter) this.f49295f).g0(queryParameter).I();
                    } else {
                        this.f49295f = queryParameter;
                    }
                    R();
                } else {
                    if (this.f49294e == 5) {
                        q2Var.e(queryParameter);
                    }
                    this.f49299j.g(queryParameter);
                }
                this.f49294e = 5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: m0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b o0(boolean z10) {
                this.f49301l = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f49294e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49294e = 0;
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

        /* loaded from: classes6.dex */
        public interface f extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface g extends r1 {
        }

        /* synthetic */ HashPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static HashPolicy getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.E;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HashPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (HashPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HashPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<HashPolicy> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof HashPolicy)) {
                return super.equals(obj);
            }
            HashPolicy hashPolicy = (HashPolicy) obj;
            if (getTerminal() == hashPolicy.getTerminal() && getPolicySpecifierCase().equals(hashPolicy.getPolicySpecifierCase())) {
                int i9 = this.policySpecifierCase_;
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 5) {
                                if (i9 == 6 && !getFilterState().equals(hashPolicy.getFilterState())) {
                                    return false;
                                }
                            } else if (!getQueryParameter().equals(hashPolicy.getQueryParameter())) {
                                return false;
                            }
                        } else if (!getConnectionProperties().equals(hashPolicy.getConnectionProperties())) {
                            return false;
                        }
                    } else if (!getCookie().equals(hashPolicy.getCookie())) {
                        return false;
                    }
                } else if (!getHeader().equals(hashPolicy.getHeader())) {
                    return false;
                }
                return this.unknownFields.equals(hashPolicy.unknownFields);
            }
            return false;
        }

        public ConnectionProperties getConnectionProperties() {
            if (this.policySpecifierCase_ == 3) {
                return (ConnectionProperties) this.policySpecifier_;
            }
            return ConnectionProperties.getDefaultInstance();
        }

        public c getConnectionPropertiesOrBuilder() {
            if (this.policySpecifierCase_ == 3) {
                return (ConnectionProperties) this.policySpecifier_;
            }
            return ConnectionProperties.getDefaultInstance();
        }

        public Cookie getCookie() {
            if (this.policySpecifierCase_ == 2) {
                return (Cookie) this.policySpecifier_;
            }
            return Cookie.getDefaultInstance();
        }

        public d getCookieOrBuilder() {
            if (this.policySpecifierCase_ == 2) {
                return (Cookie) this.policySpecifier_;
            }
            return Cookie.getDefaultInstance();
        }

        public FilterState getFilterState() {
            if (this.policySpecifierCase_ == 6) {
                return (FilterState) this.policySpecifier_;
            }
            return FilterState.getDefaultInstance();
        }

        public e getFilterStateOrBuilder() {
            if (this.policySpecifierCase_ == 6) {
                return (FilterState) this.policySpecifier_;
            }
            return FilterState.getDefaultInstance();
        }

        public Header getHeader() {
            if (this.policySpecifierCase_ == 1) {
                return (Header) this.policySpecifier_;
            }
            return Header.getDefaultInstance();
        }

        public f getHeaderOrBuilder() {
            if (this.policySpecifierCase_ == 1) {
                return (Header) this.policySpecifier_;
            }
            return Header.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<HashPolicy> getParserForType() {
            return PARSER;
        }

        public PolicySpecifierCase getPolicySpecifierCase() {
            return PolicySpecifierCase.forNumber(this.policySpecifierCase_);
        }

        public QueryParameter getQueryParameter() {
            if (this.policySpecifierCase_ == 5) {
                return (QueryParameter) this.policySpecifier_;
            }
            return QueryParameter.getDefaultInstance();
        }

        public g getQueryParameterOrBuilder() {
            if (this.policySpecifierCase_ == 5) {
                return (QueryParameter) this.policySpecifier_;
            }
            return QueryParameter.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.policySpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (Header) this.policySpecifier_) : 0;
            if (this.policySpecifierCase_ == 2) {
                G += CodedOutputStream.G(2, (Cookie) this.policySpecifier_);
            }
            if (this.policySpecifierCase_ == 3) {
                G += CodedOutputStream.G(3, (ConnectionProperties) this.policySpecifier_);
            }
            boolean z10 = this.terminal_;
            if (z10) {
                G += CodedOutputStream.e(4, z10);
            }
            if (this.policySpecifierCase_ == 5) {
                G += CodedOutputStream.G(5, (QueryParameter) this.policySpecifier_);
            }
            if (this.policySpecifierCase_ == 6) {
                G += CodedOutputStream.G(6, (FilterState) this.policySpecifier_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean getTerminal() {
            return this.terminal_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConnectionProperties() {
            return this.policySpecifierCase_ == 3;
        }

        public boolean hasCookie() {
            return this.policySpecifierCase_ == 2;
        }

        public boolean hasFilterState() {
            return this.policySpecifierCase_ == 6;
        }

        public boolean hasHeader() {
            return this.policySpecifierCase_ == 1;
        }

        public boolean hasQueryParameter() {
            return this.policySpecifierCase_ == 5;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 4) * 53) + u0.d(getTerminal());
            int i11 = this.policySpecifierCase_;
            if (i11 == 1) {
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getHeader().hashCode();
            } else if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getCookie().hashCode();
            } else if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getConnectionProperties().hashCode();
            } else if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getQueryParameter().hashCode();
            } else {
                if (i11 == 6) {
                    i9 = ((hashCode2 * 37) + 6) * 53;
                    hashCode = getFilterState().hashCode();
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
            return o.F.d(HashPolicy.class, b.class);
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
            return new HashPolicy();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.policySpecifierCase_ == 1) {
                codedOutputStream.L0(1, (Header) this.policySpecifier_);
            }
            if (this.policySpecifierCase_ == 2) {
                codedOutputStream.L0(2, (Cookie) this.policySpecifier_);
            }
            if (this.policySpecifierCase_ == 3) {
                codedOutputStream.L0(3, (ConnectionProperties) this.policySpecifier_);
            }
            boolean z10 = this.terminal_;
            if (z10) {
                codedOutputStream.n0(4, z10);
            }
            if (this.policySpecifierCase_ == 5) {
                codedOutputStream.L0(5, (QueryParameter) this.policySpecifier_);
            }
            if (this.policySpecifierCase_ == 6) {
                codedOutputStream.L0(6, (FilterState) this.policySpecifier_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ HashPolicy(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(HashPolicy hashPolicy) {
            return DEFAULT_INSTANCE.toBuilder().j0(hashPolicy);
        }

        public static HashPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private HashPolicy(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.policySpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HashPolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HashPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static HashPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public HashPolicy getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static HashPolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static HashPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private HashPolicy() {
            this.policySpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HashPolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static HashPolicy parseFrom(InputStream inputStream) throws IOException {
            return (HashPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private HashPolicy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    Header.b builder = this.policySpecifierCase_ == 1 ? ((Header) this.policySpecifier_).toBuilder() : null;
                                    o1 B = pVar.B(Header.parser(), f0Var);
                                    this.policySpecifier_ = B;
                                    if (builder != null) {
                                        builder.g0((Header) B);
                                        this.policySpecifier_ = builder.I();
                                    }
                                    this.policySpecifierCase_ = 1;
                                } else if (L == 18) {
                                    Cookie.b builder2 = this.policySpecifierCase_ == 2 ? ((Cookie) this.policySpecifier_).toBuilder() : null;
                                    o1 B2 = pVar.B(Cookie.parser(), f0Var);
                                    this.policySpecifier_ = B2;
                                    if (builder2 != null) {
                                        builder2.g0((Cookie) B2);
                                        this.policySpecifier_ = builder2.I();
                                    }
                                    this.policySpecifierCase_ = 2;
                                } else if (L == 26) {
                                    ConnectionProperties.b builder3 = this.policySpecifierCase_ == 3 ? ((ConnectionProperties) this.policySpecifier_).toBuilder() : null;
                                    o1 B3 = pVar.B(ConnectionProperties.parser(), f0Var);
                                    this.policySpecifier_ = B3;
                                    if (builder3 != null) {
                                        builder3.g0((ConnectionProperties) B3);
                                        this.policySpecifier_ = builder3.I();
                                    }
                                    this.policySpecifierCase_ = 3;
                                } else if (L == 32) {
                                    this.terminal_ = pVar.r();
                                } else if (L == 42) {
                                    QueryParameter.b builder4 = this.policySpecifierCase_ == 5 ? ((QueryParameter) this.policySpecifier_).toBuilder() : null;
                                    o1 B4 = pVar.B(QueryParameter.parser(), f0Var);
                                    this.policySpecifier_ = B4;
                                    if (builder4 != null) {
                                        builder4.g0((QueryParameter) B4);
                                        this.policySpecifier_ = builder4.I();
                                    }
                                    this.policySpecifierCase_ = 5;
                                } else if (L != 50) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    FilterState.b builder5 = this.policySpecifierCase_ == 6 ? ((FilterState) this.policySpecifier_).toBuilder() : null;
                                    o1 B5 = pVar.B(FilterState.parser(), f0Var);
                                    this.policySpecifier_ = B5;
                                    if (builder5 != null) {
                                        builder5.g0((FilterState) B5);
                                        this.policySpecifier_ = builder5.I();
                                    }
                                    this.policySpecifierCase_ = 6;
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static HashPolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HashPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static HashPolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (HashPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static HashPolicy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (HashPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum HostRewriteSpecifierCase implements u0.c {
        HOST_REWRITE_LITERAL(6),
        AUTO_HOST_REWRITE(7),
        HOST_REWRITE_HEADER(29),
        HOST_REWRITE_PATH_REGEX(35),
        HOSTREWRITESPECIFIER_NOT_SET(0);
        
        private final int value;

        HostRewriteSpecifierCase(int i9) {
            this.value = i9;
        }

        public static HostRewriteSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 29) {
                    if (i9 != 35) {
                        if (i9 != 6) {
                            if (i9 != 7) {
                                return null;
                            }
                            return AUTO_HOST_REWRITE;
                        }
                        return HOST_REWRITE_LITERAL;
                    }
                    return HOST_REWRITE_PATH_REGEX;
                }
                return HOST_REWRITE_HEADER;
            }
            return HOSTREWRITESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static HostRewriteSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    @Deprecated
    /* loaded from: classes6.dex */
    public enum InternalRedirectAction implements h2 {
        PASS_THROUGH_INTERNAL_REDIRECT(0),
        HANDLE_INTERNAL_REDIRECT(1),
        UNRECOGNIZED(-1);
        
        public static final int HANDLE_INTERNAL_REDIRECT_VALUE = 1;
        public static final int PASS_THROUGH_INTERNAL_REDIRECT_VALUE = 0;
        private final int value;
        private static final u0.d<InternalRedirectAction> internalValueMap = new a();
        private static final InternalRedirectAction[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<InternalRedirectAction> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public InternalRedirectAction a(int i9) {
                return InternalRedirectAction.forNumber(i9);
            }
        }

        InternalRedirectAction(int i9) {
            this.value = i9;
        }

        public static InternalRedirectAction forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return HANDLE_INTERNAL_REDIRECT;
            }
            return PASS_THROUGH_INTERNAL_REDIRECT;
        }

        public static final Descriptors.d getDescriptor() {
            return RouteAction.getDescriptor().k().get(1);
        }

        public static u0.d<InternalRedirectAction> internalGetValueMap() {
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
        public static InternalRedirectAction valueOf(int i9) {
            return forNumber(i9);
        }

        public static InternalRedirectAction valueOf(Descriptors.e eVar) {
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
    public static final class MaxStreamDuration extends GeneratedMessageV3 implements e {
        public static final int GRPC_TIMEOUT_HEADER_MAX_FIELD_NUMBER = 2;
        public static final int GRPC_TIMEOUT_HEADER_OFFSET_FIELD_NUMBER = 3;
        public static final int MAX_STREAM_DURATION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Duration grpcTimeoutHeaderMax_;
        private Duration grpcTimeoutHeaderOffset_;
        private Duration maxStreamDuration_;
        private byte memoizedIsInitialized;
        private static final MaxStreamDuration DEFAULT_INSTANCE = new MaxStreamDuration();
        private static final e2<MaxStreamDuration> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<MaxStreamDuration> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MaxStreamDuration m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new MaxStreamDuration(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Duration f49302e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f49303f;

            /* renamed from: g  reason: collision with root package name */
            private Duration f49304g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f49305h;

            /* renamed from: i  reason: collision with root package name */
            private Duration f49306i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f49307j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.V.d(MaxStreamDuration.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MaxStreamDuration build() {
                MaxStreamDuration I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MaxStreamDuration I() {
                MaxStreamDuration maxStreamDuration = new MaxStreamDuration(this, (a) null);
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49303f;
                if (q2Var == null) {
                    maxStreamDuration.maxStreamDuration_ = this.f49302e;
                } else {
                    maxStreamDuration.maxStreamDuration_ = q2Var.b();
                }
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f49305h;
                if (q2Var2 == null) {
                    maxStreamDuration.grpcTimeoutHeaderMax_ = this.f49304g;
                } else {
                    maxStreamDuration.grpcTimeoutHeaderMax_ = q2Var2.b();
                }
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var3 = this.f49307j;
                if (q2Var3 == null) {
                    maxStreamDuration.grpcTimeoutHeaderOffset_ = this.f49306i;
                } else {
                    maxStreamDuration.grpcTimeoutHeaderOffset_ = q2Var3.b();
                }
                Q();
                return maxStreamDuration;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public MaxStreamDuration getDefaultInstanceForType() {
                return MaxStreamDuration.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.MaxStreamDuration.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.MaxStreamDuration.access$9700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$MaxStreamDuration r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.MaxStreamDuration) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$MaxStreamDuration r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.MaxStreamDuration) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.MaxStreamDuration.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$MaxStreamDuration$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof MaxStreamDuration) {
                    return g0((MaxStreamDuration) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(MaxStreamDuration maxStreamDuration) {
                if (maxStreamDuration == MaxStreamDuration.getDefaultInstance()) {
                    return this;
                }
                if (maxStreamDuration.hasMaxStreamDuration()) {
                    j0(maxStreamDuration.getMaxStreamDuration());
                }
                if (maxStreamDuration.hasGrpcTimeoutHeaderMax()) {
                    h0(maxStreamDuration.getGrpcTimeoutHeaderMax());
                }
                if (maxStreamDuration.hasGrpcTimeoutHeaderOffset()) {
                    i0(maxStreamDuration.getGrpcTimeoutHeaderOffset());
                }
                z(((GeneratedMessageV3) maxStreamDuration).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.U;
            }

            public b h0(Duration duration) {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49305h;
                if (q2Var == null) {
                    Duration duration2 = this.f49304g;
                    if (duration2 != null) {
                        this.f49304g = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f49304g = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            public b i0(Duration duration) {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49307j;
                if (q2Var == null) {
                    Duration duration2 = this.f49306i;
                    if (duration2 != null) {
                        this.f49306i = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f49306i = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            public b j0(Duration duration) {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49303f;
                if (q2Var == null) {
                    Duration duration2 = this.f49302e;
                    if (duration2 != null) {
                        this.f49302e = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f49302e = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
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

        /* synthetic */ MaxStreamDuration(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MaxStreamDuration getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.U;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MaxStreamDuration parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MaxStreamDuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MaxStreamDuration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MaxStreamDuration> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MaxStreamDuration)) {
                return super.equals(obj);
            }
            MaxStreamDuration maxStreamDuration = (MaxStreamDuration) obj;
            if (hasMaxStreamDuration() != maxStreamDuration.hasMaxStreamDuration()) {
                return false;
            }
            if ((!hasMaxStreamDuration() || getMaxStreamDuration().equals(maxStreamDuration.getMaxStreamDuration())) && hasGrpcTimeoutHeaderMax() == maxStreamDuration.hasGrpcTimeoutHeaderMax()) {
                if ((!hasGrpcTimeoutHeaderMax() || getGrpcTimeoutHeaderMax().equals(maxStreamDuration.getGrpcTimeoutHeaderMax())) && hasGrpcTimeoutHeaderOffset() == maxStreamDuration.hasGrpcTimeoutHeaderOffset()) {
                    return (!hasGrpcTimeoutHeaderOffset() || getGrpcTimeoutHeaderOffset().equals(maxStreamDuration.getGrpcTimeoutHeaderOffset())) && this.unknownFields.equals(maxStreamDuration.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Duration getGrpcTimeoutHeaderMax() {
            Duration duration = this.grpcTimeoutHeaderMax_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getGrpcTimeoutHeaderMaxOrBuilder() {
            return getGrpcTimeoutHeaderMax();
        }

        public Duration getGrpcTimeoutHeaderOffset() {
            Duration duration = this.grpcTimeoutHeaderOffset_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getGrpcTimeoutHeaderOffsetOrBuilder() {
            return getGrpcTimeoutHeaderOffset();
        }

        public Duration getMaxStreamDuration() {
            Duration duration = this.maxStreamDuration_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getMaxStreamDurationOrBuilder() {
            return getMaxStreamDuration();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MaxStreamDuration> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.maxStreamDuration_ != null ? 0 + CodedOutputStream.G(1, getMaxStreamDuration()) : 0;
            if (this.grpcTimeoutHeaderMax_ != null) {
                G += CodedOutputStream.G(2, getGrpcTimeoutHeaderMax());
            }
            if (this.grpcTimeoutHeaderOffset_ != null) {
                G += CodedOutputStream.G(3, getGrpcTimeoutHeaderOffset());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasGrpcTimeoutHeaderMax() {
            return this.grpcTimeoutHeaderMax_ != null;
        }

        public boolean hasGrpcTimeoutHeaderOffset() {
            return this.grpcTimeoutHeaderOffset_ != null;
        }

        public boolean hasMaxStreamDuration() {
            return this.maxStreamDuration_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasMaxStreamDuration()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getMaxStreamDuration().hashCode();
            }
            if (hasGrpcTimeoutHeaderMax()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getGrpcTimeoutHeaderMax().hashCode();
            }
            if (hasGrpcTimeoutHeaderOffset()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getGrpcTimeoutHeaderOffset().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.V.d(MaxStreamDuration.class, b.class);
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
            return new MaxStreamDuration();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.maxStreamDuration_ != null) {
                codedOutputStream.L0(1, getMaxStreamDuration());
            }
            if (this.grpcTimeoutHeaderMax_ != null) {
                codedOutputStream.L0(2, getGrpcTimeoutHeaderMax());
            }
            if (this.grpcTimeoutHeaderOffset_ != null) {
                codedOutputStream.L0(3, getGrpcTimeoutHeaderOffset());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MaxStreamDuration(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MaxStreamDuration maxStreamDuration) {
            return DEFAULT_INSTANCE.toBuilder().g0(maxStreamDuration);
        }

        public static MaxStreamDuration parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MaxStreamDuration(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MaxStreamDuration parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MaxStreamDuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MaxStreamDuration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MaxStreamDuration getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static MaxStreamDuration parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MaxStreamDuration() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MaxStreamDuration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MaxStreamDuration parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private MaxStreamDuration(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Duration duration = this.maxStreamDuration_;
                                builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.maxStreamDuration_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.maxStreamDuration_ = builder.I();
                                }
                            } else if (L == 18) {
                                Duration duration3 = this.grpcTimeoutHeaderMax_;
                                builder = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.grpcTimeoutHeaderMax_ = duration4;
                                if (builder != null) {
                                    builder.e0(duration4);
                                    this.grpcTimeoutHeaderMax_ = builder.I();
                                }
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Duration duration5 = this.grpcTimeoutHeaderOffset_;
                                builder = duration5 != null ? duration5.toBuilder() : null;
                                Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.grpcTimeoutHeaderOffset_ = duration6;
                                if (builder != null) {
                                    builder.e0(duration6);
                                    this.grpcTimeoutHeaderOffset_ = builder.I();
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

        public static MaxStreamDuration parseFrom(InputStream inputStream) throws IOException {
            return (MaxStreamDuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static MaxStreamDuration parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MaxStreamDuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MaxStreamDuration parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (MaxStreamDuration) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MaxStreamDuration parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (MaxStreamDuration) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class RequestMirrorPolicy extends GeneratedMessageV3 implements f {
        public static final int CLUSTER_FIELD_NUMBER = 1;
        private static final RequestMirrorPolicy DEFAULT_INSTANCE = new RequestMirrorPolicy();
        private static final e2<RequestMirrorPolicy> PARSER = new a();
        public static final int RUNTIME_FRACTION_FIELD_NUMBER = 3;
        public static final int TRACE_SAMPLED_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object cluster_;
        private byte memoizedIsInitialized;
        private RuntimeFractionalPercent runtimeFraction_;
        private BoolValue traceSampled_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RequestMirrorPolicy> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RequestMirrorPolicy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RequestMirrorPolicy(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Object f49308e;

            /* renamed from: f  reason: collision with root package name */
            private RuntimeFractionalPercent f49309f;

            /* renamed from: g  reason: collision with root package name */
            private q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> f49310g;

            /* renamed from: h  reason: collision with root package name */
            private BoolValue f49311h;

            /* renamed from: i  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49312i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.D.d(RequestMirrorPolicy.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RequestMirrorPolicy build() {
                RequestMirrorPolicy I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RequestMirrorPolicy I() {
                RequestMirrorPolicy requestMirrorPolicy = new RequestMirrorPolicy(this, (a) null);
                requestMirrorPolicy.cluster_ = this.f49308e;
                q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> q2Var = this.f49310g;
                if (q2Var == null) {
                    requestMirrorPolicy.runtimeFraction_ = this.f49309f;
                } else {
                    requestMirrorPolicy.runtimeFraction_ = q2Var.b();
                }
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f49312i;
                if (q2Var2 == null) {
                    requestMirrorPolicy.traceSampled_ = this.f49311h;
                } else {
                    requestMirrorPolicy.traceSampled_ = q2Var2.b();
                }
                Q();
                return requestMirrorPolicy;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RequestMirrorPolicy getDefaultInstanceForType() {
                return RequestMirrorPolicy.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.RequestMirrorPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.RequestMirrorPolicy.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$RequestMirrorPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.RequestMirrorPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$RequestMirrorPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.RequestMirrorPolicy) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.RequestMirrorPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$RequestMirrorPolicy$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RequestMirrorPolicy) {
                    return g0((RequestMirrorPolicy) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(RequestMirrorPolicy requestMirrorPolicy) {
                if (requestMirrorPolicy == RequestMirrorPolicy.getDefaultInstance()) {
                    return this;
                }
                if (!requestMirrorPolicy.getCluster().isEmpty()) {
                    this.f49308e = requestMirrorPolicy.cluster_;
                    R();
                }
                if (requestMirrorPolicy.hasRuntimeFraction()) {
                    h0(requestMirrorPolicy.getRuntimeFraction());
                }
                if (requestMirrorPolicy.hasTraceSampled()) {
                    i0(requestMirrorPolicy.getTraceSampled());
                }
                z(((GeneratedMessageV3) requestMirrorPolicy).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.C;
            }

            public b h0(RuntimeFractionalPercent runtimeFractionalPercent) {
                q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> q2Var = this.f49310g;
                if (q2Var == null) {
                    RuntimeFractionalPercent runtimeFractionalPercent2 = this.f49309f;
                    if (runtimeFractionalPercent2 != null) {
                        this.f49309f = RuntimeFractionalPercent.newBuilder(runtimeFractionalPercent2).h0(runtimeFractionalPercent).I();
                    } else {
                        this.f49309f = runtimeFractionalPercent;
                    }
                    R();
                } else {
                    q2Var.e(runtimeFractionalPercent);
                }
                return this;
            }

            public b i0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49312i;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f49311h;
                    if (boolValue2 != null) {
                        this.f49311h = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f49311h = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
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
                this.f49308e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49308e = "";
                b0();
            }
        }

        /* synthetic */ RequestMirrorPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RequestMirrorPolicy getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.C;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RequestMirrorPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RequestMirrorPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RequestMirrorPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RequestMirrorPolicy> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RequestMirrorPolicy)) {
                return super.equals(obj);
            }
            RequestMirrorPolicy requestMirrorPolicy = (RequestMirrorPolicy) obj;
            if (getCluster().equals(requestMirrorPolicy.getCluster()) && hasRuntimeFraction() == requestMirrorPolicy.hasRuntimeFraction()) {
                if ((!hasRuntimeFraction() || getRuntimeFraction().equals(requestMirrorPolicy.getRuntimeFraction())) && hasTraceSampled() == requestMirrorPolicy.hasTraceSampled()) {
                    return (!hasTraceSampled() || getTraceSampled().equals(requestMirrorPolicy.getTraceSampled())) && this.unknownFields.equals(requestMirrorPolicy.unknownFields);
                }
                return false;
            }
            return false;
        }

        public String getCluster() {
            Object obj = this.cluster_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cluster_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getClusterBytes() {
            Object obj = this.cluster_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cluster_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<RequestMirrorPolicy> getParserForType() {
            return PARSER;
        }

        public RuntimeFractionalPercent getRuntimeFraction() {
            RuntimeFractionalPercent runtimeFractionalPercent = this.runtimeFraction_;
            return runtimeFractionalPercent == null ? RuntimeFractionalPercent.getDefaultInstance() : runtimeFractionalPercent;
        }

        public x0 getRuntimeFractionOrBuilder() {
            return getRuntimeFraction();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.cluster_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.cluster_);
            if (this.runtimeFraction_ != null) {
                computeStringSize += CodedOutputStream.G(3, getRuntimeFraction());
            }
            if (this.traceSampled_ != null) {
                computeStringSize += CodedOutputStream.G(4, getTraceSampled());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public BoolValue getTraceSampled() {
            BoolValue boolValue = this.traceSampled_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        public com.google.protobuf.l getTraceSampledOrBuilder() {
            return getTraceSampled();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasRuntimeFraction() {
            return this.runtimeFraction_ != null;
        }

        public boolean hasTraceSampled() {
            return this.traceSampled_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCluster().hashCode();
            if (hasRuntimeFraction()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getRuntimeFraction().hashCode();
            }
            if (hasTraceSampled()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getTraceSampled().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.D.d(RequestMirrorPolicy.class, b.class);
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
            return new RequestMirrorPolicy();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.cluster_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.cluster_);
            }
            if (this.runtimeFraction_ != null) {
                codedOutputStream.L0(3, getRuntimeFraction());
            }
            if (this.traceSampled_ != null) {
                codedOutputStream.L0(4, getTraceSampled());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RequestMirrorPolicy(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RequestMirrorPolicy requestMirrorPolicy) {
            return DEFAULT_INSTANCE.toBuilder().g0(requestMirrorPolicy);
        }

        public static RequestMirrorPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RequestMirrorPolicy(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RequestMirrorPolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RequestMirrorPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RequestMirrorPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RequestMirrorPolicy getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static RequestMirrorPolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RequestMirrorPolicy() {
            this.memoizedIsInitialized = (byte) -1;
            this.cluster_ = "";
        }

        public static RequestMirrorPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RequestMirrorPolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static RequestMirrorPolicy parseFrom(InputStream inputStream) throws IOException {
            return (RequestMirrorPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private RequestMirrorPolicy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    if (L == 26) {
                                        RuntimeFractionalPercent runtimeFractionalPercent = this.runtimeFraction_;
                                        RuntimeFractionalPercent.b builder = runtimeFractionalPercent != null ? runtimeFractionalPercent.toBuilder() : null;
                                        RuntimeFractionalPercent runtimeFractionalPercent2 = (RuntimeFractionalPercent) pVar.B(RuntimeFractionalPercent.parser(), f0Var);
                                        this.runtimeFraction_ = runtimeFractionalPercent2;
                                        if (builder != null) {
                                            builder.h0(runtimeFractionalPercent2);
                                            this.runtimeFraction_ = builder.I();
                                        }
                                    } else if (L != 34) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        BoolValue boolValue = this.traceSampled_;
                                        BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                                        BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                        this.traceSampled_ = boolValue2;
                                        if (builder2 != null) {
                                            builder2.d0(boolValue2);
                                            this.traceSampled_ = builder2.I();
                                        }
                                    }
                                } else {
                                    this.cluster_ = pVar.K();
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

        public static RequestMirrorPolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RequestMirrorPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RequestMirrorPolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RequestMirrorPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RequestMirrorPolicy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RequestMirrorPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class UpgradeConfig extends GeneratedMessageV3 implements g {
        public static final int CONNECT_CONFIG_FIELD_NUMBER = 3;
        public static final int ENABLED_FIELD_NUMBER = 2;
        public static final int UPGRADE_TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private ConnectConfig connectConfig_;
        private BoolValue enabled_;
        private byte memoizedIsInitialized;
        private volatile Object upgradeType_;
        private static final UpgradeConfig DEFAULT_INSTANCE = new UpgradeConfig();
        private static final e2<UpgradeConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        public static final class ConnectConfig extends GeneratedMessageV3 implements c {
            public static final int ALLOW_POST_FIELD_NUMBER = 2;
            private static final ConnectConfig DEFAULT_INSTANCE = new ConnectConfig();
            private static final e2<ConnectConfig> PARSER = new a();
            public static final int PROXY_PROTOCOL_CONFIG_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private boolean allowPost_;
            private byte memoizedIsInitialized;
            private ProxyProtocolConfig proxyProtocolConfig_;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ConnectConfig> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ConnectConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ConnectConfig(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private ProxyProtocolConfig f49313e;

                /* renamed from: f  reason: collision with root package name */
                private q2<ProxyProtocolConfig, ProxyProtocolConfig.b, o0> f49314f;

                /* renamed from: g  reason: collision with root package name */
                private boolean f49315g;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.T.d(ConnectConfig.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ConnectConfig build() {
                    ConnectConfig I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ConnectConfig I() {
                    ConnectConfig connectConfig = new ConnectConfig(this, (a) null);
                    q2<ProxyProtocolConfig, ProxyProtocolConfig.b, o0> q2Var = this.f49314f;
                    if (q2Var == null) {
                        connectConfig.proxyProtocolConfig_ = this.f49313e;
                    } else {
                        connectConfig.proxyProtocolConfig_ = q2Var.b();
                    }
                    connectConfig.allowPost_ = this.f49315g;
                    Q();
                    return connectConfig;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ConnectConfig getDefaultInstanceForType() {
                    return ConnectConfig.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig.access$7600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$UpgradeConfig$ConnectConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$UpgradeConfig$ConnectConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$UpgradeConfig$ConnectConfig$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof ConnectConfig) {
                        return g0((ConnectConfig) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ConnectConfig connectConfig) {
                    if (connectConfig == ConnectConfig.getDefaultInstance()) {
                        return this;
                    }
                    if (connectConfig.hasProxyProtocolConfig()) {
                        h0(connectConfig.getProxyProtocolConfig());
                    }
                    if (connectConfig.getAllowPost()) {
                        j0(connectConfig.getAllowPost());
                    }
                    z(((GeneratedMessageV3) connectConfig).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.S;
                }

                public b h0(ProxyProtocolConfig proxyProtocolConfig) {
                    q2<ProxyProtocolConfig, ProxyProtocolConfig.b, o0> q2Var = this.f49314f;
                    if (q2Var == null) {
                        ProxyProtocolConfig proxyProtocolConfig2 = this.f49313e;
                        if (proxyProtocolConfig2 != null) {
                            this.f49313e = ProxyProtocolConfig.newBuilder(proxyProtocolConfig2).g0(proxyProtocolConfig).I();
                        } else {
                            this.f49313e = proxyProtocolConfig;
                        }
                        R();
                    } else {
                        q2Var.e(proxyProtocolConfig);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: i0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                public b j0(boolean z10) {
                    this.f49315g = z10;
                    R();
                    return this;
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

            /* synthetic */ ConnectConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ConnectConfig getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.S;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ConnectConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ConnectConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ConnectConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ConnectConfig> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ConnectConfig)) {
                    return super.equals(obj);
                }
                ConnectConfig connectConfig = (ConnectConfig) obj;
                if (hasProxyProtocolConfig() != connectConfig.hasProxyProtocolConfig()) {
                    return false;
                }
                return (!hasProxyProtocolConfig() || getProxyProtocolConfig().equals(connectConfig.getProxyProtocolConfig())) && getAllowPost() == connectConfig.getAllowPost() && this.unknownFields.equals(connectConfig.unknownFields);
            }

            public boolean getAllowPost() {
                return this.allowPost_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ConnectConfig> getParserForType() {
                return PARSER;
            }

            public ProxyProtocolConfig getProxyProtocolConfig() {
                ProxyProtocolConfig proxyProtocolConfig = this.proxyProtocolConfig_;
                return proxyProtocolConfig == null ? ProxyProtocolConfig.getDefaultInstance() : proxyProtocolConfig;
            }

            public o0 getProxyProtocolConfigOrBuilder() {
                return getProxyProtocolConfig();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = this.proxyProtocolConfig_ != null ? 0 + CodedOutputStream.G(1, getProxyProtocolConfig()) : 0;
                boolean z10 = this.allowPost_;
                if (z10) {
                    G += CodedOutputStream.e(2, z10);
                }
                int serializedSize = G + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasProxyProtocolConfig() {
                return this.proxyProtocolConfig_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasProxyProtocolConfig()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getProxyProtocolConfig().hashCode();
                }
                int d10 = (((((hashCode * 37) + 2) * 53) + u0.d(getAllowPost())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = d10;
                return d10;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.T.d(ConnectConfig.class, b.class);
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
                return new ConnectConfig();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.proxyProtocolConfig_ != null) {
                    codedOutputStream.L0(1, getProxyProtocolConfig());
                }
                boolean z10 = this.allowPost_;
                if (z10) {
                    codedOutputStream.n0(2, z10);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ConnectConfig(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ConnectConfig connectConfig) {
                return DEFAULT_INSTANCE.toBuilder().g0(connectConfig);
            }

            public static ConnectConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ConnectConfig(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ConnectConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ConnectConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ConnectConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ConnectConfig getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ConnectConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private ConnectConfig() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ConnectConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static ConnectConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private ConnectConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    ProxyProtocolConfig proxyProtocolConfig = this.proxyProtocolConfig_;
                                    ProxyProtocolConfig.b builder = proxyProtocolConfig != null ? proxyProtocolConfig.toBuilder() : null;
                                    ProxyProtocolConfig proxyProtocolConfig2 = (ProxyProtocolConfig) pVar.B(ProxyProtocolConfig.parser(), f0Var);
                                    this.proxyProtocolConfig_ = proxyProtocolConfig2;
                                    if (builder != null) {
                                        builder.g0(proxyProtocolConfig2);
                                        this.proxyProtocolConfig_ = builder.I();
                                    }
                                } else if (L != 16) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.allowPost_ = pVar.r();
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

            public static ConnectConfig parseFrom(InputStream inputStream) throws IOException {
                return (ConnectConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ConnectConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ConnectConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ConnectConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ConnectConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ConnectConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (ConnectConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<UpgradeConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public UpgradeConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new UpgradeConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private Object f49316e;

            /* renamed from: f  reason: collision with root package name */
            private BoolValue f49317f;

            /* renamed from: g  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49318g;

            /* renamed from: h  reason: collision with root package name */
            private ConnectConfig f49319h;

            /* renamed from: i  reason: collision with root package name */
            private q2<ConnectConfig, ConnectConfig.b, c> f49320i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.R.d(UpgradeConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public UpgradeConfig build() {
                UpgradeConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public UpgradeConfig I() {
                UpgradeConfig upgradeConfig = new UpgradeConfig(this, (a) null);
                upgradeConfig.upgradeType_ = this.f49316e;
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49318g;
                if (q2Var == null) {
                    upgradeConfig.enabled_ = this.f49317f;
                } else {
                    upgradeConfig.enabled_ = q2Var.b();
                }
                q2<ConnectConfig, ConnectConfig.b, c> q2Var2 = this.f49320i;
                if (q2Var2 == null) {
                    upgradeConfig.connectConfig_ = this.f49319h;
                } else {
                    upgradeConfig.connectConfig_ = q2Var2.b();
                }
                Q();
                return upgradeConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public UpgradeConfig getDefaultInstanceForType() {
                return UpgradeConfig.getDefaultInstance();
            }

            public b d0(ConnectConfig connectConfig) {
                q2<ConnectConfig, ConnectConfig.b, c> q2Var = this.f49320i;
                if (q2Var == null) {
                    ConnectConfig connectConfig2 = this.f49319h;
                    if (connectConfig2 != null) {
                        this.f49319h = ConnectConfig.newBuilder(connectConfig2).g0(connectConfig).I();
                    } else {
                        this.f49319h = connectConfig;
                    }
                    R();
                } else {
                    q2Var.e(connectConfig);
                }
                return this;
            }

            public b e0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49318g;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f49317f;
                    if (boolValue2 != null) {
                        this.f49317f = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f49317f = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.access$8600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$UpgradeConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$UpgradeConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.UpgradeConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$UpgradeConfig$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.Q;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof UpgradeConfig) {
                    return i0((UpgradeConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(UpgradeConfig upgradeConfig) {
                if (upgradeConfig == UpgradeConfig.getDefaultInstance()) {
                    return this;
                }
                if (!upgradeConfig.getUpgradeType().isEmpty()) {
                    this.f49316e = upgradeConfig.upgradeType_;
                    R();
                }
                if (upgradeConfig.hasEnabled()) {
                    e0(upgradeConfig.getEnabled());
                }
                if (upgradeConfig.hasConnectConfig()) {
                    d0(upgradeConfig.getConnectConfig());
                }
                z(((GeneratedMessageV3) upgradeConfig).unknownFields);
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
                this.f49316e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49316e = "";
                b0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* synthetic */ UpgradeConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static UpgradeConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.Q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UpgradeConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UpgradeConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<UpgradeConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UpgradeConfig)) {
                return super.equals(obj);
            }
            UpgradeConfig upgradeConfig = (UpgradeConfig) obj;
            if (getUpgradeType().equals(upgradeConfig.getUpgradeType()) && hasEnabled() == upgradeConfig.hasEnabled()) {
                if ((!hasEnabled() || getEnabled().equals(upgradeConfig.getEnabled())) && hasConnectConfig() == upgradeConfig.hasConnectConfig()) {
                    return (!hasConnectConfig() || getConnectConfig().equals(upgradeConfig.getConnectConfig())) && this.unknownFields.equals(upgradeConfig.unknownFields);
                }
                return false;
            }
            return false;
        }

        public ConnectConfig getConnectConfig() {
            ConnectConfig connectConfig = this.connectConfig_;
            return connectConfig == null ? ConnectConfig.getDefaultInstance() : connectConfig;
        }

        public c getConnectConfigOrBuilder() {
            return getConnectConfig();
        }

        public BoolValue getEnabled() {
            BoolValue boolValue = this.enabled_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        public com.google.protobuf.l getEnabledOrBuilder() {
            return getEnabled();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<UpgradeConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.upgradeType_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.upgradeType_);
            if (this.enabled_ != null) {
                computeStringSize += CodedOutputStream.G(2, getEnabled());
            }
            if (this.connectConfig_ != null) {
                computeStringSize += CodedOutputStream.G(3, getConnectConfig());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public String getUpgradeType() {
            Object obj = this.upgradeType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.upgradeType_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getUpgradeTypeBytes() {
            Object obj = this.upgradeType_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.upgradeType_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public boolean hasConnectConfig() {
            return this.connectConfig_ != null;
        }

        public boolean hasEnabled() {
            return this.enabled_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUpgradeType().hashCode();
            if (hasEnabled()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getEnabled().hashCode();
            }
            if (hasConnectConfig()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getConnectConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.R.d(UpgradeConfig.class, b.class);
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
            return new UpgradeConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.upgradeType_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.upgradeType_);
            }
            if (this.enabled_ != null) {
                codedOutputStream.L0(2, getEnabled());
            }
            if (this.connectConfig_ != null) {
                codedOutputStream.L0(3, getConnectConfig());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ UpgradeConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(UpgradeConfig upgradeConfig) {
            return DEFAULT_INSTANCE.toBuilder().i0(upgradeConfig);
        }

        public static UpgradeConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private UpgradeConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UpgradeConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static UpgradeConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public UpgradeConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static UpgradeConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private UpgradeConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.upgradeType_ = "";
        }

        public static UpgradeConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static UpgradeConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static UpgradeConfig parseFrom(InputStream inputStream) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private UpgradeConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        BoolValue boolValue = this.enabled_;
                                        BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                        BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                        this.enabled_ = boolValue2;
                                        if (builder != null) {
                                            builder.d0(boolValue2);
                                            this.enabled_ = builder.I();
                                        }
                                    } else if (L != 26) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        ConnectConfig connectConfig = this.connectConfig_;
                                        ConnectConfig.b builder2 = connectConfig != null ? connectConfig.toBuilder() : null;
                                        ConnectConfig connectConfig2 = (ConnectConfig) pVar.B(ConnectConfig.parser(), f0Var);
                                        this.connectConfig_ = connectConfig2;
                                        if (builder2 != null) {
                                            builder2.g0(connectConfig2);
                                            this.connectConfig_ = builder2.I();
                                        }
                                    }
                                } else {
                                    this.upgradeType_ = pVar.K();
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

        public static UpgradeConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static UpgradeConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static UpgradeConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RouteAction> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RouteAction m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RouteAction(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49321a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f49322b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f49323c;

        static {
            int[] iArr = new int[HostRewriteSpecifierCase.values().length];
            f49323c = iArr;
            try {
                iArr[HostRewriteSpecifierCase.HOST_REWRITE_LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49323c[HostRewriteSpecifierCase.AUTO_HOST_REWRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49323c[HostRewriteSpecifierCase.HOST_REWRITE_HEADER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49323c[HostRewriteSpecifierCase.HOST_REWRITE_PATH_REGEX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49323c[HostRewriteSpecifierCase.HOSTREWRITESPECIFIER_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ClusterSpecifierCase.values().length];
            f49322b = iArr2;
            try {
                iArr2[ClusterSpecifierCase.CLUSTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f49322b[ClusterSpecifierCase.CLUSTER_HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f49322b[ClusterSpecifierCase.WEIGHTED_CLUSTERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f49322b[ClusterSpecifierCase.CLUSTER_SPECIFIER_PLUGIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f49322b[ClusterSpecifierCase.CLUSTERSPECIFIER_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr3 = new int[HashPolicy.PolicySpecifierCase.values().length];
            f49321a = iArr3;
            try {
                iArr3[HashPolicy.PolicySpecifierCase.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f49321a[HashPolicy.PolicySpecifierCase.COOKIE.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f49321a[HashPolicy.PolicySpecifierCase.CONNECTION_PROPERTIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f49321a[HashPolicy.PolicySpecifierCase.QUERY_PARAMETER.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f49321a[HashPolicy.PolicySpecifierCase.FILTER_STATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f49321a[HashPolicy.PolicySpecifierCase.POLICYSPECIFIER_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements n {
        private List<RequestMirrorPolicy> A;
        private l2<RequestMirrorPolicy, RequestMirrorPolicy.b, f> B;
        private HedgePolicy B3;
        private int C;
        private MaxStreamDuration C4;
        private List<RateLimit> D;
        private q2<MaxStreamDuration, MaxStreamDuration.b, e> D4;
        private l2<RateLimit, RateLimit.d, k> E;
        private BoolValue F;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> G;
        private List<HashPolicy> H;
        private l2<HashPolicy, HashPolicy.b, d> I;
        private CorsPolicy J;
        private q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b> K;
        private Duration L;
        private q2<Duration, Duration.b, com.google.protobuf.v> M;
        private Duration N;
        private q2<Duration, Duration.b, com.google.protobuf.v> O;
        private List<UpgradeConfig> P;
        private l2<UpgradeConfig, UpgradeConfig.b, g> Q;
        private InternalRedirectPolicy R;
        private int V1;
        private q2<UInt32Value, UInt32Value.b, e3> V2;
        private q2<HedgePolicy, HedgePolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.g> V3;

        /* renamed from: a1  reason: collision with root package name */
        private q2<InternalRedirectPolicy, InternalRedirectPolicy.b, h> f49324a1;

        /* renamed from: a2  reason: collision with root package name */
        private UInt32Value f49325a2;

        /* renamed from: e  reason: collision with root package name */
        private int f49326e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49327f;

        /* renamed from: g  reason: collision with root package name */
        private int f49328g;

        /* renamed from: h  reason: collision with root package name */
        private Object f49329h;

        /* renamed from: i  reason: collision with root package name */
        private int f49330i;

        /* renamed from: j  reason: collision with root package name */
        private q2<WeightedCluster, WeightedCluster.c, z> f49331j;

        /* renamed from: k  reason: collision with root package name */
        private int f49332k;

        /* renamed from: l  reason: collision with root package name */
        private Metadata f49333l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Metadata, Metadata.b, k0> f49334m;

        /* renamed from: n  reason: collision with root package name */
        private Object f49335n;

        /* renamed from: o  reason: collision with root package name */
        private RegexMatchAndSubstitute f49336o;

        /* renamed from: p  reason: collision with root package name */
        private q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> f49337p;

        /* renamed from: q  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49338q;

        /* renamed from: r  reason: collision with root package name */
        private q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> f49339r;

        /* renamed from: s  reason: collision with root package name */
        private Duration f49340s;

        /* renamed from: t  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f49341t;

        /* renamed from: u  reason: collision with root package name */
        private Duration f49342u;

        /* renamed from: v  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f49343v;

        /* renamed from: w  reason: collision with root package name */
        private RetryPolicy f49344w;

        /* renamed from: x  reason: collision with root package name */
        private q2<RetryPolicy, RetryPolicy.c, m> f49345x;

        /* renamed from: y  reason: collision with root package name */
        private Any f49346y;

        /* renamed from: z  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f49347z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49330i & 4) == 0) {
                this.H = new ArrayList(this.H);
                this.f49330i |= 4;
            }
        }

        private void b0() {
            if ((this.f49330i & 2) == 0) {
                this.D = new ArrayList(this.D);
                this.f49330i |= 2;
            }
        }

        private void d0() {
            if ((this.f49330i & 1) == 0) {
                this.A = new ArrayList(this.A);
                this.f49330i |= 1;
            }
        }

        private void e0() {
            if ((this.f49330i & 8) == 0) {
                this.P = new ArrayList(this.P);
                this.f49330i |= 8;
            }
        }

        private l2<HashPolicy, HashPolicy.b, d> h0() {
            if (this.I == null) {
                this.I = new l2<>(this.H, (this.f49330i & 4) != 0, H(), O());
                this.H = null;
            }
            return this.I;
        }

        private l2<RateLimit, RateLimit.d, k> i0() {
            if (this.E == null) {
                this.E = new l2<>(this.D, (this.f49330i & 2) != 0, H(), O());
                this.D = null;
            }
            return this.E;
        }

        private l2<RequestMirrorPolicy, RequestMirrorPolicy.b, f> j0() {
            if (this.B == null) {
                this.B = new l2<>(this.A, (this.f49330i & 1) != 0, H(), O());
                this.A = null;
            }
            return this.B;
        }

        private l2<UpgradeConfig, UpgradeConfig.b, g> k0() {
            if (this.Q == null) {
                this.Q = new l2<>(this.P, (this.f49330i & 8) != 0, H(), O());
                this.P = null;
            }
            return this.Q;
        }

        private void l0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                j0();
                i0();
                h0();
                k0();
            }
        }

        @Deprecated
        public c B0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.V2;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f49325a2;
                if (uInt32Value2 != null) {
                    this.f49325a2 = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f49325a2 = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c D0(MaxStreamDuration maxStreamDuration) {
            q2<MaxStreamDuration, MaxStreamDuration.b, e> q2Var = this.D4;
            if (q2Var == null) {
                MaxStreamDuration maxStreamDuration2 = this.C4;
                if (maxStreamDuration2 != null) {
                    this.C4 = MaxStreamDuration.newBuilder(maxStreamDuration2).g0(maxStreamDuration).I();
                } else {
                    this.C4 = maxStreamDuration;
                }
                R();
            } else {
                q2Var.e(maxStreamDuration);
            }
            return this;
        }

        public c H0(Metadata metadata) {
            q2<Metadata, Metadata.b, k0> q2Var = this.f49334m;
            if (q2Var == null) {
                Metadata metadata2 = this.f49333l;
                if (metadata2 != null) {
                    this.f49333l = Metadata.newBuilder(metadata2).k0(metadata).I();
                } else {
                    this.f49333l = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        public c I0(RegexMatchAndSubstitute regexMatchAndSubstitute) {
            q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var = this.f49337p;
            if (q2Var == null) {
                RegexMatchAndSubstitute regexMatchAndSubstitute2 = this.f49336o;
                if (regexMatchAndSubstitute2 != null) {
                    this.f49336o = RegexMatchAndSubstitute.newBuilder(regexMatchAndSubstitute2).g0(regexMatchAndSubstitute).I();
                } else {
                    this.f49336o = regexMatchAndSubstitute;
                }
                R();
            } else {
                q2Var.e(regexMatchAndSubstitute);
            }
            return this;
        }

        public c J0(RetryPolicy retryPolicy) {
            q2<RetryPolicy, RetryPolicy.c, m> q2Var = this.f49345x;
            if (q2Var == null) {
                RetryPolicy retryPolicy2 = this.f49344w;
                if (retryPolicy2 != null) {
                    this.f49344w = RetryPolicy.newBuilder(retryPolicy2).n0(retryPolicy).I();
                } else {
                    this.f49344w = retryPolicy;
                }
                R();
            } else {
                q2Var.e(retryPolicy);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.B.d(RouteAction.class, c.class);
        }

        public c K0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49347z;
            if (q2Var == null) {
                Any any2 = this.f49346y;
                if (any2 != null) {
                    this.f49346y = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f49346y = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
            return this;
        }

        public c L0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49341t;
            if (q2Var == null) {
                Duration duration2 = this.f49340s;
                if (duration2 != null) {
                    this.f49340s = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f49340s = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: M0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c N0(WeightedCluster weightedCluster) {
            q2<WeightedCluster, WeightedCluster.c, z> q2Var = this.f49331j;
            if (q2Var == null) {
                if (this.f49326e == 3 && this.f49327f != WeightedCluster.getDefaultInstance()) {
                    this.f49327f = WeightedCluster.newBuilder((WeightedCluster) this.f49327f).i0(weightedCluster).I();
                } else {
                    this.f49327f = weightedCluster;
                }
                R();
            } else {
                if (this.f49326e == 3) {
                    q2Var.e(weightedCluster);
                }
                this.f49331j.g(weightedCluster);
            }
            this.f49326e = 3;
            return this;
        }

        public c O0(int i9) {
            this.f49332k = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: Q0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Deprecated
        public c S0(int i9) {
            this.V1 = i9;
            R();
            return this;
        }

        public c T0(int i9) {
            this.C = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: U0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RouteAction build() {
            RouteAction I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RouteAction I() {
            RouteAction routeAction = new RouteAction(this, (a) null);
            if (this.f49326e == 1) {
                routeAction.clusterSpecifier_ = this.f49327f;
            }
            if (this.f49326e == 2) {
                routeAction.clusterSpecifier_ = this.f49327f;
            }
            if (this.f49326e == 3) {
                q2<WeightedCluster, WeightedCluster.c, z> q2Var = this.f49331j;
                if (q2Var == null) {
                    routeAction.clusterSpecifier_ = this.f49327f;
                } else {
                    routeAction.clusterSpecifier_ = q2Var.b();
                }
            }
            if (this.f49326e == 37) {
                routeAction.clusterSpecifier_ = this.f49327f;
            }
            routeAction.clusterNotFoundResponseCode_ = this.f49332k;
            q2<Metadata, Metadata.b, k0> q2Var2 = this.f49334m;
            if (q2Var2 == null) {
                routeAction.metadataMatch_ = this.f49333l;
            } else {
                routeAction.metadataMatch_ = q2Var2.b();
            }
            routeAction.prefixRewrite_ = this.f49335n;
            q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var3 = this.f49337p;
            if (q2Var3 == null) {
                routeAction.regexRewrite_ = this.f49336o;
            } else {
                routeAction.regexRewrite_ = q2Var3.b();
            }
            if (this.f49328g == 6) {
                routeAction.hostRewriteSpecifier_ = this.f49329h;
            }
            if (this.f49328g == 7) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var4 = this.f49338q;
                if (q2Var4 == null) {
                    routeAction.hostRewriteSpecifier_ = this.f49329h;
                } else {
                    routeAction.hostRewriteSpecifier_ = q2Var4.b();
                }
            }
            if (this.f49328g == 29) {
                routeAction.hostRewriteSpecifier_ = this.f49329h;
            }
            if (this.f49328g == 35) {
                q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var5 = this.f49339r;
                if (q2Var5 == null) {
                    routeAction.hostRewriteSpecifier_ = this.f49329h;
                } else {
                    routeAction.hostRewriteSpecifier_ = q2Var5.b();
                }
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var6 = this.f49341t;
            if (q2Var6 == null) {
                routeAction.timeout_ = this.f49340s;
            } else {
                routeAction.timeout_ = q2Var6.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var7 = this.f49343v;
            if (q2Var7 == null) {
                routeAction.idleTimeout_ = this.f49342u;
            } else {
                routeAction.idleTimeout_ = q2Var7.b();
            }
            q2<RetryPolicy, RetryPolicy.c, m> q2Var8 = this.f49345x;
            if (q2Var8 == null) {
                routeAction.retryPolicy_ = this.f49344w;
            } else {
                routeAction.retryPolicy_ = q2Var8.b();
            }
            q2<Any, Any.b, com.google.protobuf.f> q2Var9 = this.f49347z;
            if (q2Var9 == null) {
                routeAction.retryPolicyTypedConfig_ = this.f49346y;
            } else {
                routeAction.retryPolicyTypedConfig_ = q2Var9.b();
            }
            l2<RequestMirrorPolicy, RequestMirrorPolicy.b, f> l2Var = this.B;
            if (l2Var == null) {
                if ((this.f49330i & 1) != 0) {
                    this.A = Collections.unmodifiableList(this.A);
                    this.f49330i &= -2;
                }
                routeAction.requestMirrorPolicies_ = this.A;
            } else {
                routeAction.requestMirrorPolicies_ = l2Var.e();
            }
            routeAction.priority_ = this.C;
            l2<RateLimit, RateLimit.d, k> l2Var2 = this.E;
            if (l2Var2 == null) {
                if ((this.f49330i & 2) != 0) {
                    this.D = Collections.unmodifiableList(this.D);
                    this.f49330i &= -3;
                }
                routeAction.rateLimits_ = this.D;
            } else {
                routeAction.rateLimits_ = l2Var2.e();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var10 = this.G;
            if (q2Var10 == null) {
                routeAction.includeVhRateLimits_ = this.F;
            } else {
                routeAction.includeVhRateLimits_ = q2Var10.b();
            }
            l2<HashPolicy, HashPolicy.b, d> l2Var3 = this.I;
            if (l2Var3 == null) {
                if ((this.f49330i & 4) != 0) {
                    this.H = Collections.unmodifiableList(this.H);
                    this.f49330i &= -5;
                }
                routeAction.hashPolicy_ = this.H;
            } else {
                routeAction.hashPolicy_ = l2Var3.e();
            }
            q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b> q2Var11 = this.K;
            if (q2Var11 == null) {
                routeAction.cors_ = this.J;
            } else {
                routeAction.cors_ = q2Var11.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var12 = this.M;
            if (q2Var12 == null) {
                routeAction.maxGrpcTimeout_ = this.L;
            } else {
                routeAction.maxGrpcTimeout_ = q2Var12.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var13 = this.O;
            if (q2Var13 == null) {
                routeAction.grpcTimeoutOffset_ = this.N;
            } else {
                routeAction.grpcTimeoutOffset_ = q2Var13.b();
            }
            l2<UpgradeConfig, UpgradeConfig.b, g> l2Var4 = this.Q;
            if (l2Var4 == null) {
                if ((this.f49330i & 8) != 0) {
                    this.P = Collections.unmodifiableList(this.P);
                    this.f49330i &= -9;
                }
                routeAction.upgradeConfigs_ = this.P;
            } else {
                routeAction.upgradeConfigs_ = l2Var4.e();
            }
            q2<InternalRedirectPolicy, InternalRedirectPolicy.b, h> q2Var14 = this.f49324a1;
            if (q2Var14 == null) {
                routeAction.internalRedirectPolicy_ = this.R;
            } else {
                routeAction.internalRedirectPolicy_ = q2Var14.b();
            }
            routeAction.internalRedirectAction_ = this.V1;
            q2<UInt32Value, UInt32Value.b, e3> q2Var15 = this.V2;
            if (q2Var15 == null) {
                routeAction.maxInternalRedirects_ = this.f49325a2;
            } else {
                routeAction.maxInternalRedirects_ = q2Var15.b();
            }
            q2<HedgePolicy, HedgePolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.g> q2Var16 = this.V3;
            if (q2Var16 == null) {
                routeAction.hedgePolicy_ = this.B3;
            } else {
                routeAction.hedgePolicy_ = q2Var16.b();
            }
            q2<MaxStreamDuration, MaxStreamDuration.b, e> q2Var17 = this.D4;
            if (q2Var17 == null) {
                routeAction.maxStreamDuration_ = this.C4;
            } else {
                routeAction.maxStreamDuration_ = q2Var17.b();
            }
            routeAction.clusterSpecifierCase_ = this.f49326e;
            routeAction.hostRewriteSpecifierCase_ = this.f49328g;
            Q();
            return routeAction;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public RouteAction getDefaultInstanceForType() {
            return RouteAction.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.A;
        }

        public c m0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49338q;
            if (q2Var == null) {
                if (this.f49328g == 7 && this.f49329h != BoolValue.getDefaultInstance()) {
                    this.f49329h = BoolValue.newBuilder((BoolValue) this.f49329h).d0(boolValue).I();
                } else {
                    this.f49329h = boolValue;
                }
                R();
            } else {
                if (this.f49328g == 7) {
                    q2Var.e(boolValue);
                }
                this.f49338q.g(boolValue);
            }
            this.f49328g = 7;
            return this;
        }

        public c n0(CorsPolicy corsPolicy) {
            q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b> q2Var = this.K;
            if (q2Var == null) {
                CorsPolicy corsPolicy2 = this.J;
                if (corsPolicy2 != null) {
                    this.J = CorsPolicy.newBuilder(corsPolicy2).k0(corsPolicy).I();
                } else {
                    this.J = corsPolicy;
                }
                R();
            } else {
                q2Var.e(corsPolicy);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.access$13400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.r0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.r0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof RouteAction) {
                return r0((RouteAction) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c r0(RouteAction routeAction) {
            if (routeAction == RouteAction.getDefaultInstance()) {
                return this;
            }
            if (routeAction.clusterNotFoundResponseCode_ != 0) {
                O0(routeAction.getClusterNotFoundResponseCodeValue());
            }
            if (routeAction.hasMetadataMatch()) {
                H0(routeAction.getMetadataMatch());
            }
            if (!routeAction.getPrefixRewrite().isEmpty()) {
                this.f49335n = routeAction.prefixRewrite_;
                R();
            }
            if (routeAction.hasRegexRewrite()) {
                I0(routeAction.getRegexRewrite());
            }
            if (routeAction.hasTimeout()) {
                L0(routeAction.getTimeout());
            }
            if (routeAction.hasIdleTimeout()) {
                v0(routeAction.getIdleTimeout());
            }
            if (routeAction.hasRetryPolicy()) {
                J0(routeAction.getRetryPolicy());
            }
            if (routeAction.hasRetryPolicyTypedConfig()) {
                K0(routeAction.getRetryPolicyTypedConfig());
            }
            if (this.B == null) {
                if (!routeAction.requestMirrorPolicies_.isEmpty()) {
                    if (this.A.isEmpty()) {
                        this.A = routeAction.requestMirrorPolicies_;
                        this.f49330i &= -2;
                    } else {
                        d0();
                        this.A.addAll(routeAction.requestMirrorPolicies_);
                    }
                    R();
                }
            } else if (!routeAction.requestMirrorPolicies_.isEmpty()) {
                if (this.B.k()) {
                    this.B.f();
                    this.B = null;
                    this.A = routeAction.requestMirrorPolicies_;
                    this.f49330i &= -2;
                    this.B = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.B.b(routeAction.requestMirrorPolicies_);
                }
            }
            if (routeAction.priority_ != 0) {
                T0(routeAction.getPriorityValue());
            }
            if (this.E == null) {
                if (!routeAction.rateLimits_.isEmpty()) {
                    if (this.D.isEmpty()) {
                        this.D = routeAction.rateLimits_;
                        this.f49330i &= -3;
                    } else {
                        b0();
                        this.D.addAll(routeAction.rateLimits_);
                    }
                    R();
                }
            } else if (!routeAction.rateLimits_.isEmpty()) {
                if (this.E.k()) {
                    this.E.f();
                    this.E = null;
                    this.D = routeAction.rateLimits_;
                    this.f49330i &= -3;
                    this.E = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.E.b(routeAction.rateLimits_);
                }
            }
            if (routeAction.hasIncludeVhRateLimits()) {
                x0(routeAction.getIncludeVhRateLimits());
            }
            if (this.I == null) {
                if (!routeAction.hashPolicy_.isEmpty()) {
                    if (this.H.isEmpty()) {
                        this.H = routeAction.hashPolicy_;
                        this.f49330i &= -5;
                    } else {
                        a0();
                        this.H.addAll(routeAction.hashPolicy_);
                    }
                    R();
                }
            } else if (!routeAction.hashPolicy_.isEmpty()) {
                if (this.I.k()) {
                    this.I.f();
                    this.I = null;
                    this.H = routeAction.hashPolicy_;
                    this.f49330i &= -5;
                    this.I = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.I.b(routeAction.hashPolicy_);
                }
            }
            if (routeAction.hasCors()) {
                n0(routeAction.getCors());
            }
            if (routeAction.hasMaxGrpcTimeout()) {
                z0(routeAction.getMaxGrpcTimeout());
            }
            if (routeAction.hasGrpcTimeoutOffset()) {
                s0(routeAction.getGrpcTimeoutOffset());
            }
            if (this.Q == null) {
                if (!routeAction.upgradeConfigs_.isEmpty()) {
                    if (this.P.isEmpty()) {
                        this.P = routeAction.upgradeConfigs_;
                        this.f49330i &= -9;
                    } else {
                        e0();
                        this.P.addAll(routeAction.upgradeConfigs_);
                    }
                    R();
                }
            } else if (!routeAction.upgradeConfigs_.isEmpty()) {
                if (this.Q.k()) {
                    this.Q.f();
                    this.Q = null;
                    this.P = routeAction.upgradeConfigs_;
                    this.f49330i &= -9;
                    this.Q = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.Q.b(routeAction.upgradeConfigs_);
                }
            }
            if (routeAction.hasInternalRedirectPolicy()) {
                y0(routeAction.getInternalRedirectPolicy());
            }
            if (routeAction.internalRedirectAction_ != 0) {
                S0(routeAction.getInternalRedirectActionValue());
            }
            if (routeAction.hasMaxInternalRedirects()) {
                B0(routeAction.getMaxInternalRedirects());
            }
            if (routeAction.hasHedgePolicy()) {
                t0(routeAction.getHedgePolicy());
            }
            if (routeAction.hasMaxStreamDuration()) {
                D0(routeAction.getMaxStreamDuration());
            }
            int i9 = b.f49322b[routeAction.getClusterSpecifierCase().ordinal()];
            if (i9 == 1) {
                this.f49326e = 1;
                this.f49327f = routeAction.clusterSpecifier_;
                R();
            } else if (i9 == 2) {
                this.f49326e = 2;
                this.f49327f = routeAction.clusterSpecifier_;
                R();
            } else if (i9 == 3) {
                N0(routeAction.getWeightedClusters());
            } else if (i9 == 4) {
                this.f49326e = 37;
                this.f49327f = routeAction.clusterSpecifier_;
                R();
            }
            int i10 = b.f49323c[routeAction.getHostRewriteSpecifierCase().ordinal()];
            if (i10 == 1) {
                this.f49328g = 6;
                this.f49329h = routeAction.hostRewriteSpecifier_;
                R();
            } else if (i10 == 2) {
                m0(routeAction.getAutoHostRewrite());
            } else if (i10 == 3) {
                this.f49328g = 29;
                this.f49329h = routeAction.hostRewriteSpecifier_;
                R();
            } else if (i10 == 4) {
                u0(routeAction.getHostRewritePathRegex());
            }
            z(((GeneratedMessageV3) routeAction).unknownFields);
            R();
            return this;
        }

        @Deprecated
        public c s0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.O;
            if (q2Var == null) {
                Duration duration2 = this.N;
                if (duration2 != null) {
                    this.N = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.N = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c t0(HedgePolicy hedgePolicy) {
            q2<HedgePolicy, HedgePolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.g> q2Var = this.V3;
            if (q2Var == null) {
                HedgePolicy hedgePolicy2 = this.B3;
                if (hedgePolicy2 != null) {
                    this.B3 = HedgePolicy.newBuilder(hedgePolicy2).h0(hedgePolicy).I();
                } else {
                    this.B3 = hedgePolicy;
                }
                R();
            } else {
                q2Var.e(hedgePolicy);
            }
            return this;
        }

        public c u0(RegexMatchAndSubstitute regexMatchAndSubstitute) {
            q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var = this.f49339r;
            if (q2Var == null) {
                if (this.f49328g == 35 && this.f49329h != RegexMatchAndSubstitute.getDefaultInstance()) {
                    this.f49329h = RegexMatchAndSubstitute.newBuilder((RegexMatchAndSubstitute) this.f49329h).g0(regexMatchAndSubstitute).I();
                } else {
                    this.f49329h = regexMatchAndSubstitute;
                }
                R();
            } else {
                if (this.f49328g == 35) {
                    q2Var.e(regexMatchAndSubstitute);
                }
                this.f49339r.g(regexMatchAndSubstitute);
            }
            this.f49328g = 35;
            return this;
        }

        public c v0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49343v;
            if (q2Var == null) {
                Duration duration2 = this.f49342u;
                if (duration2 != null) {
                    this.f49342u = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f49342u = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Deprecated
        public c x0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.G;
            if (q2Var == null) {
                BoolValue boolValue2 = this.F;
                if (boolValue2 != null) {
                    this.F = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.F = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c y0(InternalRedirectPolicy internalRedirectPolicy) {
            q2<InternalRedirectPolicy, InternalRedirectPolicy.b, h> q2Var = this.f49324a1;
            if (q2Var == null) {
                InternalRedirectPolicy internalRedirectPolicy2 = this.R;
                if (internalRedirectPolicy2 != null) {
                    this.R = InternalRedirectPolicy.newBuilder(internalRedirectPolicy2).j0(internalRedirectPolicy).I();
                } else {
                    this.R = internalRedirectPolicy;
                }
                R();
            } else {
                q2Var.e(internalRedirectPolicy);
            }
            return this;
        }

        @Deprecated
        public c z0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.M;
            if (q2Var == null) {
                Duration duration2 = this.L;
                if (duration2 != null) {
                    this.L = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.L = duration;
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
            this.f49326e = 0;
            this.f49328g = 0;
            this.f49332k = 0;
            this.f49335n = "";
            this.A = Collections.emptyList();
            this.C = 0;
            this.D = Collections.emptyList();
            this.H = Collections.emptyList();
            this.P = Collections.emptyList();
            this.V1 = 0;
            l0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49326e = 0;
            this.f49328g = 0;
            this.f49332k = 0;
            this.f49335n = "";
            this.A = Collections.emptyList();
            this.C = 0;
            this.D = Collections.emptyList();
            this.H = Collections.emptyList();
            this.P = Collections.emptyList();
            this.V1 = 0;
            l0();
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

    /* synthetic */ RouteAction(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RouteAction getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.A;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RouteAction parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RouteAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RouteAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RouteAction> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RouteAction)) {
            return super.equals(obj);
        }
        RouteAction routeAction = (RouteAction) obj;
        if (this.clusterNotFoundResponseCode_ == routeAction.clusterNotFoundResponseCode_ && hasMetadataMatch() == routeAction.hasMetadataMatch()) {
            if ((!hasMetadataMatch() || getMetadataMatch().equals(routeAction.getMetadataMatch())) && getPrefixRewrite().equals(routeAction.getPrefixRewrite()) && hasRegexRewrite() == routeAction.hasRegexRewrite()) {
                if ((!hasRegexRewrite() || getRegexRewrite().equals(routeAction.getRegexRewrite())) && hasTimeout() == routeAction.hasTimeout()) {
                    if ((!hasTimeout() || getTimeout().equals(routeAction.getTimeout())) && hasIdleTimeout() == routeAction.hasIdleTimeout()) {
                        if ((!hasIdleTimeout() || getIdleTimeout().equals(routeAction.getIdleTimeout())) && hasRetryPolicy() == routeAction.hasRetryPolicy()) {
                            if ((!hasRetryPolicy() || getRetryPolicy().equals(routeAction.getRetryPolicy())) && hasRetryPolicyTypedConfig() == routeAction.hasRetryPolicyTypedConfig()) {
                                if ((!hasRetryPolicyTypedConfig() || getRetryPolicyTypedConfig().equals(routeAction.getRetryPolicyTypedConfig())) && getRequestMirrorPoliciesList().equals(routeAction.getRequestMirrorPoliciesList()) && this.priority_ == routeAction.priority_ && getRateLimitsList().equals(routeAction.getRateLimitsList()) && hasIncludeVhRateLimits() == routeAction.hasIncludeVhRateLimits()) {
                                    if ((!hasIncludeVhRateLimits() || getIncludeVhRateLimits().equals(routeAction.getIncludeVhRateLimits())) && getHashPolicyList().equals(routeAction.getHashPolicyList()) && hasCors() == routeAction.hasCors()) {
                                        if ((!hasCors() || getCors().equals(routeAction.getCors())) && hasMaxGrpcTimeout() == routeAction.hasMaxGrpcTimeout()) {
                                            if ((!hasMaxGrpcTimeout() || getMaxGrpcTimeout().equals(routeAction.getMaxGrpcTimeout())) && hasGrpcTimeoutOffset() == routeAction.hasGrpcTimeoutOffset()) {
                                                if ((!hasGrpcTimeoutOffset() || getGrpcTimeoutOffset().equals(routeAction.getGrpcTimeoutOffset())) && getUpgradeConfigsList().equals(routeAction.getUpgradeConfigsList()) && hasInternalRedirectPolicy() == routeAction.hasInternalRedirectPolicy()) {
                                                    if ((!hasInternalRedirectPolicy() || getInternalRedirectPolicy().equals(routeAction.getInternalRedirectPolicy())) && this.internalRedirectAction_ == routeAction.internalRedirectAction_ && hasMaxInternalRedirects() == routeAction.hasMaxInternalRedirects()) {
                                                        if ((!hasMaxInternalRedirects() || getMaxInternalRedirects().equals(routeAction.getMaxInternalRedirects())) && hasHedgePolicy() == routeAction.hasHedgePolicy()) {
                                                            if ((!hasHedgePolicy() || getHedgePolicy().equals(routeAction.getHedgePolicy())) && hasMaxStreamDuration() == routeAction.hasMaxStreamDuration()) {
                                                                if ((!hasMaxStreamDuration() || getMaxStreamDuration().equals(routeAction.getMaxStreamDuration())) && getClusterSpecifierCase().equals(routeAction.getClusterSpecifierCase())) {
                                                                    int i9 = this.clusterSpecifierCase_;
                                                                    if (i9 != 1) {
                                                                        if (i9 != 2) {
                                                                            if (i9 != 3) {
                                                                                if (i9 == 37 && !getClusterSpecifierPlugin().equals(routeAction.getClusterSpecifierPlugin())) {
                                                                                    return false;
                                                                                }
                                                                            } else if (!getWeightedClusters().equals(routeAction.getWeightedClusters())) {
                                                                                return false;
                                                                            }
                                                                        } else if (!getClusterHeader().equals(routeAction.getClusterHeader())) {
                                                                            return false;
                                                                        }
                                                                    } else if (!getCluster().equals(routeAction.getCluster())) {
                                                                        return false;
                                                                    }
                                                                    if (getHostRewriteSpecifierCase().equals(routeAction.getHostRewriteSpecifierCase())) {
                                                                        int i10 = this.hostRewriteSpecifierCase_;
                                                                        if (i10 != 6) {
                                                                            if (i10 != 7) {
                                                                                if (i10 != 29) {
                                                                                    if (i10 == 35 && !getHostRewritePathRegex().equals(routeAction.getHostRewritePathRegex())) {
                                                                                        return false;
                                                                                    }
                                                                                } else if (!getHostRewriteHeader().equals(routeAction.getHostRewriteHeader())) {
                                                                                    return false;
                                                                                }
                                                                            } else if (!getAutoHostRewrite().equals(routeAction.getAutoHostRewrite())) {
                                                                                return false;
                                                                            }
                                                                        } else if (!getHostRewriteLiteral().equals(routeAction.getHostRewriteLiteral())) {
                                                                            return false;
                                                                        }
                                                                        return this.unknownFields.equals(routeAction.unknownFields);
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

    public BoolValue getAutoHostRewrite() {
        if (this.hostRewriteSpecifierCase_ == 7) {
            return (BoolValue) this.hostRewriteSpecifier_;
        }
        return BoolValue.getDefaultInstance();
    }

    public com.google.protobuf.l getAutoHostRewriteOrBuilder() {
        if (this.hostRewriteSpecifierCase_ == 7) {
            return (BoolValue) this.hostRewriteSpecifier_;
        }
        return BoolValue.getDefaultInstance();
    }

    public String getCluster() {
        String str = this.clusterSpecifierCase_ == 1 ? this.clusterSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.clusterSpecifierCase_ == 1) {
            this.clusterSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getClusterBytes() {
        String str = this.clusterSpecifierCase_ == 1 ? this.clusterSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.clusterSpecifierCase_ == 1) {
                this.clusterSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getClusterHeader() {
        String str = this.clusterSpecifierCase_ == 2 ? this.clusterSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.clusterSpecifierCase_ == 2) {
            this.clusterSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getClusterHeaderBytes() {
        String str = this.clusterSpecifierCase_ == 2 ? this.clusterSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.clusterSpecifierCase_ == 2) {
                this.clusterSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public ClusterNotFoundResponseCode getClusterNotFoundResponseCode() {
        ClusterNotFoundResponseCode valueOf = ClusterNotFoundResponseCode.valueOf(this.clusterNotFoundResponseCode_);
        return valueOf == null ? ClusterNotFoundResponseCode.UNRECOGNIZED : valueOf;
    }

    public int getClusterNotFoundResponseCodeValue() {
        return this.clusterNotFoundResponseCode_;
    }

    public ClusterSpecifierCase getClusterSpecifierCase() {
        return ClusterSpecifierCase.forNumber(this.clusterSpecifierCase_);
    }

    public String getClusterSpecifierPlugin() {
        String str = this.clusterSpecifierCase_ == 37 ? this.clusterSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.clusterSpecifierCase_ == 37) {
            this.clusterSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getClusterSpecifierPluginBytes() {
        String str = this.clusterSpecifierCase_ == 37 ? this.clusterSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.clusterSpecifierCase_ == 37) {
                this.clusterSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public CorsPolicy getCors() {
        CorsPolicy corsPolicy = this.cors_;
        return corsPolicy == null ? CorsPolicy.getDefaultInstance() : corsPolicy;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b getCorsOrBuilder() {
        return getCors();
    }

    @Deprecated
    public Duration getGrpcTimeoutOffset() {
        Duration duration = this.grpcTimeoutOffset_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    @Deprecated
    public com.google.protobuf.v getGrpcTimeoutOffsetOrBuilder() {
        return getGrpcTimeoutOffset();
    }

    public HashPolicy getHashPolicy(int i9) {
        return this.hashPolicy_.get(i9);
    }

    public int getHashPolicyCount() {
        return this.hashPolicy_.size();
    }

    public List<HashPolicy> getHashPolicyList() {
        return this.hashPolicy_;
    }

    public d getHashPolicyOrBuilder(int i9) {
        return this.hashPolicy_.get(i9);
    }

    public List<? extends d> getHashPolicyOrBuilderList() {
        return this.hashPolicy_;
    }

    public HedgePolicy getHedgePolicy() {
        HedgePolicy hedgePolicy = this.hedgePolicy_;
        return hedgePolicy == null ? HedgePolicy.getDefaultInstance() : hedgePolicy;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.g getHedgePolicyOrBuilder() {
        return getHedgePolicy();
    }

    public String getHostRewriteHeader() {
        String str = this.hostRewriteSpecifierCase_ == 29 ? this.hostRewriteSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.hostRewriteSpecifierCase_ == 29) {
            this.hostRewriteSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getHostRewriteHeaderBytes() {
        String str = this.hostRewriteSpecifierCase_ == 29 ? this.hostRewriteSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.hostRewriteSpecifierCase_ == 29) {
                this.hostRewriteSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getHostRewriteLiteral() {
        String str = this.hostRewriteSpecifierCase_ == 6 ? this.hostRewriteSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.hostRewriteSpecifierCase_ == 6) {
            this.hostRewriteSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getHostRewriteLiteralBytes() {
        String str = this.hostRewriteSpecifierCase_ == 6 ? this.hostRewriteSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.hostRewriteSpecifierCase_ == 6) {
                this.hostRewriteSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public RegexMatchAndSubstitute getHostRewritePathRegex() {
        if (this.hostRewriteSpecifierCase_ == 35) {
            return (RegexMatchAndSubstitute) this.hostRewriteSpecifier_;
        }
        return RegexMatchAndSubstitute.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k getHostRewritePathRegexOrBuilder() {
        if (this.hostRewriteSpecifierCase_ == 35) {
            return (RegexMatchAndSubstitute) this.hostRewriteSpecifier_;
        }
        return RegexMatchAndSubstitute.getDefaultInstance();
    }

    public HostRewriteSpecifierCase getHostRewriteSpecifierCase() {
        return HostRewriteSpecifierCase.forNumber(this.hostRewriteSpecifierCase_);
    }

    public Duration getIdleTimeout() {
        Duration duration = this.idleTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getIdleTimeoutOrBuilder() {
        return getIdleTimeout();
    }

    @Deprecated
    public BoolValue getIncludeVhRateLimits() {
        BoolValue boolValue = this.includeVhRateLimits_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    @Deprecated
    public com.google.protobuf.l getIncludeVhRateLimitsOrBuilder() {
        return getIncludeVhRateLimits();
    }

    @Deprecated
    public InternalRedirectAction getInternalRedirectAction() {
        InternalRedirectAction valueOf = InternalRedirectAction.valueOf(this.internalRedirectAction_);
        return valueOf == null ? InternalRedirectAction.UNRECOGNIZED : valueOf;
    }

    @Deprecated
    public int getInternalRedirectActionValue() {
        return this.internalRedirectAction_;
    }

    public InternalRedirectPolicy getInternalRedirectPolicy() {
        InternalRedirectPolicy internalRedirectPolicy = this.internalRedirectPolicy_;
        return internalRedirectPolicy == null ? InternalRedirectPolicy.getDefaultInstance() : internalRedirectPolicy;
    }

    public h getInternalRedirectPolicyOrBuilder() {
        return getInternalRedirectPolicy();
    }

    @Deprecated
    public Duration getMaxGrpcTimeout() {
        Duration duration = this.maxGrpcTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    @Deprecated
    public com.google.protobuf.v getMaxGrpcTimeoutOrBuilder() {
        return getMaxGrpcTimeout();
    }

    @Deprecated
    public UInt32Value getMaxInternalRedirects() {
        UInt32Value uInt32Value = this.maxInternalRedirects_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    @Deprecated
    public e3 getMaxInternalRedirectsOrBuilder() {
        return getMaxInternalRedirects();
    }

    public MaxStreamDuration getMaxStreamDuration() {
        MaxStreamDuration maxStreamDuration = this.maxStreamDuration_;
        return maxStreamDuration == null ? MaxStreamDuration.getDefaultInstance() : maxStreamDuration;
    }

    public e getMaxStreamDurationOrBuilder() {
        return getMaxStreamDuration();
    }

    public Metadata getMetadataMatch() {
        Metadata metadata = this.metadataMatch_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public k0 getMetadataMatchOrBuilder() {
        return getMetadataMatch();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RouteAction> getParserForType() {
        return PARSER;
    }

    public String getPrefixRewrite() {
        Object obj = this.prefixRewrite_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.prefixRewrite_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPrefixRewriteBytes() {
        Object obj = this.prefixRewrite_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.prefixRewrite_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public RoutingPriority getPriority() {
        RoutingPriority valueOf = RoutingPriority.valueOf(this.priority_);
        return valueOf == null ? RoutingPriority.UNRECOGNIZED : valueOf;
    }

    public int getPriorityValue() {
        return this.priority_;
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

    public RegexMatchAndSubstitute getRegexRewrite() {
        RegexMatchAndSubstitute regexMatchAndSubstitute = this.regexRewrite_;
        return regexMatchAndSubstitute == null ? RegexMatchAndSubstitute.getDefaultInstance() : regexMatchAndSubstitute;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k getRegexRewriteOrBuilder() {
        return getRegexRewrite();
    }

    public RequestMirrorPolicy getRequestMirrorPolicies(int i9) {
        return this.requestMirrorPolicies_.get(i9);
    }

    public int getRequestMirrorPoliciesCount() {
        return this.requestMirrorPolicies_.size();
    }

    public List<RequestMirrorPolicy> getRequestMirrorPoliciesList() {
        return this.requestMirrorPolicies_;
    }

    public f getRequestMirrorPoliciesOrBuilder(int i9) {
        return this.requestMirrorPolicies_.get(i9);
    }

    public List<? extends f> getRequestMirrorPoliciesOrBuilderList() {
        return this.requestMirrorPolicies_;
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.clusterSpecifierCase_ == 1 ? GeneratedMessageV3.computeStringSize(1, this.clusterSpecifier_) + 0 : 0;
        if (this.clusterSpecifierCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.clusterSpecifier_);
        }
        if (this.clusterSpecifierCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (WeightedCluster) this.clusterSpecifier_);
        }
        if (this.metadataMatch_ != null) {
            computeStringSize += CodedOutputStream.G(4, getMetadataMatch());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.prefixRewrite_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.prefixRewrite_);
        }
        if (this.hostRewriteSpecifierCase_ == 6) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.hostRewriteSpecifier_);
        }
        if (this.hostRewriteSpecifierCase_ == 7) {
            computeStringSize += CodedOutputStream.G(7, (BoolValue) this.hostRewriteSpecifier_);
        }
        if (this.timeout_ != null) {
            computeStringSize += CodedOutputStream.G(8, getTimeout());
        }
        if (this.retryPolicy_ != null) {
            computeStringSize += CodedOutputStream.G(9, getRetryPolicy());
        }
        if (this.priority_ != RoutingPriority.DEFAULT.getNumber()) {
            computeStringSize += CodedOutputStream.l(11, this.priority_);
        }
        for (int i10 = 0; i10 < this.rateLimits_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(13, this.rateLimits_.get(i10));
        }
        if (this.includeVhRateLimits_ != null) {
            computeStringSize += CodedOutputStream.G(14, getIncludeVhRateLimits());
        }
        for (int i11 = 0; i11 < this.hashPolicy_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(15, this.hashPolicy_.get(i11));
        }
        if (this.cors_ != null) {
            computeStringSize += CodedOutputStream.G(17, getCors());
        }
        if (this.clusterNotFoundResponseCode_ != ClusterNotFoundResponseCode.SERVICE_UNAVAILABLE.getNumber()) {
            computeStringSize += CodedOutputStream.l(20, this.clusterNotFoundResponseCode_);
        }
        if (this.maxGrpcTimeout_ != null) {
            computeStringSize += CodedOutputStream.G(23, getMaxGrpcTimeout());
        }
        if (this.idleTimeout_ != null) {
            computeStringSize += CodedOutputStream.G(24, getIdleTimeout());
        }
        for (int i12 = 0; i12 < this.upgradeConfigs_.size(); i12++) {
            computeStringSize += CodedOutputStream.G(25, this.upgradeConfigs_.get(i12));
        }
        if (this.internalRedirectAction_ != InternalRedirectAction.PASS_THROUGH_INTERNAL_REDIRECT.getNumber()) {
            computeStringSize += CodedOutputStream.l(26, this.internalRedirectAction_);
        }
        if (this.hedgePolicy_ != null) {
            computeStringSize += CodedOutputStream.G(27, getHedgePolicy());
        }
        if (this.grpcTimeoutOffset_ != null) {
            computeStringSize += CodedOutputStream.G(28, getGrpcTimeoutOffset());
        }
        if (this.hostRewriteSpecifierCase_ == 29) {
            computeStringSize += GeneratedMessageV3.computeStringSize(29, this.hostRewriteSpecifier_);
        }
        for (int i13 = 0; i13 < this.requestMirrorPolicies_.size(); i13++) {
            computeStringSize += CodedOutputStream.G(30, this.requestMirrorPolicies_.get(i13));
        }
        if (this.maxInternalRedirects_ != null) {
            computeStringSize += CodedOutputStream.G(31, getMaxInternalRedirects());
        }
        if (this.regexRewrite_ != null) {
            computeStringSize += CodedOutputStream.G(32, getRegexRewrite());
        }
        if (this.retryPolicyTypedConfig_ != null) {
            computeStringSize += CodedOutputStream.G(33, getRetryPolicyTypedConfig());
        }
        if (this.internalRedirectPolicy_ != null) {
            computeStringSize += CodedOutputStream.G(34, getInternalRedirectPolicy());
        }
        if (this.hostRewriteSpecifierCase_ == 35) {
            computeStringSize += CodedOutputStream.G(35, (RegexMatchAndSubstitute) this.hostRewriteSpecifier_);
        }
        if (this.maxStreamDuration_ != null) {
            computeStringSize += CodedOutputStream.G(36, getMaxStreamDuration());
        }
        if (this.clusterSpecifierCase_ == 37) {
            computeStringSize += GeneratedMessageV3.computeStringSize(37, this.clusterSpecifier_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Duration getTimeout() {
        Duration duration = this.timeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getTimeoutOrBuilder() {
        return getTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public UpgradeConfig getUpgradeConfigs(int i9) {
        return this.upgradeConfigs_.get(i9);
    }

    public int getUpgradeConfigsCount() {
        return this.upgradeConfigs_.size();
    }

    public List<UpgradeConfig> getUpgradeConfigsList() {
        return this.upgradeConfigs_;
    }

    public g getUpgradeConfigsOrBuilder(int i9) {
        return this.upgradeConfigs_.get(i9);
    }

    public List<? extends g> getUpgradeConfigsOrBuilderList() {
        return this.upgradeConfigs_;
    }

    public WeightedCluster getWeightedClusters() {
        if (this.clusterSpecifierCase_ == 3) {
            return (WeightedCluster) this.clusterSpecifier_;
        }
        return WeightedCluster.getDefaultInstance();
    }

    public z getWeightedClustersOrBuilder() {
        if (this.clusterSpecifierCase_ == 3) {
            return (WeightedCluster) this.clusterSpecifier_;
        }
        return WeightedCluster.getDefaultInstance();
    }

    public boolean hasAutoHostRewrite() {
        return this.hostRewriteSpecifierCase_ == 7;
    }

    public boolean hasCluster() {
        return this.clusterSpecifierCase_ == 1;
    }

    public boolean hasClusterHeader() {
        return this.clusterSpecifierCase_ == 2;
    }

    public boolean hasClusterSpecifierPlugin() {
        return this.clusterSpecifierCase_ == 37;
    }

    public boolean hasCors() {
        return this.cors_ != null;
    }

    @Deprecated
    public boolean hasGrpcTimeoutOffset() {
        return this.grpcTimeoutOffset_ != null;
    }

    public boolean hasHedgePolicy() {
        return this.hedgePolicy_ != null;
    }

    public boolean hasHostRewriteHeader() {
        return this.hostRewriteSpecifierCase_ == 29;
    }

    public boolean hasHostRewriteLiteral() {
        return this.hostRewriteSpecifierCase_ == 6;
    }

    public boolean hasHostRewritePathRegex() {
        return this.hostRewriteSpecifierCase_ == 35;
    }

    public boolean hasIdleTimeout() {
        return this.idleTimeout_ != null;
    }

    @Deprecated
    public boolean hasIncludeVhRateLimits() {
        return this.includeVhRateLimits_ != null;
    }

    public boolean hasInternalRedirectPolicy() {
        return this.internalRedirectPolicy_ != null;
    }

    @Deprecated
    public boolean hasMaxGrpcTimeout() {
        return this.maxGrpcTimeout_ != null;
    }

    @Deprecated
    public boolean hasMaxInternalRedirects() {
        return this.maxInternalRedirects_ != null;
    }

    public boolean hasMaxStreamDuration() {
        return this.maxStreamDuration_ != null;
    }

    public boolean hasMetadataMatch() {
        return this.metadataMatch_ != null;
    }

    public boolean hasRegexRewrite() {
        return this.regexRewrite_ != null;
    }

    public boolean hasRetryPolicy() {
        return this.retryPolicy_ != null;
    }

    public boolean hasRetryPolicyTypedConfig() {
        return this.retryPolicyTypedConfig_ != null;
    }

    public boolean hasTimeout() {
        return this.timeout_ != null;
    }

    public boolean hasWeightedClusters() {
        return this.clusterSpecifierCase_ == 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0237  */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hashCode() {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteAction.hashCode():int");
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.B.d(RouteAction.class, c.class);
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
        return new RouteAction();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.clusterSpecifierCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.clusterSpecifier_);
        }
        if (this.clusterSpecifierCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.clusterSpecifier_);
        }
        if (this.clusterSpecifierCase_ == 3) {
            codedOutputStream.L0(3, (WeightedCluster) this.clusterSpecifier_);
        }
        if (this.metadataMatch_ != null) {
            codedOutputStream.L0(4, getMetadataMatch());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.prefixRewrite_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.prefixRewrite_);
        }
        if (this.hostRewriteSpecifierCase_ == 6) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.hostRewriteSpecifier_);
        }
        if (this.hostRewriteSpecifierCase_ == 7) {
            codedOutputStream.L0(7, (BoolValue) this.hostRewriteSpecifier_);
        }
        if (this.timeout_ != null) {
            codedOutputStream.L0(8, getTimeout());
        }
        if (this.retryPolicy_ != null) {
            codedOutputStream.L0(9, getRetryPolicy());
        }
        if (this.priority_ != RoutingPriority.DEFAULT.getNumber()) {
            codedOutputStream.v0(11, this.priority_);
        }
        for (int i9 = 0; i9 < this.rateLimits_.size(); i9++) {
            codedOutputStream.L0(13, this.rateLimits_.get(i9));
        }
        if (this.includeVhRateLimits_ != null) {
            codedOutputStream.L0(14, getIncludeVhRateLimits());
        }
        for (int i10 = 0; i10 < this.hashPolicy_.size(); i10++) {
            codedOutputStream.L0(15, this.hashPolicy_.get(i10));
        }
        if (this.cors_ != null) {
            codedOutputStream.L0(17, getCors());
        }
        if (this.clusterNotFoundResponseCode_ != ClusterNotFoundResponseCode.SERVICE_UNAVAILABLE.getNumber()) {
            codedOutputStream.v0(20, this.clusterNotFoundResponseCode_);
        }
        if (this.maxGrpcTimeout_ != null) {
            codedOutputStream.L0(23, getMaxGrpcTimeout());
        }
        if (this.idleTimeout_ != null) {
            codedOutputStream.L0(24, getIdleTimeout());
        }
        for (int i11 = 0; i11 < this.upgradeConfigs_.size(); i11++) {
            codedOutputStream.L0(25, this.upgradeConfigs_.get(i11));
        }
        if (this.internalRedirectAction_ != InternalRedirectAction.PASS_THROUGH_INTERNAL_REDIRECT.getNumber()) {
            codedOutputStream.v0(26, this.internalRedirectAction_);
        }
        if (this.hedgePolicy_ != null) {
            codedOutputStream.L0(27, getHedgePolicy());
        }
        if (this.grpcTimeoutOffset_ != null) {
            codedOutputStream.L0(28, getGrpcTimeoutOffset());
        }
        if (this.hostRewriteSpecifierCase_ == 29) {
            GeneratedMessageV3.writeString(codedOutputStream, 29, this.hostRewriteSpecifier_);
        }
        for (int i12 = 0; i12 < this.requestMirrorPolicies_.size(); i12++) {
            codedOutputStream.L0(30, this.requestMirrorPolicies_.get(i12));
        }
        if (this.maxInternalRedirects_ != null) {
            codedOutputStream.L0(31, getMaxInternalRedirects());
        }
        if (this.regexRewrite_ != null) {
            codedOutputStream.L0(32, getRegexRewrite());
        }
        if (this.retryPolicyTypedConfig_ != null) {
            codedOutputStream.L0(33, getRetryPolicyTypedConfig());
        }
        if (this.internalRedirectPolicy_ != null) {
            codedOutputStream.L0(34, getInternalRedirectPolicy());
        }
        if (this.hostRewriteSpecifierCase_ == 35) {
            codedOutputStream.L0(35, (RegexMatchAndSubstitute) this.hostRewriteSpecifier_);
        }
        if (this.maxStreamDuration_ != null) {
            codedOutputStream.L0(36, getMaxStreamDuration());
        }
        if (this.clusterSpecifierCase_ == 37) {
            GeneratedMessageV3.writeString(codedOutputStream, 37, this.clusterSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RouteAction(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(RouteAction routeAction) {
        return DEFAULT_INSTANCE.toBuilder().r0(routeAction);
    }

    public static RouteAction parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RouteAction(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.clusterSpecifierCase_ = 0;
        this.hostRewriteSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RouteAction parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RouteAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RouteAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RouteAction getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).r0(this);
    }

    public static RouteAction parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static RouteAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static RouteAction parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private RouteAction() {
        this.clusterSpecifierCase_ = 0;
        this.hostRewriteSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.clusterNotFoundResponseCode_ = 0;
        this.prefixRewrite_ = "";
        this.requestMirrorPolicies_ = Collections.emptyList();
        this.priority_ = 0;
        this.rateLimits_ = Collections.emptyList();
        this.hashPolicy_ = Collections.emptyList();
        this.upgradeConfigs_ = Collections.emptyList();
        this.internalRedirectAction_ = 0;
    }

    public static RouteAction parseFrom(InputStream inputStream) throws IOException {
        return (RouteAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RouteAction parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RouteAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RouteAction parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RouteAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RouteAction parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RouteAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private RouteAction(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            String K = pVar.K();
                            this.clusterSpecifierCase_ = 1;
                            this.clusterSpecifier_ = K;
                            continue;
                        case 18:
                            String K2 = pVar.K();
                            this.clusterSpecifierCase_ = 2;
                            this.clusterSpecifier_ = K2;
                            continue;
                        case 26:
                            WeightedCluster.c builder = this.clusterSpecifierCase_ == 3 ? ((WeightedCluster) this.clusterSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(WeightedCluster.parser(), f0Var);
                            this.clusterSpecifier_ = B;
                            if (builder != null) {
                                builder.i0((WeightedCluster) B);
                                this.clusterSpecifier_ = builder.I();
                            }
                            this.clusterSpecifierCase_ = 3;
                            continue;
                        case 34:
                            Metadata metadata = this.metadataMatch_;
                            Metadata.b builder2 = metadata != null ? metadata.toBuilder() : null;
                            Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                            this.metadataMatch_ = metadata2;
                            if (builder2 != null) {
                                builder2.k0(metadata2);
                                this.metadataMatch_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 42:
                            this.prefixRewrite_ = pVar.K();
                            continue;
                        case 50:
                            String K3 = pVar.K();
                            this.hostRewriteSpecifierCase_ = 6;
                            this.hostRewriteSpecifier_ = K3;
                            continue;
                        case 58:
                            BoolValue.b builder3 = this.hostRewriteSpecifierCase_ == 7 ? ((BoolValue) this.hostRewriteSpecifier_).toBuilder() : null;
                            o1 B2 = pVar.B(BoolValue.parser(), f0Var);
                            this.hostRewriteSpecifier_ = B2;
                            if (builder3 != null) {
                                builder3.d0((BoolValue) B2);
                                this.hostRewriteSpecifier_ = builder3.I();
                            }
                            this.hostRewriteSpecifierCase_ = 7;
                            continue;
                        case 66:
                            Duration duration = this.timeout_;
                            Duration.b builder4 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.timeout_ = duration2;
                            if (builder4 != null) {
                                builder4.e0(duration2);
                                this.timeout_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 74:
                            RetryPolicy retryPolicy = this.retryPolicy_;
                            RetryPolicy.c builder5 = retryPolicy != null ? retryPolicy.toBuilder() : null;
                            RetryPolicy retryPolicy2 = (RetryPolicy) pVar.B(RetryPolicy.parser(), f0Var);
                            this.retryPolicy_ = retryPolicy2;
                            if (builder5 != null) {
                                builder5.n0(retryPolicy2);
                                this.retryPolicy_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 88:
                            this.priority_ = pVar.u();
                            continue;
                        case 106:
                            if (!(z11 & true)) {
                                this.rateLimits_ = new ArrayList();
                                z11 |= true;
                            }
                            this.rateLimits_.add((RateLimit) pVar.B(RateLimit.parser(), f0Var));
                            continue;
                        case 114:
                            BoolValue boolValue = this.includeVhRateLimits_;
                            BoolValue.b builder6 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.includeVhRateLimits_ = boolValue2;
                            if (builder6 != null) {
                                builder6.d0(boolValue2);
                                this.includeVhRateLimits_ = builder6.I();
                            } else {
                                continue;
                            }
                        case 122:
                            if (!(z11 & true)) {
                                this.hashPolicy_ = new ArrayList();
                                z11 |= true;
                            }
                            this.hashPolicy_.add((HashPolicy) pVar.B(HashPolicy.parser(), f0Var));
                            continue;
                        case 138:
                            CorsPolicy corsPolicy = this.cors_;
                            CorsPolicy.c builder7 = corsPolicy != null ? corsPolicy.toBuilder() : null;
                            CorsPolicy corsPolicy2 = (CorsPolicy) pVar.B(CorsPolicy.parser(), f0Var);
                            this.cors_ = corsPolicy2;
                            if (builder7 != null) {
                                builder7.k0(corsPolicy2);
                                this.cors_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 160:
                            this.clusterNotFoundResponseCode_ = pVar.u();
                            continue;
                        case 186:
                            Duration duration3 = this.maxGrpcTimeout_;
                            Duration.b builder8 = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.maxGrpcTimeout_ = duration4;
                            if (builder8 != null) {
                                builder8.e0(duration4);
                                this.maxGrpcTimeout_ = builder8.I();
                            } else {
                                continue;
                            }
                        case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                            Duration duration5 = this.idleTimeout_;
                            Duration.b builder9 = duration5 != null ? duration5.toBuilder() : null;
                            Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.idleTimeout_ = duration6;
                            if (builder9 != null) {
                                builder9.e0(duration6);
                                this.idleTimeout_ = builder9.I();
                            } else {
                                continue;
                            }
                        case 202:
                            if (!(z11 & true)) {
                                this.upgradeConfigs_ = new ArrayList();
                                z11 |= true;
                            }
                            this.upgradeConfigs_.add((UpgradeConfig) pVar.B(UpgradeConfig.parser(), f0Var));
                            continue;
                        case 208:
                            this.internalRedirectAction_ = pVar.u();
                            continue;
                        case 218:
                            HedgePolicy hedgePolicy = this.hedgePolicy_;
                            HedgePolicy.b builder10 = hedgePolicy != null ? hedgePolicy.toBuilder() : null;
                            HedgePolicy hedgePolicy2 = (HedgePolicy) pVar.B(HedgePolicy.parser(), f0Var);
                            this.hedgePolicy_ = hedgePolicy2;
                            if (builder10 != null) {
                                builder10.h0(hedgePolicy2);
                                this.hedgePolicy_ = builder10.I();
                            } else {
                                continue;
                            }
                        case 226:
                            Duration duration7 = this.grpcTimeoutOffset_;
                            Duration.b builder11 = duration7 != null ? duration7.toBuilder() : null;
                            Duration duration8 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.grpcTimeoutOffset_ = duration8;
                            if (builder11 != null) {
                                builder11.e0(duration8);
                                this.grpcTimeoutOffset_ = builder11.I();
                            } else {
                                continue;
                            }
                        case 234:
                            String K4 = pVar.K();
                            this.hostRewriteSpecifierCase_ = 29;
                            this.hostRewriteSpecifier_ = K4;
                            continue;
                        case 242:
                            if (!(z11 & true)) {
                                this.requestMirrorPolicies_ = new ArrayList();
                                z11 |= true;
                            }
                            this.requestMirrorPolicies_.add((RequestMirrorPolicy) pVar.B(RequestMirrorPolicy.parser(), f0Var));
                            continue;
                        case 250:
                            UInt32Value uInt32Value = this.maxInternalRedirects_;
                            UInt32Value.b builder12 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxInternalRedirects_ = uInt32Value2;
                            if (builder12 != null) {
                                builder12.g0(uInt32Value2);
                                this.maxInternalRedirects_ = builder12.I();
                            } else {
                                continue;
                            }
                        case 258:
                            RegexMatchAndSubstitute regexMatchAndSubstitute = this.regexRewrite_;
                            RegexMatchAndSubstitute.b builder13 = regexMatchAndSubstitute != null ? regexMatchAndSubstitute.toBuilder() : null;
                            RegexMatchAndSubstitute regexMatchAndSubstitute2 = (RegexMatchAndSubstitute) pVar.B(RegexMatchAndSubstitute.parser(), f0Var);
                            this.regexRewrite_ = regexMatchAndSubstitute2;
                            if (builder13 != null) {
                                builder13.g0(regexMatchAndSubstitute2);
                                this.regexRewrite_ = builder13.I();
                            } else {
                                continue;
                            }
                        case 266:
                            Any any = this.retryPolicyTypedConfig_;
                            Any.b builder14 = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                            this.retryPolicyTypedConfig_ = any2;
                            if (builder14 != null) {
                                builder14.d0(any2);
                                this.retryPolicyTypedConfig_ = builder14.I();
                            } else {
                                continue;
                            }
                        case 274:
                            InternalRedirectPolicy internalRedirectPolicy = this.internalRedirectPolicy_;
                            InternalRedirectPolicy.b builder15 = internalRedirectPolicy != null ? internalRedirectPolicy.toBuilder() : null;
                            InternalRedirectPolicy internalRedirectPolicy2 = (InternalRedirectPolicy) pVar.B(InternalRedirectPolicy.parser(), f0Var);
                            this.internalRedirectPolicy_ = internalRedirectPolicy2;
                            if (builder15 != null) {
                                builder15.j0(internalRedirectPolicy2);
                                this.internalRedirectPolicy_ = builder15.I();
                            } else {
                                continue;
                            }
                        case 282:
                            RegexMatchAndSubstitute.b builder16 = this.hostRewriteSpecifierCase_ == 35 ? ((RegexMatchAndSubstitute) this.hostRewriteSpecifier_).toBuilder() : null;
                            o1 B3 = pVar.B(RegexMatchAndSubstitute.parser(), f0Var);
                            this.hostRewriteSpecifier_ = B3;
                            if (builder16 != null) {
                                builder16.g0((RegexMatchAndSubstitute) B3);
                                this.hostRewriteSpecifier_ = builder16.I();
                            }
                            this.hostRewriteSpecifierCase_ = 35;
                            continue;
                        case BuildConfig.VERSION_CODE /* 290 */:
                            MaxStreamDuration maxStreamDuration = this.maxStreamDuration_;
                            MaxStreamDuration.b builder17 = maxStreamDuration != null ? maxStreamDuration.toBuilder() : null;
                            MaxStreamDuration maxStreamDuration2 = (MaxStreamDuration) pVar.B(MaxStreamDuration.parser(), f0Var);
                            this.maxStreamDuration_ = maxStreamDuration2;
                            if (builder17 != null) {
                                builder17.g0(maxStreamDuration2);
                                this.maxStreamDuration_ = builder17.I();
                            } else {
                                continue;
                            }
                        case 298:
                            String K5 = pVar.K();
                            this.clusterSpecifierCase_ = 37;
                            this.clusterSpecifier_ = K5;
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
                    this.rateLimits_ = Collections.unmodifiableList(this.rateLimits_);
                }
                if (z11 & true) {
                    this.hashPolicy_ = Collections.unmodifiableList(this.hashPolicy_);
                }
                if (z11 & true) {
                    this.upgradeConfigs_ = Collections.unmodifiableList(this.upgradeConfigs_);
                }
                if (z11 & true) {
                    this.requestMirrorPolicies_ = Collections.unmodifiableList(this.requestMirrorPolicies_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
