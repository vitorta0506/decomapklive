package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

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
import com.google.protobuf.v;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RoutingPriority;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeFractionalPercent;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatchAndSubstitute;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RouteAction extends GeneratedMessageV3 implements k {
    public static final int AUTO_HOST_REWRITE_FIELD_NUMBER = 7;
    public static final int AUTO_HOST_REWRITE_HEADER_FIELD_NUMBER = 29;
    public static final int CLUSTER_FIELD_NUMBER = 1;
    public static final int CLUSTER_HEADER_FIELD_NUMBER = 2;
    public static final int CLUSTER_NOT_FOUND_RESPONSE_CODE_FIELD_NUMBER = 20;
    public static final int CORS_FIELD_NUMBER = 17;
    public static final int GRPC_TIMEOUT_OFFSET_FIELD_NUMBER = 28;
    public static final int HASH_POLICY_FIELD_NUMBER = 15;
    public static final int HEDGE_POLICY_FIELD_NUMBER = 27;
    public static final int HOST_REWRITE_FIELD_NUMBER = 6;
    public static final int IDLE_TIMEOUT_FIELD_NUMBER = 24;
    public static final int INCLUDE_VH_RATE_LIMITS_FIELD_NUMBER = 14;
    public static final int INTERNAL_REDIRECT_ACTION_FIELD_NUMBER = 26;
    public static final int MAX_GRPC_TIMEOUT_FIELD_NUMBER = 23;
    public static final int MAX_INTERNAL_REDIRECTS_FIELD_NUMBER = 31;
    public static final int METADATA_MATCH_FIELD_NUMBER = 4;
    public static final int PREFIX_REWRITE_FIELD_NUMBER = 5;
    public static final int PRIORITY_FIELD_NUMBER = 11;
    public static final int RATE_LIMITS_FIELD_NUMBER = 13;
    public static final int REGEX_REWRITE_FIELD_NUMBER = 32;
    public static final int REQUEST_MIRROR_POLICIES_FIELD_NUMBER = 30;
    public static final int REQUEST_MIRROR_POLICY_FIELD_NUMBER = 10;
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
    private Duration maxGrpcTimeout_;
    private UInt32Value maxInternalRedirects_;
    private byte memoizedIsInitialized;
    private Metadata metadataMatch_;
    private volatile Object prefixRewrite_;
    private int priority_;
    private List<RateLimit> rateLimits_;
    private RegexMatchAndSubstitute regexRewrite_;
    private List<RequestMirrorPolicy> requestMirrorPolicies_;
    private RequestMirrorPolicy requestMirrorPolicy_;
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
                            return null;
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
                private boolean f47149e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.P.d(ConnectionProperties.class, b.class);
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
                    connectionProperties.sourceIp_ = this.f47149e;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.ConnectionProperties.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.ConnectionProperties.access$4000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$ConnectionProperties r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.ConnectionProperties) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$ConnectionProperties r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.ConnectionProperties) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.ConnectionProperties.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$ConnectionProperties$b");
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
                    return l.O;
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
                    this.f47149e = z10;
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
                return l.O;
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
                return l.P.d(ConnectionProperties.class, b.class);
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
                private Object f47150e;

                /* renamed from: f  reason: collision with root package name */
                private Duration f47151f;

                /* renamed from: g  reason: collision with root package name */
                private q2<Duration, Duration.b, v> f47152g;

                /* renamed from: h  reason: collision with root package name */
                private Object f47153h;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.N.d(Cookie.class, b.class);
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
                    cookie.name_ = this.f47150e;
                    q2<Duration, Duration.b, v> q2Var = this.f47152g;
                    if (q2Var == null) {
                        cookie.ttl_ = this.f47151f;
                    } else {
                        cookie.ttl_ = q2Var.b();
                    }
                    cookie.path_ = this.f47153h;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Cookie.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Cookie.access$3000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$Cookie r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Cookie) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$Cookie r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Cookie) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Cookie.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$Cookie$b");
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
                        this.f47150e = cookie.name_;
                        R();
                    }
                    if (cookie.hasTtl()) {
                        h0(cookie.getTtl());
                    }
                    if (!cookie.getPath().isEmpty()) {
                        this.f47153h = cookie.path_;
                        R();
                    }
                    z(((GeneratedMessageV3) cookie).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.M;
                }

                public b h0(Duration duration) {
                    q2<Duration, Duration.b, v> q2Var = this.f47152g;
                    if (q2Var == null) {
                        Duration duration2 = this.f47151f;
                        if (duration2 != null) {
                            this.f47151f = Duration.newBuilder(duration2).e0(duration).I();
                        } else {
                            this.f47151f = duration;
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
                    this.f47150e = "";
                    this.f47153h = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47150e = "";
                    this.f47153h = "";
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
                return l.M;
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

            public v getTtlOrBuilder() {
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
                return l.N.d(Cookie.class, b.class);
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
                private Object f47154e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.T.d(FilterState.class, b.class);
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
                    filterState.key_ = this.f47154e;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.FilterState.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.FilterState.access$5700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$FilterState r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.FilterState) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$FilterState r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.FilterState) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.FilterState.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$FilterState$b");
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
                        this.f47154e = filterState.key_;
                        R();
                    }
                    z(((GeneratedMessageV3) filterState).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.S;
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
                    this.f47154e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47154e = "";
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
                return l.S;
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
                return l.T.d(FilterState.class, b.class);
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
            private static final long serialVersionUID = 0;
            private volatile Object headerName_;
            private byte memoizedIsInitialized;
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
                private Object f47155e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.L.d(Header.class, b.class);
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
                    header.headerName_ = this.f47155e;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Header.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Header.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$Header r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Header) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$Header r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Header) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.Header.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$Header$b");
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
                        this.f47155e = header.headerName_;
                        R();
                    }
                    z(((GeneratedMessageV3) header).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.K;
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
                    this.f47155e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47155e = "";
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
                return l.K;
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
                return getHeaderName().equals(header.getHeaderName()) && this.unknownFields.equals(header.unknownFields);
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

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.headerName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.headerName_)) + this.unknownFields.getSerializedSize();
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
                int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHeaderName().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return l.L.d(Header.class, b.class);
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
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.headerName_ = pVar.K();
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
                private Object f47156e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.R.d(QueryParameter.class, b.class);
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
                    queryParameter.name_ = this.f47156e;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.QueryParameter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.QueryParameter.access$4800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$QueryParameter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.QueryParameter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$QueryParameter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.QueryParameter) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.QueryParameter.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$QueryParameter$b");
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
                        this.f47156e = queryParameter.name_;
                        R();
                    }
                    z(((GeneratedMessageV3) queryParameter).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.Q;
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
                    this.f47156e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47156e = "";
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
                return l.Q;
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
                return l.R.d(QueryParameter.class, b.class);
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
            private int f47157e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47158f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Header, Header.b, f> f47159g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Cookie, Cookie.b, d> f47160h;

            /* renamed from: i  reason: collision with root package name */
            private q2<ConnectionProperties, ConnectionProperties.b, c> f47161i;

            /* renamed from: j  reason: collision with root package name */
            private q2<QueryParameter, QueryParameter.b, g> f47162j;

            /* renamed from: k  reason: collision with root package name */
            private q2<FilterState, FilterState.b, e> f47163k;

            /* renamed from: l  reason: collision with root package name */
            private boolean f47164l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.J.d(HashPolicy.class, b.class);
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
                if (this.f47157e == 1) {
                    q2<Header, Header.b, f> q2Var = this.f47159g;
                    if (q2Var == null) {
                        hashPolicy.policySpecifier_ = this.f47158f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var.b();
                    }
                }
                if (this.f47157e == 2) {
                    q2<Cookie, Cookie.b, d> q2Var2 = this.f47160h;
                    if (q2Var2 == null) {
                        hashPolicy.policySpecifier_ = this.f47158f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var2.b();
                    }
                }
                if (this.f47157e == 3) {
                    q2<ConnectionProperties, ConnectionProperties.b, c> q2Var3 = this.f47161i;
                    if (q2Var3 == null) {
                        hashPolicy.policySpecifier_ = this.f47158f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var3.b();
                    }
                }
                if (this.f47157e == 5) {
                    q2<QueryParameter, QueryParameter.b, g> q2Var4 = this.f47162j;
                    if (q2Var4 == null) {
                        hashPolicy.policySpecifier_ = this.f47158f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var4.b();
                    }
                }
                if (this.f47157e == 6) {
                    q2<FilterState, FilterState.b, e> q2Var5 = this.f47163k;
                    if (q2Var5 == null) {
                        hashPolicy.policySpecifier_ = this.f47158f;
                    } else {
                        hashPolicy.policySpecifier_ = q2Var5.b();
                    }
                }
                hashPolicy.terminal_ = this.f47164l;
                hashPolicy.policySpecifierCase_ = this.f47157e;
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
                q2<ConnectionProperties, ConnectionProperties.b, c> q2Var = this.f47161i;
                if (q2Var == null) {
                    if (this.f47157e == 3 && this.f47158f != ConnectionProperties.getDefaultInstance()) {
                        this.f47158f = ConnectionProperties.newBuilder((ConnectionProperties) this.f47158f).g0(connectionProperties).I();
                    } else {
                        this.f47158f = connectionProperties;
                    }
                    R();
                } else {
                    if (this.f47157e == 3) {
                        q2Var.e(connectionProperties);
                    }
                    this.f47161i.g(connectionProperties);
                }
                this.f47157e = 3;
                return this;
            }

            public b e0(Cookie cookie) {
                q2<Cookie, Cookie.b, d> q2Var = this.f47160h;
                if (q2Var == null) {
                    if (this.f47157e == 2 && this.f47158f != Cookie.getDefaultInstance()) {
                        this.f47158f = Cookie.newBuilder((Cookie) this.f47158f).g0(cookie).I();
                    } else {
                        this.f47158f = cookie;
                    }
                    R();
                } else {
                    if (this.f47157e == 2) {
                        q2Var.e(cookie);
                    }
                    this.f47160h.g(cookie);
                }
                this.f47157e = 2;
                return this;
            }

            public b g0(FilterState filterState) {
                q2<FilterState, FilterState.b, e> q2Var = this.f47163k;
                if (q2Var == null) {
                    if (this.f47157e == 6 && this.f47158f != FilterState.getDefaultInstance()) {
                        this.f47158f = FilterState.newBuilder((FilterState) this.f47158f).g0(filterState).I();
                    } else {
                        this.f47158f = filterState;
                    }
                    R();
                } else {
                    if (this.f47157e == 6) {
                        q2Var.e(filterState);
                    }
                    this.f47163k.g(filterState);
                }
                this.f47157e = 6;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.I;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.access$6800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.HashPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$HashPolicy$b");
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
                int i9 = b.f47174a[hashPolicy.getPolicySpecifierCase().ordinal()];
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
                q2<Header, Header.b, f> q2Var = this.f47159g;
                if (q2Var == null) {
                    if (this.f47157e == 1 && this.f47158f != Header.getDefaultInstance()) {
                        this.f47158f = Header.newBuilder((Header) this.f47158f).g0(header).I();
                    } else {
                        this.f47158f = header;
                    }
                    R();
                } else {
                    if (this.f47157e == 1) {
                        q2Var.e(header);
                    }
                    this.f47159g.g(header);
                }
                this.f47157e = 1;
                return this;
            }

            public b l0(QueryParameter queryParameter) {
                q2<QueryParameter, QueryParameter.b, g> q2Var = this.f47162j;
                if (q2Var == null) {
                    if (this.f47157e == 5 && this.f47158f != QueryParameter.getDefaultInstance()) {
                        this.f47158f = QueryParameter.newBuilder((QueryParameter) this.f47158f).g0(queryParameter).I();
                    } else {
                        this.f47158f = queryParameter;
                    }
                    R();
                } else {
                    if (this.f47157e == 5) {
                        q2Var.e(queryParameter);
                    }
                    this.f47162j.g(queryParameter);
                }
                this.f47157e = 5;
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
                this.f47164l = z10;
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
                this.f47157e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47157e = 0;
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
            return l.I;
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
            return l.J.d(HashPolicy.class, b.class);
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
        HOST_REWRITE(6),
        AUTO_HOST_REWRITE(7),
        AUTO_HOST_REWRITE_HEADER(29),
        HOSTREWRITESPECIFIER_NOT_SET(0);
        
        private final int value;

        HostRewriteSpecifierCase(int i9) {
            this.value = i9;
        }

        public static HostRewriteSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 29) {
                    if (i9 != 6) {
                        if (i9 != 7) {
                            return null;
                        }
                        return AUTO_HOST_REWRITE;
                    }
                    return HOST_REWRITE;
                }
                return AUTO_HOST_REWRITE_HEADER;
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
    public static final class RequestMirrorPolicy extends GeneratedMessageV3 implements e {
        public static final int CLUSTER_FIELD_NUMBER = 1;
        private static final RequestMirrorPolicy DEFAULT_INSTANCE = new RequestMirrorPolicy();
        private static final e2<RequestMirrorPolicy> PARSER = new a();
        public static final int RUNTIME_FRACTION_FIELD_NUMBER = 3;
        public static final int RUNTIME_KEY_FIELD_NUMBER = 2;
        public static final int TRACE_SAMPLED_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object cluster_;
        private byte memoizedIsInitialized;
        private RuntimeFractionalPercent runtimeFraction_;
        private volatile Object runtimeKey_;
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
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f47165e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47166f;

            /* renamed from: g  reason: collision with root package name */
            private RuntimeFractionalPercent f47167g;

            /* renamed from: h  reason: collision with root package name */
            private q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> f47168h;

            /* renamed from: i  reason: collision with root package name */
            private BoolValue f47169i;

            /* renamed from: j  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47170j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.H.d(RequestMirrorPolicy.class, b.class);
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
                requestMirrorPolicy.cluster_ = this.f47165e;
                requestMirrorPolicy.runtimeKey_ = this.f47166f;
                q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var = this.f47168h;
                if (q2Var == null) {
                    requestMirrorPolicy.runtimeFraction_ = this.f47167g;
                } else {
                    requestMirrorPolicy.runtimeFraction_ = q2Var.b();
                }
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f47170j;
                if (q2Var2 == null) {
                    requestMirrorPolicy.traceSampled_ = this.f47169i;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.RequestMirrorPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.RequestMirrorPolicy.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$RequestMirrorPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.RequestMirrorPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$RequestMirrorPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.RequestMirrorPolicy) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.RequestMirrorPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$RequestMirrorPolicy$b");
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
                    this.f47165e = requestMirrorPolicy.cluster_;
                    R();
                }
                if (!requestMirrorPolicy.getRuntimeKey().isEmpty()) {
                    this.f47166f = requestMirrorPolicy.runtimeKey_;
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
                return l.G;
            }

            public b h0(RuntimeFractionalPercent runtimeFractionalPercent) {
                q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var = this.f47168h;
                if (q2Var == null) {
                    RuntimeFractionalPercent runtimeFractionalPercent2 = this.f47167g;
                    if (runtimeFractionalPercent2 != null) {
                        this.f47167g = RuntimeFractionalPercent.newBuilder(runtimeFractionalPercent2).h0(runtimeFractionalPercent).I();
                    } else {
                        this.f47167g = runtimeFractionalPercent;
                    }
                    R();
                } else {
                    q2Var.e(runtimeFractionalPercent);
                }
                return this;
            }

            public b i0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47170j;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f47169i;
                    if (boolValue2 != null) {
                        this.f47169i = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f47169i = boolValue;
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
                this.f47165e = "";
                this.f47166f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47165e = "";
                this.f47166f = "";
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
            return l.G;
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
            if (getCluster().equals(requestMirrorPolicy.getCluster()) && getRuntimeKey().equals(requestMirrorPolicy.getRuntimeKey()) && hasRuntimeFraction() == requestMirrorPolicy.hasRuntimeFraction()) {
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

        public k0 getRuntimeFractionOrBuilder() {
            return getRuntimeFraction();
        }

        @Deprecated
        public String getRuntimeKey() {
            Object obj = this.runtimeKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.runtimeKey_ = stringUtf8;
            return stringUtf8;
        }

        @Deprecated
        public ByteString getRuntimeKeyBytes() {
            Object obj = this.runtimeKey_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.runtimeKey_ = copyFromUtf8;
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
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.cluster_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.cluster_);
            if (!GeneratedMessageV3.isStringEmpty(this.runtimeKey_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.runtimeKey_);
            }
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
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCluster().hashCode()) * 37) + 2) * 53) + getRuntimeKey().hashCode();
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
            return l.H.d(RequestMirrorPolicy.class, b.class);
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
            if (!GeneratedMessageV3.isStringEmpty(this.runtimeKey_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.runtimeKey_);
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
            this.runtimeKey_ = "";
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
                                if (L == 10) {
                                    this.cluster_ = pVar.K();
                                } else if (L != 18) {
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
                                    this.runtimeKey_ = pVar.K();
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
    public static final class UpgradeConfig extends GeneratedMessageV3 implements f {
        public static final int ENABLED_FIELD_NUMBER = 2;
        public static final int UPGRADE_TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private BoolValue enabled_;
        private byte memoizedIsInitialized;
        private volatile Object upgradeType_;
        private static final UpgradeConfig DEFAULT_INSTANCE = new UpgradeConfig();
        private static final e2<UpgradeConfig> PARSER = new a();

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
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Object f47171e;

            /* renamed from: f  reason: collision with root package name */
            private BoolValue f47172f;

            /* renamed from: g  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47173g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.V.d(UpgradeConfig.class, b.class);
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
                upgradeConfig.upgradeType_ = this.f47171e;
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47173g;
                if (q2Var == null) {
                    upgradeConfig.enabled_ = this.f47172f;
                } else {
                    upgradeConfig.enabled_ = q2Var.b();
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

            public b d0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47173g;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f47172f;
                    if (boolValue2 != null) {
                        this.f47172f = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f47172f = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.UpgradeConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.UpgradeConfig.access$7700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$UpgradeConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.UpgradeConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$UpgradeConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.UpgradeConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.UpgradeConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$UpgradeConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof UpgradeConfig) {
                    return h0((UpgradeConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.U;
            }

            public b h0(UpgradeConfig upgradeConfig) {
                if (upgradeConfig == UpgradeConfig.getDefaultInstance()) {
                    return this;
                }
                if (!upgradeConfig.getUpgradeType().isEmpty()) {
                    this.f47171e = upgradeConfig.upgradeType_;
                    R();
                }
                if (upgradeConfig.hasEnabled()) {
                    d0(upgradeConfig.getEnabled());
                }
                z(((GeneratedMessageV3) upgradeConfig).unknownFields);
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
                this.f47171e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47171e = "";
                b0();
            }
        }

        /* synthetic */ UpgradeConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static UpgradeConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.U;
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
                return (!hasEnabled() || getEnabled().equals(upgradeConfig.getEnabled())) && this.unknownFields.equals(upgradeConfig.unknownFields);
            }
            return false;
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
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.V.d(UpgradeConfig.class, b.class);
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
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ UpgradeConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(UpgradeConfig upgradeConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(upgradeConfig);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
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
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                this.upgradeType_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                BoolValue boolValue = this.enabled_;
                                BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.enabled_ = boolValue2;
                                if (builder != null) {
                                    builder.d0(boolValue2);
                                    this.enabled_ = builder.I();
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
        static final /* synthetic */ int[] f47174a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f47175b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f47176c;

        static {
            int[] iArr = new int[HostRewriteSpecifierCase.values().length];
            f47176c = iArr;
            try {
                iArr[HostRewriteSpecifierCase.HOST_REWRITE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47176c[HostRewriteSpecifierCase.AUTO_HOST_REWRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47176c[HostRewriteSpecifierCase.AUTO_HOST_REWRITE_HEADER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47176c[HostRewriteSpecifierCase.HOSTREWRITESPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ClusterSpecifierCase.values().length];
            f47175b = iArr2;
            try {
                iArr2[ClusterSpecifierCase.CLUSTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f47175b[ClusterSpecifierCase.CLUSTER_HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f47175b[ClusterSpecifierCase.WEIGHTED_CLUSTERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f47175b[ClusterSpecifierCase.CLUSTERSPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[HashPolicy.PolicySpecifierCase.values().length];
            f47174a = iArr3;
            try {
                iArr3[HashPolicy.PolicySpecifierCase.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f47174a[HashPolicy.PolicySpecifierCase.COOKIE.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f47174a[HashPolicy.PolicySpecifierCase.CONNECTION_PROPERTIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f47174a[HashPolicy.PolicySpecifierCase.QUERY_PARAMETER.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f47174a[HashPolicy.PolicySpecifierCase.FILTER_STATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f47174a[HashPolicy.PolicySpecifierCase.POLICYSPECIFIER_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements k {
        private q2<RequestMirrorPolicy, RequestMirrorPolicy.b, e> A;
        private List<RequestMirrorPolicy> B;
        private q2<HedgePolicy, HedgePolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.f> B3;
        private l2<RequestMirrorPolicy, RequestMirrorPolicy.b, e> C;
        private int D;
        private List<RateLimit> E;
        private l2<RateLimit, RateLimit.d, h> F;
        private BoolValue G;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> H;
        private List<HashPolicy> I;
        private l2<HashPolicy, HashPolicy.b, d> J;
        private CorsPolicy K;
        private q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.a> L;
        private Duration M;
        private q2<Duration, Duration.b, v> N;
        private Duration O;
        private q2<Duration, Duration.b, v> P;
        private List<UpgradeConfig> Q;
        private l2<UpgradeConfig, UpgradeConfig.b, f> R;
        private UInt32Value V1;
        private HedgePolicy V2;

        /* renamed from: a1  reason: collision with root package name */
        private int f47177a1;

        /* renamed from: a2  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47178a2;

        /* renamed from: e  reason: collision with root package name */
        private int f47179e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47180f;

        /* renamed from: g  reason: collision with root package name */
        private int f47181g;

        /* renamed from: h  reason: collision with root package name */
        private Object f47182h;

        /* renamed from: i  reason: collision with root package name */
        private int f47183i;

        /* renamed from: j  reason: collision with root package name */
        private q2<WeightedCluster, WeightedCluster.b, r> f47184j;

        /* renamed from: k  reason: collision with root package name */
        private int f47185k;

        /* renamed from: l  reason: collision with root package name */
        private Metadata f47186l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Metadata, Metadata.b, d0> f47187m;

        /* renamed from: n  reason: collision with root package name */
        private Object f47188n;

        /* renamed from: o  reason: collision with root package name */
        private RegexMatchAndSubstitute f47189o;

        /* renamed from: p  reason: collision with root package name */
        private q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.h> f47190p;

        /* renamed from: q  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47191q;

        /* renamed from: r  reason: collision with root package name */
        private Duration f47192r;

        /* renamed from: s  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47193s;

        /* renamed from: t  reason: collision with root package name */
        private Duration f47194t;

        /* renamed from: u  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47195u;

        /* renamed from: v  reason: collision with root package name */
        private RetryPolicy f47196v;

        /* renamed from: w  reason: collision with root package name */
        private q2<RetryPolicy, RetryPolicy.c, j> f47197w;

        /* renamed from: x  reason: collision with root package name */
        private Any f47198x;

        /* renamed from: y  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f47199y;

        /* renamed from: z  reason: collision with root package name */
        private RequestMirrorPolicy f47200z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47183i & 4) == 0) {
                this.I = new ArrayList(this.I);
                this.f47183i |= 4;
            }
        }

        private void b0() {
            if ((this.f47183i & 2) == 0) {
                this.E = new ArrayList(this.E);
                this.f47183i |= 2;
            }
        }

        private void d0() {
            if ((this.f47183i & 1) == 0) {
                this.B = new ArrayList(this.B);
                this.f47183i |= 1;
            }
        }

        private void e0() {
            if ((this.f47183i & 8) == 0) {
                this.Q = new ArrayList(this.Q);
                this.f47183i |= 8;
            }
        }

        private l2<HashPolicy, HashPolicy.b, d> h0() {
            if (this.J == null) {
                this.J = new l2<>(this.I, (this.f47183i & 4) != 0, H(), O());
                this.I = null;
            }
            return this.J;
        }

        private l2<RateLimit, RateLimit.d, h> i0() {
            if (this.F == null) {
                this.F = new l2<>(this.E, (this.f47183i & 2) != 0, H(), O());
                this.E = null;
            }
            return this.F;
        }

        private l2<RequestMirrorPolicy, RequestMirrorPolicy.b, e> j0() {
            if (this.C == null) {
                this.C = new l2<>(this.B, (this.f47183i & 1) != 0, H(), O());
                this.B = null;
            }
            return this.C;
        }

        private l2<UpgradeConfig, UpgradeConfig.b, f> k0() {
            if (this.R == null) {
                this.R = new l2<>(this.Q, (this.f47183i & 8) != 0, H(), O());
                this.Q = null;
            }
            return this.R;
        }

        private void l0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                j0();
                i0();
                h0();
                k0();
            }
        }

        public c B0(RegexMatchAndSubstitute regexMatchAndSubstitute) {
            q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.h> q2Var = this.f47190p;
            if (q2Var == null) {
                RegexMatchAndSubstitute regexMatchAndSubstitute2 = this.f47189o;
                if (regexMatchAndSubstitute2 != null) {
                    this.f47189o = RegexMatchAndSubstitute.newBuilder(regexMatchAndSubstitute2).g0(regexMatchAndSubstitute).I();
                } else {
                    this.f47189o = regexMatchAndSubstitute;
                }
                R();
            } else {
                q2Var.e(regexMatchAndSubstitute);
            }
            return this;
        }

        @Deprecated
        public c D0(RequestMirrorPolicy requestMirrorPolicy) {
            q2<RequestMirrorPolicy, RequestMirrorPolicy.b, e> q2Var = this.A;
            if (q2Var == null) {
                RequestMirrorPolicy requestMirrorPolicy2 = this.f47200z;
                if (requestMirrorPolicy2 != null) {
                    this.f47200z = RequestMirrorPolicy.newBuilder(requestMirrorPolicy2).g0(requestMirrorPolicy).I();
                } else {
                    this.f47200z = requestMirrorPolicy;
                }
                R();
            } else {
                q2Var.e(requestMirrorPolicy);
            }
            return this;
        }

        public c H0(RetryPolicy retryPolicy) {
            q2<RetryPolicy, RetryPolicy.c, j> q2Var = this.f47197w;
            if (q2Var == null) {
                RetryPolicy retryPolicy2 = this.f47196v;
                if (retryPolicy2 != null) {
                    this.f47196v = RetryPolicy.newBuilder(retryPolicy2).n0(retryPolicy).I();
                } else {
                    this.f47196v = retryPolicy;
                }
                R();
            } else {
                q2Var.e(retryPolicy);
            }
            return this;
        }

        public c I0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47199y;
            if (q2Var == null) {
                Any any2 = this.f47198x;
                if (any2 != null) {
                    this.f47198x = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f47198x = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
            return this;
        }

        public c J0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47193s;
            if (q2Var == null) {
                Duration duration2 = this.f47192r;
                if (duration2 != null) {
                    this.f47192r = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47192r = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.F.d(RouteAction.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: K0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c L0(WeightedCluster weightedCluster) {
            q2<WeightedCluster, WeightedCluster.b, r> q2Var = this.f47184j;
            if (q2Var == null) {
                if (this.f47179e == 3 && this.f47180f != WeightedCluster.getDefaultInstance()) {
                    this.f47180f = WeightedCluster.newBuilder((WeightedCluster) this.f47180f).i0(weightedCluster).I();
                } else {
                    this.f47180f = weightedCluster;
                }
                R();
            } else {
                if (this.f47179e == 3) {
                    q2Var.e(weightedCluster);
                }
                this.f47184j.g(weightedCluster);
            }
            this.f47179e = 3;
            return this;
        }

        public c M0(int i9) {
            this.f47185k = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: N0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c O0(int i9) {
            this.f47177a1 = i9;
            R();
            return this;
        }

        public c Q0(int i9) {
            this.D = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: S0 */
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
            if (this.f47179e == 1) {
                routeAction.clusterSpecifier_ = this.f47180f;
            }
            if (this.f47179e == 2) {
                routeAction.clusterSpecifier_ = this.f47180f;
            }
            if (this.f47179e == 3) {
                q2<WeightedCluster, WeightedCluster.b, r> q2Var = this.f47184j;
                if (q2Var == null) {
                    routeAction.clusterSpecifier_ = this.f47180f;
                } else {
                    routeAction.clusterSpecifier_ = q2Var.b();
                }
            }
            routeAction.clusterNotFoundResponseCode_ = this.f47185k;
            q2<Metadata, Metadata.b, d0> q2Var2 = this.f47187m;
            if (q2Var2 == null) {
                routeAction.metadataMatch_ = this.f47186l;
            } else {
                routeAction.metadataMatch_ = q2Var2.b();
            }
            routeAction.prefixRewrite_ = this.f47188n;
            q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.h> q2Var3 = this.f47190p;
            if (q2Var3 == null) {
                routeAction.regexRewrite_ = this.f47189o;
            } else {
                routeAction.regexRewrite_ = q2Var3.b();
            }
            if (this.f47181g == 6) {
                routeAction.hostRewriteSpecifier_ = this.f47182h;
            }
            if (this.f47181g == 7) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var4 = this.f47191q;
                if (q2Var4 == null) {
                    routeAction.hostRewriteSpecifier_ = this.f47182h;
                } else {
                    routeAction.hostRewriteSpecifier_ = q2Var4.b();
                }
            }
            if (this.f47181g == 29) {
                routeAction.hostRewriteSpecifier_ = this.f47182h;
            }
            q2<Duration, Duration.b, v> q2Var5 = this.f47193s;
            if (q2Var5 == null) {
                routeAction.timeout_ = this.f47192r;
            } else {
                routeAction.timeout_ = q2Var5.b();
            }
            q2<Duration, Duration.b, v> q2Var6 = this.f47195u;
            if (q2Var6 == null) {
                routeAction.idleTimeout_ = this.f47194t;
            } else {
                routeAction.idleTimeout_ = q2Var6.b();
            }
            q2<RetryPolicy, RetryPolicy.c, j> q2Var7 = this.f47197w;
            if (q2Var7 == null) {
                routeAction.retryPolicy_ = this.f47196v;
            } else {
                routeAction.retryPolicy_ = q2Var7.b();
            }
            q2<Any, Any.b, com.google.protobuf.f> q2Var8 = this.f47199y;
            if (q2Var8 == null) {
                routeAction.retryPolicyTypedConfig_ = this.f47198x;
            } else {
                routeAction.retryPolicyTypedConfig_ = q2Var8.b();
            }
            q2<RequestMirrorPolicy, RequestMirrorPolicy.b, e> q2Var9 = this.A;
            if (q2Var9 == null) {
                routeAction.requestMirrorPolicy_ = this.f47200z;
            } else {
                routeAction.requestMirrorPolicy_ = q2Var9.b();
            }
            l2<RequestMirrorPolicy, RequestMirrorPolicy.b, e> l2Var = this.C;
            if (l2Var == null) {
                if ((this.f47183i & 1) != 0) {
                    this.B = Collections.unmodifiableList(this.B);
                    this.f47183i &= -2;
                }
                routeAction.requestMirrorPolicies_ = this.B;
            } else {
                routeAction.requestMirrorPolicies_ = l2Var.e();
            }
            routeAction.priority_ = this.D;
            l2<RateLimit, RateLimit.d, h> l2Var2 = this.F;
            if (l2Var2 == null) {
                if ((this.f47183i & 2) != 0) {
                    this.E = Collections.unmodifiableList(this.E);
                    this.f47183i &= -3;
                }
                routeAction.rateLimits_ = this.E;
            } else {
                routeAction.rateLimits_ = l2Var2.e();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var10 = this.H;
            if (q2Var10 == null) {
                routeAction.includeVhRateLimits_ = this.G;
            } else {
                routeAction.includeVhRateLimits_ = q2Var10.b();
            }
            l2<HashPolicy, HashPolicy.b, d> l2Var3 = this.J;
            if (l2Var3 == null) {
                if ((this.f47183i & 4) != 0) {
                    this.I = Collections.unmodifiableList(this.I);
                    this.f47183i &= -5;
                }
                routeAction.hashPolicy_ = this.I;
            } else {
                routeAction.hashPolicy_ = l2Var3.e();
            }
            q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.a> q2Var11 = this.L;
            if (q2Var11 == null) {
                routeAction.cors_ = this.K;
            } else {
                routeAction.cors_ = q2Var11.b();
            }
            q2<Duration, Duration.b, v> q2Var12 = this.N;
            if (q2Var12 == null) {
                routeAction.maxGrpcTimeout_ = this.M;
            } else {
                routeAction.maxGrpcTimeout_ = q2Var12.b();
            }
            q2<Duration, Duration.b, v> q2Var13 = this.P;
            if (q2Var13 == null) {
                routeAction.grpcTimeoutOffset_ = this.O;
            } else {
                routeAction.grpcTimeoutOffset_ = q2Var13.b();
            }
            l2<UpgradeConfig, UpgradeConfig.b, f> l2Var4 = this.R;
            if (l2Var4 == null) {
                if ((this.f47183i & 8) != 0) {
                    this.Q = Collections.unmodifiableList(this.Q);
                    this.f47183i &= -9;
                }
                routeAction.upgradeConfigs_ = this.Q;
            } else {
                routeAction.upgradeConfigs_ = l2Var4.e();
            }
            routeAction.internalRedirectAction_ = this.f47177a1;
            q2<UInt32Value, UInt32Value.b, e3> q2Var14 = this.f47178a2;
            if (q2Var14 == null) {
                routeAction.maxInternalRedirects_ = this.V1;
            } else {
                routeAction.maxInternalRedirects_ = q2Var14.b();
            }
            q2<HedgePolicy, HedgePolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.f> q2Var15 = this.B3;
            if (q2Var15 == null) {
                routeAction.hedgePolicy_ = this.V2;
            } else {
                routeAction.hedgePolicy_ = q2Var15.b();
            }
            routeAction.clusterSpecifierCase_ = this.f47179e;
            routeAction.hostRewriteSpecifierCase_ = this.f47181g;
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
            return l.E;
        }

        public c m0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47191q;
            if (q2Var == null) {
                if (this.f47181g == 7 && this.f47182h != BoolValue.getDefaultInstance()) {
                    this.f47182h = BoolValue.newBuilder((BoolValue) this.f47182h).d0(boolValue).I();
                } else {
                    this.f47182h = boolValue;
                }
                R();
            } else {
                if (this.f47181g == 7) {
                    q2Var.e(boolValue);
                }
                this.f47191q.g(boolValue);
            }
            this.f47181g = 7;
            return this;
        }

        public c n0(CorsPolicy corsPolicy) {
            q2<CorsPolicy, CorsPolicy.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.a> q2Var = this.L;
            if (q2Var == null) {
                CorsPolicy corsPolicy2 = this.K;
                if (corsPolicy2 != null) {
                    this.K = CorsPolicy.newBuilder(corsPolicy2).n0(corsPolicy).I();
                } else {
                    this.K = corsPolicy;
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.access$11400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction$c");
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
                M0(routeAction.getClusterNotFoundResponseCodeValue());
            }
            if (routeAction.hasMetadataMatch()) {
                z0(routeAction.getMetadataMatch());
            }
            if (!routeAction.getPrefixRewrite().isEmpty()) {
                this.f47188n = routeAction.prefixRewrite_;
                R();
            }
            if (routeAction.hasRegexRewrite()) {
                B0(routeAction.getRegexRewrite());
            }
            if (routeAction.hasTimeout()) {
                J0(routeAction.getTimeout());
            }
            if (routeAction.hasIdleTimeout()) {
                u0(routeAction.getIdleTimeout());
            }
            if (routeAction.hasRetryPolicy()) {
                H0(routeAction.getRetryPolicy());
            }
            if (routeAction.hasRetryPolicyTypedConfig()) {
                I0(routeAction.getRetryPolicyTypedConfig());
            }
            if (routeAction.hasRequestMirrorPolicy()) {
                D0(routeAction.getRequestMirrorPolicy());
            }
            if (this.C == null) {
                if (!routeAction.requestMirrorPolicies_.isEmpty()) {
                    if (this.B.isEmpty()) {
                        this.B = routeAction.requestMirrorPolicies_;
                        this.f47183i &= -2;
                    } else {
                        d0();
                        this.B.addAll(routeAction.requestMirrorPolicies_);
                    }
                    R();
                }
            } else if (!routeAction.requestMirrorPolicies_.isEmpty()) {
                if (this.C.k()) {
                    this.C.f();
                    this.C = null;
                    this.B = routeAction.requestMirrorPolicies_;
                    this.f47183i &= -2;
                    this.C = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.C.b(routeAction.requestMirrorPolicies_);
                }
            }
            if (routeAction.priority_ != 0) {
                Q0(routeAction.getPriorityValue());
            }
            if (this.F == null) {
                if (!routeAction.rateLimits_.isEmpty()) {
                    if (this.E.isEmpty()) {
                        this.E = routeAction.rateLimits_;
                        this.f47183i &= -3;
                    } else {
                        b0();
                        this.E.addAll(routeAction.rateLimits_);
                    }
                    R();
                }
            } else if (!routeAction.rateLimits_.isEmpty()) {
                if (this.F.k()) {
                    this.F.f();
                    this.F = null;
                    this.E = routeAction.rateLimits_;
                    this.f47183i &= -3;
                    this.F = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.F.b(routeAction.rateLimits_);
                }
            }
            if (routeAction.hasIncludeVhRateLimits()) {
                v0(routeAction.getIncludeVhRateLimits());
            }
            if (this.J == null) {
                if (!routeAction.hashPolicy_.isEmpty()) {
                    if (this.I.isEmpty()) {
                        this.I = routeAction.hashPolicy_;
                        this.f47183i &= -5;
                    } else {
                        a0();
                        this.I.addAll(routeAction.hashPolicy_);
                    }
                    R();
                }
            } else if (!routeAction.hashPolicy_.isEmpty()) {
                if (this.J.k()) {
                    this.J.f();
                    this.J = null;
                    this.I = routeAction.hashPolicy_;
                    this.f47183i &= -5;
                    this.J = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.J.b(routeAction.hashPolicy_);
                }
            }
            if (routeAction.hasCors()) {
                n0(routeAction.getCors());
            }
            if (routeAction.hasMaxGrpcTimeout()) {
                x0(routeAction.getMaxGrpcTimeout());
            }
            if (routeAction.hasGrpcTimeoutOffset()) {
                s0(routeAction.getGrpcTimeoutOffset());
            }
            if (this.R == null) {
                if (!routeAction.upgradeConfigs_.isEmpty()) {
                    if (this.Q.isEmpty()) {
                        this.Q = routeAction.upgradeConfigs_;
                        this.f47183i &= -9;
                    } else {
                        e0();
                        this.Q.addAll(routeAction.upgradeConfigs_);
                    }
                    R();
                }
            } else if (!routeAction.upgradeConfigs_.isEmpty()) {
                if (this.R.k()) {
                    this.R.f();
                    this.R = null;
                    this.Q = routeAction.upgradeConfigs_;
                    this.f47183i &= -9;
                    this.R = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.R.b(routeAction.upgradeConfigs_);
                }
            }
            if (routeAction.internalRedirectAction_ != 0) {
                O0(routeAction.getInternalRedirectActionValue());
            }
            if (routeAction.hasMaxInternalRedirects()) {
                y0(routeAction.getMaxInternalRedirects());
            }
            if (routeAction.hasHedgePolicy()) {
                t0(routeAction.getHedgePolicy());
            }
            int i9 = b.f47175b[routeAction.getClusterSpecifierCase().ordinal()];
            if (i9 == 1) {
                this.f47179e = 1;
                this.f47180f = routeAction.clusterSpecifier_;
                R();
            } else if (i9 == 2) {
                this.f47179e = 2;
                this.f47180f = routeAction.clusterSpecifier_;
                R();
            } else if (i9 == 3) {
                L0(routeAction.getWeightedClusters());
            }
            int i10 = b.f47176c[routeAction.getHostRewriteSpecifierCase().ordinal()];
            if (i10 == 1) {
                this.f47181g = 6;
                this.f47182h = routeAction.hostRewriteSpecifier_;
                R();
            } else if (i10 == 2) {
                m0(routeAction.getAutoHostRewrite());
            } else if (i10 == 3) {
                this.f47181g = 29;
                this.f47182h = routeAction.hostRewriteSpecifier_;
                R();
            }
            z(((GeneratedMessageV3) routeAction).unknownFields);
            R();
            return this;
        }

        public c s0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.P;
            if (q2Var == null) {
                Duration duration2 = this.O;
                if (duration2 != null) {
                    this.O = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.O = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c t0(HedgePolicy hedgePolicy) {
            q2<HedgePolicy, HedgePolicy.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.f> q2Var = this.B3;
            if (q2Var == null) {
                HedgePolicy hedgePolicy2 = this.V2;
                if (hedgePolicy2 != null) {
                    this.V2 = HedgePolicy.newBuilder(hedgePolicy2).h0(hedgePolicy).I();
                } else {
                    this.V2 = hedgePolicy;
                }
                R();
            } else {
                q2Var.e(hedgePolicy);
            }
            return this;
        }

        public c u0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47195u;
            if (q2Var == null) {
                Duration duration2 = this.f47194t;
                if (duration2 != null) {
                    this.f47194t = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47194t = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c v0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.H;
            if (q2Var == null) {
                BoolValue boolValue2 = this.G;
                if (boolValue2 != null) {
                    this.G = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.G = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
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

        public c y0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47178a2;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.V1;
                if (uInt32Value2 != null) {
                    this.V1 = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.V1 = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c z0(Metadata metadata) {
            q2<Metadata, Metadata.b, d0> q2Var = this.f47187m;
            if (q2Var == null) {
                Metadata metadata2 = this.f47186l;
                if (metadata2 != null) {
                    this.f47186l = Metadata.newBuilder(metadata2).i0(metadata).I();
                } else {
                    this.f47186l = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47179e = 0;
            this.f47181g = 0;
            this.f47185k = 0;
            this.f47188n = "";
            this.B = Collections.emptyList();
            this.D = 0;
            this.E = Collections.emptyList();
            this.I = Collections.emptyList();
            this.Q = Collections.emptyList();
            this.f47177a1 = 0;
            l0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47179e = 0;
            this.f47181g = 0;
            this.f47185k = 0;
            this.f47188n = "";
            this.B = Collections.emptyList();
            this.D = 0;
            this.E = Collections.emptyList();
            this.I = Collections.emptyList();
            this.Q = Collections.emptyList();
            this.f47177a1 = 0;
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

    /* synthetic */ RouteAction(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RouteAction getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.E;
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
                                if ((!hasRetryPolicyTypedConfig() || getRetryPolicyTypedConfig().equals(routeAction.getRetryPolicyTypedConfig())) && hasRequestMirrorPolicy() == routeAction.hasRequestMirrorPolicy()) {
                                    if ((!hasRequestMirrorPolicy() || getRequestMirrorPolicy().equals(routeAction.getRequestMirrorPolicy())) && getRequestMirrorPoliciesList().equals(routeAction.getRequestMirrorPoliciesList()) && this.priority_ == routeAction.priority_ && getRateLimitsList().equals(routeAction.getRateLimitsList()) && hasIncludeVhRateLimits() == routeAction.hasIncludeVhRateLimits()) {
                                        if ((!hasIncludeVhRateLimits() || getIncludeVhRateLimits().equals(routeAction.getIncludeVhRateLimits())) && getHashPolicyList().equals(routeAction.getHashPolicyList()) && hasCors() == routeAction.hasCors()) {
                                            if ((!hasCors() || getCors().equals(routeAction.getCors())) && hasMaxGrpcTimeout() == routeAction.hasMaxGrpcTimeout()) {
                                                if ((!hasMaxGrpcTimeout() || getMaxGrpcTimeout().equals(routeAction.getMaxGrpcTimeout())) && hasGrpcTimeoutOffset() == routeAction.hasGrpcTimeoutOffset()) {
                                                    if ((!hasGrpcTimeoutOffset() || getGrpcTimeoutOffset().equals(routeAction.getGrpcTimeoutOffset())) && getUpgradeConfigsList().equals(routeAction.getUpgradeConfigsList()) && this.internalRedirectAction_ == routeAction.internalRedirectAction_ && hasMaxInternalRedirects() == routeAction.hasMaxInternalRedirects()) {
                                                        if ((!hasMaxInternalRedirects() || getMaxInternalRedirects().equals(routeAction.getMaxInternalRedirects())) && hasHedgePolicy() == routeAction.hasHedgePolicy()) {
                                                            if ((!hasHedgePolicy() || getHedgePolicy().equals(routeAction.getHedgePolicy())) && getClusterSpecifierCase().equals(routeAction.getClusterSpecifierCase())) {
                                                                int i9 = this.clusterSpecifierCase_;
                                                                if (i9 != 1) {
                                                                    if (i9 != 2) {
                                                                        if (i9 == 3 && !getWeightedClusters().equals(routeAction.getWeightedClusters())) {
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
                                                                            if (i10 == 29 && !getAutoHostRewriteHeader().equals(routeAction.getAutoHostRewriteHeader())) {
                                                                                return false;
                                                                            }
                                                                        } else if (!getAutoHostRewrite().equals(routeAction.getAutoHostRewrite())) {
                                                                            return false;
                                                                        }
                                                                    } else if (!getHostRewrite().equals(routeAction.getHostRewrite())) {
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

    public BoolValue getAutoHostRewrite() {
        if (this.hostRewriteSpecifierCase_ == 7) {
            return (BoolValue) this.hostRewriteSpecifier_;
        }
        return BoolValue.getDefaultInstance();
    }

    public String getAutoHostRewriteHeader() {
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

    public ByteString getAutoHostRewriteHeaderBytes() {
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

    public CorsPolicy getCors() {
        CorsPolicy corsPolicy = this.cors_;
        return corsPolicy == null ? CorsPolicy.getDefaultInstance() : corsPolicy;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.a getCorsOrBuilder() {
        return getCors();
    }

    public Duration getGrpcTimeoutOffset() {
        Duration duration = this.grpcTimeoutOffset_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getGrpcTimeoutOffsetOrBuilder() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.f getHedgePolicyOrBuilder() {
        return getHedgePolicy();
    }

    public String getHostRewrite() {
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

    public ByteString getHostRewriteBytes() {
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

    public HostRewriteSpecifierCase getHostRewriteSpecifierCase() {
        return HostRewriteSpecifierCase.forNumber(this.hostRewriteSpecifierCase_);
    }

    public Duration getIdleTimeout() {
        Duration duration = this.idleTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getIdleTimeoutOrBuilder() {
        return getIdleTimeout();
    }

    public BoolValue getIncludeVhRateLimits() {
        BoolValue boolValue = this.includeVhRateLimits_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getIncludeVhRateLimitsOrBuilder() {
        return getIncludeVhRateLimits();
    }

    public InternalRedirectAction getInternalRedirectAction() {
        InternalRedirectAction valueOf = InternalRedirectAction.valueOf(this.internalRedirectAction_);
        return valueOf == null ? InternalRedirectAction.UNRECOGNIZED : valueOf;
    }

    public int getInternalRedirectActionValue() {
        return this.internalRedirectAction_;
    }

    public Duration getMaxGrpcTimeout() {
        Duration duration = this.maxGrpcTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getMaxGrpcTimeoutOrBuilder() {
        return getMaxGrpcTimeout();
    }

    public UInt32Value getMaxInternalRedirects() {
        UInt32Value uInt32Value = this.maxInternalRedirects_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxInternalRedirectsOrBuilder() {
        return getMaxInternalRedirects();
    }

    public Metadata getMetadataMatch() {
        Metadata metadata = this.metadataMatch_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public d0 getMetadataMatchOrBuilder() {
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

    public h getRateLimitsOrBuilder(int i9) {
        return this.rateLimits_.get(i9);
    }

    public List<? extends h> getRateLimitsOrBuilderList() {
        return this.rateLimits_;
    }

    public RegexMatchAndSubstitute getRegexRewrite() {
        RegexMatchAndSubstitute regexMatchAndSubstitute = this.regexRewrite_;
        return regexMatchAndSubstitute == null ? RegexMatchAndSubstitute.getDefaultInstance() : regexMatchAndSubstitute;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.h getRegexRewriteOrBuilder() {
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

    public e getRequestMirrorPoliciesOrBuilder(int i9) {
        return this.requestMirrorPolicies_.get(i9);
    }

    public List<? extends e> getRequestMirrorPoliciesOrBuilderList() {
        return this.requestMirrorPolicies_;
    }

    @Deprecated
    public RequestMirrorPolicy getRequestMirrorPolicy() {
        RequestMirrorPolicy requestMirrorPolicy = this.requestMirrorPolicy_;
        return requestMirrorPolicy == null ? RequestMirrorPolicy.getDefaultInstance() : requestMirrorPolicy;
    }

    @Deprecated
    public e getRequestMirrorPolicyOrBuilder() {
        return getRequestMirrorPolicy();
    }

    public RetryPolicy getRetryPolicy() {
        RetryPolicy retryPolicy = this.retryPolicy_;
        return retryPolicy == null ? RetryPolicy.getDefaultInstance() : retryPolicy;
    }

    public j getRetryPolicyOrBuilder() {
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
        if (this.requestMirrorPolicy_ != null) {
            computeStringSize += CodedOutputStream.G(10, getRequestMirrorPolicy());
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
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Duration getTimeout() {
        Duration duration = this.timeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getTimeoutOrBuilder() {
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

    public f getUpgradeConfigsOrBuilder(int i9) {
        return this.upgradeConfigs_.get(i9);
    }

    public List<? extends f> getUpgradeConfigsOrBuilderList() {
        return this.upgradeConfigs_;
    }

    public WeightedCluster getWeightedClusters() {
        if (this.clusterSpecifierCase_ == 3) {
            return (WeightedCluster) this.clusterSpecifier_;
        }
        return WeightedCluster.getDefaultInstance();
    }

    public r getWeightedClustersOrBuilder() {
        if (this.clusterSpecifierCase_ == 3) {
            return (WeightedCluster) this.clusterSpecifier_;
        }
        return WeightedCluster.getDefaultInstance();
    }

    public boolean hasAutoHostRewrite() {
        return this.hostRewriteSpecifierCase_ == 7;
    }

    public boolean hasAutoHostRewriteHeader() {
        return this.hostRewriteSpecifierCase_ == 29;
    }

    public boolean hasCluster() {
        return this.clusterSpecifierCase_ == 1;
    }

    public boolean hasClusterHeader() {
        return this.clusterSpecifierCase_ == 2;
    }

    public boolean hasCors() {
        return this.cors_ != null;
    }

    public boolean hasGrpcTimeoutOffset() {
        return this.grpcTimeoutOffset_ != null;
    }

    public boolean hasHedgePolicy() {
        return this.hedgePolicy_ != null;
    }

    public boolean hasHostRewrite() {
        return this.hostRewriteSpecifierCase_ == 6;
    }

    public boolean hasIdleTimeout() {
        return this.idleTimeout_ != null;
    }

    public boolean hasIncludeVhRateLimits() {
        return this.includeVhRateLimits_ != null;
    }

    public boolean hasMaxGrpcTimeout() {
        return this.maxGrpcTimeout_ != null;
    }

    public boolean hasMaxInternalRedirects() {
        return this.maxInternalRedirects_ != null;
    }

    public boolean hasMetadataMatch() {
        return this.metadataMatch_ != null;
    }

    public boolean hasRegexRewrite() {
        return this.regexRewrite_ != null;
    }

    @Deprecated
    public boolean hasRequestMirrorPolicy() {
        return this.requestMirrorPolicy_ != null;
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

    /* JADX WARN: Removed duplicated region for block: B:69:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01fe  */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hashCode() {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteAction.hashCode():int");
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.F.d(RouteAction.class, c.class);
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
        if (this.requestMirrorPolicy_ != null) {
            codedOutputStream.L0(10, getRequestMirrorPolicy());
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
                                WeightedCluster.b builder = this.clusterSpecifierCase_ == 3 ? ((WeightedCluster) this.clusterSpecifier_).toBuilder() : null;
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
                                    builder2.i0(metadata2);
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
                            case 82:
                                RequestMirrorPolicy requestMirrorPolicy = this.requestMirrorPolicy_;
                                RequestMirrorPolicy.b builder6 = requestMirrorPolicy != null ? requestMirrorPolicy.toBuilder() : null;
                                RequestMirrorPolicy requestMirrorPolicy2 = (RequestMirrorPolicy) pVar.B(RequestMirrorPolicy.parser(), f0Var);
                                this.requestMirrorPolicy_ = requestMirrorPolicy2;
                                if (builder6 != null) {
                                    builder6.g0(requestMirrorPolicy2);
                                    this.requestMirrorPolicy_ = builder6.I();
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
                                BoolValue.b builder7 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.includeVhRateLimits_ = boolValue2;
                                if (builder7 != null) {
                                    builder7.d0(boolValue2);
                                    this.includeVhRateLimits_ = builder7.I();
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
                                CorsPolicy.c builder8 = corsPolicy != null ? corsPolicy.toBuilder() : null;
                                CorsPolicy corsPolicy2 = (CorsPolicy) pVar.B(CorsPolicy.parser(), f0Var);
                                this.cors_ = corsPolicy2;
                                if (builder8 != null) {
                                    builder8.n0(corsPolicy2);
                                    this.cors_ = builder8.I();
                                } else {
                                    continue;
                                }
                            case 160:
                                this.clusterNotFoundResponseCode_ = pVar.u();
                                continue;
                            case 186:
                                Duration duration3 = this.maxGrpcTimeout_;
                                Duration.b builder9 = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.maxGrpcTimeout_ = duration4;
                                if (builder9 != null) {
                                    builder9.e0(duration4);
                                    this.maxGrpcTimeout_ = builder9.I();
                                } else {
                                    continue;
                                }
                            case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                                Duration duration5 = this.idleTimeout_;
                                Duration.b builder10 = duration5 != null ? duration5.toBuilder() : null;
                                Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.idleTimeout_ = duration6;
                                if (builder10 != null) {
                                    builder10.e0(duration6);
                                    this.idleTimeout_ = builder10.I();
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
                                HedgePolicy.b builder11 = hedgePolicy != null ? hedgePolicy.toBuilder() : null;
                                HedgePolicy hedgePolicy2 = (HedgePolicy) pVar.B(HedgePolicy.parser(), f0Var);
                                this.hedgePolicy_ = hedgePolicy2;
                                if (builder11 != null) {
                                    builder11.h0(hedgePolicy2);
                                    this.hedgePolicy_ = builder11.I();
                                } else {
                                    continue;
                                }
                            case 226:
                                Duration duration7 = this.grpcTimeoutOffset_;
                                Duration.b builder12 = duration7 != null ? duration7.toBuilder() : null;
                                Duration duration8 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.grpcTimeoutOffset_ = duration8;
                                if (builder12 != null) {
                                    builder12.e0(duration8);
                                    this.grpcTimeoutOffset_ = builder12.I();
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
                                UInt32Value.b builder13 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxInternalRedirects_ = uInt32Value2;
                                if (builder13 != null) {
                                    builder13.g0(uInt32Value2);
                                    this.maxInternalRedirects_ = builder13.I();
                                } else {
                                    continue;
                                }
                            case 258:
                                RegexMatchAndSubstitute regexMatchAndSubstitute = this.regexRewrite_;
                                RegexMatchAndSubstitute.b builder14 = regexMatchAndSubstitute != null ? regexMatchAndSubstitute.toBuilder() : null;
                                RegexMatchAndSubstitute regexMatchAndSubstitute2 = (RegexMatchAndSubstitute) pVar.B(RegexMatchAndSubstitute.parser(), f0Var);
                                this.regexRewrite_ = regexMatchAndSubstitute2;
                                if (builder14 != null) {
                                    builder14.g0(regexMatchAndSubstitute2);
                                    this.regexRewrite_ = builder14.I();
                                } else {
                                    continue;
                                }
                            case 266:
                                Any any = this.retryPolicyTypedConfig_;
                                Any.b builder15 = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.retryPolicyTypedConfig_ = any2;
                                if (builder15 != null) {
                                    builder15.d0(any2);
                                    this.retryPolicyTypedConfig_ = builder15.I();
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
