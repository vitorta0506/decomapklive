package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RateLimitSettings;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ApiConfigSource extends GeneratedMessageV3 implements d {
    public static final int API_TYPE_FIELD_NUMBER = 1;
    public static final int CLUSTER_NAMES_FIELD_NUMBER = 2;
    public static final int GRPC_SERVICES_FIELD_NUMBER = 4;
    public static final int RATE_LIMIT_SETTINGS_FIELD_NUMBER = 6;
    public static final int REFRESH_DELAY_FIELD_NUMBER = 3;
    public static final int REQUEST_TIMEOUT_FIELD_NUMBER = 5;
    public static final int SET_NODE_ON_FIRST_MESSAGE_ONLY_FIELD_NUMBER = 7;
    public static final int TRANSPORT_API_VERSION_FIELD_NUMBER = 8;
    private static final long serialVersionUID = 0;
    private int apiType_;
    private com.google.protobuf.z0 clusterNames_;
    private List<GrpcService> grpcServices_;
    private byte memoizedIsInitialized;
    private RateLimitSettings rateLimitSettings_;
    private Duration refreshDelay_;
    private Duration requestTimeout_;
    private boolean setNodeOnFirstMessageOnly_;
    private int transportApiVersion_;
    private static final ApiConfigSource DEFAULT_INSTANCE = new ApiConfigSource();
    private static final e2<ApiConfigSource> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ApiType implements h2 {
        DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE(0),
        REST(1),
        GRPC(2),
        DELTA_GRPC(3),
        AGGREGATED_GRPC(5),
        AGGREGATED_DELTA_GRPC(6),
        UNRECOGNIZED(-1);
        
        public static final int AGGREGATED_DELTA_GRPC_VALUE = 6;
        public static final int AGGREGATED_GRPC_VALUE = 5;
        public static final int DELTA_GRPC_VALUE = 3;
        @Deprecated
        public static final int DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE_VALUE = 0;
        public static final int GRPC_VALUE = 2;
        public static final int REST_VALUE = 1;
        private final int value;
        private static final u0.d<ApiType> internalValueMap = new a();
        private static final ApiType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<ApiType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ApiType a(int i9) {
                return ApiType.forNumber(i9);
            }
        }

        ApiType(int i9) {
            this.value = i9;
        }

        public static ApiType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 5) {
                                if (i9 != 6) {
                                    return null;
                                }
                                return AGGREGATED_DELTA_GRPC;
                            }
                            return AGGREGATED_GRPC;
                        }
                        return DELTA_GRPC;
                    }
                    return GRPC;
                }
                return REST;
            }
            return DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE;
        }

        public static final Descriptors.d getDescriptor() {
            return ApiConfigSource.getDescriptor().k().get(0);
        }

        public static u0.d<ApiType> internalGetValueMap() {
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
        public static ApiType valueOf(int i9) {
            return forNumber(i9);
        }

        public static ApiType valueOf(Descriptors.e eVar) {
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
    public class a extends com.google.protobuf.c<ApiConfigSource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ApiConfigSource m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ApiConfigSource(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private int f47773e;

        /* renamed from: f  reason: collision with root package name */
        private int f47774f;

        /* renamed from: g  reason: collision with root package name */
        private int f47775g;

        /* renamed from: h  reason: collision with root package name */
        private com.google.protobuf.z0 f47776h;

        /* renamed from: i  reason: collision with root package name */
        private List<GrpcService> f47777i;

        /* renamed from: j  reason: collision with root package name */
        private l2<GrpcService, GrpcService.c, w> f47778j;

        /* renamed from: k  reason: collision with root package name */
        private Duration f47779k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f47780l;

        /* renamed from: m  reason: collision with root package name */
        private Duration f47781m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f47782n;

        /* renamed from: o  reason: collision with root package name */
        private RateLimitSettings f47783o;

        /* renamed from: p  reason: collision with root package name */
        private q2<RateLimitSettings, RateLimitSettings.b, r0> f47784p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f47785q;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47773e & 1) == 0) {
                this.f47776h = new com.google.protobuf.y0(this.f47776h);
                this.f47773e |= 1;
            }
        }

        private void b0() {
            if ((this.f47773e & 2) == 0) {
                this.f47777i = new ArrayList(this.f47777i);
                this.f47773e |= 2;
            }
        }

        private l2<GrpcService, GrpcService.c, w> e0() {
            if (this.f47778j == null) {
                this.f47778j = new l2<>(this.f47777i, (this.f47773e & 2) != 0, H(), O());
                this.f47777i = null;
            }
            return this.f47778j;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f48243b.d(ApiConfigSource.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ApiConfigSource build() {
            ApiConfigSource I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ApiConfigSource I() {
            ApiConfigSource apiConfigSource = new ApiConfigSource(this, (a) null);
            apiConfigSource.apiType_ = this.f47774f;
            apiConfigSource.transportApiVersion_ = this.f47775g;
            if ((this.f47773e & 1) != 0) {
                this.f47776h = this.f47776h.V0();
                this.f47773e &= -2;
            }
            apiConfigSource.clusterNames_ = this.f47776h;
            l2<GrpcService, GrpcService.c, w> l2Var = this.f47778j;
            if (l2Var == null) {
                if ((this.f47773e & 2) != 0) {
                    this.f47777i = Collections.unmodifiableList(this.f47777i);
                    this.f47773e &= -3;
                }
                apiConfigSource.grpcServices_ = this.f47777i;
            } else {
                apiConfigSource.grpcServices_ = l2Var.e();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47780l;
            if (q2Var == null) {
                apiConfigSource.refreshDelay_ = this.f47779k;
            } else {
                apiConfigSource.refreshDelay_ = q2Var.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f47782n;
            if (q2Var2 == null) {
                apiConfigSource.requestTimeout_ = this.f47781m;
            } else {
                apiConfigSource.requestTimeout_ = q2Var2.b();
            }
            q2<RateLimitSettings, RateLimitSettings.b, r0> q2Var3 = this.f47784p;
            if (q2Var3 == null) {
                apiConfigSource.rateLimitSettings_ = this.f47783o;
            } else {
                apiConfigSource.rateLimitSettings_ = q2Var3.b();
            }
            apiConfigSource.setNodeOnFirstMessageOnly_ = this.f47785q;
            Q();
            return apiConfigSource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ApiConfigSource getDefaultInstanceForType() {
            return ApiConfigSource.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f48242a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof ApiConfigSource) {
                return j0((ApiConfigSource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(ApiConfigSource apiConfigSource) {
            if (apiConfigSource == ApiConfigSource.getDefaultInstance()) {
                return this;
            }
            if (apiConfigSource.apiType_ != 0) {
                o0(apiConfigSource.getApiTypeValue());
            }
            if (apiConfigSource.transportApiVersion_ != 0) {
                s0(apiConfigSource.getTransportApiVersionValue());
            }
            if (!apiConfigSource.clusterNames_.isEmpty()) {
                if (this.f47776h.isEmpty()) {
                    this.f47776h = apiConfigSource.clusterNames_;
                    this.f47773e &= -2;
                } else {
                    a0();
                    this.f47776h.addAll(apiConfigSource.clusterNames_);
                }
                R();
            }
            if (this.f47778j == null) {
                if (!apiConfigSource.grpcServices_.isEmpty()) {
                    if (this.f47777i.isEmpty()) {
                        this.f47777i = apiConfigSource.grpcServices_;
                        this.f47773e &= -3;
                    } else {
                        b0();
                        this.f47777i.addAll(apiConfigSource.grpcServices_);
                    }
                    R();
                }
            } else if (!apiConfigSource.grpcServices_.isEmpty()) {
                if (this.f47778j.k()) {
                    this.f47778j.f();
                    this.f47778j = null;
                    this.f47777i = apiConfigSource.grpcServices_;
                    this.f47773e &= -3;
                    this.f47778j = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f47778j.b(apiConfigSource.grpcServices_);
                }
            }
            if (apiConfigSource.hasRefreshDelay()) {
                l0(apiConfigSource.getRefreshDelay());
            }
            if (apiConfigSource.hasRequestTimeout()) {
                m0(apiConfigSource.getRequestTimeout());
            }
            if (apiConfigSource.hasRateLimitSettings()) {
                k0(apiConfigSource.getRateLimitSettings());
            }
            if (apiConfigSource.getSetNodeOnFirstMessageOnly()) {
                r0(apiConfigSource.getSetNodeOnFirstMessageOnly());
            }
            z(((GeneratedMessageV3) apiConfigSource).unknownFields);
            R();
            return this;
        }

        public b k0(RateLimitSettings rateLimitSettings) {
            q2<RateLimitSettings, RateLimitSettings.b, r0> q2Var = this.f47784p;
            if (q2Var == null) {
                RateLimitSettings rateLimitSettings2 = this.f47783o;
                if (rateLimitSettings2 != null) {
                    this.f47783o = RateLimitSettings.newBuilder(rateLimitSettings2).h0(rateLimitSettings).I();
                } else {
                    this.f47783o = rateLimitSettings;
                }
                R();
            } else {
                q2Var.e(rateLimitSettings);
            }
            return this;
        }

        public b l0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47780l;
            if (q2Var == null) {
                Duration duration2 = this.f47779k;
                if (duration2 != null) {
                    this.f47779k = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47779k = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b m0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47782n;
            if (q2Var == null) {
                Duration duration2 = this.f47781m;
                if (duration2 != null) {
                    this.f47781m = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47781m = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b o0(int i9) {
            this.f47774f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b r0(boolean z10) {
            this.f47785q = z10;
            R();
            return this;
        }

        public b s0(int i9) {
            this.f47775g = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47774f = 0;
            this.f47775g = 0;
            this.f47776h = com.google.protobuf.y0.f15344d;
            this.f47777i = Collections.emptyList();
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47774f = 0;
            this.f47775g = 0;
            this.f47776h = com.google.protobuf.y0.f15344d;
            this.f47777i = Collections.emptyList();
            g0();
        }
    }

    /* synthetic */ ApiConfigSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ApiConfigSource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f48242a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ApiConfigSource parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ApiConfigSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ApiConfigSource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ApiConfigSource> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiConfigSource)) {
            return super.equals(obj);
        }
        ApiConfigSource apiConfigSource = (ApiConfigSource) obj;
        if (this.apiType_ == apiConfigSource.apiType_ && this.transportApiVersion_ == apiConfigSource.transportApiVersion_ && m1612getClusterNamesList().equals(apiConfigSource.m1612getClusterNamesList()) && getGrpcServicesList().equals(apiConfigSource.getGrpcServicesList()) && hasRefreshDelay() == apiConfigSource.hasRefreshDelay()) {
            if ((!hasRefreshDelay() || getRefreshDelay().equals(apiConfigSource.getRefreshDelay())) && hasRequestTimeout() == apiConfigSource.hasRequestTimeout()) {
                if ((!hasRequestTimeout() || getRequestTimeout().equals(apiConfigSource.getRequestTimeout())) && hasRateLimitSettings() == apiConfigSource.hasRateLimitSettings()) {
                    return (!hasRateLimitSettings() || getRateLimitSettings().equals(apiConfigSource.getRateLimitSettings())) && getSetNodeOnFirstMessageOnly() == apiConfigSource.getSetNodeOnFirstMessageOnly() && this.unknownFields.equals(apiConfigSource.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public ApiType getApiType() {
        ApiType valueOf = ApiType.valueOf(this.apiType_);
        return valueOf == null ? ApiType.UNRECOGNIZED : valueOf;
    }

    public int getApiTypeValue() {
        return this.apiType_;
    }

    public String getClusterNames(int i9) {
        return this.clusterNames_.get(i9);
    }

    public ByteString getClusterNamesBytes(int i9) {
        return this.clusterNames_.j0(i9);
    }

    public int getClusterNamesCount() {
        return this.clusterNames_.size();
    }

    public GrpcService getGrpcServices(int i9) {
        return this.grpcServices_.get(i9);
    }

    public int getGrpcServicesCount() {
        return this.grpcServices_.size();
    }

    public List<GrpcService> getGrpcServicesList() {
        return this.grpcServices_;
    }

    public w getGrpcServicesOrBuilder(int i9) {
        return this.grpcServices_.get(i9);
    }

    public List<? extends w> getGrpcServicesOrBuilderList() {
        return this.grpcServices_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ApiConfigSource> getParserForType() {
        return PARSER;
    }

    public RateLimitSettings getRateLimitSettings() {
        RateLimitSettings rateLimitSettings = this.rateLimitSettings_;
        return rateLimitSettings == null ? RateLimitSettings.getDefaultInstance() : rateLimitSettings;
    }

    public r0 getRateLimitSettingsOrBuilder() {
        return getRateLimitSettings();
    }

    public Duration getRefreshDelay() {
        Duration duration = this.refreshDelay_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getRefreshDelayOrBuilder() {
        return getRefreshDelay();
    }

    public Duration getRequestTimeout() {
        Duration duration = this.requestTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getRequestTimeoutOrBuilder() {
        return getRequestTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.apiType_ != ApiType.DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE.getNumber() ? CodedOutputStream.l(1, this.apiType_) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.clusterNames_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.clusterNames_.c1(i11));
        }
        int size = l10 + i10 + (m1612getClusterNamesList().size() * 1);
        if (this.refreshDelay_ != null) {
            size += CodedOutputStream.G(3, getRefreshDelay());
        }
        for (int i12 = 0; i12 < this.grpcServices_.size(); i12++) {
            size += CodedOutputStream.G(4, this.grpcServices_.get(i12));
        }
        if (this.requestTimeout_ != null) {
            size += CodedOutputStream.G(5, getRequestTimeout());
        }
        if (this.rateLimitSettings_ != null) {
            size += CodedOutputStream.G(6, getRateLimitSettings());
        }
        boolean z10 = this.setNodeOnFirstMessageOnly_;
        if (z10) {
            size += CodedOutputStream.e(7, z10);
        }
        if (this.transportApiVersion_ != ApiVersion.AUTO.getNumber()) {
            size += CodedOutputStream.l(8, this.transportApiVersion_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public boolean getSetNodeOnFirstMessageOnly() {
        return this.setNodeOnFirstMessageOnly_;
    }

    public ApiVersion getTransportApiVersion() {
        ApiVersion valueOf = ApiVersion.valueOf(this.transportApiVersion_);
        return valueOf == null ? ApiVersion.UNRECOGNIZED : valueOf;
    }

    public int getTransportApiVersionValue() {
        return this.transportApiVersion_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasRateLimitSettings() {
        return this.rateLimitSettings_ != null;
    }

    public boolean hasRefreshDelay() {
        return this.refreshDelay_ != null;
    }

    public boolean hasRequestTimeout() {
        return this.requestTimeout_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.apiType_) * 37) + 8) * 53) + this.transportApiVersion_;
        if (getClusterNamesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m1612getClusterNamesList().hashCode();
        }
        if (getGrpcServicesCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getGrpcServicesList().hashCode();
        }
        if (hasRefreshDelay()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRefreshDelay().hashCode();
        }
        if (hasRequestTimeout()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getRequestTimeout().hashCode();
        }
        if (hasRateLimitSettings()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getRateLimitSettings().hashCode();
        }
        int d10 = (((((hashCode * 37) + 7) * 53) + com.google.protobuf.u0.d(getSetNodeOnFirstMessageOnly())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f48243b.d(ApiConfigSource.class, b.class);
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
        return new ApiConfigSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.apiType_ != ApiType.DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE.getNumber()) {
            codedOutputStream.v0(1, this.apiType_);
        }
        for (int i9 = 0; i9 < this.clusterNames_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.clusterNames_.c1(i9));
        }
        if (this.refreshDelay_ != null) {
            codedOutputStream.L0(3, getRefreshDelay());
        }
        for (int i10 = 0; i10 < this.grpcServices_.size(); i10++) {
            codedOutputStream.L0(4, this.grpcServices_.get(i10));
        }
        if (this.requestTimeout_ != null) {
            codedOutputStream.L0(5, getRequestTimeout());
        }
        if (this.rateLimitSettings_ != null) {
            codedOutputStream.L0(6, getRateLimitSettings());
        }
        boolean z10 = this.setNodeOnFirstMessageOnly_;
        if (z10) {
            codedOutputStream.n0(7, z10);
        }
        if (this.transportApiVersion_ != ApiVersion.AUTO.getNumber()) {
            codedOutputStream.v0(8, this.transportApiVersion_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ApiConfigSource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ApiConfigSource apiConfigSource) {
        return DEFAULT_INSTANCE.toBuilder().j0(apiConfigSource);
    }

    public static ApiConfigSource parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getClusterNamesList */
    public i2 m1612getClusterNamesList() {
        return this.clusterNames_;
    }

    private ApiConfigSource(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ApiConfigSource parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ApiConfigSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ApiConfigSource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ApiConfigSource getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static ApiConfigSource parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ApiConfigSource() {
        this.memoizedIsInitialized = (byte) -1;
        this.apiType_ = 0;
        this.transportApiVersion_ = 0;
        this.clusterNames_ = com.google.protobuf.y0.f15344d;
        this.grpcServices_ = Collections.emptyList();
    }

    public static ApiConfigSource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ApiConfigSource parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ApiConfigSource parseFrom(InputStream inputStream) throws IOException {
        return (ApiConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ApiConfigSource parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ApiConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ApiConfigSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.apiType_ = pVar.u();
                        } else if (L != 18) {
                            if (L == 26) {
                                Duration duration = this.refreshDelay_;
                                Duration.b builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.refreshDelay_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.refreshDelay_ = builder.I();
                                }
                            } else if (L == 34) {
                                if (!(z11 & true)) {
                                    this.grpcServices_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.grpcServices_.add((GrpcService) pVar.B(GrpcService.parser(), f0Var));
                            } else if (L == 42) {
                                Duration duration3 = this.requestTimeout_;
                                Duration.b builder2 = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.requestTimeout_ = duration4;
                                if (builder2 != null) {
                                    builder2.e0(duration4);
                                    this.requestTimeout_ = builder2.I();
                                }
                            } else if (L == 50) {
                                RateLimitSettings rateLimitSettings = this.rateLimitSettings_;
                                RateLimitSettings.b builder3 = rateLimitSettings != null ? rateLimitSettings.toBuilder() : null;
                                RateLimitSettings rateLimitSettings2 = (RateLimitSettings) pVar.B(RateLimitSettings.parser(), f0Var);
                                this.rateLimitSettings_ = rateLimitSettings2;
                                if (builder3 != null) {
                                    builder3.h0(rateLimitSettings2);
                                    this.rateLimitSettings_ = builder3.I();
                                }
                            } else if (L == 56) {
                                this.setNodeOnFirstMessageOnly_ = pVar.r();
                            } else if (L != 64) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.transportApiVersion_ = pVar.u();
                            }
                        } else {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.clusterNames_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.clusterNames_.add(K);
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
                    this.clusterNames_ = this.clusterNames_.V0();
                }
                if (z11 & true) {
                    this.grpcServices_ = Collections.unmodifiableList(this.grpcServices_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ApiConfigSource parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ApiConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ApiConfigSource parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ApiConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
