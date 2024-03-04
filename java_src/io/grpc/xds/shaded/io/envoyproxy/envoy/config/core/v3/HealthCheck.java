package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Any;
import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.CodecClientType;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int64Range;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HealthCheck extends GeneratedMessageV3 implements a0 {
    public static final int ALT_PORT_FIELD_NUMBER = 6;
    public static final int ALWAYS_LOG_HEALTH_CHECK_FAILURES_FIELD_NUMBER = 19;
    public static final int CUSTOM_HEALTH_CHECK_FIELD_NUMBER = 13;
    public static final int EVENT_LOG_PATH_FIELD_NUMBER = 17;
    public static final int EVENT_SERVICE_FIELD_NUMBER = 22;
    public static final int GRPC_HEALTH_CHECK_FIELD_NUMBER = 11;
    public static final int HEALTHY_EDGE_INTERVAL_FIELD_NUMBER = 16;
    public static final int HEALTHY_THRESHOLD_FIELD_NUMBER = 5;
    public static final int HTTP_HEALTH_CHECK_FIELD_NUMBER = 8;
    public static final int INITIAL_JITTER_FIELD_NUMBER = 20;
    public static final int INTERVAL_FIELD_NUMBER = 2;
    public static final int INTERVAL_JITTER_FIELD_NUMBER = 3;
    public static final int INTERVAL_JITTER_PERCENT_FIELD_NUMBER = 18;
    public static final int NO_TRAFFIC_HEALTHY_INTERVAL_FIELD_NUMBER = 24;
    public static final int NO_TRAFFIC_INTERVAL_FIELD_NUMBER = 12;
    public static final int REUSE_CONNECTION_FIELD_NUMBER = 7;
    public static final int TCP_HEALTH_CHECK_FIELD_NUMBER = 9;
    public static final int TIMEOUT_FIELD_NUMBER = 1;
    public static final int TLS_OPTIONS_FIELD_NUMBER = 21;
    public static final int TRANSPORT_SOCKET_MATCH_CRITERIA_FIELD_NUMBER = 23;
    public static final int UNHEALTHY_EDGE_INTERVAL_FIELD_NUMBER = 15;
    public static final int UNHEALTHY_INTERVAL_FIELD_NUMBER = 14;
    public static final int UNHEALTHY_THRESHOLD_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private UInt32Value altPort_;
    private boolean alwaysLogHealthCheckFailures_;
    private volatile Object eventLogPath_;
    private EventServiceConfig eventService_;
    private int healthCheckerCase_;
    private Object healthChecker_;
    private Duration healthyEdgeInterval_;
    private UInt32Value healthyThreshold_;
    private Duration initialJitter_;
    private int intervalJitterPercent_;
    private Duration intervalJitter_;
    private Duration interval_;
    private byte memoizedIsInitialized;
    private Duration noTrafficHealthyInterval_;
    private Duration noTrafficInterval_;
    private BoolValue reuseConnection_;
    private Duration timeout_;
    private TlsOptions tlsOptions_;
    private Struct transportSocketMatchCriteria_;
    private Duration unhealthyEdgeInterval_;
    private Duration unhealthyInterval_;
    private UInt32Value unhealthyThreshold_;
    private static final HealthCheck DEFAULT_INSTANCE = new HealthCheck();
    private static final e2<HealthCheck> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class CustomHealthCheck extends GeneratedMessageV3 implements d {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int configTypeCase_;
        private Object configType_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final CustomHealthCheck DEFAULT_INSTANCE = new CustomHealthCheck();
        private static final e2<CustomHealthCheck> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum ConfigTypeCase implements u0.c {
            TYPED_CONFIG(3),
            CONFIGTYPE_NOT_SET(0);
            
            private final int value;

            ConfigTypeCase(int i9) {
                this.value = i9;
            }

            public static ConfigTypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 3) {
                        return null;
                    }
                    return TYPED_CONFIG;
                }
                return CONFIGTYPE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ConfigTypeCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<CustomHealthCheck> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CustomHealthCheck m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new CustomHealthCheck(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f47932e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47933f;

            /* renamed from: g  reason: collision with root package name */
            private Object f47934g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f47935h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return b0.f48197n.d(CustomHealthCheck.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CustomHealthCheck build() {
                CustomHealthCheck I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CustomHealthCheck I() {
                CustomHealthCheck customHealthCheck = new CustomHealthCheck(this, (a) null);
                customHealthCheck.name_ = this.f47934g;
                if (this.f47932e == 3) {
                    q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47935h;
                    if (q2Var == null) {
                        customHealthCheck.configType_ = this.f47933f;
                    } else {
                        customHealthCheck.configType_ = q2Var.b();
                    }
                }
                customHealthCheck.configTypeCase_ = this.f47932e;
                Q();
                return customHealthCheck;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public CustomHealthCheck getDefaultInstanceForType() {
                return CustomHealthCheck.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.CustomHealthCheck.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.CustomHealthCheck.access$6900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$CustomHealthCheck r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.CustomHealthCheck) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$CustomHealthCheck r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.CustomHealthCheck) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.CustomHealthCheck.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$CustomHealthCheck$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof CustomHealthCheck) {
                    return g0((CustomHealthCheck) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(CustomHealthCheck customHealthCheck) {
                if (customHealthCheck == CustomHealthCheck.getDefaultInstance()) {
                    return this;
                }
                if (!customHealthCheck.getName().isEmpty()) {
                    this.f47934g = customHealthCheck.name_;
                    R();
                }
                if (b.f47964b[customHealthCheck.getConfigTypeCase().ordinal()] == 1) {
                    h0(customHealthCheck.getTypedConfig());
                }
                z(((GeneratedMessageV3) customHealthCheck).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return b0.f48196m;
            }

            public b h0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47935h;
                if (q2Var == null) {
                    if (this.f47932e == 3 && this.f47933f != Any.getDefaultInstance()) {
                        this.f47933f = Any.newBuilder((Any) this.f47933f).d0(any).I();
                    } else {
                        this.f47933f = any;
                    }
                    R();
                } else {
                    if (this.f47932e == 3) {
                        q2Var.e(any);
                    }
                    this.f47935h.g(any);
                }
                this.f47932e = 3;
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
                this.f47932e = 0;
                this.f47934g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47932e = 0;
                this.f47934g = "";
                b0();
            }
        }

        /* synthetic */ CustomHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CustomHealthCheck getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return b0.f48196m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CustomHealthCheck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CustomHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CustomHealthCheck parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CustomHealthCheck> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CustomHealthCheck)) {
                return super.equals(obj);
            }
            CustomHealthCheck customHealthCheck = (CustomHealthCheck) obj;
            if (getName().equals(customHealthCheck.getName()) && getConfigTypeCase().equals(customHealthCheck.getConfigTypeCase())) {
                return (this.configTypeCase_ != 3 || getTypedConfig().equals(customHealthCheck.getTypedConfig())) && this.unknownFields.equals(customHealthCheck.unknownFields);
            }
            return false;
        }

        public ConfigTypeCase getConfigTypeCase() {
            return ConfigTypeCase.forNumber(this.configTypeCase_);
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
        public e2<CustomHealthCheck> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.configTypeCase_ == 3) {
                computeStringSize += CodedOutputStream.G(3, (Any) this.configType_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Any getTypedConfig() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        public com.google.protobuf.f getTypedConfigOrBuilder() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasTypedConfig() {
            return this.configTypeCase_ == 3;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (this.configTypeCase_ == 3) {
                hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b0.f48197n.d(CustomHealthCheck.class, b.class);
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
            return new CustomHealthCheck();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.configTypeCase_ == 3) {
                codedOutputStream.L0(3, (Any) this.configType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CustomHealthCheck(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CustomHealthCheck customHealthCheck) {
            return DEFAULT_INSTANCE.toBuilder().g0(customHealthCheck);
        }

        public static CustomHealthCheck parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CustomHealthCheck(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CustomHealthCheck parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (CustomHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CustomHealthCheck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CustomHealthCheck getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static CustomHealthCheck parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static CustomHealthCheck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private CustomHealthCheck() {
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static CustomHealthCheck parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CustomHealthCheck parseFrom(InputStream inputStream) throws IOException {
            return (CustomHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CustomHealthCheck parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (CustomHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private CustomHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.name_ = pVar.K();
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Any.b builder = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                    o1 B = pVar.B(Any.parser(), f0Var);
                                    this.configType_ = B;
                                    if (builder != null) {
                                        builder.d0((Any) B);
                                        this.configType_ = builder.I();
                                    }
                                    this.configTypeCase_ = 3;
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

        public static CustomHealthCheck parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (CustomHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CustomHealthCheck parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (CustomHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class GrpcHealthCheck extends GeneratedMessageV3 implements e {
        public static final int AUTHORITY_FIELD_NUMBER = 2;
        private static final GrpcHealthCheck DEFAULT_INSTANCE = new GrpcHealthCheck();
        private static final e2<GrpcHealthCheck> PARSER = new a();
        public static final int SERVICE_NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object authority_;
        private byte memoizedIsInitialized;
        private volatile Object serviceName_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<GrpcHealthCheck> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public GrpcHealthCheck m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new GrpcHealthCheck(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f47936e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47937f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return b0.f48195l.d(GrpcHealthCheck.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public GrpcHealthCheck build() {
                GrpcHealthCheck I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public GrpcHealthCheck I() {
                GrpcHealthCheck grpcHealthCheck = new GrpcHealthCheck(this, (a) null);
                grpcHealthCheck.serviceName_ = this.f47936e;
                grpcHealthCheck.authority_ = this.f47937f;
                Q();
                return grpcHealthCheck;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public GrpcHealthCheck getDefaultInstanceForType() {
                return GrpcHealthCheck.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.GrpcHealthCheck.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.GrpcHealthCheck.access$5700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$GrpcHealthCheck r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.GrpcHealthCheck) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$GrpcHealthCheck r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.GrpcHealthCheck) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.GrpcHealthCheck.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$GrpcHealthCheck$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof GrpcHealthCheck) {
                    return g0((GrpcHealthCheck) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(GrpcHealthCheck grpcHealthCheck) {
                if (grpcHealthCheck == GrpcHealthCheck.getDefaultInstance()) {
                    return this;
                }
                if (!grpcHealthCheck.getServiceName().isEmpty()) {
                    this.f47936e = grpcHealthCheck.serviceName_;
                    R();
                }
                if (!grpcHealthCheck.getAuthority().isEmpty()) {
                    this.f47937f = grpcHealthCheck.authority_;
                    R();
                }
                z(((GeneratedMessageV3) grpcHealthCheck).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return b0.f48194k;
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
                this.f47936e = "";
                this.f47937f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47936e = "";
                this.f47937f = "";
                b0();
            }
        }

        /* synthetic */ GrpcHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static GrpcHealthCheck getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return b0.f48194k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static GrpcHealthCheck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GrpcHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static GrpcHealthCheck parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<GrpcHealthCheck> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof GrpcHealthCheck)) {
                return super.equals(obj);
            }
            GrpcHealthCheck grpcHealthCheck = (GrpcHealthCheck) obj;
            return getServiceName().equals(grpcHealthCheck.getServiceName()) && getAuthority().equals(grpcHealthCheck.getAuthority()) && this.unknownFields.equals(grpcHealthCheck.unknownFields);
        }

        public String getAuthority() {
            Object obj = this.authority_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.authority_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getAuthorityBytes() {
            Object obj = this.authority_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authority_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<GrpcHealthCheck> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.serviceName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.serviceName_);
            if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.authority_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getServiceName().hashCode()) * 37) + 2) * 53) + getAuthority().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b0.f48195l.d(GrpcHealthCheck.class, b.class);
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
            return new GrpcHealthCheck();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.serviceName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.serviceName_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.authority_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ GrpcHealthCheck(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(GrpcHealthCheck grpcHealthCheck) {
            return DEFAULT_INSTANCE.toBuilder().g0(grpcHealthCheck);
        }

        public static GrpcHealthCheck parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private GrpcHealthCheck(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static GrpcHealthCheck parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (GrpcHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static GrpcHealthCheck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public GrpcHealthCheck getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static GrpcHealthCheck parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private GrpcHealthCheck() {
            this.memoizedIsInitialized = (byte) -1;
            this.serviceName_ = "";
            this.authority_ = "";
        }

        public static GrpcHealthCheck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static GrpcHealthCheck parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static GrpcHealthCheck parseFrom(InputStream inputStream) throws IOException {
            return (GrpcHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private GrpcHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.serviceName_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.authority_ = pVar.K();
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

        public static GrpcHealthCheck parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (GrpcHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static GrpcHealthCheck parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (GrpcHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static GrpcHealthCheck parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (GrpcHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum HealthCheckerCase implements u0.c {
        HTTP_HEALTH_CHECK(8),
        TCP_HEALTH_CHECK(9),
        GRPC_HEALTH_CHECK(11),
        CUSTOM_HEALTH_CHECK(13),
        HEALTHCHECKER_NOT_SET(0);
        
        private final int value;

        HealthCheckerCase(int i9) {
            this.value = i9;
        }

        public static HealthCheckerCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 11) {
                    if (i9 != 13) {
                        if (i9 != 8) {
                            if (i9 != 9) {
                                return null;
                            }
                            return TCP_HEALTH_CHECK;
                        }
                        return HTTP_HEALTH_CHECK;
                    }
                    return CUSTOM_HEALTH_CHECK;
                }
                return GRPC_HEALTH_CHECK;
            }
            return HEALTHCHECKER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static HealthCheckerCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class HttpHealthCheck extends GeneratedMessageV3 implements f {
        public static final int CODEC_CLIENT_TYPE_FIELD_NUMBER = 10;
        public static final int EXPECTED_STATUSES_FIELD_NUMBER = 9;
        public static final int HOST_FIELD_NUMBER = 1;
        public static final int PATH_FIELD_NUMBER = 2;
        public static final int RECEIVE_FIELD_NUMBER = 4;
        public static final int REQUEST_HEADERS_TO_ADD_FIELD_NUMBER = 6;
        public static final int REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER = 8;
        public static final int SEND_FIELD_NUMBER = 3;
        public static final int SERVICE_NAME_MATCHER_FIELD_NUMBER = 11;
        private static final long serialVersionUID = 0;
        private int codecClientType_;
        private List<Int64Range> expectedStatuses_;
        private volatile Object host_;
        private byte memoizedIsInitialized;
        private volatile Object path_;
        private Payload receive_;
        private List<HeaderValueOption> requestHeadersToAdd_;
        private com.google.protobuf.z0 requestHeadersToRemove_;
        private Payload send_;
        private StringMatcher serviceNameMatcher_;
        private static final HttpHealthCheck DEFAULT_INSTANCE = new HttpHealthCheck();
        private static final e2<HttpHealthCheck> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<HttpHealthCheck> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public HttpHealthCheck m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new HttpHealthCheck(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private int f47938e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47939f;

            /* renamed from: g  reason: collision with root package name */
            private Object f47940g;

            /* renamed from: h  reason: collision with root package name */
            private Payload f47941h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Payload, Payload.b, g> f47942i;

            /* renamed from: j  reason: collision with root package name */
            private Payload f47943j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Payload, Payload.b, g> f47944k;

            /* renamed from: l  reason: collision with root package name */
            private List<HeaderValueOption> f47945l;

            /* renamed from: m  reason: collision with root package name */
            private l2<HeaderValueOption, HeaderValueOption.b, y> f47946m;

            /* renamed from: n  reason: collision with root package name */
            private com.google.protobuf.z0 f47947n;

            /* renamed from: o  reason: collision with root package name */
            private List<Int64Range> f47948o;

            /* renamed from: p  reason: collision with root package name */
            private l2<Int64Range, Int64Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e> f47949p;

            /* renamed from: q  reason: collision with root package name */
            private int f47950q;

            /* renamed from: r  reason: collision with root package name */
            private StringMatcher f47951r;

            /* renamed from: s  reason: collision with root package name */
            private q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> f47952s;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f47938e & 4) == 0) {
                    this.f47948o = new ArrayList(this.f47948o);
                    this.f47938e |= 4;
                }
            }

            private void b0() {
                if ((this.f47938e & 1) == 0) {
                    this.f47945l = new ArrayList(this.f47945l);
                    this.f47938e |= 1;
                }
            }

            private void d0() {
                if ((this.f47938e & 2) == 0) {
                    this.f47947n = new com.google.protobuf.y0(this.f47947n);
                    this.f47938e |= 2;
                }
            }

            private l2<Int64Range, Int64Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e> g0() {
                if (this.f47949p == null) {
                    this.f47949p = new l2<>(this.f47948o, (this.f47938e & 4) != 0, H(), O());
                    this.f47948o = null;
                }
                return this.f47949p;
            }

            private l2<HeaderValueOption, HeaderValueOption.b, y> h0() {
                if (this.f47946m == null) {
                    this.f47946m = new l2<>(this.f47945l, (this.f47938e & 1) != 0, H(), O());
                    this.f47945l = null;
                }
                return this.f47946m;
            }

            private void i0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    h0();
                    g0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return b0.f48189f.d(HttpHealthCheck.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public HttpHealthCheck build() {
                HttpHealthCheck I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public HttpHealthCheck I() {
                HttpHealthCheck httpHealthCheck = new HttpHealthCheck(this, (a) null);
                httpHealthCheck.host_ = this.f47939f;
                httpHealthCheck.path_ = this.f47940g;
                q2<Payload, Payload.b, g> q2Var = this.f47942i;
                if (q2Var == null) {
                    httpHealthCheck.send_ = this.f47941h;
                } else {
                    httpHealthCheck.send_ = q2Var.b();
                }
                q2<Payload, Payload.b, g> q2Var2 = this.f47944k;
                if (q2Var2 == null) {
                    httpHealthCheck.receive_ = this.f47943j;
                } else {
                    httpHealthCheck.receive_ = q2Var2.b();
                }
                l2<HeaderValueOption, HeaderValueOption.b, y> l2Var = this.f47946m;
                if (l2Var == null) {
                    if ((this.f47938e & 1) != 0) {
                        this.f47945l = Collections.unmodifiableList(this.f47945l);
                        this.f47938e &= -2;
                    }
                    httpHealthCheck.requestHeadersToAdd_ = this.f47945l;
                } else {
                    httpHealthCheck.requestHeadersToAdd_ = l2Var.e();
                }
                if ((this.f47938e & 2) != 0) {
                    this.f47947n = this.f47947n.V0();
                    this.f47938e &= -3;
                }
                httpHealthCheck.requestHeadersToRemove_ = this.f47947n;
                l2<Int64Range, Int64Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e> l2Var2 = this.f47949p;
                if (l2Var2 == null) {
                    if ((this.f47938e & 4) != 0) {
                        this.f47948o = Collections.unmodifiableList(this.f47948o);
                        this.f47938e &= -5;
                    }
                    httpHealthCheck.expectedStatuses_ = this.f47948o;
                } else {
                    httpHealthCheck.expectedStatuses_ = l2Var2.e();
                }
                httpHealthCheck.codecClientType_ = this.f47950q;
                q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> q2Var3 = this.f47952s;
                if (q2Var3 == null) {
                    httpHealthCheck.serviceNameMatcher_ = this.f47951r;
                } else {
                    httpHealthCheck.serviceNameMatcher_ = q2Var3.b();
                }
                Q();
                return httpHealthCheck;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: e0 */
            public HttpHealthCheck getDefaultInstanceForType() {
                return HttpHealthCheck.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return b0.f48188e;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.HttpHealthCheck.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.HttpHealthCheck.access$2600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$HttpHealthCheck r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.HttpHealthCheck) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.l0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$HttpHealthCheck r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.HttpHealthCheck) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.l0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.HttpHealthCheck.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$HttpHealthCheck$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof HttpHealthCheck) {
                    return l0((HttpHealthCheck) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b l0(HttpHealthCheck httpHealthCheck) {
                if (httpHealthCheck == HttpHealthCheck.getDefaultInstance()) {
                    return this;
                }
                if (!httpHealthCheck.getHost().isEmpty()) {
                    this.f47939f = httpHealthCheck.host_;
                    R();
                }
                if (!httpHealthCheck.getPath().isEmpty()) {
                    this.f47940g = httpHealthCheck.path_;
                    R();
                }
                if (httpHealthCheck.hasSend()) {
                    n0(httpHealthCheck.getSend());
                }
                if (httpHealthCheck.hasReceive()) {
                    m0(httpHealthCheck.getReceive());
                }
                if (this.f47946m == null) {
                    if (!httpHealthCheck.requestHeadersToAdd_.isEmpty()) {
                        if (this.f47945l.isEmpty()) {
                            this.f47945l = httpHealthCheck.requestHeadersToAdd_;
                            this.f47938e &= -2;
                        } else {
                            b0();
                            this.f47945l.addAll(httpHealthCheck.requestHeadersToAdd_);
                        }
                        R();
                    }
                } else if (!httpHealthCheck.requestHeadersToAdd_.isEmpty()) {
                    if (this.f47946m.k()) {
                        this.f47946m.f();
                        this.f47946m = null;
                        this.f47945l = httpHealthCheck.requestHeadersToAdd_;
                        this.f47938e &= -2;
                        this.f47946m = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                    } else {
                        this.f47946m.b(httpHealthCheck.requestHeadersToAdd_);
                    }
                }
                if (!httpHealthCheck.requestHeadersToRemove_.isEmpty()) {
                    if (this.f47947n.isEmpty()) {
                        this.f47947n = httpHealthCheck.requestHeadersToRemove_;
                        this.f47938e &= -3;
                    } else {
                        d0();
                        this.f47947n.addAll(httpHealthCheck.requestHeadersToRemove_);
                    }
                    R();
                }
                if (this.f47949p == null) {
                    if (!httpHealthCheck.expectedStatuses_.isEmpty()) {
                        if (this.f47948o.isEmpty()) {
                            this.f47948o = httpHealthCheck.expectedStatuses_;
                            this.f47938e &= -5;
                        } else {
                            a0();
                            this.f47948o.addAll(httpHealthCheck.expectedStatuses_);
                        }
                        R();
                    }
                } else if (!httpHealthCheck.expectedStatuses_.isEmpty()) {
                    if (this.f47949p.k()) {
                        this.f47949p.f();
                        this.f47949p = null;
                        this.f47948o = httpHealthCheck.expectedStatuses_;
                        this.f47938e &= -5;
                        this.f47949p = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                    } else {
                        this.f47949p.b(httpHealthCheck.expectedStatuses_);
                    }
                }
                if (httpHealthCheck.codecClientType_ != 0) {
                    r0(httpHealthCheck.getCodecClientTypeValue());
                }
                if (httpHealthCheck.hasServiceNameMatcher()) {
                    o0(httpHealthCheck.getServiceNameMatcher());
                }
                z(((GeneratedMessageV3) httpHealthCheck).unknownFields);
                R();
                return this;
            }

            public b m0(Payload payload) {
                q2<Payload, Payload.b, g> q2Var = this.f47944k;
                if (q2Var == null) {
                    Payload payload2 = this.f47943j;
                    if (payload2 != null) {
                        this.f47943j = Payload.newBuilder(payload2).g0(payload).I();
                    } else {
                        this.f47943j = payload;
                    }
                    R();
                } else {
                    q2Var.e(payload);
                }
                return this;
            }

            public b n0(Payload payload) {
                q2<Payload, Payload.b, g> q2Var = this.f47942i;
                if (q2Var == null) {
                    Payload payload2 = this.f47941h;
                    if (payload2 != null) {
                        this.f47941h = Payload.newBuilder(payload2).g0(payload).I();
                    } else {
                        this.f47941h = payload;
                    }
                    R();
                } else {
                    q2Var.e(payload);
                }
                return this;
            }

            public b o0(StringMatcher stringMatcher) {
                q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> q2Var = this.f47952s;
                if (q2Var == null) {
                    StringMatcher stringMatcher2 = this.f47951r;
                    if (stringMatcher2 != null) {
                        this.f47951r = StringMatcher.newBuilder(stringMatcher2).g0(stringMatcher).I();
                    } else {
                        this.f47951r = stringMatcher;
                    }
                    R();
                } else {
                    q2Var.e(stringMatcher);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: q0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b r0(int i9) {
                this.f47950q = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: s0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                this.f47939f = "";
                this.f47940g = "";
                this.f47945l = Collections.emptyList();
                this.f47947n = com.google.protobuf.y0.f15344d;
                this.f47948o = Collections.emptyList();
                this.f47950q = 0;
                i0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47939f = "";
                this.f47940g = "";
                this.f47945l = Collections.emptyList();
                this.f47947n = com.google.protobuf.y0.f15344d;
                this.f47948o = Collections.emptyList();
                this.f47950q = 0;
                i0();
            }
        }

        /* synthetic */ HttpHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static HttpHealthCheck getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return b0.f48188e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HttpHealthCheck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (HttpHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HttpHealthCheck parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<HttpHealthCheck> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof HttpHealthCheck)) {
                return super.equals(obj);
            }
            HttpHealthCheck httpHealthCheck = (HttpHealthCheck) obj;
            if (getHost().equals(httpHealthCheck.getHost()) && getPath().equals(httpHealthCheck.getPath()) && hasSend() == httpHealthCheck.hasSend()) {
                if ((!hasSend() || getSend().equals(httpHealthCheck.getSend())) && hasReceive() == httpHealthCheck.hasReceive()) {
                    if ((!hasReceive() || getReceive().equals(httpHealthCheck.getReceive())) && getRequestHeadersToAddList().equals(httpHealthCheck.getRequestHeadersToAddList()) && m1614getRequestHeadersToRemoveList().equals(httpHealthCheck.m1614getRequestHeadersToRemoveList()) && getExpectedStatusesList().equals(httpHealthCheck.getExpectedStatusesList()) && this.codecClientType_ == httpHealthCheck.codecClientType_ && hasServiceNameMatcher() == httpHealthCheck.hasServiceNameMatcher()) {
                        return (!hasServiceNameMatcher() || getServiceNameMatcher().equals(httpHealthCheck.getServiceNameMatcher())) && this.unknownFields.equals(httpHealthCheck.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public CodecClientType getCodecClientType() {
            CodecClientType valueOf = CodecClientType.valueOf(this.codecClientType_);
            return valueOf == null ? CodecClientType.UNRECOGNIZED : valueOf;
        }

        public int getCodecClientTypeValue() {
            return this.codecClientType_;
        }

        public Int64Range getExpectedStatuses(int i9) {
            return this.expectedStatuses_.get(i9);
        }

        public int getExpectedStatusesCount() {
            return this.expectedStatuses_.size();
        }

        public List<Int64Range> getExpectedStatusesList() {
            return this.expectedStatuses_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e getExpectedStatusesOrBuilder(int i9) {
            return this.expectedStatuses_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e> getExpectedStatusesOrBuilderList() {
            return this.expectedStatuses_;
        }

        public String getHost() {
            Object obj = this.host_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.host_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getHostBytes() {
            Object obj = this.host_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.host_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<HttpHealthCheck> getParserForType() {
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

        public Payload getReceive() {
            Payload payload = this.receive_;
            return payload == null ? Payload.getDefaultInstance() : payload;
        }

        public g getReceiveOrBuilder() {
            return getReceive();
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

        public y getRequestHeadersToAddOrBuilder(int i9) {
            return this.requestHeadersToAdd_.get(i9);
        }

        public List<? extends y> getRequestHeadersToAddOrBuilderList() {
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

        public Payload getSend() {
            Payload payload = this.send_;
            return payload == null ? Payload.getDefaultInstance() : payload;
        }

        public g getSendOrBuilder() {
            return getSend();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.host_) ? GeneratedMessageV3.computeStringSize(1, this.host_) + 0 : 0;
            if (!GeneratedMessageV3.isStringEmpty(this.path_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.path_);
            }
            if (this.send_ != null) {
                computeStringSize += CodedOutputStream.G(3, getSend());
            }
            if (this.receive_ != null) {
                computeStringSize += CodedOutputStream.G(4, getReceive());
            }
            for (int i10 = 0; i10 < this.requestHeadersToAdd_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(6, this.requestHeadersToAdd_.get(i10));
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.requestHeadersToRemove_.size(); i12++) {
                i11 += GeneratedMessageV3.computeStringSizeNoTag(this.requestHeadersToRemove_.c1(i12));
            }
            int size = computeStringSize + i11 + (m1614getRequestHeadersToRemoveList().size() * 1);
            for (int i13 = 0; i13 < this.expectedStatuses_.size(); i13++) {
                size += CodedOutputStream.G(9, this.expectedStatuses_.get(i13));
            }
            if (this.codecClientType_ != CodecClientType.HTTP1.getNumber()) {
                size += CodedOutputStream.l(10, this.codecClientType_);
            }
            if (this.serviceNameMatcher_ != null) {
                size += CodedOutputStream.G(11, getServiceNameMatcher());
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public StringMatcher getServiceNameMatcher() {
            StringMatcher stringMatcher = this.serviceNameMatcher_;
            return stringMatcher == null ? StringMatcher.getDefaultInstance() : stringMatcher;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n getServiceNameMatcherOrBuilder() {
            return getServiceNameMatcher();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasReceive() {
            return this.receive_ != null;
        }

        public boolean hasSend() {
            return this.send_ != null;
        }

        public boolean hasServiceNameMatcher() {
            return this.serviceNameMatcher_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHost().hashCode()) * 37) + 2) * 53) + getPath().hashCode();
            if (hasSend()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getSend().hashCode();
            }
            if (hasReceive()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getReceive().hashCode();
            }
            if (getRequestHeadersToAddCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getRequestHeadersToAddList().hashCode();
            }
            if (getRequestHeadersToRemoveCount() > 0) {
                hashCode = (((hashCode * 37) + 8) * 53) + m1614getRequestHeadersToRemoveList().hashCode();
            }
            if (getExpectedStatusesCount() > 0) {
                hashCode = (((hashCode * 37) + 9) * 53) + getExpectedStatusesList().hashCode();
            }
            int i10 = (((hashCode * 37) + 10) * 53) + this.codecClientType_;
            if (hasServiceNameMatcher()) {
                i10 = (((i10 * 37) + 11) * 53) + getServiceNameMatcher().hashCode();
            }
            int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b0.f48189f.d(HttpHealthCheck.class, b.class);
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
            return new HttpHealthCheck();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.host_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.host_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.path_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.path_);
            }
            if (this.send_ != null) {
                codedOutputStream.L0(3, getSend());
            }
            if (this.receive_ != null) {
                codedOutputStream.L0(4, getReceive());
            }
            for (int i9 = 0; i9 < this.requestHeadersToAdd_.size(); i9++) {
                codedOutputStream.L0(6, this.requestHeadersToAdd_.get(i9));
            }
            for (int i10 = 0; i10 < this.requestHeadersToRemove_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.requestHeadersToRemove_.c1(i10));
            }
            for (int i11 = 0; i11 < this.expectedStatuses_.size(); i11++) {
                codedOutputStream.L0(9, this.expectedStatuses_.get(i11));
            }
            if (this.codecClientType_ != CodecClientType.HTTP1.getNumber()) {
                codedOutputStream.v0(10, this.codecClientType_);
            }
            if (this.serviceNameMatcher_ != null) {
                codedOutputStream.L0(11, getServiceNameMatcher());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ HttpHealthCheck(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(HttpHealthCheck httpHealthCheck) {
            return DEFAULT_INSTANCE.toBuilder().l0(httpHealthCheck);
        }

        public static HttpHealthCheck parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getRequestHeadersToRemoveList */
        public i2 m1614getRequestHeadersToRemoveList() {
            return this.requestHeadersToRemove_;
        }

        private HttpHealthCheck(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HttpHealthCheck parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (HttpHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static HttpHealthCheck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public HttpHealthCheck getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
        }

        public static HttpHealthCheck parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private HttpHealthCheck() {
            this.memoizedIsInitialized = (byte) -1;
            this.host_ = "";
            this.path_ = "";
            this.requestHeadersToAdd_ = Collections.emptyList();
            this.requestHeadersToRemove_ = com.google.protobuf.y0.f15344d;
            this.expectedStatuses_ = Collections.emptyList();
            this.codecClientType_ = 0;
        }

        public static HttpHealthCheck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static HttpHealthCheck parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static HttpHealthCheck parseFrom(InputStream inputStream) throws IOException {
            return (HttpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static HttpHealthCheck parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (HttpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static HttpHealthCheck parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (HttpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        private HttpHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 0) {
                                if (L == 10) {
                                    this.host_ = pVar.K();
                                } else if (L != 18) {
                                    if (L == 26) {
                                        Payload payload = this.send_;
                                        Payload.b builder = payload != null ? payload.toBuilder() : null;
                                        Payload payload2 = (Payload) pVar.B(Payload.parser(), f0Var);
                                        this.send_ = payload2;
                                        if (builder != null) {
                                            builder.g0(payload2);
                                            this.send_ = builder.I();
                                        }
                                    } else if (L == 34) {
                                        Payload payload3 = this.receive_;
                                        Payload.b builder2 = payload3 != null ? payload3.toBuilder() : null;
                                        Payload payload4 = (Payload) pVar.B(Payload.parser(), f0Var);
                                        this.receive_ = payload4;
                                        if (builder2 != null) {
                                            builder2.g0(payload4);
                                            this.receive_ = builder2.I();
                                        }
                                    } else if (L == 50) {
                                        if (!(z11 & true)) {
                                            this.requestHeadersToAdd_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.requestHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                                    } else if (L == 66) {
                                        String K = pVar.K();
                                        if (!(z11 & true)) {
                                            this.requestHeadersToRemove_ = new com.google.protobuf.y0();
                                            z11 |= true;
                                        }
                                        this.requestHeadersToRemove_.add(K);
                                    } else if (L == 74) {
                                        if (!(z11 & true)) {
                                            this.expectedStatuses_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.expectedStatuses_.add((Int64Range) pVar.B(Int64Range.parser(), f0Var));
                                    } else if (L == 80) {
                                        this.codecClientType_ = pVar.u();
                                    } else if (L != 90) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        StringMatcher stringMatcher = this.serviceNameMatcher_;
                                        StringMatcher.c builder3 = stringMatcher != null ? stringMatcher.toBuilder() : null;
                                        StringMatcher stringMatcher2 = (StringMatcher) pVar.B(StringMatcher.parser(), f0Var);
                                        this.serviceNameMatcher_ = stringMatcher2;
                                        if (builder3 != null) {
                                            builder3.g0(stringMatcher2);
                                            this.serviceNameMatcher_ = builder3.I();
                                        }
                                    }
                                } else {
                                    this.path_ = pVar.K();
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
                        this.requestHeadersToAdd_ = Collections.unmodifiableList(this.requestHeadersToAdd_);
                    }
                    if (z11 & true) {
                        this.requestHeadersToRemove_ = this.requestHeadersToRemove_.V0();
                    }
                    if (z11 & true) {
                        this.expectedStatuses_ = Collections.unmodifiableList(this.expectedStatuses_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static HttpHealthCheck parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (HttpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Payload extends GeneratedMessageV3 implements g {
        public static final int BINARY_FIELD_NUMBER = 2;
        private static final Payload DEFAULT_INSTANCE = new Payload();
        private static final e2<Payload> PARSER = new a();
        public static final int TEXT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int payloadCase_;
        private Object payload_;

        /* loaded from: classes6.dex */
        public enum PayloadCase implements u0.c {
            TEXT(1),
            BINARY(2),
            PAYLOAD_NOT_SET(0);
            
            private final int value;

            PayloadCase(int i9) {
                this.value = i9;
            }

            public static PayloadCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return BINARY;
                    }
                    return TEXT;
                }
                return PAYLOAD_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static PayloadCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Payload> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Payload m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new Payload(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f47953e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47954f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return b0.f48187d.d(Payload.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Payload build() {
                Payload I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Payload I() {
                Payload payload = new Payload(this, (a) null);
                if (this.f47953e == 1) {
                    payload.payload_ = this.f47954f;
                }
                if (this.f47953e == 2) {
                    payload.payload_ = this.f47954f;
                }
                payload.payloadCase_ = this.f47953e;
                Q();
                return payload;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Payload getDefaultInstanceForType() {
                return Payload.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.Payload.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.Payload.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$Payload r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.Payload) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$Payload r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.Payload) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.Payload.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$Payload$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof Payload) {
                    return g0((Payload) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Payload payload) {
                if (payload == Payload.getDefaultInstance()) {
                    return this;
                }
                int i9 = b.f47963a[payload.getPayloadCase().ordinal()];
                if (i9 == 1) {
                    this.f47953e = 1;
                    this.f47954f = payload.payload_;
                    R();
                } else if (i9 == 2) {
                    i0(payload.getBinary());
                }
                z(((GeneratedMessageV3) payload).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return b0.f48186c;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f47953e = 2;
                this.f47954f = byteString;
                R();
                return this;
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
                this.f47953e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47953e = 0;
                b0();
            }
        }

        /* synthetic */ Payload(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Payload getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return b0.f48186c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Payload parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Payload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Payload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Payload> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Payload)) {
                return super.equals(obj);
            }
            Payload payload = (Payload) obj;
            if (getPayloadCase().equals(payload.getPayloadCase())) {
                int i9 = this.payloadCase_;
                if (i9 != 1) {
                    if (i9 == 2 && !getBinary().equals(payload.getBinary())) {
                        return false;
                    }
                } else if (!getText().equals(payload.getText())) {
                    return false;
                }
                return this.unknownFields.equals(payload.unknownFields);
            }
            return false;
        }

        public ByteString getBinary() {
            if (this.payloadCase_ == 2) {
                return (ByteString) this.payload_;
            }
            return ByteString.EMPTY;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Payload> getParserForType() {
            return PARSER;
        }

        public PayloadCase getPayloadCase() {
            return PayloadCase.forNumber(this.payloadCase_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = this.payloadCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.payload_) : 0;
            if (this.payloadCase_ == 2) {
                computeStringSize += CodedOutputStream.h(2, (ByteString) this.payload_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getText() {
            String str = this.payloadCase_ == 1 ? this.payload_ : "";
            if (str instanceof String) {
                return (String) str;
            }
            String stringUtf8 = ((ByteString) str).toStringUtf8();
            if (this.payloadCase_ == 1) {
                this.payload_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTextBytes() {
            String str = this.payloadCase_ == 1 ? this.payload_ : "";
            if (str instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                if (this.payloadCase_ == 1) {
                    this.payload_ = copyFromUtf8;
                }
                return copyFromUtf8;
            }
            return (ByteString) str;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasBinary() {
            return this.payloadCase_ == 2;
        }

        public boolean hasText() {
            return this.payloadCase_ == 1;
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
            int i11 = this.payloadCase_;
            if (i11 == 1) {
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getText().hashCode();
            } else {
                if (i11 == 2) {
                    i9 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getBinary().hashCode();
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
            return b0.f48187d.d(Payload.class, b.class);
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
            return new Payload();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.payloadCase_ == 1) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.payload_);
            }
            if (this.payloadCase_ == 2) {
                codedOutputStream.r0(2, (ByteString) this.payload_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Payload(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Payload payload) {
            return DEFAULT_INSTANCE.toBuilder().g0(payload);
        }

        public static Payload parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Payload(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.payloadCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Payload parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Payload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Payload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Payload getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Payload parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static Payload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private Payload() {
            this.payloadCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Payload parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Payload parseFrom(InputStream inputStream) throws IOException {
            return (Payload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Payload(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                String K = pVar.K();
                                this.payloadCase_ = 1;
                                this.payload_ = K;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.payload_ = pVar.s();
                                this.payloadCase_ = 2;
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

        public static Payload parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Payload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Payload parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Payload) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Payload parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (Payload) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class RedisHealthCheck extends GeneratedMessageV3 implements r1 {
        public static final int KEY_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object key_;
        private byte memoizedIsInitialized;
        private static final RedisHealthCheck DEFAULT_INSTANCE = new RedisHealthCheck();
        private static final e2<RedisHealthCheck> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RedisHealthCheck> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RedisHealthCheck m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new RedisHealthCheck(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private Object f47955e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return b0.f48193j.d(RedisHealthCheck.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RedisHealthCheck build() {
                RedisHealthCheck I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RedisHealthCheck I() {
                RedisHealthCheck redisHealthCheck = new RedisHealthCheck(this, (a) null);
                redisHealthCheck.key_ = this.f47955e;
                Q();
                return redisHealthCheck;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RedisHealthCheck getDefaultInstanceForType() {
                return RedisHealthCheck.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.RedisHealthCheck.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.RedisHealthCheck.access$4700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$RedisHealthCheck r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.RedisHealthCheck) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$RedisHealthCheck r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.RedisHealthCheck) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.RedisHealthCheck.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$RedisHealthCheck$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof RedisHealthCheck) {
                    return g0((RedisHealthCheck) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(RedisHealthCheck redisHealthCheck) {
                if (redisHealthCheck == RedisHealthCheck.getDefaultInstance()) {
                    return this;
                }
                if (!redisHealthCheck.getKey().isEmpty()) {
                    this.f47955e = redisHealthCheck.key_;
                    R();
                }
                z(((GeneratedMessageV3) redisHealthCheck).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return b0.f48192i;
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
                this.f47955e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47955e = "";
                b0();
            }
        }

        /* synthetic */ RedisHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RedisHealthCheck getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return b0.f48192i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RedisHealthCheck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RedisHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RedisHealthCheck parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RedisHealthCheck> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RedisHealthCheck)) {
                return super.equals(obj);
            }
            RedisHealthCheck redisHealthCheck = (RedisHealthCheck) obj;
            return getKey().equals(redisHealthCheck.getKey()) && this.unknownFields.equals(redisHealthCheck.unknownFields);
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
        public e2<RedisHealthCheck> getParserForType() {
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
            return b0.f48193j.d(RedisHealthCheck.class, b.class);
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
            return new RedisHealthCheck();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.key_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.key_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RedisHealthCheck(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RedisHealthCheck redisHealthCheck) {
            return DEFAULT_INSTANCE.toBuilder().g0(redisHealthCheck);
        }

        public static RedisHealthCheck parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RedisHealthCheck(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RedisHealthCheck parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (RedisHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RedisHealthCheck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RedisHealthCheck getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static RedisHealthCheck parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RedisHealthCheck() {
            this.memoizedIsInitialized = (byte) -1;
            this.key_ = "";
        }

        public static RedisHealthCheck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RedisHealthCheck parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static RedisHealthCheck parseFrom(InputStream inputStream) throws IOException {
            return (RedisHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private RedisHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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

        public static RedisHealthCheck parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (RedisHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RedisHealthCheck parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RedisHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RedisHealthCheck parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (RedisHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class TcpHealthCheck extends GeneratedMessageV3 implements h {
        private static final TcpHealthCheck DEFAULT_INSTANCE = new TcpHealthCheck();
        private static final e2<TcpHealthCheck> PARSER = new a();
        public static final int RECEIVE_FIELD_NUMBER = 2;
        public static final int SEND_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Payload> receive_;
        private Payload send_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<TcpHealthCheck> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TcpHealthCheck m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new TcpHealthCheck(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private int f47956e;

            /* renamed from: f  reason: collision with root package name */
            private Payload f47957f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Payload, Payload.b, g> f47958g;

            /* renamed from: h  reason: collision with root package name */
            private List<Payload> f47959h;

            /* renamed from: i  reason: collision with root package name */
            private l2<Payload, Payload.b, g> f47960i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f47956e & 1) == 0) {
                    this.f47959h = new ArrayList(this.f47959h);
                    this.f47956e |= 1;
                }
            }

            private l2<Payload, Payload.b, g> d0() {
                if (this.f47960i == null) {
                    this.f47960i = new l2<>(this.f47959h, (this.f47956e & 1) != 0, H(), O());
                    this.f47959h = null;
                }
                return this.f47960i;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return b0.f48191h.d(TcpHealthCheck.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TcpHealthCheck build() {
                TcpHealthCheck I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TcpHealthCheck I() {
                TcpHealthCheck tcpHealthCheck = new TcpHealthCheck(this, (a) null);
                q2<Payload, Payload.b, g> q2Var = this.f47958g;
                if (q2Var == null) {
                    tcpHealthCheck.send_ = this.f47957f;
                } else {
                    tcpHealthCheck.send_ = q2Var.b();
                }
                l2<Payload, Payload.b, g> l2Var = this.f47960i;
                if (l2Var == null) {
                    if ((this.f47956e & 1) != 0) {
                        this.f47959h = Collections.unmodifiableList(this.f47959h);
                        this.f47956e &= -2;
                    }
                    tcpHealthCheck.receive_ = this.f47959h;
                } else {
                    tcpHealthCheck.receive_ = l2Var.e();
                }
                Q();
                return tcpHealthCheck;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public TcpHealthCheck getDefaultInstanceForType() {
                return TcpHealthCheck.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TcpHealthCheck.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TcpHealthCheck.access$3900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$TcpHealthCheck r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TcpHealthCheck) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$TcpHealthCheck r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TcpHealthCheck) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TcpHealthCheck.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$TcpHealthCheck$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return b0.f48190g;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof TcpHealthCheck) {
                    return i0((TcpHealthCheck) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(TcpHealthCheck tcpHealthCheck) {
                if (tcpHealthCheck == TcpHealthCheck.getDefaultInstance()) {
                    return this;
                }
                if (tcpHealthCheck.hasSend()) {
                    j0(tcpHealthCheck.getSend());
                }
                if (this.f47960i == null) {
                    if (!tcpHealthCheck.receive_.isEmpty()) {
                        if (this.f47959h.isEmpty()) {
                            this.f47959h = tcpHealthCheck.receive_;
                            this.f47956e &= -2;
                        } else {
                            a0();
                            this.f47959h.addAll(tcpHealthCheck.receive_);
                        }
                        R();
                    }
                } else if (!tcpHealthCheck.receive_.isEmpty()) {
                    if (this.f47960i.k()) {
                        this.f47960i.f();
                        this.f47960i = null;
                        this.f47959h = tcpHealthCheck.receive_;
                        this.f47956e &= -2;
                        this.f47960i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f47960i.b(tcpHealthCheck.receive_);
                    }
                }
                z(((GeneratedMessageV3) tcpHealthCheck).unknownFields);
                R();
                return this;
            }

            public b j0(Payload payload) {
                q2<Payload, Payload.b, g> q2Var = this.f47958g;
                if (q2Var == null) {
                    Payload payload2 = this.f47957f;
                    if (payload2 != null) {
                        this.f47957f = Payload.newBuilder(payload2).g0(payload).I();
                    } else {
                        this.f47957f = payload;
                    }
                    R();
                } else {
                    q2Var.e(payload);
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
                this.f47959h = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47959h = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ TcpHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TcpHealthCheck getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return b0.f48190g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TcpHealthCheck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TcpHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TcpHealthCheck parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TcpHealthCheck> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TcpHealthCheck)) {
                return super.equals(obj);
            }
            TcpHealthCheck tcpHealthCheck = (TcpHealthCheck) obj;
            if (hasSend() != tcpHealthCheck.hasSend()) {
                return false;
            }
            return (!hasSend() || getSend().equals(tcpHealthCheck.getSend())) && getReceiveList().equals(tcpHealthCheck.getReceiveList()) && this.unknownFields.equals(tcpHealthCheck.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<TcpHealthCheck> getParserForType() {
            return PARSER;
        }

        public Payload getReceive(int i9) {
            return this.receive_.get(i9);
        }

        public int getReceiveCount() {
            return this.receive_.size();
        }

        public List<Payload> getReceiveList() {
            return this.receive_;
        }

        public g getReceiveOrBuilder(int i9) {
            return this.receive_.get(i9);
        }

        public List<? extends g> getReceiveOrBuilderList() {
            return this.receive_;
        }

        public Payload getSend() {
            Payload payload = this.send_;
            return payload == null ? Payload.getDefaultInstance() : payload;
        }

        public g getSendOrBuilder() {
            return getSend();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.send_ != null ? CodedOutputStream.G(1, getSend()) + 0 : 0;
            for (int i10 = 0; i10 < this.receive_.size(); i10++) {
                G += CodedOutputStream.G(2, this.receive_.get(i10));
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasSend() {
            return this.send_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasSend()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getSend().hashCode();
            }
            if (getReceiveCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getReceiveList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b0.f48191h.d(TcpHealthCheck.class, b.class);
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
            return new TcpHealthCheck();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.send_ != null) {
                codedOutputStream.L0(1, getSend());
            }
            for (int i9 = 0; i9 < this.receive_.size(); i9++) {
                codedOutputStream.L0(2, this.receive_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TcpHealthCheck(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(TcpHealthCheck tcpHealthCheck) {
            return DEFAULT_INSTANCE.toBuilder().i0(tcpHealthCheck);
        }

        public static TcpHealthCheck parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private TcpHealthCheck(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TcpHealthCheck parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (TcpHealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TcpHealthCheck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TcpHealthCheck getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static TcpHealthCheck parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private TcpHealthCheck() {
            this.memoizedIsInitialized = (byte) -1;
            this.receive_ = Collections.emptyList();
        }

        public static TcpHealthCheck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static TcpHealthCheck parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static TcpHealthCheck parseFrom(InputStream inputStream) throws IOException {
            return (TcpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TcpHealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 0) {
                                if (L == 10) {
                                    Payload payload = this.send_;
                                    Payload.b builder = payload != null ? payload.toBuilder() : null;
                                    Payload payload2 = (Payload) pVar.B(Payload.parser(), f0Var);
                                    this.send_ = payload2;
                                    if (builder != null) {
                                        builder.g0(payload2);
                                        this.send_ = builder.I();
                                    }
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.receive_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.receive_.add((Payload) pVar.B(Payload.parser(), f0Var));
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
                        this.receive_ = Collections.unmodifiableList(this.receive_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static TcpHealthCheck parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (TcpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static TcpHealthCheck parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (TcpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TcpHealthCheck parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (TcpHealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class TlsOptions extends GeneratedMessageV3 implements i {
        public static final int ALPN_PROTOCOLS_FIELD_NUMBER = 1;
        private static final TlsOptions DEFAULT_INSTANCE = new TlsOptions();
        private static final e2<TlsOptions> PARSER = new a();
        private static final long serialVersionUID = 0;
        private com.google.protobuf.z0 alpnProtocols_;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<TlsOptions> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TlsOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new TlsOptions(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements i {

            /* renamed from: e  reason: collision with root package name */
            private int f47961e;

            /* renamed from: f  reason: collision with root package name */
            private com.google.protobuf.z0 f47962f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f47961e & 1) == 0) {
                    this.f47962f = new com.google.protobuf.y0(this.f47962f);
                    this.f47961e |= 1;
                }
            }

            private void d0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return b0.f48199p.d(TlsOptions.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TlsOptions build() {
                TlsOptions I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TlsOptions I() {
                TlsOptions tlsOptions = new TlsOptions(this, (a) null);
                if ((this.f47961e & 1) != 0) {
                    this.f47962f = this.f47962f.V0();
                    this.f47961e &= -2;
                }
                tlsOptions.alpnProtocols_ = this.f47962f;
                Q();
                return tlsOptions;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public TlsOptions getDefaultInstanceForType() {
                return TlsOptions.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TlsOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TlsOptions.access$7800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$TlsOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TlsOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$TlsOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TlsOptions) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.TlsOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$TlsOptions$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof TlsOptions) {
                    return h0((TlsOptions) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return b0.f48198o;
            }

            public b h0(TlsOptions tlsOptions) {
                if (tlsOptions == TlsOptions.getDefaultInstance()) {
                    return this;
                }
                if (!tlsOptions.alpnProtocols_.isEmpty()) {
                    if (this.f47962f.isEmpty()) {
                        this.f47962f = tlsOptions.alpnProtocols_;
                        this.f47961e &= -2;
                    } else {
                        a0();
                        this.f47962f.addAll(tlsOptions.alpnProtocols_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) tlsOptions).unknownFields);
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
                this.f47962f = com.google.protobuf.y0.f15344d;
                d0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47962f = com.google.protobuf.y0.f15344d;
                d0();
            }
        }

        /* synthetic */ TlsOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TlsOptions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return b0.f48198o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TlsOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TlsOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TlsOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TlsOptions> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TlsOptions)) {
                return super.equals(obj);
            }
            TlsOptions tlsOptions = (TlsOptions) obj;
            return m1615getAlpnProtocolsList().equals(tlsOptions.m1615getAlpnProtocolsList()) && this.unknownFields.equals(tlsOptions.unknownFields);
        }

        public String getAlpnProtocols(int i9) {
            return this.alpnProtocols_.get(i9);
        }

        public ByteString getAlpnProtocolsBytes(int i9) {
            return this.alpnProtocols_.j0(i9);
        }

        public int getAlpnProtocolsCount() {
            return this.alpnProtocols_.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<TlsOptions> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.alpnProtocols_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.alpnProtocols_.c1(i11));
            }
            int size = 0 + i10 + (m1615getAlpnProtocolsList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
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
            if (getAlpnProtocolsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + m1615getAlpnProtocolsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b0.f48199p.d(TlsOptions.class, b.class);
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
            return new TlsOptions();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.alpnProtocols_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.alpnProtocols_.c1(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TlsOptions(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(TlsOptions tlsOptions) {
            return DEFAULT_INSTANCE.toBuilder().h0(tlsOptions);
        }

        public static TlsOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getAlpnProtocolsList */
        public i2 m1615getAlpnProtocolsList() {
            return this.alpnProtocols_;
        }

        private TlsOptions(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TlsOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (TlsOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TlsOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TlsOptions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static TlsOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private TlsOptions() {
            this.memoizedIsInitialized = (byte) -1;
            this.alpnProtocols_ = com.google.protobuf.y0.f15344d;
        }

        public static TlsOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static TlsOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static TlsOptions parseFrom(InputStream inputStream) throws IOException {
            return (TlsOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TlsOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.alpnProtocols_ = new com.google.protobuf.y0();
                                    z11 |= true;
                                }
                                this.alpnProtocols_.add(K);
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
                        this.alpnProtocols_ = this.alpnProtocols_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static TlsOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (TlsOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static TlsOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (TlsOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TlsOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (TlsOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HealthCheck> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HealthCheck m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HealthCheck(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47963a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f47964b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f47965c;

        static {
            int[] iArr = new int[HealthCheckerCase.values().length];
            f47965c = iArr;
            try {
                iArr[HealthCheckerCase.HTTP_HEALTH_CHECK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47965c[HealthCheckerCase.TCP_HEALTH_CHECK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47965c[HealthCheckerCase.GRPC_HEALTH_CHECK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47965c[HealthCheckerCase.CUSTOM_HEALTH_CHECK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47965c[HealthCheckerCase.HEALTHCHECKER_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[CustomHealthCheck.ConfigTypeCase.values().length];
            f47964b = iArr2;
            try {
                iArr2[CustomHealthCheck.ConfigTypeCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f47964b[CustomHealthCheck.ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[Payload.PayloadCase.values().length];
            f47963a = iArr3;
            try {
                iArr3[Payload.PayloadCase.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f47963a[Payload.PayloadCase.BINARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f47963a[Payload.PayloadCase.PAYLOAD_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements a0 {
        private q2<CustomHealthCheck, CustomHealthCheck.b, d> A;
        private Duration B;
        private q2<Duration, Duration.b, com.google.protobuf.v> C;
        private Duration D;
        private q2<Duration, Duration.b, com.google.protobuf.v> E;
        private Duration F;
        private q2<Duration, Duration.b, com.google.protobuf.v> G;
        private Duration H;
        private q2<Duration, Duration.b, com.google.protobuf.v> I;
        private Duration J;
        private q2<Duration, Duration.b, com.google.protobuf.v> K;
        private Object L;
        private EventServiceConfig M;
        private q2<EventServiceConfig, EventServiceConfig.c, r> N;
        private boolean O;
        private TlsOptions P;
        private q2<TlsOptions, TlsOptions.b, i> Q;
        private Struct R;

        /* renamed from: a1  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f47966a1;

        /* renamed from: e  reason: collision with root package name */
        private int f47967e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47968f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f47969g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f47970h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f47971i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f47972j;

        /* renamed from: k  reason: collision with root package name */
        private Duration f47973k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f47974l;

        /* renamed from: m  reason: collision with root package name */
        private Duration f47975m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f47976n;

        /* renamed from: o  reason: collision with root package name */
        private int f47977o;

        /* renamed from: p  reason: collision with root package name */
        private UInt32Value f47978p;

        /* renamed from: q  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47979q;

        /* renamed from: r  reason: collision with root package name */
        private UInt32Value f47980r;

        /* renamed from: s  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47981s;

        /* renamed from: t  reason: collision with root package name */
        private UInt32Value f47982t;

        /* renamed from: u  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47983u;

        /* renamed from: v  reason: collision with root package name */
        private BoolValue f47984v;

        /* renamed from: w  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47985w;

        /* renamed from: x  reason: collision with root package name */
        private q2<HttpHealthCheck, HttpHealthCheck.b, f> f47986x;

        /* renamed from: y  reason: collision with root package name */
        private q2<TcpHealthCheck, TcpHealthCheck.b, h> f47987y;

        /* renamed from: z  reason: collision with root package name */
        private q2<GrpcHealthCheck, GrpcHealthCheck.b, e> f47988z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public c B0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.I;
            if (q2Var == null) {
                Duration duration2 = this.H;
                if (duration2 != null) {
                    this.H = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.H = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c D0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.G;
            if (q2Var == null) {
                Duration duration2 = this.F;
                if (duration2 != null) {
                    this.F = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.F = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c H0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47979q;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47978p;
                if (uInt32Value2 != null) {
                    this.f47978p = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47978p = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: I0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c J0(boolean z10) {
            this.O = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return b0.f48185b.d(HealthCheck.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: K0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c L0(int i9) {
            this.f47977o = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: M0 */
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
        public HealthCheck build() {
            HealthCheck I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HealthCheck I() {
            HealthCheck healthCheck = new HealthCheck(this, (a) null);
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47970h;
            if (q2Var == null) {
                healthCheck.timeout_ = this.f47969g;
            } else {
                healthCheck.timeout_ = q2Var.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f47972j;
            if (q2Var2 == null) {
                healthCheck.interval_ = this.f47971i;
            } else {
                healthCheck.interval_ = q2Var2.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var3 = this.f47974l;
            if (q2Var3 == null) {
                healthCheck.initialJitter_ = this.f47973k;
            } else {
                healthCheck.initialJitter_ = q2Var3.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var4 = this.f47976n;
            if (q2Var4 == null) {
                healthCheck.intervalJitter_ = this.f47975m;
            } else {
                healthCheck.intervalJitter_ = q2Var4.b();
            }
            healthCheck.intervalJitterPercent_ = this.f47977o;
            q2<UInt32Value, UInt32Value.b, e3> q2Var5 = this.f47979q;
            if (q2Var5 == null) {
                healthCheck.unhealthyThreshold_ = this.f47978p;
            } else {
                healthCheck.unhealthyThreshold_ = q2Var5.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var6 = this.f47981s;
            if (q2Var6 == null) {
                healthCheck.healthyThreshold_ = this.f47980r;
            } else {
                healthCheck.healthyThreshold_ = q2Var6.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var7 = this.f47983u;
            if (q2Var7 == null) {
                healthCheck.altPort_ = this.f47982t;
            } else {
                healthCheck.altPort_ = q2Var7.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var8 = this.f47985w;
            if (q2Var8 == null) {
                healthCheck.reuseConnection_ = this.f47984v;
            } else {
                healthCheck.reuseConnection_ = q2Var8.b();
            }
            if (this.f47967e == 8) {
                q2<HttpHealthCheck, HttpHealthCheck.b, f> q2Var9 = this.f47986x;
                if (q2Var9 == null) {
                    healthCheck.healthChecker_ = this.f47968f;
                } else {
                    healthCheck.healthChecker_ = q2Var9.b();
                }
            }
            if (this.f47967e == 9) {
                q2<TcpHealthCheck, TcpHealthCheck.b, h> q2Var10 = this.f47987y;
                if (q2Var10 == null) {
                    healthCheck.healthChecker_ = this.f47968f;
                } else {
                    healthCheck.healthChecker_ = q2Var10.b();
                }
            }
            if (this.f47967e == 11) {
                q2<GrpcHealthCheck, GrpcHealthCheck.b, e> q2Var11 = this.f47988z;
                if (q2Var11 == null) {
                    healthCheck.healthChecker_ = this.f47968f;
                } else {
                    healthCheck.healthChecker_ = q2Var11.b();
                }
            }
            if (this.f47967e == 13) {
                q2<CustomHealthCheck, CustomHealthCheck.b, d> q2Var12 = this.A;
                if (q2Var12 == null) {
                    healthCheck.healthChecker_ = this.f47968f;
                } else {
                    healthCheck.healthChecker_ = q2Var12.b();
                }
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var13 = this.C;
            if (q2Var13 == null) {
                healthCheck.noTrafficInterval_ = this.B;
            } else {
                healthCheck.noTrafficInterval_ = q2Var13.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var14 = this.E;
            if (q2Var14 == null) {
                healthCheck.noTrafficHealthyInterval_ = this.D;
            } else {
                healthCheck.noTrafficHealthyInterval_ = q2Var14.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var15 = this.G;
            if (q2Var15 == null) {
                healthCheck.unhealthyInterval_ = this.F;
            } else {
                healthCheck.unhealthyInterval_ = q2Var15.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var16 = this.I;
            if (q2Var16 == null) {
                healthCheck.unhealthyEdgeInterval_ = this.H;
            } else {
                healthCheck.unhealthyEdgeInterval_ = q2Var16.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var17 = this.K;
            if (q2Var17 == null) {
                healthCheck.healthyEdgeInterval_ = this.J;
            } else {
                healthCheck.healthyEdgeInterval_ = q2Var17.b();
            }
            healthCheck.eventLogPath_ = this.L;
            q2<EventServiceConfig, EventServiceConfig.c, r> q2Var18 = this.N;
            if (q2Var18 == null) {
                healthCheck.eventService_ = this.M;
            } else {
                healthCheck.eventService_ = q2Var18.b();
            }
            healthCheck.alwaysLogHealthCheckFailures_ = this.O;
            q2<TlsOptions, TlsOptions.b, i> q2Var19 = this.Q;
            if (q2Var19 == null) {
                healthCheck.tlsOptions_ = this.P;
            } else {
                healthCheck.tlsOptions_ = q2Var19.b();
            }
            q2<Struct, Struct.b, u2> q2Var20 = this.f47966a1;
            if (q2Var20 == null) {
                healthCheck.transportSocketMatchCriteria_ = this.R;
            } else {
                healthCheck.transportSocketMatchCriteria_ = q2Var20.b();
            }
            healthCheck.healthCheckerCase_ = this.f47967e;
            Q();
            return healthCheck;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HealthCheck getDefaultInstanceForType() {
            return HealthCheck.getDefaultInstance();
        }

        public c d0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47983u;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47982t;
                if (uInt32Value2 != null) {
                    this.f47982t = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47982t = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c e0(CustomHealthCheck customHealthCheck) {
            q2<CustomHealthCheck, CustomHealthCheck.b, d> q2Var = this.A;
            if (q2Var == null) {
                if (this.f47967e == 13 && this.f47968f != CustomHealthCheck.getDefaultInstance()) {
                    this.f47968f = CustomHealthCheck.newBuilder((CustomHealthCheck) this.f47968f).g0(customHealthCheck).I();
                } else {
                    this.f47968f = customHealthCheck;
                }
                R();
            } else {
                if (this.f47967e == 13) {
                    q2Var.e(customHealthCheck);
                }
                this.A.g(customHealthCheck);
            }
            this.f47967e = 13;
            return this;
        }

        public c g0(EventServiceConfig eventServiceConfig) {
            q2<EventServiceConfig, EventServiceConfig.c, r> q2Var = this.N;
            if (q2Var == null) {
                EventServiceConfig eventServiceConfig2 = this.M;
                if (eventServiceConfig2 != null) {
                    this.M = EventServiceConfig.newBuilder(eventServiceConfig2).g0(eventServiceConfig).I();
                } else {
                    this.M = eventServiceConfig;
                }
                R();
            } else {
                q2Var.e(eventServiceConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return b0.f48184a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.access$10700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HealthCheck$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof HealthCheck) {
                return j0((HealthCheck) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(HealthCheck healthCheck) {
            if (healthCheck == HealthCheck.getDefaultInstance()) {
                return this;
            }
            if (healthCheck.hasTimeout()) {
                x0(healthCheck.getTimeout());
            }
            if (healthCheck.hasInterval()) {
                q0(healthCheck.getInterval());
            }
            if (healthCheck.hasInitialJitter()) {
                o0(healthCheck.getInitialJitter());
            }
            if (healthCheck.hasIntervalJitter()) {
                r0(healthCheck.getIntervalJitter());
            }
            if (healthCheck.getIntervalJitterPercent() != 0) {
                L0(healthCheck.getIntervalJitterPercent());
            }
            if (healthCheck.hasUnhealthyThreshold()) {
                H0(healthCheck.getUnhealthyThreshold());
            }
            if (healthCheck.hasHealthyThreshold()) {
                m0(healthCheck.getHealthyThreshold());
            }
            if (healthCheck.hasAltPort()) {
                d0(healthCheck.getAltPort());
            }
            if (healthCheck.hasReuseConnection()) {
                u0(healthCheck.getReuseConnection());
            }
            if (healthCheck.hasNoTrafficInterval()) {
                t0(healthCheck.getNoTrafficInterval());
            }
            if (healthCheck.hasNoTrafficHealthyInterval()) {
                s0(healthCheck.getNoTrafficHealthyInterval());
            }
            if (healthCheck.hasUnhealthyInterval()) {
                D0(healthCheck.getUnhealthyInterval());
            }
            if (healthCheck.hasUnhealthyEdgeInterval()) {
                B0(healthCheck.getUnhealthyEdgeInterval());
            }
            if (healthCheck.hasHealthyEdgeInterval()) {
                l0(healthCheck.getHealthyEdgeInterval());
            }
            if (!healthCheck.getEventLogPath().isEmpty()) {
                this.L = healthCheck.eventLogPath_;
                R();
            }
            if (healthCheck.hasEventService()) {
                g0(healthCheck.getEventService());
            }
            if (healthCheck.getAlwaysLogHealthCheckFailures()) {
                J0(healthCheck.getAlwaysLogHealthCheckFailures());
            }
            if (healthCheck.hasTlsOptions()) {
                y0(healthCheck.getTlsOptions());
            }
            if (healthCheck.hasTransportSocketMatchCriteria()) {
                z0(healthCheck.getTransportSocketMatchCriteria());
            }
            int i9 = b.f47965c[healthCheck.getHealthCheckerCase().ordinal()];
            if (i9 == 1) {
                n0(healthCheck.getHttpHealthCheck());
            } else if (i9 == 2) {
                v0(healthCheck.getTcpHealthCheck());
            } else if (i9 == 3) {
                k0(healthCheck.getGrpcHealthCheck());
            } else if (i9 == 4) {
                e0(healthCheck.getCustomHealthCheck());
            }
            z(((GeneratedMessageV3) healthCheck).unknownFields);
            R();
            return this;
        }

        public c k0(GrpcHealthCheck grpcHealthCheck) {
            q2<GrpcHealthCheck, GrpcHealthCheck.b, e> q2Var = this.f47988z;
            if (q2Var == null) {
                if (this.f47967e == 11 && this.f47968f != GrpcHealthCheck.getDefaultInstance()) {
                    this.f47968f = GrpcHealthCheck.newBuilder((GrpcHealthCheck) this.f47968f).g0(grpcHealthCheck).I();
                } else {
                    this.f47968f = grpcHealthCheck;
                }
                R();
            } else {
                if (this.f47967e == 11) {
                    q2Var.e(grpcHealthCheck);
                }
                this.f47988z.g(grpcHealthCheck);
            }
            this.f47967e = 11;
            return this;
        }

        public c l0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.K;
            if (q2Var == null) {
                Duration duration2 = this.J;
                if (duration2 != null) {
                    this.J = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.J = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c m0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47981s;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47980r;
                if (uInt32Value2 != null) {
                    this.f47980r = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47980r = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c n0(HttpHealthCheck httpHealthCheck) {
            q2<HttpHealthCheck, HttpHealthCheck.b, f> q2Var = this.f47986x;
            if (q2Var == null) {
                if (this.f47967e == 8 && this.f47968f != HttpHealthCheck.getDefaultInstance()) {
                    this.f47968f = HttpHealthCheck.newBuilder((HttpHealthCheck) this.f47968f).l0(httpHealthCheck).I();
                } else {
                    this.f47968f = httpHealthCheck;
                }
                R();
            } else {
                if (this.f47967e == 8) {
                    q2Var.e(httpHealthCheck);
                }
                this.f47986x.g(httpHealthCheck);
            }
            this.f47967e = 8;
            return this;
        }

        public c o0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47974l;
            if (q2Var == null) {
                Duration duration2 = this.f47973k;
                if (duration2 != null) {
                    this.f47973k = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47973k = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c q0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47972j;
            if (q2Var == null) {
                Duration duration2 = this.f47971i;
                if (duration2 != null) {
                    this.f47971i = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47971i = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c r0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47976n;
            if (q2Var == null) {
                Duration duration2 = this.f47975m;
                if (duration2 != null) {
                    this.f47975m = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47975m = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c s0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.E;
            if (q2Var == null) {
                Duration duration2 = this.D;
                if (duration2 != null) {
                    this.D = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.D = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c t0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.C;
            if (q2Var == null) {
                Duration duration2 = this.B;
                if (duration2 != null) {
                    this.B = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.B = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c u0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47985w;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f47984v;
                if (boolValue2 != null) {
                    this.f47984v = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f47984v = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c v0(TcpHealthCheck tcpHealthCheck) {
            q2<TcpHealthCheck, TcpHealthCheck.b, h> q2Var = this.f47987y;
            if (q2Var == null) {
                if (this.f47967e == 9 && this.f47968f != TcpHealthCheck.getDefaultInstance()) {
                    this.f47968f = TcpHealthCheck.newBuilder((TcpHealthCheck) this.f47968f).i0(tcpHealthCheck).I();
                } else {
                    this.f47968f = tcpHealthCheck;
                }
                R();
            } else {
                if (this.f47967e == 9) {
                    q2Var.e(tcpHealthCheck);
                }
                this.f47987y.g(tcpHealthCheck);
            }
            this.f47967e = 9;
            return this;
        }

        public c x0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47970h;
            if (q2Var == null) {
                Duration duration2 = this.f47969g;
                if (duration2 != null) {
                    this.f47969g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47969g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c y0(TlsOptions tlsOptions) {
            q2<TlsOptions, TlsOptions.b, i> q2Var = this.Q;
            if (q2Var == null) {
                TlsOptions tlsOptions2 = this.P;
                if (tlsOptions2 != null) {
                    this.P = TlsOptions.newBuilder(tlsOptions2).h0(tlsOptions).I();
                } else {
                    this.P = tlsOptions;
                }
                R();
            } else {
                q2Var.e(tlsOptions);
            }
            return this;
        }

        public c z0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f47966a1;
            if (q2Var == null) {
                Struct struct2 = this.R;
                if (struct2 != null) {
                    this.R = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.R = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47967e = 0;
            this.L = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47967e = 0;
            this.L = "";
            b0();
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

    /* synthetic */ HealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HealthCheck getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return b0.f48184a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HealthCheck parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HealthCheck parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HealthCheck> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HealthCheck)) {
            return super.equals(obj);
        }
        HealthCheck healthCheck = (HealthCheck) obj;
        if (hasTimeout() != healthCheck.hasTimeout()) {
            return false;
        }
        if ((!hasTimeout() || getTimeout().equals(healthCheck.getTimeout())) && hasInterval() == healthCheck.hasInterval()) {
            if ((!hasInterval() || getInterval().equals(healthCheck.getInterval())) && hasInitialJitter() == healthCheck.hasInitialJitter()) {
                if ((!hasInitialJitter() || getInitialJitter().equals(healthCheck.getInitialJitter())) && hasIntervalJitter() == healthCheck.hasIntervalJitter()) {
                    if ((!hasIntervalJitter() || getIntervalJitter().equals(healthCheck.getIntervalJitter())) && getIntervalJitterPercent() == healthCheck.getIntervalJitterPercent() && hasUnhealthyThreshold() == healthCheck.hasUnhealthyThreshold()) {
                        if ((!hasUnhealthyThreshold() || getUnhealthyThreshold().equals(healthCheck.getUnhealthyThreshold())) && hasHealthyThreshold() == healthCheck.hasHealthyThreshold()) {
                            if ((!hasHealthyThreshold() || getHealthyThreshold().equals(healthCheck.getHealthyThreshold())) && hasAltPort() == healthCheck.hasAltPort()) {
                                if ((!hasAltPort() || getAltPort().equals(healthCheck.getAltPort())) && hasReuseConnection() == healthCheck.hasReuseConnection()) {
                                    if ((!hasReuseConnection() || getReuseConnection().equals(healthCheck.getReuseConnection())) && hasNoTrafficInterval() == healthCheck.hasNoTrafficInterval()) {
                                        if ((!hasNoTrafficInterval() || getNoTrafficInterval().equals(healthCheck.getNoTrafficInterval())) && hasNoTrafficHealthyInterval() == healthCheck.hasNoTrafficHealthyInterval()) {
                                            if ((!hasNoTrafficHealthyInterval() || getNoTrafficHealthyInterval().equals(healthCheck.getNoTrafficHealthyInterval())) && hasUnhealthyInterval() == healthCheck.hasUnhealthyInterval()) {
                                                if ((!hasUnhealthyInterval() || getUnhealthyInterval().equals(healthCheck.getUnhealthyInterval())) && hasUnhealthyEdgeInterval() == healthCheck.hasUnhealthyEdgeInterval()) {
                                                    if ((!hasUnhealthyEdgeInterval() || getUnhealthyEdgeInterval().equals(healthCheck.getUnhealthyEdgeInterval())) && hasHealthyEdgeInterval() == healthCheck.hasHealthyEdgeInterval()) {
                                                        if ((!hasHealthyEdgeInterval() || getHealthyEdgeInterval().equals(healthCheck.getHealthyEdgeInterval())) && getEventLogPath().equals(healthCheck.getEventLogPath()) && hasEventService() == healthCheck.hasEventService()) {
                                                            if ((!hasEventService() || getEventService().equals(healthCheck.getEventService())) && getAlwaysLogHealthCheckFailures() == healthCheck.getAlwaysLogHealthCheckFailures() && hasTlsOptions() == healthCheck.hasTlsOptions()) {
                                                                if ((!hasTlsOptions() || getTlsOptions().equals(healthCheck.getTlsOptions())) && hasTransportSocketMatchCriteria() == healthCheck.hasTransportSocketMatchCriteria()) {
                                                                    if ((!hasTransportSocketMatchCriteria() || getTransportSocketMatchCriteria().equals(healthCheck.getTransportSocketMatchCriteria())) && getHealthCheckerCase().equals(healthCheck.getHealthCheckerCase())) {
                                                                        int i9 = this.healthCheckerCase_;
                                                                        if (i9 != 8) {
                                                                            if (i9 != 9) {
                                                                                if (i9 != 11) {
                                                                                    if (i9 == 13 && !getCustomHealthCheck().equals(healthCheck.getCustomHealthCheck())) {
                                                                                        return false;
                                                                                    }
                                                                                } else if (!getGrpcHealthCheck().equals(healthCheck.getGrpcHealthCheck())) {
                                                                                    return false;
                                                                                }
                                                                            } else if (!getTcpHealthCheck().equals(healthCheck.getTcpHealthCheck())) {
                                                                                return false;
                                                                            }
                                                                        } else if (!getHttpHealthCheck().equals(healthCheck.getHttpHealthCheck())) {
                                                                            return false;
                                                                        }
                                                                        return this.unknownFields.equals(healthCheck.unknownFields);
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

    public UInt32Value getAltPort() {
        UInt32Value uInt32Value = this.altPort_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getAltPortOrBuilder() {
        return getAltPort();
    }

    public boolean getAlwaysLogHealthCheckFailures() {
        return this.alwaysLogHealthCheckFailures_;
    }

    public CustomHealthCheck getCustomHealthCheck() {
        if (this.healthCheckerCase_ == 13) {
            return (CustomHealthCheck) this.healthChecker_;
        }
        return CustomHealthCheck.getDefaultInstance();
    }

    public d getCustomHealthCheckOrBuilder() {
        if (this.healthCheckerCase_ == 13) {
            return (CustomHealthCheck) this.healthChecker_;
        }
        return CustomHealthCheck.getDefaultInstance();
    }

    public String getEventLogPath() {
        Object obj = this.eventLogPath_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.eventLogPath_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getEventLogPathBytes() {
        Object obj = this.eventLogPath_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.eventLogPath_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public EventServiceConfig getEventService() {
        EventServiceConfig eventServiceConfig = this.eventService_;
        return eventServiceConfig == null ? EventServiceConfig.getDefaultInstance() : eventServiceConfig;
    }

    public r getEventServiceOrBuilder() {
        return getEventService();
    }

    public GrpcHealthCheck getGrpcHealthCheck() {
        if (this.healthCheckerCase_ == 11) {
            return (GrpcHealthCheck) this.healthChecker_;
        }
        return GrpcHealthCheck.getDefaultInstance();
    }

    public e getGrpcHealthCheckOrBuilder() {
        if (this.healthCheckerCase_ == 11) {
            return (GrpcHealthCheck) this.healthChecker_;
        }
        return GrpcHealthCheck.getDefaultInstance();
    }

    public HealthCheckerCase getHealthCheckerCase() {
        return HealthCheckerCase.forNumber(this.healthCheckerCase_);
    }

    public Duration getHealthyEdgeInterval() {
        Duration duration = this.healthyEdgeInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getHealthyEdgeIntervalOrBuilder() {
        return getHealthyEdgeInterval();
    }

    public UInt32Value getHealthyThreshold() {
        UInt32Value uInt32Value = this.healthyThreshold_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getHealthyThresholdOrBuilder() {
        return getHealthyThreshold();
    }

    public HttpHealthCheck getHttpHealthCheck() {
        if (this.healthCheckerCase_ == 8) {
            return (HttpHealthCheck) this.healthChecker_;
        }
        return HttpHealthCheck.getDefaultInstance();
    }

    public f getHttpHealthCheckOrBuilder() {
        if (this.healthCheckerCase_ == 8) {
            return (HttpHealthCheck) this.healthChecker_;
        }
        return HttpHealthCheck.getDefaultInstance();
    }

    public Duration getInitialJitter() {
        Duration duration = this.initialJitter_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getInitialJitterOrBuilder() {
        return getInitialJitter();
    }

    public Duration getInterval() {
        Duration duration = this.interval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public Duration getIntervalJitter() {
        Duration duration = this.intervalJitter_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getIntervalJitterOrBuilder() {
        return getIntervalJitter();
    }

    public int getIntervalJitterPercent() {
        return this.intervalJitterPercent_;
    }

    public com.google.protobuf.v getIntervalOrBuilder() {
        return getInterval();
    }

    public Duration getNoTrafficHealthyInterval() {
        Duration duration = this.noTrafficHealthyInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getNoTrafficHealthyIntervalOrBuilder() {
        return getNoTrafficHealthyInterval();
    }

    public Duration getNoTrafficInterval() {
        Duration duration = this.noTrafficInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getNoTrafficIntervalOrBuilder() {
        return getNoTrafficInterval();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HealthCheck> getParserForType() {
        return PARSER;
    }

    public BoolValue getReuseConnection() {
        BoolValue boolValue = this.reuseConnection_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getReuseConnectionOrBuilder() {
        return getReuseConnection();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.timeout_ != null ? 0 + CodedOutputStream.G(1, getTimeout()) : 0;
        if (this.interval_ != null) {
            G += CodedOutputStream.G(2, getInterval());
        }
        if (this.intervalJitter_ != null) {
            G += CodedOutputStream.G(3, getIntervalJitter());
        }
        if (this.unhealthyThreshold_ != null) {
            G += CodedOutputStream.G(4, getUnhealthyThreshold());
        }
        if (this.healthyThreshold_ != null) {
            G += CodedOutputStream.G(5, getHealthyThreshold());
        }
        if (this.altPort_ != null) {
            G += CodedOutputStream.G(6, getAltPort());
        }
        if (this.reuseConnection_ != null) {
            G += CodedOutputStream.G(7, getReuseConnection());
        }
        if (this.healthCheckerCase_ == 8) {
            G += CodedOutputStream.G(8, (HttpHealthCheck) this.healthChecker_);
        }
        if (this.healthCheckerCase_ == 9) {
            G += CodedOutputStream.G(9, (TcpHealthCheck) this.healthChecker_);
        }
        if (this.healthCheckerCase_ == 11) {
            G += CodedOutputStream.G(11, (GrpcHealthCheck) this.healthChecker_);
        }
        if (this.noTrafficInterval_ != null) {
            G += CodedOutputStream.G(12, getNoTrafficInterval());
        }
        if (this.healthCheckerCase_ == 13) {
            G += CodedOutputStream.G(13, (CustomHealthCheck) this.healthChecker_);
        }
        if (this.unhealthyInterval_ != null) {
            G += CodedOutputStream.G(14, getUnhealthyInterval());
        }
        if (this.unhealthyEdgeInterval_ != null) {
            G += CodedOutputStream.G(15, getUnhealthyEdgeInterval());
        }
        if (this.healthyEdgeInterval_ != null) {
            G += CodedOutputStream.G(16, getHealthyEdgeInterval());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.eventLogPath_)) {
            G += GeneratedMessageV3.computeStringSize(17, this.eventLogPath_);
        }
        int i10 = this.intervalJitterPercent_;
        if (i10 != 0) {
            G += CodedOutputStream.Y(18, i10);
        }
        boolean z10 = this.alwaysLogHealthCheckFailures_;
        if (z10) {
            G += CodedOutputStream.e(19, z10);
        }
        if (this.initialJitter_ != null) {
            G += CodedOutputStream.G(20, getInitialJitter());
        }
        if (this.tlsOptions_ != null) {
            G += CodedOutputStream.G(21, getTlsOptions());
        }
        if (this.eventService_ != null) {
            G += CodedOutputStream.G(22, getEventService());
        }
        if (this.transportSocketMatchCriteria_ != null) {
            G += CodedOutputStream.G(23, getTransportSocketMatchCriteria());
        }
        if (this.noTrafficHealthyInterval_ != null) {
            G += CodedOutputStream.G(24, getNoTrafficHealthyInterval());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TcpHealthCheck getTcpHealthCheck() {
        if (this.healthCheckerCase_ == 9) {
            return (TcpHealthCheck) this.healthChecker_;
        }
        return TcpHealthCheck.getDefaultInstance();
    }

    public h getTcpHealthCheckOrBuilder() {
        if (this.healthCheckerCase_ == 9) {
            return (TcpHealthCheck) this.healthChecker_;
        }
        return TcpHealthCheck.getDefaultInstance();
    }

    public Duration getTimeout() {
        Duration duration = this.timeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getTimeoutOrBuilder() {
        return getTimeout();
    }

    public TlsOptions getTlsOptions() {
        TlsOptions tlsOptions = this.tlsOptions_;
        return tlsOptions == null ? TlsOptions.getDefaultInstance() : tlsOptions;
    }

    public i getTlsOptionsOrBuilder() {
        return getTlsOptions();
    }

    public Struct getTransportSocketMatchCriteria() {
        Struct struct = this.transportSocketMatchCriteria_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getTransportSocketMatchCriteriaOrBuilder() {
        return getTransportSocketMatchCriteria();
    }

    public Duration getUnhealthyEdgeInterval() {
        Duration duration = this.unhealthyEdgeInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getUnhealthyEdgeIntervalOrBuilder() {
        return getUnhealthyEdgeInterval();
    }

    public Duration getUnhealthyInterval() {
        Duration duration = this.unhealthyInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getUnhealthyIntervalOrBuilder() {
        return getUnhealthyInterval();
    }

    public UInt32Value getUnhealthyThreshold() {
        UInt32Value uInt32Value = this.unhealthyThreshold_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getUnhealthyThresholdOrBuilder() {
        return getUnhealthyThreshold();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAltPort() {
        return this.altPort_ != null;
    }

    public boolean hasCustomHealthCheck() {
        return this.healthCheckerCase_ == 13;
    }

    public boolean hasEventService() {
        return this.eventService_ != null;
    }

    public boolean hasGrpcHealthCheck() {
        return this.healthCheckerCase_ == 11;
    }

    public boolean hasHealthyEdgeInterval() {
        return this.healthyEdgeInterval_ != null;
    }

    public boolean hasHealthyThreshold() {
        return this.healthyThreshold_ != null;
    }

    public boolean hasHttpHealthCheck() {
        return this.healthCheckerCase_ == 8;
    }

    public boolean hasInitialJitter() {
        return this.initialJitter_ != null;
    }

    public boolean hasInterval() {
        return this.interval_ != null;
    }

    public boolean hasIntervalJitter() {
        return this.intervalJitter_ != null;
    }

    public boolean hasNoTrafficHealthyInterval() {
        return this.noTrafficHealthyInterval_ != null;
    }

    public boolean hasNoTrafficInterval() {
        return this.noTrafficInterval_ != null;
    }

    public boolean hasReuseConnection() {
        return this.reuseConnection_ != null;
    }

    public boolean hasTcpHealthCheck() {
        return this.healthCheckerCase_ == 9;
    }

    public boolean hasTimeout() {
        return this.timeout_ != null;
    }

    public boolean hasTlsOptions() {
        return this.tlsOptions_ != null;
    }

    public boolean hasTransportSocketMatchCriteria() {
        return this.transportSocketMatchCriteria_ != null;
    }

    public boolean hasUnhealthyEdgeInterval() {
        return this.unhealthyEdgeInterval_ != null;
    }

    public boolean hasUnhealthyInterval() {
        return this.unhealthyInterval_ != null;
    }

    public boolean hasUnhealthyThreshold() {
        return this.unhealthyThreshold_ != null;
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
        if (hasTimeout()) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + getTimeout().hashCode();
        }
        if (hasInterval()) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getInterval().hashCode();
        }
        if (hasInitialJitter()) {
            hashCode2 = (((hashCode2 * 37) + 20) * 53) + getInitialJitter().hashCode();
        }
        if (hasIntervalJitter()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getIntervalJitter().hashCode();
        }
        int intervalJitterPercent = (((hashCode2 * 37) + 18) * 53) + getIntervalJitterPercent();
        if (hasUnhealthyThreshold()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 4) * 53) + getUnhealthyThreshold().hashCode();
        }
        if (hasHealthyThreshold()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 5) * 53) + getHealthyThreshold().hashCode();
        }
        if (hasAltPort()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 6) * 53) + getAltPort().hashCode();
        }
        if (hasReuseConnection()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 7) * 53) + getReuseConnection().hashCode();
        }
        if (hasNoTrafficInterval()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 12) * 53) + getNoTrafficInterval().hashCode();
        }
        if (hasNoTrafficHealthyInterval()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 24) * 53) + getNoTrafficHealthyInterval().hashCode();
        }
        if (hasUnhealthyInterval()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 14) * 53) + getUnhealthyInterval().hashCode();
        }
        if (hasUnhealthyEdgeInterval()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 15) * 53) + getUnhealthyEdgeInterval().hashCode();
        }
        if (hasHealthyEdgeInterval()) {
            intervalJitterPercent = (((intervalJitterPercent * 37) + 16) * 53) + getHealthyEdgeInterval().hashCode();
        }
        int hashCode3 = (((intervalJitterPercent * 37) + 17) * 53) + getEventLogPath().hashCode();
        if (hasEventService()) {
            hashCode3 = (((hashCode3 * 37) + 22) * 53) + getEventService().hashCode();
        }
        int d10 = (((hashCode3 * 37) + 19) * 53) + com.google.protobuf.u0.d(getAlwaysLogHealthCheckFailures());
        if (hasTlsOptions()) {
            d10 = (((d10 * 37) + 21) * 53) + getTlsOptions().hashCode();
        }
        if (hasTransportSocketMatchCriteria()) {
            d10 = (((d10 * 37) + 23) * 53) + getTransportSocketMatchCriteria().hashCode();
        }
        int i11 = this.healthCheckerCase_;
        if (i11 == 8) {
            i9 = ((d10 * 37) + 8) * 53;
            hashCode = getHttpHealthCheck().hashCode();
        } else if (i11 == 9) {
            i9 = ((d10 * 37) + 9) * 53;
            hashCode = getTcpHealthCheck().hashCode();
        } else if (i11 == 11) {
            i9 = ((d10 * 37) + 11) * 53;
            hashCode = getGrpcHealthCheck().hashCode();
        } else {
            if (i11 == 13) {
                i9 = ((d10 * 37) + 13) * 53;
                hashCode = getCustomHealthCheck().hashCode();
            }
            int hashCode4 = (d10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode4;
            return hashCode4;
        }
        d10 = i9 + hashCode;
        int hashCode42 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode42;
        return hashCode42;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return b0.f48185b.d(HealthCheck.class, c.class);
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
        return new HealthCheck();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.timeout_ != null) {
            codedOutputStream.L0(1, getTimeout());
        }
        if (this.interval_ != null) {
            codedOutputStream.L0(2, getInterval());
        }
        if (this.intervalJitter_ != null) {
            codedOutputStream.L0(3, getIntervalJitter());
        }
        if (this.unhealthyThreshold_ != null) {
            codedOutputStream.L0(4, getUnhealthyThreshold());
        }
        if (this.healthyThreshold_ != null) {
            codedOutputStream.L0(5, getHealthyThreshold());
        }
        if (this.altPort_ != null) {
            codedOutputStream.L0(6, getAltPort());
        }
        if (this.reuseConnection_ != null) {
            codedOutputStream.L0(7, getReuseConnection());
        }
        if (this.healthCheckerCase_ == 8) {
            codedOutputStream.L0(8, (HttpHealthCheck) this.healthChecker_);
        }
        if (this.healthCheckerCase_ == 9) {
            codedOutputStream.L0(9, (TcpHealthCheck) this.healthChecker_);
        }
        if (this.healthCheckerCase_ == 11) {
            codedOutputStream.L0(11, (GrpcHealthCheck) this.healthChecker_);
        }
        if (this.noTrafficInterval_ != null) {
            codedOutputStream.L0(12, getNoTrafficInterval());
        }
        if (this.healthCheckerCase_ == 13) {
            codedOutputStream.L0(13, (CustomHealthCheck) this.healthChecker_);
        }
        if (this.unhealthyInterval_ != null) {
            codedOutputStream.L0(14, getUnhealthyInterval());
        }
        if (this.unhealthyEdgeInterval_ != null) {
            codedOutputStream.L0(15, getUnhealthyEdgeInterval());
        }
        if (this.healthyEdgeInterval_ != null) {
            codedOutputStream.L0(16, getHealthyEdgeInterval());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.eventLogPath_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 17, this.eventLogPath_);
        }
        int i9 = this.intervalJitterPercent_;
        if (i9 != 0) {
            codedOutputStream.c1(18, i9);
        }
        boolean z10 = this.alwaysLogHealthCheckFailures_;
        if (z10) {
            codedOutputStream.n0(19, z10);
        }
        if (this.initialJitter_ != null) {
            codedOutputStream.L0(20, getInitialJitter());
        }
        if (this.tlsOptions_ != null) {
            codedOutputStream.L0(21, getTlsOptions());
        }
        if (this.eventService_ != null) {
            codedOutputStream.L0(22, getEventService());
        }
        if (this.transportSocketMatchCriteria_ != null) {
            codedOutputStream.L0(23, getTransportSocketMatchCriteria());
        }
        if (this.noTrafficHealthyInterval_ != null) {
            codedOutputStream.L0(24, getNoTrafficHealthyInterval());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HealthCheck(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HealthCheck healthCheck) {
        return DEFAULT_INSTANCE.toBuilder().j0(healthCheck);
    }

    public static HealthCheck parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HealthCheck(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.healthCheckerCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HealthCheck parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HealthCheck) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HealthCheck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HealthCheck getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static HealthCheck parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static HealthCheck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private HealthCheck() {
        this.healthCheckerCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.eventLogPath_ = "";
    }

    public static HealthCheck parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HealthCheck parseFrom(InputStream inputStream) throws IOException {
        return (HealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HealthCheck parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private HealthCheck(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            Duration duration = this.timeout_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.timeout_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.timeout_ = builder.I();
                            } else {
                                continue;
                            }
                        case 18:
                            Duration duration3 = this.interval_;
                            Duration.b builder2 = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.interval_ = duration4;
                            if (builder2 != null) {
                                builder2.e0(duration4);
                                this.interval_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 26:
                            Duration duration5 = this.intervalJitter_;
                            Duration.b builder3 = duration5 != null ? duration5.toBuilder() : null;
                            Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.intervalJitter_ = duration6;
                            if (builder3 != null) {
                                builder3.e0(duration6);
                                this.intervalJitter_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 34:
                            UInt32Value uInt32Value = this.unhealthyThreshold_;
                            UInt32Value.b builder4 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.unhealthyThreshold_ = uInt32Value2;
                            if (builder4 != null) {
                                builder4.g0(uInt32Value2);
                                this.unhealthyThreshold_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 42:
                            UInt32Value uInt32Value3 = this.healthyThreshold_;
                            UInt32Value.b builder5 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.healthyThreshold_ = uInt32Value4;
                            if (builder5 != null) {
                                builder5.g0(uInt32Value4);
                                this.healthyThreshold_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 50:
                            UInt32Value uInt32Value5 = this.altPort_;
                            UInt32Value.b builder6 = uInt32Value5 != null ? uInt32Value5.toBuilder() : null;
                            UInt32Value uInt32Value6 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.altPort_ = uInt32Value6;
                            if (builder6 != null) {
                                builder6.g0(uInt32Value6);
                                this.altPort_ = builder6.I();
                            } else {
                                continue;
                            }
                        case 58:
                            BoolValue boolValue = this.reuseConnection_;
                            BoolValue.b builder7 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.reuseConnection_ = boolValue2;
                            if (builder7 != null) {
                                builder7.d0(boolValue2);
                                this.reuseConnection_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 66:
                            HttpHealthCheck.b builder8 = this.healthCheckerCase_ == 8 ? ((HttpHealthCheck) this.healthChecker_).toBuilder() : null;
                            o1 B = pVar.B(HttpHealthCheck.parser(), f0Var);
                            this.healthChecker_ = B;
                            if (builder8 != null) {
                                builder8.l0((HttpHealthCheck) B);
                                this.healthChecker_ = builder8.I();
                            }
                            this.healthCheckerCase_ = 8;
                            continue;
                        case 74:
                            TcpHealthCheck.b builder9 = this.healthCheckerCase_ == 9 ? ((TcpHealthCheck) this.healthChecker_).toBuilder() : null;
                            o1 B2 = pVar.B(TcpHealthCheck.parser(), f0Var);
                            this.healthChecker_ = B2;
                            if (builder9 != null) {
                                builder9.i0((TcpHealthCheck) B2);
                                this.healthChecker_ = builder9.I();
                            }
                            this.healthCheckerCase_ = 9;
                            continue;
                        case 90:
                            GrpcHealthCheck.b builder10 = this.healthCheckerCase_ == 11 ? ((GrpcHealthCheck) this.healthChecker_).toBuilder() : null;
                            o1 B3 = pVar.B(GrpcHealthCheck.parser(), f0Var);
                            this.healthChecker_ = B3;
                            if (builder10 != null) {
                                builder10.g0((GrpcHealthCheck) B3);
                                this.healthChecker_ = builder10.I();
                            }
                            this.healthCheckerCase_ = 11;
                            continue;
                        case 98:
                            Duration duration7 = this.noTrafficInterval_;
                            Duration.b builder11 = duration7 != null ? duration7.toBuilder() : null;
                            Duration duration8 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.noTrafficInterval_ = duration8;
                            if (builder11 != null) {
                                builder11.e0(duration8);
                                this.noTrafficInterval_ = builder11.I();
                            } else {
                                continue;
                            }
                        case 106:
                            CustomHealthCheck.b builder12 = this.healthCheckerCase_ == 13 ? ((CustomHealthCheck) this.healthChecker_).toBuilder() : null;
                            o1 B4 = pVar.B(CustomHealthCheck.parser(), f0Var);
                            this.healthChecker_ = B4;
                            if (builder12 != null) {
                                builder12.g0((CustomHealthCheck) B4);
                                this.healthChecker_ = builder12.I();
                            }
                            this.healthCheckerCase_ = 13;
                            continue;
                        case 114:
                            Duration duration9 = this.unhealthyInterval_;
                            Duration.b builder13 = duration9 != null ? duration9.toBuilder() : null;
                            Duration duration10 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.unhealthyInterval_ = duration10;
                            if (builder13 != null) {
                                builder13.e0(duration10);
                                this.unhealthyInterval_ = builder13.I();
                            } else {
                                continue;
                            }
                        case 122:
                            Duration duration11 = this.unhealthyEdgeInterval_;
                            Duration.b builder14 = duration11 != null ? duration11.toBuilder() : null;
                            Duration duration12 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.unhealthyEdgeInterval_ = duration12;
                            if (builder14 != null) {
                                builder14.e0(duration12);
                                this.unhealthyEdgeInterval_ = builder14.I();
                            } else {
                                continue;
                            }
                        case 130:
                            Duration duration13 = this.healthyEdgeInterval_;
                            Duration.b builder15 = duration13 != null ? duration13.toBuilder() : null;
                            Duration duration14 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.healthyEdgeInterval_ = duration14;
                            if (builder15 != null) {
                                builder15.e0(duration14);
                                this.healthyEdgeInterval_ = builder15.I();
                            } else {
                                continue;
                            }
                        case 138:
                            this.eventLogPath_ = pVar.K();
                            continue;
                        case 144:
                            this.intervalJitterPercent_ = pVar.M();
                            continue;
                        case 152:
                            this.alwaysLogHealthCheckFailures_ = pVar.r();
                            continue;
                        case 162:
                            Duration duration15 = this.initialJitter_;
                            Duration.b builder16 = duration15 != null ? duration15.toBuilder() : null;
                            Duration duration16 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.initialJitter_ = duration16;
                            if (builder16 != null) {
                                builder16.e0(duration16);
                                this.initialJitter_ = builder16.I();
                            } else {
                                continue;
                            }
                        case 170:
                            TlsOptions tlsOptions = this.tlsOptions_;
                            TlsOptions.b builder17 = tlsOptions != null ? tlsOptions.toBuilder() : null;
                            TlsOptions tlsOptions2 = (TlsOptions) pVar.B(TlsOptions.parser(), f0Var);
                            this.tlsOptions_ = tlsOptions2;
                            if (builder17 != null) {
                                builder17.h0(tlsOptions2);
                                this.tlsOptions_ = builder17.I();
                            } else {
                                continue;
                            }
                        case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                            EventServiceConfig eventServiceConfig = this.eventService_;
                            EventServiceConfig.c builder18 = eventServiceConfig != null ? eventServiceConfig.toBuilder() : null;
                            EventServiceConfig eventServiceConfig2 = (EventServiceConfig) pVar.B(EventServiceConfig.parser(), f0Var);
                            this.eventService_ = eventServiceConfig2;
                            if (builder18 != null) {
                                builder18.g0(eventServiceConfig2);
                                this.eventService_ = builder18.I();
                            } else {
                                continue;
                            }
                        case 186:
                            Struct struct = this.transportSocketMatchCriteria_;
                            Struct.b builder19 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.transportSocketMatchCriteria_ = struct2;
                            if (builder19 != null) {
                                builder19.i0(struct2);
                                this.transportSocketMatchCriteria_ = builder19.I();
                            } else {
                                continue;
                            }
                        case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                            Duration duration17 = this.noTrafficHealthyInterval_;
                            Duration.b builder20 = duration17 != null ? duration17.toBuilder() : null;
                            Duration duration18 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.noTrafficHealthyInterval_ = duration18;
                            if (builder20 != null) {
                                builder20.e0(duration18);
                                this.noTrafficHealthyInterval_ = builder20.I();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static HealthCheck parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HealthCheck parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HealthCheck) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
