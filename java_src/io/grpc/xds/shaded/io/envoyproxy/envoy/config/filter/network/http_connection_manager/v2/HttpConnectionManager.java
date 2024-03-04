package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2;

import cn.jiguang.android.BuildConfig;
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
import com.google.protobuf.i2;
import com.google.protobuf.l;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Http1ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Http2ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.x;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.y;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.z;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLog;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.Rds;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.Tracing;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.Percent;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HttpConnectionManager extends GeneratedMessageV3 implements r1 {
    public static final int ACCESS_LOG_FIELD_NUMBER = 13;
    public static final int ADD_USER_AGENT_FIELD_NUMBER = 6;
    public static final int CODEC_TYPE_FIELD_NUMBER = 1;
    public static final int COMMON_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 35;
    public static final int DELAYED_CLOSE_TIMEOUT_FIELD_NUMBER = 26;
    public static final int DRAIN_TIMEOUT_FIELD_NUMBER = 12;
    public static final int FORWARD_CLIENT_CERT_DETAILS_FIELD_NUMBER = 16;
    public static final int GENERATE_REQUEST_ID_FIELD_NUMBER = 15;
    public static final int HTTP2_PROTOCOL_OPTIONS_FIELD_NUMBER = 9;
    public static final int HTTP_FILTERS_FIELD_NUMBER = 5;
    public static final int HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 8;
    public static final int IDLE_TIMEOUT_FIELD_NUMBER = 11;
    public static final int INTERNAL_ADDRESS_CONFIG_FIELD_NUMBER = 25;
    public static final int MAX_REQUEST_HEADERS_KB_FIELD_NUMBER = 29;
    public static final int MERGE_SLASHES_FIELD_NUMBER = 33;
    public static final int NORMALIZE_PATH_FIELD_NUMBER = 30;
    public static final int PRESERVE_EXTERNAL_REQUEST_ID_FIELD_NUMBER = 32;
    public static final int PROXY_100_CONTINUE_FIELD_NUMBER = 18;
    public static final int RDS_FIELD_NUMBER = 3;
    public static final int REPRESENT_IPV4_REMOTE_ADDRESS_AS_IPV4_MAPPED_IPV6_FIELD_NUMBER = 20;
    public static final int REQUEST_ID_EXTENSION_FIELD_NUMBER = 36;
    public static final int REQUEST_TIMEOUT_FIELD_NUMBER = 28;
    public static final int ROUTE_CONFIG_FIELD_NUMBER = 4;
    public static final int SCOPED_ROUTES_FIELD_NUMBER = 31;
    public static final int SERVER_HEADER_TRANSFORMATION_FIELD_NUMBER = 34;
    public static final int SERVER_NAME_FIELD_NUMBER = 10;
    public static final int SET_CURRENT_CLIENT_CERT_DETAILS_FIELD_NUMBER = 17;
    public static final int SKIP_XFF_APPEND_FIELD_NUMBER = 21;
    public static final int STAT_PREFIX_FIELD_NUMBER = 2;
    public static final int STREAM_IDLE_TIMEOUT_FIELD_NUMBER = 24;
    public static final int TRACING_FIELD_NUMBER = 7;
    public static final int UPGRADE_CONFIGS_FIELD_NUMBER = 23;
    public static final int USE_REMOTE_ADDRESS_FIELD_NUMBER = 14;
    public static final int VIA_FIELD_NUMBER = 22;
    public static final int XFF_NUM_TRUSTED_HOPS_FIELD_NUMBER = 19;
    private static final long serialVersionUID = 0;
    private List<AccessLog> accessLog_;
    private BoolValue addUserAgent_;
    private int codecType_;
    private HttpProtocolOptions commonHttpProtocolOptions_;
    private Duration delayedCloseTimeout_;
    private Duration drainTimeout_;
    private int forwardClientCertDetails_;
    private BoolValue generateRequestId_;
    private Http2ProtocolOptions http2ProtocolOptions_;
    private List<HttpFilter> httpFilters_;
    private Http1ProtocolOptions httpProtocolOptions_;
    private Duration idleTimeout_;
    private InternalAddressConfig internalAddressConfig_;
    private UInt32Value maxRequestHeadersKb_;
    private byte memoizedIsInitialized;
    private boolean mergeSlashes_;
    private BoolValue normalizePath_;
    private boolean preserveExternalRequestId_;
    private boolean proxy100Continue_;
    private boolean representIpv4RemoteAddressAsIpv4MappedIpv6_;
    private RequestIDExtension requestIdExtension_;
    private Duration requestTimeout_;
    private int routeSpecifierCase_;
    private Object routeSpecifier_;
    private int serverHeaderTransformation_;
    private volatile Object serverName_;
    private SetCurrentClientCertDetails setCurrentClientCertDetails_;
    private boolean skipXffAppend_;
    private volatile Object statPrefix_;
    private Duration streamIdleTimeout_;
    private Tracing tracing_;
    private List<UpgradeConfig> upgradeConfigs_;
    private BoolValue useRemoteAddress_;
    private volatile Object via_;
    private int xffNumTrustedHops_;
    private static final HttpConnectionManager DEFAULT_INSTANCE = new HttpConnectionManager();
    private static final e2<HttpConnectionManager> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum CodecType implements h2 {
        AUTO(0),
        HTTP1(1),
        HTTP2(2),
        HTTP3(3),
        UNRECOGNIZED(-1);
        
        public static final int AUTO_VALUE = 0;
        public static final int HTTP1_VALUE = 1;
        public static final int HTTP2_VALUE = 2;
        public static final int HTTP3_VALUE = 3;
        private final int value;
        private static final u0.d<CodecType> internalValueMap = new a();
        private static final CodecType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<CodecType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public CodecType a(int i9) {
                return CodecType.forNumber(i9);
            }
        }

        CodecType(int i9) {
            this.value = i9;
        }

        public static CodecType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return HTTP3;
                    }
                    return HTTP2;
                }
                return HTTP1;
            }
            return AUTO;
        }

        public static final Descriptors.d getDescriptor() {
            return HttpConnectionManager.getDescriptor().k().get(0);
        }

        public static u0.d<CodecType> internalGetValueMap() {
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
        public static CodecType valueOf(int i9) {
            return forNumber(i9);
        }

        public static CodecType valueOf(Descriptors.e eVar) {
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
    public enum ForwardClientCertDetails implements h2 {
        SANITIZE(0),
        FORWARD_ONLY(1),
        APPEND_FORWARD(2),
        SANITIZE_SET(3),
        ALWAYS_FORWARD_ONLY(4),
        UNRECOGNIZED(-1);
        
        public static final int ALWAYS_FORWARD_ONLY_VALUE = 4;
        public static final int APPEND_FORWARD_VALUE = 2;
        public static final int FORWARD_ONLY_VALUE = 1;
        public static final int SANITIZE_SET_VALUE = 3;
        public static final int SANITIZE_VALUE = 0;
        private final int value;
        private static final u0.d<ForwardClientCertDetails> internalValueMap = new a();
        private static final ForwardClientCertDetails[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<ForwardClientCertDetails> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ForwardClientCertDetails a(int i9) {
                return ForwardClientCertDetails.forNumber(i9);
            }
        }

        ForwardClientCertDetails(int i9) {
            this.value = i9;
        }

        public static ForwardClientCertDetails forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return ALWAYS_FORWARD_ONLY;
                        }
                        return SANITIZE_SET;
                    }
                    return APPEND_FORWARD;
                }
                return FORWARD_ONLY;
            }
            return SANITIZE;
        }

        public static final Descriptors.d getDescriptor() {
            return HttpConnectionManager.getDescriptor().k().get(2);
        }

        public static u0.d<ForwardClientCertDetails> internalGetValueMap() {
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
        public static ForwardClientCertDetails valueOf(int i9) {
            return forNumber(i9);
        }

        public static ForwardClientCertDetails valueOf(Descriptors.e eVar) {
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
    public static final class InternalAddressConfig extends GeneratedMessageV3 implements d {
        private static final InternalAddressConfig DEFAULT_INSTANCE = new InternalAddressConfig();
        private static final e2<InternalAddressConfig> PARSER = new a();
        public static final int UNIX_SOCKETS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private boolean unixSockets_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<InternalAddressConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public InternalAddressConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new InternalAddressConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private boolean f48596e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48696f.d(InternalAddressConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public InternalAddressConfig build() {
                InternalAddressConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public InternalAddressConfig I() {
                InternalAddressConfig internalAddressConfig = new InternalAddressConfig(this, (a) null);
                internalAddressConfig.unixSockets_ = this.f48596e;
                Q();
                return internalAddressConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public InternalAddressConfig getDefaultInstanceForType() {
                return InternalAddressConfig.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig.access$2400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$InternalAddressConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$InternalAddressConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$InternalAddressConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof InternalAddressConfig) {
                    return g0((InternalAddressConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(InternalAddressConfig internalAddressConfig) {
                if (internalAddressConfig == InternalAddressConfig.getDefaultInstance()) {
                    return this;
                }
                if (internalAddressConfig.getUnixSockets()) {
                    j0(internalAddressConfig.getUnixSockets());
                }
                z(((GeneratedMessageV3) internalAddressConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48695e;
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
                this.f48596e = z10;
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

        /* synthetic */ InternalAddressConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static InternalAddressConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48695e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static InternalAddressConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (InternalAddressConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static InternalAddressConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<InternalAddressConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof InternalAddressConfig)) {
                return super.equals(obj);
            }
            InternalAddressConfig internalAddressConfig = (InternalAddressConfig) obj;
            return getUnixSockets() == internalAddressConfig.getUnixSockets() && this.unknownFields.equals(internalAddressConfig.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<InternalAddressConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            boolean z10 = this.unixSockets_;
            int e10 = (z10 ? 0 + CodedOutputStream.e(1, z10) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        public boolean getUnixSockets() {
            return this.unixSockets_;
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getUnixSockets())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48696f.d(InternalAddressConfig.class, b.class);
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
            return new InternalAddressConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            boolean z10 = this.unixSockets_;
            if (z10) {
                codedOutputStream.n0(1, z10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ InternalAddressConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(InternalAddressConfig internalAddressConfig) {
            return DEFAULT_INSTANCE.toBuilder().g0(internalAddressConfig);
        }

        public static InternalAddressConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private InternalAddressConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static InternalAddressConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InternalAddressConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static InternalAddressConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public InternalAddressConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static InternalAddressConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private InternalAddressConfig() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static InternalAddressConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static InternalAddressConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private InternalAddressConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.unixSockets_ = pVar.r();
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

        public static InternalAddressConfig parseFrom(InputStream inputStream) throws IOException {
            return (InternalAddressConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static InternalAddressConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InternalAddressConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static InternalAddressConfig parseFrom(p pVar) throws IOException {
            return (InternalAddressConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static InternalAddressConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (InternalAddressConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum RouteSpecifierCase implements u0.c {
        RDS(3),
        ROUTE_CONFIG(4),
        SCOPED_ROUTES(31),
        ROUTESPECIFIER_NOT_SET(0);
        
        private final int value;

        RouteSpecifierCase(int i9) {
            this.value = i9;
        }

        public static RouteSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 31) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            return null;
                        }
                        return ROUTE_CONFIG;
                    }
                    return RDS;
                }
                return SCOPED_ROUTES;
            }
            return ROUTESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static RouteSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public enum ServerHeaderTransformation implements h2 {
        OVERWRITE(0),
        APPEND_IF_ABSENT(1),
        PASS_THROUGH(2),
        UNRECOGNIZED(-1);
        
        public static final int APPEND_IF_ABSENT_VALUE = 1;
        public static final int OVERWRITE_VALUE = 0;
        public static final int PASS_THROUGH_VALUE = 2;
        private final int value;
        private static final u0.d<ServerHeaderTransformation> internalValueMap = new a();
        private static final ServerHeaderTransformation[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<ServerHeaderTransformation> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ServerHeaderTransformation a(int i9) {
                return ServerHeaderTransformation.forNumber(i9);
            }
        }

        ServerHeaderTransformation(int i9) {
            this.value = i9;
        }

        public static ServerHeaderTransformation forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return PASS_THROUGH;
                }
                return APPEND_IF_ABSENT;
            }
            return OVERWRITE;
        }

        public static final Descriptors.d getDescriptor() {
            return HttpConnectionManager.getDescriptor().k().get(1);
        }

        public static u0.d<ServerHeaderTransformation> internalGetValueMap() {
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
        public static ServerHeaderTransformation valueOf(int i9) {
            return forNumber(i9);
        }

        public static ServerHeaderTransformation valueOf(Descriptors.e eVar) {
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
    public static final class SetCurrentClientCertDetails extends GeneratedMessageV3 implements e {
        public static final int CERT_FIELD_NUMBER = 3;
        public static final int CHAIN_FIELD_NUMBER = 6;
        public static final int DNS_FIELD_NUMBER = 4;
        public static final int SUBJECT_FIELD_NUMBER = 1;
        public static final int URI_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private boolean cert_;
        private boolean chain_;
        private boolean dns_;
        private byte memoizedIsInitialized;
        private BoolValue subject_;
        private boolean uri_;
        private static final SetCurrentClientCertDetails DEFAULT_INSTANCE = new SetCurrentClientCertDetails();
        private static final e2<SetCurrentClientCertDetails> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<SetCurrentClientCertDetails> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public SetCurrentClientCertDetails m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new SetCurrentClientCertDetails(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private BoolValue f48597e;

            /* renamed from: f  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, l> f48598f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f48599g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f48600h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f48601i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f48602j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48698h.d(SetCurrentClientCertDetails.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public SetCurrentClientCertDetails build() {
                SetCurrentClientCertDetails I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public SetCurrentClientCertDetails I() {
                SetCurrentClientCertDetails setCurrentClientCertDetails = new SetCurrentClientCertDetails(this, (a) null);
                q2<BoolValue, BoolValue.b, l> q2Var = this.f48598f;
                if (q2Var == null) {
                    setCurrentClientCertDetails.subject_ = this.f48597e;
                } else {
                    setCurrentClientCertDetails.subject_ = q2Var.b();
                }
                setCurrentClientCertDetails.cert_ = this.f48599g;
                setCurrentClientCertDetails.chain_ = this.f48600h;
                setCurrentClientCertDetails.dns_ = this.f48601i;
                setCurrentClientCertDetails.uri_ = this.f48602j;
                Q();
                return setCurrentClientCertDetails;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public SetCurrentClientCertDetails getDefaultInstanceForType() {
                return SetCurrentClientCertDetails.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetails.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetails.access$3600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$SetCurrentClientCertDetails r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetails) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$SetCurrentClientCertDetails r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetails) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetails.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$SetCurrentClientCertDetails$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof SetCurrentClientCertDetails) {
                    return g0((SetCurrentClientCertDetails) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(SetCurrentClientCertDetails setCurrentClientCertDetails) {
                if (setCurrentClientCertDetails == SetCurrentClientCertDetails.getDefaultInstance()) {
                    return this;
                }
                if (setCurrentClientCertDetails.hasSubject()) {
                    h0(setCurrentClientCertDetails.getSubject());
                }
                if (setCurrentClientCertDetails.getCert()) {
                    j0(setCurrentClientCertDetails.getCert());
                }
                if (setCurrentClientCertDetails.getChain()) {
                    k0(setCurrentClientCertDetails.getChain());
                }
                if (setCurrentClientCertDetails.getDns()) {
                    l0(setCurrentClientCertDetails.getDns());
                }
                if (setCurrentClientCertDetails.getUri()) {
                    o0(setCurrentClientCertDetails.getUri());
                }
                z(((GeneratedMessageV3) setCurrentClientCertDetails).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48697g;
            }

            public b h0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, l> q2Var = this.f48598f;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f48597e;
                    if (boolValue2 != null) {
                        this.f48597e = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f48597e = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b j0(boolean z10) {
                this.f48599g = z10;
                R();
                return this;
            }

            public b k0(boolean z10) {
                this.f48600h = z10;
                R();
                return this;
            }

            public b l0(boolean z10) {
                this.f48601i = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            public b o0(boolean z10) {
                this.f48602j = z10;
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

        /* synthetic */ SetCurrentClientCertDetails(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static SetCurrentClientCertDetails getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48697g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SetCurrentClientCertDetails parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SetCurrentClientCertDetails) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SetCurrentClientCertDetails parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<SetCurrentClientCertDetails> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SetCurrentClientCertDetails)) {
                return super.equals(obj);
            }
            SetCurrentClientCertDetails setCurrentClientCertDetails = (SetCurrentClientCertDetails) obj;
            if (hasSubject() != setCurrentClientCertDetails.hasSubject()) {
                return false;
            }
            return (!hasSubject() || getSubject().equals(setCurrentClientCertDetails.getSubject())) && getCert() == setCurrentClientCertDetails.getCert() && getChain() == setCurrentClientCertDetails.getChain() && getDns() == setCurrentClientCertDetails.getDns() && getUri() == setCurrentClientCertDetails.getUri() && this.unknownFields.equals(setCurrentClientCertDetails.unknownFields);
        }

        public boolean getCert() {
            return this.cert_;
        }

        public boolean getChain() {
            return this.chain_;
        }

        public boolean getDns() {
            return this.dns_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<SetCurrentClientCertDetails> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.subject_ != null ? 0 + CodedOutputStream.G(1, getSubject()) : 0;
            boolean z10 = this.cert_;
            if (z10) {
                G += CodedOutputStream.e(3, z10);
            }
            boolean z11 = this.dns_;
            if (z11) {
                G += CodedOutputStream.e(4, z11);
            }
            boolean z12 = this.uri_;
            if (z12) {
                G += CodedOutputStream.e(5, z12);
            }
            boolean z13 = this.chain_;
            if (z13) {
                G += CodedOutputStream.e(6, z13);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public BoolValue getSubject() {
            BoolValue boolValue = this.subject_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        public l getSubjectOrBuilder() {
            return getSubject();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean getUri() {
            return this.uri_;
        }

        public boolean hasSubject() {
            return this.subject_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasSubject()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getSubject().hashCode();
            }
            int d10 = (((((((((((((((((hashCode * 37) + 3) * 53) + u0.d(getCert())) * 37) + 6) * 53) + u0.d(getChain())) * 37) + 4) * 53) + u0.d(getDns())) * 37) + 5) * 53) + u0.d(getUri())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = d10;
            return d10;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48698h.d(SetCurrentClientCertDetails.class, b.class);
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
            return new SetCurrentClientCertDetails();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.subject_ != null) {
                codedOutputStream.L0(1, getSubject());
            }
            boolean z10 = this.cert_;
            if (z10) {
                codedOutputStream.n0(3, z10);
            }
            boolean z11 = this.dns_;
            if (z11) {
                codedOutputStream.n0(4, z11);
            }
            boolean z12 = this.uri_;
            if (z12) {
                codedOutputStream.n0(5, z12);
            }
            boolean z13 = this.chain_;
            if (z13) {
                codedOutputStream.n0(6, z13);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ SetCurrentClientCertDetails(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(SetCurrentClientCertDetails setCurrentClientCertDetails) {
            return DEFAULT_INSTANCE.toBuilder().g0(setCurrentClientCertDetails);
        }

        public static SetCurrentClientCertDetails parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private SetCurrentClientCertDetails(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SetCurrentClientCertDetails parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SetCurrentClientCertDetails) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static SetCurrentClientCertDetails parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public SetCurrentClientCertDetails getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static SetCurrentClientCertDetails parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private SetCurrentClientCertDetails() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SetCurrentClientCertDetails parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static SetCurrentClientCertDetails parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private SetCurrentClientCertDetails(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                BoolValue boolValue = this.subject_;
                                BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.subject_ = boolValue2;
                                if (builder != null) {
                                    builder.d0(boolValue2);
                                    this.subject_ = builder.I();
                                }
                            } else if (L == 24) {
                                this.cert_ = pVar.r();
                            } else if (L == 32) {
                                this.dns_ = pVar.r();
                            } else if (L == 40) {
                                this.uri_ = pVar.r();
                            } else if (L != 48) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.chain_ = pVar.r();
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

        public static SetCurrentClientCertDetails parseFrom(InputStream inputStream) throws IOException {
            return (SetCurrentClientCertDetails) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static SetCurrentClientCertDetails parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SetCurrentClientCertDetails) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static SetCurrentClientCertDetails parseFrom(p pVar) throws IOException {
            return (SetCurrentClientCertDetails) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static SetCurrentClientCertDetails parseFrom(p pVar, f0 f0Var) throws IOException {
            return (SetCurrentClientCertDetails) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Tracing extends GeneratedMessageV3 implements f {
        public static final int CLIENT_SAMPLING_FIELD_NUMBER = 3;
        public static final int CUSTOM_TAGS_FIELD_NUMBER = 8;
        public static final int MAX_PATH_TAG_LENGTH_FIELD_NUMBER = 7;
        public static final int OPERATION_NAME_FIELD_NUMBER = 1;
        public static final int OVERALL_SAMPLING_FIELD_NUMBER = 5;
        public static final int PROVIDER_FIELD_NUMBER = 9;
        public static final int RANDOM_SAMPLING_FIELD_NUMBER = 4;
        public static final int REQUEST_HEADERS_FOR_TAGS_FIELD_NUMBER = 2;
        public static final int VERBOSE_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private Percent clientSampling_;
        private List<CustomTag> customTags_;
        private UInt32Value maxPathTagLength_;
        private byte memoizedIsInitialized;
        private int operationName_;
        private Percent overallSampling_;
        private Tracing.Http provider_;
        private Percent randomSampling_;
        private z0 requestHeadersForTags_;
        private boolean verbose_;
        private static final Tracing DEFAULT_INSTANCE = new Tracing();
        private static final e2<Tracing> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum OperationName implements h2 {
            INGRESS(0),
            EGRESS(1),
            UNRECOGNIZED(-1);
            
            public static final int EGRESS_VALUE = 1;
            public static final int INGRESS_VALUE = 0;
            private final int value;
            private static final u0.d<OperationName> internalValueMap = new a();
            private static final OperationName[] VALUES = values();

            /* loaded from: classes6.dex */
            class a implements u0.d<OperationName> {
                a() {
                }

                @Override // com.google.protobuf.u0.d
                /* renamed from: b */
                public OperationName a(int i9) {
                    return OperationName.forNumber(i9);
                }
            }

            OperationName(int i9) {
                this.value = i9;
            }

            public static OperationName forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        return null;
                    }
                    return EGRESS;
                }
                return INGRESS;
            }

            public static final Descriptors.d getDescriptor() {
                return Tracing.getDescriptor().k().get(0);
            }

            public static u0.d<OperationName> internalGetValueMap() {
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
            public static OperationName valueOf(int i9) {
                return forNumber(i9);
            }

            public static OperationName valueOf(Descriptors.e eVar) {
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
        class a extends com.google.protobuf.c<Tracing> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Tracing m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Tracing(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private int f48603e;

            /* renamed from: f  reason: collision with root package name */
            private int f48604f;

            /* renamed from: g  reason: collision with root package name */
            private z0 f48605g;

            /* renamed from: h  reason: collision with root package name */
            private Percent f48606h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> f48607i;

            /* renamed from: j  reason: collision with root package name */
            private Percent f48608j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> f48609k;

            /* renamed from: l  reason: collision with root package name */
            private Percent f48610l;

            /* renamed from: m  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> f48611m;

            /* renamed from: n  reason: collision with root package name */
            private boolean f48612n;

            /* renamed from: o  reason: collision with root package name */
            private UInt32Value f48613o;

            /* renamed from: p  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f48614p;

            /* renamed from: q  reason: collision with root package name */
            private List<CustomTag> f48615q;

            /* renamed from: r  reason: collision with root package name */
            private l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> f48616r;

            /* renamed from: s  reason: collision with root package name */
            private Tracing.Http f48617s;

            /* renamed from: t  reason: collision with root package name */
            private q2<Tracing.Http, Tracing.Http.b, Tracing.d> f48618t;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f48603e & 2) == 0) {
                    this.f48615q = new ArrayList(this.f48615q);
                    this.f48603e |= 2;
                }
            }

            private void b0() {
                if ((this.f48603e & 1) == 0) {
                    this.f48605g = new y0(this.f48605g);
                    this.f48603e |= 1;
                }
            }

            private l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> d0() {
                if (this.f48616r == null) {
                    this.f48616r = new l2<>(this.f48615q, (this.f48603e & 2) != 0, H(), O());
                    this.f48615q = null;
                }
                return this.f48616r;
            }

            private void g0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48694d.d(Tracing.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Tracing build() {
                Tracing I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Tracing I() {
                Tracing tracing = new Tracing(this, (a) null);
                tracing.operationName_ = this.f48604f;
                if ((this.f48603e & 1) != 0) {
                    this.f48605g = this.f48605g.V0();
                    this.f48603e &= -2;
                }
                tracing.requestHeadersForTags_ = this.f48605g;
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f48607i;
                if (q2Var == null) {
                    tracing.clientSampling_ = this.f48606h;
                } else {
                    tracing.clientSampling_ = q2Var.b();
                }
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var2 = this.f48609k;
                if (q2Var2 == null) {
                    tracing.randomSampling_ = this.f48608j;
                } else {
                    tracing.randomSampling_ = q2Var2.b();
                }
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var3 = this.f48611m;
                if (q2Var3 == null) {
                    tracing.overallSampling_ = this.f48610l;
                } else {
                    tracing.overallSampling_ = q2Var3.b();
                }
                tracing.verbose_ = this.f48612n;
                q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f48614p;
                if (q2Var4 == null) {
                    tracing.maxPathTagLength_ = this.f48613o;
                } else {
                    tracing.maxPathTagLength_ = q2Var4.b();
                }
                l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> l2Var = this.f48616r;
                if (l2Var == null) {
                    if ((this.f48603e & 2) != 0) {
                        this.f48615q = Collections.unmodifiableList(this.f48615q);
                        this.f48603e &= -3;
                    }
                    tracing.customTags_ = this.f48615q;
                } else {
                    tracing.customTags_ = l2Var.e();
                }
                q2<Tracing.Http, Tracing.Http.b, Tracing.d> q2Var5 = this.f48618t;
                if (q2Var5 == null) {
                    tracing.provider_ = this.f48617s;
                } else {
                    tracing.provider_ = q2Var5.b();
                }
                Q();
                return tracing;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: e0 */
            public Tracing getDefaultInstanceForType() {
                return Tracing.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48693c;
            }

            public b h0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f48607i;
                if (q2Var == null) {
                    Percent percent2 = this.f48606h;
                    if (percent2 != null) {
                        this.f48606h = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f48606h = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$Tracing r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.k0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$Tracing r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.k0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$Tracing$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Tracing) {
                    return k0((Tracing) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b k0(Tracing tracing) {
                if (tracing == Tracing.getDefaultInstance()) {
                    return this;
                }
                if (tracing.operationName_ != 0) {
                    s0(tracing.getOperationNameValue());
                }
                if (!tracing.requestHeadersForTags_.isEmpty()) {
                    if (this.f48605g.isEmpty()) {
                        this.f48605g = tracing.requestHeadersForTags_;
                        this.f48603e &= -2;
                    } else {
                        b0();
                        this.f48605g.addAll(tracing.requestHeadersForTags_);
                    }
                    R();
                }
                if (tracing.hasClientSampling()) {
                    h0(tracing.getClientSampling());
                }
                if (tracing.hasRandomSampling()) {
                    o0(tracing.getRandomSampling());
                }
                if (tracing.hasOverallSampling()) {
                    m0(tracing.getOverallSampling());
                }
                if (tracing.getVerbose()) {
                    u0(tracing.getVerbose());
                }
                if (tracing.hasMaxPathTagLength()) {
                    l0(tracing.getMaxPathTagLength());
                }
                if (this.f48616r == null) {
                    if (!tracing.customTags_.isEmpty()) {
                        if (this.f48615q.isEmpty()) {
                            this.f48615q = tracing.customTags_;
                            this.f48603e &= -3;
                        } else {
                            a0();
                            this.f48615q.addAll(tracing.customTags_);
                        }
                        R();
                    }
                } else if (!tracing.customTags_.isEmpty()) {
                    if (this.f48616r.k()) {
                        this.f48616r.f();
                        this.f48616r = null;
                        this.f48615q = tracing.customTags_;
                        this.f48603e &= -3;
                        this.f48616r = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f48616r.b(tracing.customTags_);
                    }
                }
                if (tracing.hasProvider()) {
                    n0(tracing.getProvider());
                }
                z(((GeneratedMessageV3) tracing).unknownFields);
                R();
                return this;
            }

            public b l0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48614p;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f48613o;
                    if (uInt32Value2 != null) {
                        this.f48613o = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f48613o = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            public b m0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f48611m;
                if (q2Var == null) {
                    Percent percent2 = this.f48610l;
                    if (percent2 != null) {
                        this.f48610l = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f48610l = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            public b n0(Tracing.Http http) {
                q2<Tracing.Http, Tracing.Http.b, Tracing.d> q2Var = this.f48618t;
                if (q2Var == null) {
                    Tracing.Http http2 = this.f48617s;
                    if (http2 != null) {
                        this.f48617s = Tracing.Http.newBuilder(http2).h0(http).I();
                    } else {
                        this.f48617s = http;
                    }
                    R();
                } else {
                    q2Var.e(http);
                }
                return this;
            }

            public b o0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f48609k;
                if (q2Var == null) {
                    Percent percent2 = this.f48608j;
                    if (percent2 != null) {
                        this.f48608j = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f48608j = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: q0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Deprecated
            public b s0(int i9) {
                this.f48604f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: t0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            public b u0(boolean z10) {
                this.f48612n = z10;
                R();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f48604f = 0;
                this.f48605g = y0.f15344d;
                this.f48615q = Collections.emptyList();
                g0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f48604f = 0;
                this.f48605g = y0.f15344d;
                this.f48615q = Collections.emptyList();
                g0();
            }
        }

        /* synthetic */ Tracing(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Tracing getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48693c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Tracing parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Tracing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Tracing parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Tracing> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Tracing)) {
                return super.equals(obj);
            }
            Tracing tracing = (Tracing) obj;
            if (this.operationName_ == tracing.operationName_ && m1620getRequestHeadersForTagsList().equals(tracing.m1620getRequestHeadersForTagsList()) && hasClientSampling() == tracing.hasClientSampling()) {
                if ((!hasClientSampling() || getClientSampling().equals(tracing.getClientSampling())) && hasRandomSampling() == tracing.hasRandomSampling()) {
                    if ((!hasRandomSampling() || getRandomSampling().equals(tracing.getRandomSampling())) && hasOverallSampling() == tracing.hasOverallSampling()) {
                        if ((!hasOverallSampling() || getOverallSampling().equals(tracing.getOverallSampling())) && getVerbose() == tracing.getVerbose() && hasMaxPathTagLength() == tracing.hasMaxPathTagLength()) {
                            if ((!hasMaxPathTagLength() || getMaxPathTagLength().equals(tracing.getMaxPathTagLength())) && getCustomTagsList().equals(tracing.getCustomTagsList()) && hasProvider() == tracing.hasProvider()) {
                                return (!hasProvider() || getProvider().equals(tracing.getProvider())) && this.unknownFields.equals(tracing.unknownFields);
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

        public Percent getClientSampling() {
            Percent percent = this.clientSampling_;
            return percent == null ? Percent.getDefaultInstance() : percent;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.f getClientSamplingOrBuilder() {
            return getClientSampling();
        }

        public CustomTag getCustomTags(int i9) {
            return this.customTags_.get(i9);
        }

        public int getCustomTagsCount() {
            return this.customTags_.size();
        }

        public List<CustomTag> getCustomTagsList() {
            return this.customTags_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a getCustomTagsOrBuilder(int i9) {
            return this.customTags_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> getCustomTagsOrBuilderList() {
            return this.customTags_;
        }

        public UInt32Value getMaxPathTagLength() {
            UInt32Value uInt32Value = this.maxPathTagLength_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getMaxPathTagLengthOrBuilder() {
            return getMaxPathTagLength();
        }

        @Deprecated
        public OperationName getOperationName() {
            OperationName valueOf = OperationName.valueOf(this.operationName_);
            return valueOf == null ? OperationName.UNRECOGNIZED : valueOf;
        }

        @Deprecated
        public int getOperationNameValue() {
            return this.operationName_;
        }

        public Percent getOverallSampling() {
            Percent percent = this.overallSampling_;
            return percent == null ? Percent.getDefaultInstance() : percent;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.f getOverallSamplingOrBuilder() {
            return getOverallSampling();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Tracing> getParserForType() {
            return PARSER;
        }

        public Tracing.Http getProvider() {
            Tracing.Http http = this.provider_;
            return http == null ? Tracing.Http.getDefaultInstance() : http;
        }

        public Tracing.d getProviderOrBuilder() {
            return getProvider();
        }

        public Percent getRandomSampling() {
            Percent percent = this.randomSampling_;
            return percent == null ? Percent.getDefaultInstance() : percent;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.f getRandomSamplingOrBuilder() {
            return getRandomSampling();
        }

        @Deprecated
        public String getRequestHeadersForTags(int i9) {
            return this.requestHeadersForTags_.get(i9);
        }

        @Deprecated
        public ByteString getRequestHeadersForTagsBytes(int i9) {
            return this.requestHeadersForTags_.j0(i9);
        }

        @Deprecated
        public int getRequestHeadersForTagsCount() {
            return this.requestHeadersForTags_.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int l10 = this.operationName_ != OperationName.INGRESS.getNumber() ? CodedOutputStream.l(1, this.operationName_) + 0 : 0;
            int i10 = 0;
            for (int i11 = 0; i11 < this.requestHeadersForTags_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.requestHeadersForTags_.c1(i11));
            }
            int size = l10 + i10 + (m1620getRequestHeadersForTagsList().size() * 1);
            if (this.clientSampling_ != null) {
                size += CodedOutputStream.G(3, getClientSampling());
            }
            if (this.randomSampling_ != null) {
                size += CodedOutputStream.G(4, getRandomSampling());
            }
            if (this.overallSampling_ != null) {
                size += CodedOutputStream.G(5, getOverallSampling());
            }
            boolean z10 = this.verbose_;
            if (z10) {
                size += CodedOutputStream.e(6, z10);
            }
            if (this.maxPathTagLength_ != null) {
                size += CodedOutputStream.G(7, getMaxPathTagLength());
            }
            for (int i12 = 0; i12 < this.customTags_.size(); i12++) {
                size += CodedOutputStream.G(8, this.customTags_.get(i12));
            }
            if (this.provider_ != null) {
                size += CodedOutputStream.G(9, getProvider());
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean getVerbose() {
            return this.verbose_;
        }

        public boolean hasClientSampling() {
            return this.clientSampling_ != null;
        }

        public boolean hasMaxPathTagLength() {
            return this.maxPathTagLength_ != null;
        }

        public boolean hasOverallSampling() {
            return this.overallSampling_ != null;
        }

        public boolean hasProvider() {
            return this.provider_ != null;
        }

        public boolean hasRandomSampling() {
            return this.randomSampling_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.operationName_;
            if (getRequestHeadersForTagsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + m1620getRequestHeadersForTagsList().hashCode();
            }
            if (hasClientSampling()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getClientSampling().hashCode();
            }
            if (hasRandomSampling()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getRandomSampling().hashCode();
            }
            if (hasOverallSampling()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getOverallSampling().hashCode();
            }
            int d10 = (((hashCode * 37) + 6) * 53) + u0.d(getVerbose());
            if (hasMaxPathTagLength()) {
                d10 = (((d10 * 37) + 7) * 53) + getMaxPathTagLength().hashCode();
            }
            if (getCustomTagsCount() > 0) {
                d10 = (((d10 * 37) + 8) * 53) + getCustomTagsList().hashCode();
            }
            if (hasProvider()) {
                d10 = (((d10 * 37) + 9) * 53) + getProvider().hashCode();
            }
            int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48694d.d(Tracing.class, b.class);
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
            return new Tracing();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.operationName_ != OperationName.INGRESS.getNumber()) {
                codedOutputStream.v0(1, this.operationName_);
            }
            for (int i9 = 0; i9 < this.requestHeadersForTags_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.requestHeadersForTags_.c1(i9));
            }
            if (this.clientSampling_ != null) {
                codedOutputStream.L0(3, getClientSampling());
            }
            if (this.randomSampling_ != null) {
                codedOutputStream.L0(4, getRandomSampling());
            }
            if (this.overallSampling_ != null) {
                codedOutputStream.L0(5, getOverallSampling());
            }
            boolean z10 = this.verbose_;
            if (z10) {
                codedOutputStream.n0(6, z10);
            }
            if (this.maxPathTagLength_ != null) {
                codedOutputStream.L0(7, getMaxPathTagLength());
            }
            for (int i10 = 0; i10 < this.customTags_.size(); i10++) {
                codedOutputStream.L0(8, this.customTags_.get(i10));
            }
            if (this.provider_ != null) {
                codedOutputStream.L0(9, getProvider());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Tracing(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Tracing tracing) {
            return DEFAULT_INSTANCE.toBuilder().k0(tracing);
        }

        public static Tracing parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        @Deprecated
        /* renamed from: getRequestHeadersForTagsList */
        public i2 m1620getRequestHeadersForTagsList() {
            return this.requestHeadersForTags_;
        }

        private Tracing(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Tracing parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Tracing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Tracing parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Tracing getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
        }

        public static Tracing parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Tracing() {
            this.memoizedIsInitialized = (byte) -1;
            this.operationName_ = 0;
            this.requestHeadersForTags_ = y0.f15344d;
            this.customTags_ = Collections.emptyList();
        }

        public static Tracing parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Tracing parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Tracing parseFrom(InputStream inputStream) throws IOException {
            return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Tracing parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private Tracing(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.operationName_ = pVar.u();
                            } else if (L != 18) {
                                if (L == 26) {
                                    Percent percent = this.clientSampling_;
                                    Percent.b builder = percent != null ? percent.toBuilder() : null;
                                    Percent percent2 = (Percent) pVar.B(Percent.parser(), f0Var);
                                    this.clientSampling_ = percent2;
                                    if (builder != null) {
                                        builder.g0(percent2);
                                        this.clientSampling_ = builder.I();
                                    }
                                } else if (L == 34) {
                                    Percent percent3 = this.randomSampling_;
                                    Percent.b builder2 = percent3 != null ? percent3.toBuilder() : null;
                                    Percent percent4 = (Percent) pVar.B(Percent.parser(), f0Var);
                                    this.randomSampling_ = percent4;
                                    if (builder2 != null) {
                                        builder2.g0(percent4);
                                        this.randomSampling_ = builder2.I();
                                    }
                                } else if (L == 42) {
                                    Percent percent5 = this.overallSampling_;
                                    Percent.b builder3 = percent5 != null ? percent5.toBuilder() : null;
                                    Percent percent6 = (Percent) pVar.B(Percent.parser(), f0Var);
                                    this.overallSampling_ = percent6;
                                    if (builder3 != null) {
                                        builder3.g0(percent6);
                                        this.overallSampling_ = builder3.I();
                                    }
                                } else if (L == 48) {
                                    this.verbose_ = pVar.r();
                                } else if (L == 58) {
                                    UInt32Value uInt32Value = this.maxPathTagLength_;
                                    UInt32Value.b builder4 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.maxPathTagLength_ = uInt32Value2;
                                    if (builder4 != null) {
                                        builder4.g0(uInt32Value2);
                                        this.maxPathTagLength_ = builder4.I();
                                    }
                                } else if (L == 66) {
                                    if (!(z11 & true)) {
                                        this.customTags_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.customTags_.add((CustomTag) pVar.B(CustomTag.parser(), f0Var));
                                } else if (L != 74) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Tracing.Http http = this.provider_;
                                    Tracing.Http.b builder5 = http != null ? http.toBuilder() : null;
                                    Tracing.Http http2 = (Tracing.Http) pVar.B(Tracing.Http.parser(), f0Var);
                                    this.provider_ = http2;
                                    if (builder5 != null) {
                                        builder5.h0(http2);
                                        this.provider_ = builder5.I();
                                    }
                                }
                            } else {
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.requestHeadersForTags_ = new y0();
                                    z11 |= true;
                                }
                                this.requestHeadersForTags_.add(K);
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
                        this.requestHeadersForTags_ = this.requestHeadersForTags_.V0();
                    }
                    if (z11 & true) {
                        this.customTags_ = Collections.unmodifiableList(this.customTags_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Tracing parseFrom(p pVar) throws IOException {
            return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Tracing parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class UpgradeConfig extends GeneratedMessageV3 implements g {
        public static final int ENABLED_FIELD_NUMBER = 3;
        public static final int FILTERS_FIELD_NUMBER = 2;
        public static final int UPGRADE_TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private BoolValue enabled_;
        private List<HttpFilter> filters_;
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
            public UpgradeConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new UpgradeConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f48619e;

            /* renamed from: f  reason: collision with root package name */
            private Object f48620f;

            /* renamed from: g  reason: collision with root package name */
            private List<HttpFilter> f48621g;

            /* renamed from: h  reason: collision with root package name */
            private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> f48622h;

            /* renamed from: i  reason: collision with root package name */
            private BoolValue f48623i;

            /* renamed from: j  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, l> f48624j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f48619e & 1) == 0) {
                    this.f48621g = new ArrayList(this.f48621g);
                    this.f48619e |= 1;
                }
            }

            private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> d0() {
                if (this.f48622h == null) {
                    this.f48622h = new l2<>(this.f48621g, (this.f48619e & 1) != 0, H(), O());
                    this.f48621g = null;
                }
                return this.f48622h;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48700j.d(UpgradeConfig.class, b.class);
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
                upgradeConfig.upgradeType_ = this.f48620f;
                l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> l2Var = this.f48622h;
                if (l2Var == null) {
                    if ((this.f48619e & 1) != 0) {
                        this.f48621g = Collections.unmodifiableList(this.f48621g);
                        this.f48619e &= -2;
                    }
                    upgradeConfig.filters_ = this.f48621g;
                } else {
                    upgradeConfig.filters_ = l2Var.e();
                }
                q2<BoolValue, BoolValue.b, l> q2Var = this.f48624j;
                if (q2Var == null) {
                    upgradeConfig.enabled_ = this.f48623i;
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
            /* renamed from: b0 */
            public UpgradeConfig getDefaultInstanceForType() {
                return UpgradeConfig.getDefaultInstance();
            }

            public b g0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, l> q2Var = this.f48624j;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f48623i;
                    if (boolValue2 != null) {
                        this.f48623i = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f48623i = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48699i;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig.access$4700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$UpgradeConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$UpgradeConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$UpgradeConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof UpgradeConfig) {
                    return j0((UpgradeConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(UpgradeConfig upgradeConfig) {
                if (upgradeConfig == UpgradeConfig.getDefaultInstance()) {
                    return this;
                }
                if (!upgradeConfig.getUpgradeType().isEmpty()) {
                    this.f48620f = upgradeConfig.upgradeType_;
                    R();
                }
                if (this.f48622h == null) {
                    if (!upgradeConfig.filters_.isEmpty()) {
                        if (this.f48621g.isEmpty()) {
                            this.f48621g = upgradeConfig.filters_;
                            this.f48619e &= -2;
                        } else {
                            a0();
                            this.f48621g.addAll(upgradeConfig.filters_);
                        }
                        R();
                    }
                } else if (!upgradeConfig.filters_.isEmpty()) {
                    if (this.f48622h.k()) {
                        this.f48622h.f();
                        this.f48622h = null;
                        this.f48621g = upgradeConfig.filters_;
                        this.f48619e &= -2;
                        this.f48622h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f48622h.b(upgradeConfig.filters_);
                    }
                }
                if (upgradeConfig.hasEnabled()) {
                    g0(upgradeConfig.getEnabled());
                }
                z(((GeneratedMessageV3) upgradeConfig).unknownFields);
                R();
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
                this.f48620f = "";
                this.f48621g = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f48620f = "";
                this.f48621g = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ UpgradeConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static UpgradeConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48699i;
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
            if (getUpgradeType().equals(upgradeConfig.getUpgradeType()) && getFiltersList().equals(upgradeConfig.getFiltersList()) && hasEnabled() == upgradeConfig.hasEnabled()) {
                return (!hasEnabled() || getEnabled().equals(upgradeConfig.getEnabled())) && this.unknownFields.equals(upgradeConfig.unknownFields);
            }
            return false;
        }

        public BoolValue getEnabled() {
            BoolValue boolValue = this.enabled_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        public l getEnabledOrBuilder() {
            return getEnabled();
        }

        public HttpFilter getFilters(int i9) {
            return this.filters_.get(i9);
        }

        public int getFiltersCount() {
            return this.filters_.size();
        }

        public List<HttpFilter> getFiltersList() {
            return this.filters_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b getFiltersOrBuilder(int i9) {
            return this.filters_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> getFiltersOrBuilderList() {
            return this.filters_;
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
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.upgradeType_) ? GeneratedMessageV3.computeStringSize(1, this.upgradeType_) + 0 : 0;
            for (int i10 = 0; i10 < this.filters_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(2, this.filters_.get(i10));
            }
            if (this.enabled_ != null) {
                computeStringSize += CodedOutputStream.G(3, getEnabled());
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
            if (getFiltersCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getFiltersList().hashCode();
            }
            if (hasEnabled()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getEnabled().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48700j.d(UpgradeConfig.class, b.class);
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
            for (int i9 = 0; i9 < this.filters_.size(); i9++) {
                codedOutputStream.L0(2, this.filters_.get(i9));
            }
            if (this.enabled_ != null) {
                codedOutputStream.L0(3, getEnabled());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ UpgradeConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(UpgradeConfig upgradeConfig) {
            return DEFAULT_INSTANCE.toBuilder().j0(upgradeConfig);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
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
            this.filters_ = Collections.emptyList();
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

        private UpgradeConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.upgradeType_ = pVar.K();
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.filters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.filters_.add((HttpFilter) pVar.B(HttpFilter.parser(), f0Var));
                            } else if (L != 26) {
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
                    if (z11 & true) {
                        this.filters_ = Collections.unmodifiableList(this.filters_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static UpgradeConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static UpgradeConfig parseFrom(p pVar) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static UpgradeConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (UpgradeConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HttpConnectionManager> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HttpConnectionManager m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HttpConnectionManager(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48625a;

        static {
            int[] iArr = new int[RouteSpecifierCase.values().length];
            f48625a = iArr;
            try {
                iArr[RouteSpecifierCase.RDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48625a[RouteSpecifierCase.ROUTE_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48625a[RouteSpecifierCase.SCOPED_ROUTES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f48625a[RouteSpecifierCase.ROUTESPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {
        private UInt32Value A;
        private q2<UInt32Value, UInt32Value.b, e3> B;
        private q2<BoolValue, BoolValue.b, l> B3;
        private Duration C;
        private int C4;
        private q2<Duration, Duration.b, v> D;
        private SetCurrentClientCertDetails D4;
        private Duration E;
        private q2<SetCurrentClientCertDetails, SetCurrentClientCertDetails.b, e> E4;
        private q2<Duration, Duration.b, v> F;
        private boolean F4;
        private Duration G;
        private boolean G4;
        private q2<Duration, Duration.b, v> H;
        private List<UpgradeConfig> H4;
        private Duration I;
        private l2<UpgradeConfig, UpgradeConfig.b, g> I4;
        private q2<Duration, Duration.b, v> J;
        private BoolValue J4;
        private Duration K;
        private q2<BoolValue, BoolValue.b, l> K4;
        private q2<Duration, Duration.b, v> L;
        private boolean L4;
        private List<AccessLog> M;
        private RequestIDExtension M4;
        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> N;
        private q2<RequestIDExtension, RequestIDExtension.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.d> N4;
        private BoolValue O;
        private q2<BoolValue, BoolValue.b, l> P;
        private int Q;
        private InternalAddressConfig R;
        private boolean V1;
        private BoolValue V2;
        private boolean V3;

        /* renamed from: a1  reason: collision with root package name */
        private q2<InternalAddressConfig, InternalAddressConfig.b, d> f48626a1;

        /* renamed from: a2  reason: collision with root package name */
        private Object f48627a2;

        /* renamed from: e  reason: collision with root package name */
        private int f48628e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48629f;

        /* renamed from: g  reason: collision with root package name */
        private int f48630g;

        /* renamed from: h  reason: collision with root package name */
        private int f48631h;

        /* renamed from: i  reason: collision with root package name */
        private Object f48632i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Rds, Rds.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.c> f48633j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RouteConfiguration, RouteConfiguration.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.l> f48634k;

        /* renamed from: l  reason: collision with root package name */
        private q2<ScopedRoutes, ScopedRoutes.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.g> f48635l;

        /* renamed from: m  reason: collision with root package name */
        private List<HttpFilter> f48636m;

        /* renamed from: n  reason: collision with root package name */
        private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> f48637n;

        /* renamed from: o  reason: collision with root package name */
        private BoolValue f48638o;

        /* renamed from: p  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, l> f48639p;

        /* renamed from: q  reason: collision with root package name */
        private Tracing f48640q;

        /* renamed from: r  reason: collision with root package name */
        private q2<Tracing, Tracing.b, f> f48641r;

        /* renamed from: s  reason: collision with root package name */
        private HttpProtocolOptions f48642s;

        /* renamed from: t  reason: collision with root package name */
        private q2<HttpProtocolOptions, HttpProtocolOptions.b, z> f48643t;

        /* renamed from: u  reason: collision with root package name */
        private Http1ProtocolOptions f48644u;

        /* renamed from: v  reason: collision with root package name */
        private q2<Http1ProtocolOptions, Http1ProtocolOptions.c, x> f48645v;

        /* renamed from: w  reason: collision with root package name */
        private Http2ProtocolOptions f48646w;

        /* renamed from: x  reason: collision with root package name */
        private q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> f48647x;

        /* renamed from: y  reason: collision with root package name */
        private Object f48648y;

        /* renamed from: z  reason: collision with root package name */
        private int f48649z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48630g & 2) == 0) {
                this.M = new ArrayList(this.M);
                this.f48630g |= 2;
            }
        }

        private void b0() {
            if ((this.f48630g & 1) == 0) {
                this.f48636m = new ArrayList(this.f48636m);
                this.f48630g |= 1;
            }
        }

        private void d0() {
            if ((this.f48630g & 4) == 0) {
                this.H4 = new ArrayList(this.H4);
                this.f48630g |= 4;
            }
        }

        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> e0() {
            if (this.N == null) {
                this.N = new l2<>(this.M, (this.f48630g & 2) != 0, H(), O());
                this.M = null;
            }
            return this.N;
        }

        private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> h0() {
            if (this.f48637n == null) {
                this.f48637n = new l2<>(this.f48636m, (this.f48630g & 1) != 0, H(), O());
                this.f48636m = null;
            }
            return this.f48637n;
        }

        private l2<UpgradeConfig, UpgradeConfig.b, g> i0() {
            if (this.I4 == null) {
                this.I4 = new l2<>(this.H4, (this.f48630g & 4) != 0, H(), O());
                this.H4 = null;
            }
            return this.I4;
        }

        private void j0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                h0();
                e0();
                i0();
            }
        }

        public c B0(Rds rds) {
            q2<Rds, Rds.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.c> q2Var = this.f48633j;
            if (q2Var == null) {
                if (this.f48628e == 3 && this.f48629f != Rds.getDefaultInstance()) {
                    this.f48629f = Rds.newBuilder((Rds) this.f48629f).h0(rds).I();
                } else {
                    this.f48629f = rds;
                }
                R();
            } else {
                if (this.f48628e == 3) {
                    q2Var.e(rds);
                }
                this.f48633j.g(rds);
            }
            this.f48628e = 3;
            return this;
        }

        public c D0(RequestIDExtension requestIDExtension) {
            q2<RequestIDExtension, RequestIDExtension.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.d> q2Var = this.N4;
            if (q2Var == null) {
                RequestIDExtension requestIDExtension2 = this.M4;
                if (requestIDExtension2 != null) {
                    this.M4 = RequestIDExtension.newBuilder(requestIDExtension2).g0(requestIDExtension).I();
                } else {
                    this.M4 = requestIDExtension;
                }
                R();
            } else {
                q2Var.e(requestIDExtension);
            }
            return this;
        }

        public c H0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.H;
            if (q2Var == null) {
                Duration duration2 = this.G;
                if (duration2 != null) {
                    this.G = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.G = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c I0(RouteConfiguration routeConfiguration) {
            q2<RouteConfiguration, RouteConfiguration.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.l> q2Var = this.f48634k;
            if (q2Var == null) {
                if (this.f48628e == 4 && this.f48629f != RouteConfiguration.getDefaultInstance()) {
                    this.f48629f = RouteConfiguration.newBuilder((RouteConfiguration) this.f48629f).q0(routeConfiguration).I();
                } else {
                    this.f48629f = routeConfiguration;
                }
                R();
            } else {
                if (this.f48628e == 4) {
                    q2Var.e(routeConfiguration);
                }
                this.f48634k.g(routeConfiguration);
            }
            this.f48628e = 4;
            return this;
        }

        public c J0(ScopedRoutes scopedRoutes) {
            q2<ScopedRoutes, ScopedRoutes.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.g> q2Var = this.f48635l;
            if (q2Var == null) {
                if (this.f48628e == 31 && this.f48629f != ScopedRoutes.getDefaultInstance()) {
                    this.f48629f = ScopedRoutes.newBuilder((ScopedRoutes) this.f48629f).g0(scopedRoutes).I();
                } else {
                    this.f48629f = scopedRoutes;
                }
                R();
            } else {
                if (this.f48628e == 31) {
                    q2Var.e(scopedRoutes);
                }
                this.f48635l.g(scopedRoutes);
            }
            this.f48628e = 31;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48692b.d(HttpConnectionManager.class, c.class);
        }

        public c K0(SetCurrentClientCertDetails setCurrentClientCertDetails) {
            q2<SetCurrentClientCertDetails, SetCurrentClientCertDetails.b, e> q2Var = this.E4;
            if (q2Var == null) {
                SetCurrentClientCertDetails setCurrentClientCertDetails2 = this.D4;
                if (setCurrentClientCertDetails2 != null) {
                    this.D4 = SetCurrentClientCertDetails.newBuilder(setCurrentClientCertDetails2).g0(setCurrentClientCertDetails).I();
                } else {
                    this.D4 = setCurrentClientCertDetails;
                }
                R();
            } else {
                q2Var.e(setCurrentClientCertDetails);
            }
            return this;
        }

        public c L0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.F;
            if (q2Var == null) {
                Duration duration2 = this.E;
                if (duration2 != null) {
                    this.E = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.E = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c M0(Tracing tracing) {
            q2<Tracing, Tracing.b, f> q2Var = this.f48641r;
            if (q2Var == null) {
                Tracing tracing2 = this.f48640q;
                if (tracing2 != null) {
                    this.f48640q = Tracing.newBuilder(tracing2).k0(tracing).I();
                } else {
                    this.f48640q = tracing;
                }
                R();
            } else {
                q2Var.e(tracing);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: N0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c O0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.P;
            if (q2Var == null) {
                BoolValue boolValue2 = this.O;
                if (boolValue2 != null) {
                    this.O = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.O = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c Q0(int i9) {
            this.f48631h = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: S0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c T0(int i9) {
            this.C4 = i9;
            R();
            return this;
        }

        public c U0(boolean z10) {
            this.L4 = z10;
            R();
            return this;
        }

        public c V0(boolean z10) {
            this.V3 = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        public c W0(boolean z10) {
            this.F4 = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HttpConnectionManager build() {
            HttpConnectionManager I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        public c X0(boolean z10) {
            this.G4 = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpConnectionManager I() {
            HttpConnectionManager httpConnectionManager = new HttpConnectionManager(this, (a) null);
            httpConnectionManager.codecType_ = this.f48631h;
            httpConnectionManager.statPrefix_ = this.f48632i;
            if (this.f48628e == 3) {
                q2<Rds, Rds.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.c> q2Var = this.f48633j;
                if (q2Var == null) {
                    httpConnectionManager.routeSpecifier_ = this.f48629f;
                } else {
                    httpConnectionManager.routeSpecifier_ = q2Var.b();
                }
            }
            if (this.f48628e == 4) {
                q2<RouteConfiguration, RouteConfiguration.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.l> q2Var2 = this.f48634k;
                if (q2Var2 == null) {
                    httpConnectionManager.routeSpecifier_ = this.f48629f;
                } else {
                    httpConnectionManager.routeSpecifier_ = q2Var2.b();
                }
            }
            if (this.f48628e == 31) {
                q2<ScopedRoutes, ScopedRoutes.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.g> q2Var3 = this.f48635l;
                if (q2Var3 == null) {
                    httpConnectionManager.routeSpecifier_ = this.f48629f;
                } else {
                    httpConnectionManager.routeSpecifier_ = q2Var3.b();
                }
            }
            l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> l2Var = this.f48637n;
            if (l2Var == null) {
                if ((this.f48630g & 1) != 0) {
                    this.f48636m = Collections.unmodifiableList(this.f48636m);
                    this.f48630g &= -2;
                }
                httpConnectionManager.httpFilters_ = this.f48636m;
            } else {
                httpConnectionManager.httpFilters_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var4 = this.f48639p;
            if (q2Var4 == null) {
                httpConnectionManager.addUserAgent_ = this.f48638o;
            } else {
                httpConnectionManager.addUserAgent_ = q2Var4.b();
            }
            q2<Tracing, Tracing.b, f> q2Var5 = this.f48641r;
            if (q2Var5 == null) {
                httpConnectionManager.tracing_ = this.f48640q;
            } else {
                httpConnectionManager.tracing_ = q2Var5.b();
            }
            q2<HttpProtocolOptions, HttpProtocolOptions.b, z> q2Var6 = this.f48643t;
            if (q2Var6 == null) {
                httpConnectionManager.commonHttpProtocolOptions_ = this.f48642s;
            } else {
                httpConnectionManager.commonHttpProtocolOptions_ = q2Var6.b();
            }
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, x> q2Var7 = this.f48645v;
            if (q2Var7 == null) {
                httpConnectionManager.httpProtocolOptions_ = this.f48644u;
            } else {
                httpConnectionManager.httpProtocolOptions_ = q2Var7.b();
            }
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> q2Var8 = this.f48647x;
            if (q2Var8 == null) {
                httpConnectionManager.http2ProtocolOptions_ = this.f48646w;
            } else {
                httpConnectionManager.http2ProtocolOptions_ = q2Var8.b();
            }
            httpConnectionManager.serverName_ = this.f48648y;
            httpConnectionManager.serverHeaderTransformation_ = this.f48649z;
            q2<UInt32Value, UInt32Value.b, e3> q2Var9 = this.B;
            if (q2Var9 == null) {
                httpConnectionManager.maxRequestHeadersKb_ = this.A;
            } else {
                httpConnectionManager.maxRequestHeadersKb_ = q2Var9.b();
            }
            q2<Duration, Duration.b, v> q2Var10 = this.D;
            if (q2Var10 == null) {
                httpConnectionManager.idleTimeout_ = this.C;
            } else {
                httpConnectionManager.idleTimeout_ = q2Var10.b();
            }
            q2<Duration, Duration.b, v> q2Var11 = this.F;
            if (q2Var11 == null) {
                httpConnectionManager.streamIdleTimeout_ = this.E;
            } else {
                httpConnectionManager.streamIdleTimeout_ = q2Var11.b();
            }
            q2<Duration, Duration.b, v> q2Var12 = this.H;
            if (q2Var12 == null) {
                httpConnectionManager.requestTimeout_ = this.G;
            } else {
                httpConnectionManager.requestTimeout_ = q2Var12.b();
            }
            q2<Duration, Duration.b, v> q2Var13 = this.J;
            if (q2Var13 == null) {
                httpConnectionManager.drainTimeout_ = this.I;
            } else {
                httpConnectionManager.drainTimeout_ = q2Var13.b();
            }
            q2<Duration, Duration.b, v> q2Var14 = this.L;
            if (q2Var14 == null) {
                httpConnectionManager.delayedCloseTimeout_ = this.K;
            } else {
                httpConnectionManager.delayedCloseTimeout_ = q2Var14.b();
            }
            l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> l2Var2 = this.N;
            if (l2Var2 == null) {
                if ((this.f48630g & 2) != 0) {
                    this.M = Collections.unmodifiableList(this.M);
                    this.f48630g &= -3;
                }
                httpConnectionManager.accessLog_ = this.M;
            } else {
                httpConnectionManager.accessLog_ = l2Var2.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var15 = this.P;
            if (q2Var15 == null) {
                httpConnectionManager.useRemoteAddress_ = this.O;
            } else {
                httpConnectionManager.useRemoteAddress_ = q2Var15.b();
            }
            httpConnectionManager.xffNumTrustedHops_ = this.Q;
            q2<InternalAddressConfig, InternalAddressConfig.b, d> q2Var16 = this.f48626a1;
            if (q2Var16 == null) {
                httpConnectionManager.internalAddressConfig_ = this.R;
            } else {
                httpConnectionManager.internalAddressConfig_ = q2Var16.b();
            }
            httpConnectionManager.skipXffAppend_ = this.V1;
            httpConnectionManager.via_ = this.f48627a2;
            q2<BoolValue, BoolValue.b, l> q2Var17 = this.B3;
            if (q2Var17 == null) {
                httpConnectionManager.generateRequestId_ = this.V2;
            } else {
                httpConnectionManager.generateRequestId_ = q2Var17.b();
            }
            httpConnectionManager.preserveExternalRequestId_ = this.V3;
            httpConnectionManager.forwardClientCertDetails_ = this.C4;
            q2<SetCurrentClientCertDetails, SetCurrentClientCertDetails.b, e> q2Var18 = this.E4;
            if (q2Var18 == null) {
                httpConnectionManager.setCurrentClientCertDetails_ = this.D4;
            } else {
                httpConnectionManager.setCurrentClientCertDetails_ = q2Var18.b();
            }
            httpConnectionManager.proxy100Continue_ = this.F4;
            httpConnectionManager.representIpv4RemoteAddressAsIpv4MappedIpv6_ = this.G4;
            l2<UpgradeConfig, UpgradeConfig.b, g> l2Var3 = this.I4;
            if (l2Var3 == null) {
                if ((this.f48630g & 4) != 0) {
                    this.H4 = Collections.unmodifiableList(this.H4);
                    this.f48630g &= -5;
                }
                httpConnectionManager.upgradeConfigs_ = this.H4;
            } else {
                httpConnectionManager.upgradeConfigs_ = l2Var3.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var19 = this.K4;
            if (q2Var19 == null) {
                httpConnectionManager.normalizePath_ = this.J4;
            } else {
                httpConnectionManager.normalizePath_ = q2Var19.b();
            }
            httpConnectionManager.mergeSlashes_ = this.L4;
            q2<RequestIDExtension, RequestIDExtension.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.d> q2Var20 = this.N4;
            if (q2Var20 == null) {
                httpConnectionManager.requestIdExtension_ = this.M4;
            } else {
                httpConnectionManager.requestIdExtension_ = q2Var20.b();
            }
            httpConnectionManager.routeSpecifierCase_ = this.f48628e;
            Q();
            return httpConnectionManager;
        }

        public c Y0(int i9) {
            this.f48649z = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        public c Z0(boolean z10) {
            this.V1 = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: a1 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        public c b1(int i9) {
            this.Q = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public HttpConnectionManager getDefaultInstanceForType() {
            return HttpConnectionManager.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48691a;
        }

        public c k0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.f48639p;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f48638o;
                if (boolValue2 != null) {
                    this.f48638o = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f48638o = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c l0(HttpProtocolOptions httpProtocolOptions) {
            q2<HttpProtocolOptions, HttpProtocolOptions.b, z> q2Var = this.f48643t;
            if (q2Var == null) {
                HttpProtocolOptions httpProtocolOptions2 = this.f48642s;
                if (httpProtocolOptions2 != null) {
                    this.f48642s = HttpProtocolOptions.newBuilder(httpProtocolOptions2).g0(httpProtocolOptions).I();
                } else {
                    this.f48642s = httpProtocolOptions;
                }
                R();
            } else {
                q2Var.e(httpProtocolOptions);
            }
            return this;
        }

        public c m0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.L;
            if (q2Var == null) {
                Duration duration2 = this.K;
                if (duration2 != null) {
                    this.K = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.K = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c n0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.J;
            if (q2Var == null) {
                Duration duration2 = this.I;
                if (duration2 != null) {
                    this.I = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.I = duration;
                }
                R();
            } else {
                q2Var.e(duration);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.access$9200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof HttpConnectionManager) {
                return r0((HttpConnectionManager) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c r0(HttpConnectionManager httpConnectionManager) {
            if (httpConnectionManager == HttpConnectionManager.getDefaultInstance()) {
                return this;
            }
            if (httpConnectionManager.codecType_ != 0) {
                Q0(httpConnectionManager.getCodecTypeValue());
            }
            if (!httpConnectionManager.getStatPrefix().isEmpty()) {
                this.f48632i = httpConnectionManager.statPrefix_;
                R();
            }
            if (this.f48637n == null) {
                if (!httpConnectionManager.httpFilters_.isEmpty()) {
                    if (this.f48636m.isEmpty()) {
                        this.f48636m = httpConnectionManager.httpFilters_;
                        this.f48630g &= -2;
                    } else {
                        b0();
                        this.f48636m.addAll(httpConnectionManager.httpFilters_);
                    }
                    R();
                }
            } else if (!httpConnectionManager.httpFilters_.isEmpty()) {
                if (this.f48637n.k()) {
                    this.f48637n.f();
                    this.f48637n = null;
                    this.f48636m = httpConnectionManager.httpFilters_;
                    this.f48630g &= -2;
                    this.f48637n = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f48637n.b(httpConnectionManager.httpFilters_);
                }
            }
            if (httpConnectionManager.hasAddUserAgent()) {
                k0(httpConnectionManager.getAddUserAgent());
            }
            if (httpConnectionManager.hasTracing()) {
                M0(httpConnectionManager.getTracing());
            }
            if (httpConnectionManager.hasCommonHttpProtocolOptions()) {
                l0(httpConnectionManager.getCommonHttpProtocolOptions());
            }
            if (httpConnectionManager.hasHttpProtocolOptions()) {
                u0(httpConnectionManager.getHttpProtocolOptions());
            }
            if (httpConnectionManager.hasHttp2ProtocolOptions()) {
                t0(httpConnectionManager.getHttp2ProtocolOptions());
            }
            if (!httpConnectionManager.getServerName().isEmpty()) {
                this.f48648y = httpConnectionManager.serverName_;
                R();
            }
            if (httpConnectionManager.serverHeaderTransformation_ != 0) {
                Y0(httpConnectionManager.getServerHeaderTransformationValue());
            }
            if (httpConnectionManager.hasMaxRequestHeadersKb()) {
                y0(httpConnectionManager.getMaxRequestHeadersKb());
            }
            if (httpConnectionManager.hasIdleTimeout()) {
                v0(httpConnectionManager.getIdleTimeout());
            }
            if (httpConnectionManager.hasStreamIdleTimeout()) {
                L0(httpConnectionManager.getStreamIdleTimeout());
            }
            if (httpConnectionManager.hasRequestTimeout()) {
                H0(httpConnectionManager.getRequestTimeout());
            }
            if (httpConnectionManager.hasDrainTimeout()) {
                n0(httpConnectionManager.getDrainTimeout());
            }
            if (httpConnectionManager.hasDelayedCloseTimeout()) {
                m0(httpConnectionManager.getDelayedCloseTimeout());
            }
            if (this.N == null) {
                if (!httpConnectionManager.accessLog_.isEmpty()) {
                    if (this.M.isEmpty()) {
                        this.M = httpConnectionManager.accessLog_;
                        this.f48630g &= -3;
                    } else {
                        a0();
                        this.M.addAll(httpConnectionManager.accessLog_);
                    }
                    R();
                }
            } else if (!httpConnectionManager.accessLog_.isEmpty()) {
                if (this.N.k()) {
                    this.N.f();
                    this.N = null;
                    this.M = httpConnectionManager.accessLog_;
                    this.f48630g &= -3;
                    this.N = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.N.b(httpConnectionManager.accessLog_);
                }
            }
            if (httpConnectionManager.hasUseRemoteAddress()) {
                O0(httpConnectionManager.getUseRemoteAddress());
            }
            if (httpConnectionManager.getXffNumTrustedHops() != 0) {
                b1(httpConnectionManager.getXffNumTrustedHops());
            }
            if (httpConnectionManager.hasInternalAddressConfig()) {
                x0(httpConnectionManager.getInternalAddressConfig());
            }
            if (httpConnectionManager.getSkipXffAppend()) {
                Z0(httpConnectionManager.getSkipXffAppend());
            }
            if (!httpConnectionManager.getVia().isEmpty()) {
                this.f48627a2 = httpConnectionManager.via_;
                R();
            }
            if (httpConnectionManager.hasGenerateRequestId()) {
                s0(httpConnectionManager.getGenerateRequestId());
            }
            if (httpConnectionManager.getPreserveExternalRequestId()) {
                V0(httpConnectionManager.getPreserveExternalRequestId());
            }
            if (httpConnectionManager.forwardClientCertDetails_ != 0) {
                T0(httpConnectionManager.getForwardClientCertDetailsValue());
            }
            if (httpConnectionManager.hasSetCurrentClientCertDetails()) {
                K0(httpConnectionManager.getSetCurrentClientCertDetails());
            }
            if (httpConnectionManager.getProxy100Continue()) {
                W0(httpConnectionManager.getProxy100Continue());
            }
            if (httpConnectionManager.getRepresentIpv4RemoteAddressAsIpv4MappedIpv6()) {
                X0(httpConnectionManager.getRepresentIpv4RemoteAddressAsIpv4MappedIpv6());
            }
            if (this.I4 == null) {
                if (!httpConnectionManager.upgradeConfigs_.isEmpty()) {
                    if (this.H4.isEmpty()) {
                        this.H4 = httpConnectionManager.upgradeConfigs_;
                        this.f48630g &= -5;
                    } else {
                        d0();
                        this.H4.addAll(httpConnectionManager.upgradeConfigs_);
                    }
                    R();
                }
            } else if (!httpConnectionManager.upgradeConfigs_.isEmpty()) {
                if (this.I4.k()) {
                    this.I4.f();
                    this.I4 = null;
                    this.H4 = httpConnectionManager.upgradeConfigs_;
                    this.f48630g &= -5;
                    this.I4 = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.I4.b(httpConnectionManager.upgradeConfigs_);
                }
            }
            if (httpConnectionManager.hasNormalizePath()) {
                z0(httpConnectionManager.getNormalizePath());
            }
            if (httpConnectionManager.getMergeSlashes()) {
                U0(httpConnectionManager.getMergeSlashes());
            }
            if (httpConnectionManager.hasRequestIdExtension()) {
                D0(httpConnectionManager.getRequestIdExtension());
            }
            int i9 = b.f48625a[httpConnectionManager.getRouteSpecifierCase().ordinal()];
            if (i9 == 1) {
                B0(httpConnectionManager.getRds());
            } else if (i9 == 2) {
                I0(httpConnectionManager.getRouteConfig());
            } else if (i9 == 3) {
                J0(httpConnectionManager.getScopedRoutes());
            }
            z(((GeneratedMessageV3) httpConnectionManager).unknownFields);
            R();
            return this;
        }

        public c s0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.B3;
            if (q2Var == null) {
                BoolValue boolValue2 = this.V2;
                if (boolValue2 != null) {
                    this.V2 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.V2 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c t0(Http2ProtocolOptions http2ProtocolOptions) {
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> q2Var = this.f48647x;
            if (q2Var == null) {
                Http2ProtocolOptions http2ProtocolOptions2 = this.f48646w;
                if (http2ProtocolOptions2 != null) {
                    this.f48646w = Http2ProtocolOptions.newBuilder(http2ProtocolOptions2).i0(http2ProtocolOptions).I();
                } else {
                    this.f48646w = http2ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http2ProtocolOptions);
            }
            return this;
        }

        public c u0(Http1ProtocolOptions http1ProtocolOptions) {
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, x> q2Var = this.f48645v;
            if (q2Var == null) {
                Http1ProtocolOptions http1ProtocolOptions2 = this.f48644u;
                if (http1ProtocolOptions2 != null) {
                    this.f48644u = Http1ProtocolOptions.newBuilder(http1ProtocolOptions2).h0(http1ProtocolOptions).I();
                } else {
                    this.f48644u = http1ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http1ProtocolOptions);
            }
            return this;
        }

        @Deprecated
        public c v0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.D;
            if (q2Var == null) {
                Duration duration2 = this.C;
                if (duration2 != null) {
                    this.C = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.C = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c x0(InternalAddressConfig internalAddressConfig) {
            q2<InternalAddressConfig, InternalAddressConfig.b, d> q2Var = this.f48626a1;
            if (q2Var == null) {
                InternalAddressConfig internalAddressConfig2 = this.R;
                if (internalAddressConfig2 != null) {
                    this.R = InternalAddressConfig.newBuilder(internalAddressConfig2).g0(internalAddressConfig).I();
                } else {
                    this.R = internalAddressConfig;
                }
                R();
            } else {
                q2Var.e(internalAddressConfig);
            }
            return this;
        }

        public c y0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.B;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.A;
                if (uInt32Value2 != null) {
                    this.A = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.A = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c z0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.K4;
            if (q2Var == null) {
                BoolValue boolValue2 = this.J4;
                if (boolValue2 != null) {
                    this.J4 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.J4 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48628e = 0;
            this.f48631h = 0;
            this.f48632i = "";
            this.f48636m = Collections.emptyList();
            this.f48648y = "";
            this.f48649z = 0;
            this.M = Collections.emptyList();
            this.f48627a2 = "";
            this.C4 = 0;
            this.H4 = Collections.emptyList();
            j0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48628e = 0;
            this.f48631h = 0;
            this.f48632i = "";
            this.f48636m = Collections.emptyList();
            this.f48648y = "";
            this.f48649z = 0;
            this.M = Collections.emptyList();
            this.f48627a2 = "";
            this.C4 = 0;
            this.H4 = Collections.emptyList();
            j0();
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

    /* synthetic */ HttpConnectionManager(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpConnectionManager getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48691a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HttpConnectionManager parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HttpConnectionManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HttpConnectionManager parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HttpConnectionManager> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HttpConnectionManager)) {
            return super.equals(obj);
        }
        HttpConnectionManager httpConnectionManager = (HttpConnectionManager) obj;
        if (this.codecType_ == httpConnectionManager.codecType_ && getStatPrefix().equals(httpConnectionManager.getStatPrefix()) && getHttpFiltersList().equals(httpConnectionManager.getHttpFiltersList()) && hasAddUserAgent() == httpConnectionManager.hasAddUserAgent()) {
            if ((!hasAddUserAgent() || getAddUserAgent().equals(httpConnectionManager.getAddUserAgent())) && hasTracing() == httpConnectionManager.hasTracing()) {
                if ((!hasTracing() || getTracing().equals(httpConnectionManager.getTracing())) && hasCommonHttpProtocolOptions() == httpConnectionManager.hasCommonHttpProtocolOptions()) {
                    if ((!hasCommonHttpProtocolOptions() || getCommonHttpProtocolOptions().equals(httpConnectionManager.getCommonHttpProtocolOptions())) && hasHttpProtocolOptions() == httpConnectionManager.hasHttpProtocolOptions()) {
                        if ((!hasHttpProtocolOptions() || getHttpProtocolOptions().equals(httpConnectionManager.getHttpProtocolOptions())) && hasHttp2ProtocolOptions() == httpConnectionManager.hasHttp2ProtocolOptions()) {
                            if ((!hasHttp2ProtocolOptions() || getHttp2ProtocolOptions().equals(httpConnectionManager.getHttp2ProtocolOptions())) && getServerName().equals(httpConnectionManager.getServerName()) && this.serverHeaderTransformation_ == httpConnectionManager.serverHeaderTransformation_ && hasMaxRequestHeadersKb() == httpConnectionManager.hasMaxRequestHeadersKb()) {
                                if ((!hasMaxRequestHeadersKb() || getMaxRequestHeadersKb().equals(httpConnectionManager.getMaxRequestHeadersKb())) && hasIdleTimeout() == httpConnectionManager.hasIdleTimeout()) {
                                    if ((!hasIdleTimeout() || getIdleTimeout().equals(httpConnectionManager.getIdleTimeout())) && hasStreamIdleTimeout() == httpConnectionManager.hasStreamIdleTimeout()) {
                                        if ((!hasStreamIdleTimeout() || getStreamIdleTimeout().equals(httpConnectionManager.getStreamIdleTimeout())) && hasRequestTimeout() == httpConnectionManager.hasRequestTimeout()) {
                                            if ((!hasRequestTimeout() || getRequestTimeout().equals(httpConnectionManager.getRequestTimeout())) && hasDrainTimeout() == httpConnectionManager.hasDrainTimeout()) {
                                                if ((!hasDrainTimeout() || getDrainTimeout().equals(httpConnectionManager.getDrainTimeout())) && hasDelayedCloseTimeout() == httpConnectionManager.hasDelayedCloseTimeout()) {
                                                    if ((!hasDelayedCloseTimeout() || getDelayedCloseTimeout().equals(httpConnectionManager.getDelayedCloseTimeout())) && getAccessLogList().equals(httpConnectionManager.getAccessLogList()) && hasUseRemoteAddress() == httpConnectionManager.hasUseRemoteAddress()) {
                                                        if ((!hasUseRemoteAddress() || getUseRemoteAddress().equals(httpConnectionManager.getUseRemoteAddress())) && getXffNumTrustedHops() == httpConnectionManager.getXffNumTrustedHops() && hasInternalAddressConfig() == httpConnectionManager.hasInternalAddressConfig()) {
                                                            if ((!hasInternalAddressConfig() || getInternalAddressConfig().equals(httpConnectionManager.getInternalAddressConfig())) && getSkipXffAppend() == httpConnectionManager.getSkipXffAppend() && getVia().equals(httpConnectionManager.getVia()) && hasGenerateRequestId() == httpConnectionManager.hasGenerateRequestId()) {
                                                                if ((!hasGenerateRequestId() || getGenerateRequestId().equals(httpConnectionManager.getGenerateRequestId())) && getPreserveExternalRequestId() == httpConnectionManager.getPreserveExternalRequestId() && this.forwardClientCertDetails_ == httpConnectionManager.forwardClientCertDetails_ && hasSetCurrentClientCertDetails() == httpConnectionManager.hasSetCurrentClientCertDetails()) {
                                                                    if ((!hasSetCurrentClientCertDetails() || getSetCurrentClientCertDetails().equals(httpConnectionManager.getSetCurrentClientCertDetails())) && getProxy100Continue() == httpConnectionManager.getProxy100Continue() && getRepresentIpv4RemoteAddressAsIpv4MappedIpv6() == httpConnectionManager.getRepresentIpv4RemoteAddressAsIpv4MappedIpv6() && getUpgradeConfigsList().equals(httpConnectionManager.getUpgradeConfigsList()) && hasNormalizePath() == httpConnectionManager.hasNormalizePath()) {
                                                                        if ((!hasNormalizePath() || getNormalizePath().equals(httpConnectionManager.getNormalizePath())) && getMergeSlashes() == httpConnectionManager.getMergeSlashes() && hasRequestIdExtension() == httpConnectionManager.hasRequestIdExtension()) {
                                                                            if ((!hasRequestIdExtension() || getRequestIdExtension().equals(httpConnectionManager.getRequestIdExtension())) && getRouteSpecifierCase().equals(httpConnectionManager.getRouteSpecifierCase())) {
                                                                                int i9 = this.routeSpecifierCase_;
                                                                                if (i9 != 3) {
                                                                                    if (i9 != 4) {
                                                                                        if (i9 == 31 && !getScopedRoutes().equals(httpConnectionManager.getScopedRoutes())) {
                                                                                            return false;
                                                                                        }
                                                                                    } else if (!getRouteConfig().equals(httpConnectionManager.getRouteConfig())) {
                                                                                        return false;
                                                                                    }
                                                                                } else if (!getRds().equals(httpConnectionManager.getRds())) {
                                                                                    return false;
                                                                                }
                                                                                return this.unknownFields.equals(httpConnectionManager.unknownFields);
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

    public AccessLog getAccessLog(int i9) {
        return this.accessLog_.get(i9);
    }

    public int getAccessLogCount() {
        return this.accessLog_.size();
    }

    public List<AccessLog> getAccessLogList() {
        return this.accessLog_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b getAccessLogOrBuilder(int i9) {
        return this.accessLog_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> getAccessLogOrBuilderList() {
        return this.accessLog_;
    }

    public BoolValue getAddUserAgent() {
        BoolValue boolValue = this.addUserAgent_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getAddUserAgentOrBuilder() {
        return getAddUserAgent();
    }

    public CodecType getCodecType() {
        CodecType valueOf = CodecType.valueOf(this.codecType_);
        return valueOf == null ? CodecType.UNRECOGNIZED : valueOf;
    }

    public int getCodecTypeValue() {
        return this.codecType_;
    }

    public HttpProtocolOptions getCommonHttpProtocolOptions() {
        HttpProtocolOptions httpProtocolOptions = this.commonHttpProtocolOptions_;
        return httpProtocolOptions == null ? HttpProtocolOptions.getDefaultInstance() : httpProtocolOptions;
    }

    public z getCommonHttpProtocolOptionsOrBuilder() {
        return getCommonHttpProtocolOptions();
    }

    public Duration getDelayedCloseTimeout() {
        Duration duration = this.delayedCloseTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getDelayedCloseTimeoutOrBuilder() {
        return getDelayedCloseTimeout();
    }

    public Duration getDrainTimeout() {
        Duration duration = this.drainTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getDrainTimeoutOrBuilder() {
        return getDrainTimeout();
    }

    public ForwardClientCertDetails getForwardClientCertDetails() {
        ForwardClientCertDetails valueOf = ForwardClientCertDetails.valueOf(this.forwardClientCertDetails_);
        return valueOf == null ? ForwardClientCertDetails.UNRECOGNIZED : valueOf;
    }

    public int getForwardClientCertDetailsValue() {
        return this.forwardClientCertDetails_;
    }

    public BoolValue getGenerateRequestId() {
        BoolValue boolValue = this.generateRequestId_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getGenerateRequestIdOrBuilder() {
        return getGenerateRequestId();
    }

    public Http2ProtocolOptions getHttp2ProtocolOptions() {
        Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
        return http2ProtocolOptions == null ? Http2ProtocolOptions.getDefaultInstance() : http2ProtocolOptions;
    }

    public y getHttp2ProtocolOptionsOrBuilder() {
        return getHttp2ProtocolOptions();
    }

    public HttpFilter getHttpFilters(int i9) {
        return this.httpFilters_.get(i9);
    }

    public int getHttpFiltersCount() {
        return this.httpFilters_.size();
    }

    public List<HttpFilter> getHttpFiltersList() {
        return this.httpFilters_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b getHttpFiltersOrBuilder(int i9) {
        return this.httpFilters_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.b> getHttpFiltersOrBuilderList() {
        return this.httpFilters_;
    }

    public Http1ProtocolOptions getHttpProtocolOptions() {
        Http1ProtocolOptions http1ProtocolOptions = this.httpProtocolOptions_;
        return http1ProtocolOptions == null ? Http1ProtocolOptions.getDefaultInstance() : http1ProtocolOptions;
    }

    public x getHttpProtocolOptionsOrBuilder() {
        return getHttpProtocolOptions();
    }

    @Deprecated
    public Duration getIdleTimeout() {
        Duration duration = this.idleTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    @Deprecated
    public v getIdleTimeoutOrBuilder() {
        return getIdleTimeout();
    }

    public InternalAddressConfig getInternalAddressConfig() {
        InternalAddressConfig internalAddressConfig = this.internalAddressConfig_;
        return internalAddressConfig == null ? InternalAddressConfig.getDefaultInstance() : internalAddressConfig;
    }

    public d getInternalAddressConfigOrBuilder() {
        return getInternalAddressConfig();
    }

    public UInt32Value getMaxRequestHeadersKb() {
        UInt32Value uInt32Value = this.maxRequestHeadersKb_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxRequestHeadersKbOrBuilder() {
        return getMaxRequestHeadersKb();
    }

    public boolean getMergeSlashes() {
        return this.mergeSlashes_;
    }

    public BoolValue getNormalizePath() {
        BoolValue boolValue = this.normalizePath_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getNormalizePathOrBuilder() {
        return getNormalizePath();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HttpConnectionManager> getParserForType() {
        return PARSER;
    }

    public boolean getPreserveExternalRequestId() {
        return this.preserveExternalRequestId_;
    }

    public boolean getProxy100Continue() {
        return this.proxy100Continue_;
    }

    public Rds getRds() {
        if (this.routeSpecifierCase_ == 3) {
            return (Rds) this.routeSpecifier_;
        }
        return Rds.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.c getRdsOrBuilder() {
        if (this.routeSpecifierCase_ == 3) {
            return (Rds) this.routeSpecifier_;
        }
        return Rds.getDefaultInstance();
    }

    public boolean getRepresentIpv4RemoteAddressAsIpv4MappedIpv6() {
        return this.representIpv4RemoteAddressAsIpv4MappedIpv6_;
    }

    public RequestIDExtension getRequestIdExtension() {
        RequestIDExtension requestIDExtension = this.requestIdExtension_;
        return requestIDExtension == null ? RequestIDExtension.getDefaultInstance() : requestIDExtension;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.d getRequestIdExtensionOrBuilder() {
        return getRequestIdExtension();
    }

    public Duration getRequestTimeout() {
        Duration duration = this.requestTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getRequestTimeoutOrBuilder() {
        return getRequestTimeout();
    }

    public RouteConfiguration getRouteConfig() {
        if (this.routeSpecifierCase_ == 4) {
            return (RouteConfiguration) this.routeSpecifier_;
        }
        return RouteConfiguration.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.l getRouteConfigOrBuilder() {
        if (this.routeSpecifierCase_ == 4) {
            return (RouteConfiguration) this.routeSpecifier_;
        }
        return RouteConfiguration.getDefaultInstance();
    }

    public RouteSpecifierCase getRouteSpecifierCase() {
        return RouteSpecifierCase.forNumber(this.routeSpecifierCase_);
    }

    public ScopedRoutes getScopedRoutes() {
        if (this.routeSpecifierCase_ == 31) {
            return (ScopedRoutes) this.routeSpecifier_;
        }
        return ScopedRoutes.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.g getScopedRoutesOrBuilder() {
        if (this.routeSpecifierCase_ == 31) {
            return (ScopedRoutes) this.routeSpecifier_;
        }
        return ScopedRoutes.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.codecType_ != CodecType.AUTO.getNumber() ? CodedOutputStream.l(1, this.codecType_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.statPrefix_)) {
            l10 += GeneratedMessageV3.computeStringSize(2, this.statPrefix_);
        }
        if (this.routeSpecifierCase_ == 3) {
            l10 += CodedOutputStream.G(3, (Rds) this.routeSpecifier_);
        }
        if (this.routeSpecifierCase_ == 4) {
            l10 += CodedOutputStream.G(4, (RouteConfiguration) this.routeSpecifier_);
        }
        for (int i10 = 0; i10 < this.httpFilters_.size(); i10++) {
            l10 += CodedOutputStream.G(5, this.httpFilters_.get(i10));
        }
        if (this.addUserAgent_ != null) {
            l10 += CodedOutputStream.G(6, getAddUserAgent());
        }
        if (this.tracing_ != null) {
            l10 += CodedOutputStream.G(7, getTracing());
        }
        if (this.httpProtocolOptions_ != null) {
            l10 += CodedOutputStream.G(8, getHttpProtocolOptions());
        }
        if (this.http2ProtocolOptions_ != null) {
            l10 += CodedOutputStream.G(9, getHttp2ProtocolOptions());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serverName_)) {
            l10 += GeneratedMessageV3.computeStringSize(10, this.serverName_);
        }
        if (this.idleTimeout_ != null) {
            l10 += CodedOutputStream.G(11, getIdleTimeout());
        }
        if (this.drainTimeout_ != null) {
            l10 += CodedOutputStream.G(12, getDrainTimeout());
        }
        for (int i11 = 0; i11 < this.accessLog_.size(); i11++) {
            l10 += CodedOutputStream.G(13, this.accessLog_.get(i11));
        }
        if (this.useRemoteAddress_ != null) {
            l10 += CodedOutputStream.G(14, getUseRemoteAddress());
        }
        if (this.generateRequestId_ != null) {
            l10 += CodedOutputStream.G(15, getGenerateRequestId());
        }
        if (this.forwardClientCertDetails_ != ForwardClientCertDetails.SANITIZE.getNumber()) {
            l10 += CodedOutputStream.l(16, this.forwardClientCertDetails_);
        }
        if (this.setCurrentClientCertDetails_ != null) {
            l10 += CodedOutputStream.G(17, getSetCurrentClientCertDetails());
        }
        boolean z10 = this.proxy100Continue_;
        if (z10) {
            l10 += CodedOutputStream.e(18, z10);
        }
        int i12 = this.xffNumTrustedHops_;
        if (i12 != 0) {
            l10 += CodedOutputStream.Y(19, i12);
        }
        boolean z11 = this.representIpv4RemoteAddressAsIpv4MappedIpv6_;
        if (z11) {
            l10 += CodedOutputStream.e(20, z11);
        }
        boolean z12 = this.skipXffAppend_;
        if (z12) {
            l10 += CodedOutputStream.e(21, z12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.via_)) {
            l10 += GeneratedMessageV3.computeStringSize(22, this.via_);
        }
        for (int i13 = 0; i13 < this.upgradeConfigs_.size(); i13++) {
            l10 += CodedOutputStream.G(23, this.upgradeConfigs_.get(i13));
        }
        if (this.streamIdleTimeout_ != null) {
            l10 += CodedOutputStream.G(24, getStreamIdleTimeout());
        }
        if (this.internalAddressConfig_ != null) {
            l10 += CodedOutputStream.G(25, getInternalAddressConfig());
        }
        if (this.delayedCloseTimeout_ != null) {
            l10 += CodedOutputStream.G(26, getDelayedCloseTimeout());
        }
        if (this.requestTimeout_ != null) {
            l10 += CodedOutputStream.G(28, getRequestTimeout());
        }
        if (this.maxRequestHeadersKb_ != null) {
            l10 += CodedOutputStream.G(29, getMaxRequestHeadersKb());
        }
        if (this.normalizePath_ != null) {
            l10 += CodedOutputStream.G(30, getNormalizePath());
        }
        if (this.routeSpecifierCase_ == 31) {
            l10 += CodedOutputStream.G(31, (ScopedRoutes) this.routeSpecifier_);
        }
        boolean z13 = this.preserveExternalRequestId_;
        if (z13) {
            l10 += CodedOutputStream.e(32, z13);
        }
        boolean z14 = this.mergeSlashes_;
        if (z14) {
            l10 += CodedOutputStream.e(33, z14);
        }
        if (this.serverHeaderTransformation_ != ServerHeaderTransformation.OVERWRITE.getNumber()) {
            l10 += CodedOutputStream.l(34, this.serverHeaderTransformation_);
        }
        if (this.commonHttpProtocolOptions_ != null) {
            l10 += CodedOutputStream.G(35, getCommonHttpProtocolOptions());
        }
        if (this.requestIdExtension_ != null) {
            l10 += CodedOutputStream.G(36, getRequestIdExtension());
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ServerHeaderTransformation getServerHeaderTransformation() {
        ServerHeaderTransformation valueOf = ServerHeaderTransformation.valueOf(this.serverHeaderTransformation_);
        return valueOf == null ? ServerHeaderTransformation.UNRECOGNIZED : valueOf;
    }

    public int getServerHeaderTransformationValue() {
        return this.serverHeaderTransformation_;
    }

    public String getServerName() {
        Object obj = this.serverName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.serverName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getServerNameBytes() {
        Object obj = this.serverName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public SetCurrentClientCertDetails getSetCurrentClientCertDetails() {
        SetCurrentClientCertDetails setCurrentClientCertDetails = this.setCurrentClientCertDetails_;
        return setCurrentClientCertDetails == null ? SetCurrentClientCertDetails.getDefaultInstance() : setCurrentClientCertDetails;
    }

    public e getSetCurrentClientCertDetailsOrBuilder() {
        return getSetCurrentClientCertDetails();
    }

    public boolean getSkipXffAppend() {
        return this.skipXffAppend_;
    }

    public String getStatPrefix() {
        Object obj = this.statPrefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.statPrefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getStatPrefixBytes() {
        Object obj = this.statPrefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.statPrefix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Duration getStreamIdleTimeout() {
        Duration duration = this.streamIdleTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getStreamIdleTimeoutOrBuilder() {
        return getStreamIdleTimeout();
    }

    public Tracing getTracing() {
        Tracing tracing = this.tracing_;
        return tracing == null ? Tracing.getDefaultInstance() : tracing;
    }

    public f getTracingOrBuilder() {
        return getTracing();
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

    public BoolValue getUseRemoteAddress() {
        BoolValue boolValue = this.useRemoteAddress_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getUseRemoteAddressOrBuilder() {
        return getUseRemoteAddress();
    }

    public String getVia() {
        Object obj = this.via_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.via_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getViaBytes() {
        Object obj = this.via_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.via_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int getXffNumTrustedHops() {
        return this.xffNumTrustedHops_;
    }

    public boolean hasAddUserAgent() {
        return this.addUserAgent_ != null;
    }

    public boolean hasCommonHttpProtocolOptions() {
        return this.commonHttpProtocolOptions_ != null;
    }

    public boolean hasDelayedCloseTimeout() {
        return this.delayedCloseTimeout_ != null;
    }

    public boolean hasDrainTimeout() {
        return this.drainTimeout_ != null;
    }

    public boolean hasGenerateRequestId() {
        return this.generateRequestId_ != null;
    }

    public boolean hasHttp2ProtocolOptions() {
        return this.http2ProtocolOptions_ != null;
    }

    public boolean hasHttpProtocolOptions() {
        return this.httpProtocolOptions_ != null;
    }

    @Deprecated
    public boolean hasIdleTimeout() {
        return this.idleTimeout_ != null;
    }

    public boolean hasInternalAddressConfig() {
        return this.internalAddressConfig_ != null;
    }

    public boolean hasMaxRequestHeadersKb() {
        return this.maxRequestHeadersKb_ != null;
    }

    public boolean hasNormalizePath() {
        return this.normalizePath_ != null;
    }

    public boolean hasRds() {
        return this.routeSpecifierCase_ == 3;
    }

    public boolean hasRequestIdExtension() {
        return this.requestIdExtension_ != null;
    }

    public boolean hasRequestTimeout() {
        return this.requestTimeout_ != null;
    }

    public boolean hasRouteConfig() {
        return this.routeSpecifierCase_ == 4;
    }

    public boolean hasScopedRoutes() {
        return this.routeSpecifierCase_ == 31;
    }

    public boolean hasSetCurrentClientCertDetails() {
        return this.setCurrentClientCertDetails_ != null;
    }

    public boolean hasStreamIdleTimeout() {
        return this.streamIdleTimeout_ != null;
    }

    public boolean hasTracing() {
        return this.tracing_ != null;
    }

    public boolean hasUseRemoteAddress() {
        return this.useRemoteAddress_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.codecType_) * 37) + 2) * 53) + getStatPrefix().hashCode();
        if (getHttpFiltersCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getHttpFiltersList().hashCode();
        }
        if (hasAddUserAgent()) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getAddUserAgent().hashCode();
        }
        if (hasTracing()) {
            hashCode2 = (((hashCode2 * 37) + 7) * 53) + getTracing().hashCode();
        }
        if (hasCommonHttpProtocolOptions()) {
            hashCode2 = (((hashCode2 * 37) + 35) * 53) + getCommonHttpProtocolOptions().hashCode();
        }
        if (hasHttpProtocolOptions()) {
            hashCode2 = (((hashCode2 * 37) + 8) * 53) + getHttpProtocolOptions().hashCode();
        }
        if (hasHttp2ProtocolOptions()) {
            hashCode2 = (((hashCode2 * 37) + 9) * 53) + getHttp2ProtocolOptions().hashCode();
        }
        int hashCode3 = (((((((hashCode2 * 37) + 10) * 53) + getServerName().hashCode()) * 37) + 34) * 53) + this.serverHeaderTransformation_;
        if (hasMaxRequestHeadersKb()) {
            hashCode3 = (((hashCode3 * 37) + 29) * 53) + getMaxRequestHeadersKb().hashCode();
        }
        if (hasIdleTimeout()) {
            hashCode3 = (((hashCode3 * 37) + 11) * 53) + getIdleTimeout().hashCode();
        }
        if (hasStreamIdleTimeout()) {
            hashCode3 = (((hashCode3 * 37) + 24) * 53) + getStreamIdleTimeout().hashCode();
        }
        if (hasRequestTimeout()) {
            hashCode3 = (((hashCode3 * 37) + 28) * 53) + getRequestTimeout().hashCode();
        }
        if (hasDrainTimeout()) {
            hashCode3 = (((hashCode3 * 37) + 12) * 53) + getDrainTimeout().hashCode();
        }
        if (hasDelayedCloseTimeout()) {
            hashCode3 = (((hashCode3 * 37) + 26) * 53) + getDelayedCloseTimeout().hashCode();
        }
        if (getAccessLogCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 13) * 53) + getAccessLogList().hashCode();
        }
        if (hasUseRemoteAddress()) {
            hashCode3 = (((hashCode3 * 37) + 14) * 53) + getUseRemoteAddress().hashCode();
        }
        int xffNumTrustedHops = (((hashCode3 * 37) + 19) * 53) + getXffNumTrustedHops();
        if (hasInternalAddressConfig()) {
            xffNumTrustedHops = (((xffNumTrustedHops * 37) + 25) * 53) + getInternalAddressConfig().hashCode();
        }
        int d10 = (((((((xffNumTrustedHops * 37) + 21) * 53) + u0.d(getSkipXffAppend())) * 37) + 22) * 53) + getVia().hashCode();
        if (hasGenerateRequestId()) {
            d10 = (((d10 * 37) + 15) * 53) + getGenerateRequestId().hashCode();
        }
        int d11 = (((((((d10 * 37) + 32) * 53) + u0.d(getPreserveExternalRequestId())) * 37) + 16) * 53) + this.forwardClientCertDetails_;
        if (hasSetCurrentClientCertDetails()) {
            d11 = (((d11 * 37) + 17) * 53) + getSetCurrentClientCertDetails().hashCode();
        }
        int d12 = (((((((d11 * 37) + 18) * 53) + u0.d(getProxy100Continue())) * 37) + 20) * 53) + u0.d(getRepresentIpv4RemoteAddressAsIpv4MappedIpv6());
        if (getUpgradeConfigsCount() > 0) {
            d12 = (((d12 * 37) + 23) * 53) + getUpgradeConfigsList().hashCode();
        }
        if (hasNormalizePath()) {
            d12 = (((d12 * 37) + 30) * 53) + getNormalizePath().hashCode();
        }
        int d13 = (((d12 * 37) + 33) * 53) + u0.d(getMergeSlashes());
        if (hasRequestIdExtension()) {
            d13 = (((d13 * 37) + 36) * 53) + getRequestIdExtension().hashCode();
        }
        int i11 = this.routeSpecifierCase_;
        if (i11 == 3) {
            i9 = ((d13 * 37) + 3) * 53;
            hashCode = getRds().hashCode();
        } else if (i11 == 4) {
            i9 = ((d13 * 37) + 4) * 53;
            hashCode = getRouteConfig().hashCode();
        } else {
            if (i11 == 31) {
                i9 = ((d13 * 37) + 31) * 53;
                hashCode = getScopedRoutes().hashCode();
            }
            int hashCode4 = (d13 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode4;
            return hashCode4;
        }
        d13 = i9 + hashCode;
        int hashCode42 = (d13 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode42;
        return hashCode42;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48692b.d(HttpConnectionManager.class, c.class);
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
        return new HttpConnectionManager();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.codecType_ != CodecType.AUTO.getNumber()) {
            codedOutputStream.v0(1, this.codecType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.statPrefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.statPrefix_);
        }
        if (this.routeSpecifierCase_ == 3) {
            codedOutputStream.L0(3, (Rds) this.routeSpecifier_);
        }
        if (this.routeSpecifierCase_ == 4) {
            codedOutputStream.L0(4, (RouteConfiguration) this.routeSpecifier_);
        }
        for (int i9 = 0; i9 < this.httpFilters_.size(); i9++) {
            codedOutputStream.L0(5, this.httpFilters_.get(i9));
        }
        if (this.addUserAgent_ != null) {
            codedOutputStream.L0(6, getAddUserAgent());
        }
        if (this.tracing_ != null) {
            codedOutputStream.L0(7, getTracing());
        }
        if (this.httpProtocolOptions_ != null) {
            codedOutputStream.L0(8, getHttpProtocolOptions());
        }
        if (this.http2ProtocolOptions_ != null) {
            codedOutputStream.L0(9, getHttp2ProtocolOptions());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serverName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.serverName_);
        }
        if (this.idleTimeout_ != null) {
            codedOutputStream.L0(11, getIdleTimeout());
        }
        if (this.drainTimeout_ != null) {
            codedOutputStream.L0(12, getDrainTimeout());
        }
        for (int i10 = 0; i10 < this.accessLog_.size(); i10++) {
            codedOutputStream.L0(13, this.accessLog_.get(i10));
        }
        if (this.useRemoteAddress_ != null) {
            codedOutputStream.L0(14, getUseRemoteAddress());
        }
        if (this.generateRequestId_ != null) {
            codedOutputStream.L0(15, getGenerateRequestId());
        }
        if (this.forwardClientCertDetails_ != ForwardClientCertDetails.SANITIZE.getNumber()) {
            codedOutputStream.v0(16, this.forwardClientCertDetails_);
        }
        if (this.setCurrentClientCertDetails_ != null) {
            codedOutputStream.L0(17, getSetCurrentClientCertDetails());
        }
        boolean z10 = this.proxy100Continue_;
        if (z10) {
            codedOutputStream.n0(18, z10);
        }
        int i11 = this.xffNumTrustedHops_;
        if (i11 != 0) {
            codedOutputStream.c1(19, i11);
        }
        boolean z11 = this.representIpv4RemoteAddressAsIpv4MappedIpv6_;
        if (z11) {
            codedOutputStream.n0(20, z11);
        }
        boolean z12 = this.skipXffAppend_;
        if (z12) {
            codedOutputStream.n0(21, z12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.via_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 22, this.via_);
        }
        for (int i12 = 0; i12 < this.upgradeConfigs_.size(); i12++) {
            codedOutputStream.L0(23, this.upgradeConfigs_.get(i12));
        }
        if (this.streamIdleTimeout_ != null) {
            codedOutputStream.L0(24, getStreamIdleTimeout());
        }
        if (this.internalAddressConfig_ != null) {
            codedOutputStream.L0(25, getInternalAddressConfig());
        }
        if (this.delayedCloseTimeout_ != null) {
            codedOutputStream.L0(26, getDelayedCloseTimeout());
        }
        if (this.requestTimeout_ != null) {
            codedOutputStream.L0(28, getRequestTimeout());
        }
        if (this.maxRequestHeadersKb_ != null) {
            codedOutputStream.L0(29, getMaxRequestHeadersKb());
        }
        if (this.normalizePath_ != null) {
            codedOutputStream.L0(30, getNormalizePath());
        }
        if (this.routeSpecifierCase_ == 31) {
            codedOutputStream.L0(31, (ScopedRoutes) this.routeSpecifier_);
        }
        boolean z13 = this.preserveExternalRequestId_;
        if (z13) {
            codedOutputStream.n0(32, z13);
        }
        boolean z14 = this.mergeSlashes_;
        if (z14) {
            codedOutputStream.n0(33, z14);
        }
        if (this.serverHeaderTransformation_ != ServerHeaderTransformation.OVERWRITE.getNumber()) {
            codedOutputStream.v0(34, this.serverHeaderTransformation_);
        }
        if (this.commonHttpProtocolOptions_ != null) {
            codedOutputStream.L0(35, getCommonHttpProtocolOptions());
        }
        if (this.requestIdExtension_ != null) {
            codedOutputStream.L0(36, getRequestIdExtension());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpConnectionManager(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HttpConnectionManager httpConnectionManager) {
        return DEFAULT_INSTANCE.toBuilder().r0(httpConnectionManager);
    }

    public static HttpConnectionManager parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpConnectionManager(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.routeSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HttpConnectionManager parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HttpConnectionManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpConnectionManager parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HttpConnectionManager getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).r0(this);
    }

    public static HttpConnectionManager parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static HttpConnectionManager parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private HttpConnectionManager() {
        this.routeSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.codecType_ = 0;
        this.statPrefix_ = "";
        this.httpFilters_ = Collections.emptyList();
        this.serverName_ = "";
        this.serverHeaderTransformation_ = 0;
        this.accessLog_ = Collections.emptyList();
        this.via_ = "";
        this.forwardClientCertDetails_ = 0;
        this.upgradeConfigs_ = Collections.emptyList();
    }

    public static HttpConnectionManager parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HttpConnectionManager parseFrom(InputStream inputStream) throws IOException {
        return (HttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HttpConnectionManager parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpConnectionManager parseFrom(p pVar) throws IOException {
        return (HttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HttpConnectionManager parseFrom(p pVar, f0 f0Var) throws IOException {
        return (HttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private HttpConnectionManager(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            case 8:
                                this.codecType_ = pVar.u();
                                continue;
                            case 18:
                                this.statPrefix_ = pVar.K();
                                continue;
                            case 26:
                                Rds.b builder = this.routeSpecifierCase_ == 3 ? ((Rds) this.routeSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(Rds.parser(), f0Var);
                                this.routeSpecifier_ = B;
                                if (builder != null) {
                                    builder.h0((Rds) B);
                                    this.routeSpecifier_ = builder.I();
                                }
                                this.routeSpecifierCase_ = 3;
                                continue;
                            case 34:
                                RouteConfiguration.b builder2 = this.routeSpecifierCase_ == 4 ? ((RouteConfiguration) this.routeSpecifier_).toBuilder() : null;
                                o1 B2 = pVar.B(RouteConfiguration.parser(), f0Var);
                                this.routeSpecifier_ = B2;
                                if (builder2 != null) {
                                    builder2.q0((RouteConfiguration) B2);
                                    this.routeSpecifier_ = builder2.I();
                                }
                                this.routeSpecifierCase_ = 4;
                                continue;
                            case 42:
                                if (!(z11 & true)) {
                                    this.httpFilters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.httpFilters_.add((HttpFilter) pVar.B(HttpFilter.parser(), f0Var));
                                continue;
                            case 50:
                                BoolValue boolValue = this.addUserAgent_;
                                BoolValue.b builder3 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.addUserAgent_ = boolValue2;
                                if (builder3 != null) {
                                    builder3.d0(boolValue2);
                                    this.addUserAgent_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case 58:
                                Tracing tracing = this.tracing_;
                                Tracing.b builder4 = tracing != null ? tracing.toBuilder() : null;
                                Tracing tracing2 = (Tracing) pVar.B(Tracing.parser(), f0Var);
                                this.tracing_ = tracing2;
                                if (builder4 != null) {
                                    builder4.k0(tracing2);
                                    this.tracing_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 66:
                                Http1ProtocolOptions http1ProtocolOptions = this.httpProtocolOptions_;
                                Http1ProtocolOptions.c builder5 = http1ProtocolOptions != null ? http1ProtocolOptions.toBuilder() : null;
                                Http1ProtocolOptions http1ProtocolOptions2 = (Http1ProtocolOptions) pVar.B(Http1ProtocolOptions.parser(), f0Var);
                                this.httpProtocolOptions_ = http1ProtocolOptions2;
                                if (builder5 != null) {
                                    builder5.h0(http1ProtocolOptions2);
                                    this.httpProtocolOptions_ = builder5.I();
                                } else {
                                    continue;
                                }
                            case 74:
                                Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
                                Http2ProtocolOptions.b builder6 = http2ProtocolOptions != null ? http2ProtocolOptions.toBuilder() : null;
                                Http2ProtocolOptions http2ProtocolOptions2 = (Http2ProtocolOptions) pVar.B(Http2ProtocolOptions.parser(), f0Var);
                                this.http2ProtocolOptions_ = http2ProtocolOptions2;
                                if (builder6 != null) {
                                    builder6.i0(http2ProtocolOptions2);
                                    this.http2ProtocolOptions_ = builder6.I();
                                } else {
                                    continue;
                                }
                            case 82:
                                this.serverName_ = pVar.K();
                                continue;
                            case 90:
                                Duration duration = this.idleTimeout_;
                                Duration.b builder7 = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.idleTimeout_ = duration2;
                                if (builder7 != null) {
                                    builder7.e0(duration2);
                                    this.idleTimeout_ = builder7.I();
                                } else {
                                    continue;
                                }
                            case 98:
                                Duration duration3 = this.drainTimeout_;
                                Duration.b builder8 = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.drainTimeout_ = duration4;
                                if (builder8 != null) {
                                    builder8.e0(duration4);
                                    this.drainTimeout_ = builder8.I();
                                } else {
                                    continue;
                                }
                            case 106:
                                if (!(z11 & true)) {
                                    this.accessLog_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.accessLog_.add((AccessLog) pVar.B(AccessLog.parser(), f0Var));
                                continue;
                            case 114:
                                BoolValue boolValue3 = this.useRemoteAddress_;
                                BoolValue.b builder9 = boolValue3 != null ? boolValue3.toBuilder() : null;
                                BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.useRemoteAddress_ = boolValue4;
                                if (builder9 != null) {
                                    builder9.d0(boolValue4);
                                    this.useRemoteAddress_ = builder9.I();
                                } else {
                                    continue;
                                }
                            case 122:
                                BoolValue boolValue5 = this.generateRequestId_;
                                BoolValue.b builder10 = boolValue5 != null ? boolValue5.toBuilder() : null;
                                BoolValue boolValue6 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.generateRequestId_ = boolValue6;
                                if (builder10 != null) {
                                    builder10.d0(boolValue6);
                                    this.generateRequestId_ = builder10.I();
                                } else {
                                    continue;
                                }
                            case 128:
                                this.forwardClientCertDetails_ = pVar.u();
                                continue;
                            case 138:
                                SetCurrentClientCertDetails setCurrentClientCertDetails = this.setCurrentClientCertDetails_;
                                SetCurrentClientCertDetails.b builder11 = setCurrentClientCertDetails != null ? setCurrentClientCertDetails.toBuilder() : null;
                                SetCurrentClientCertDetails setCurrentClientCertDetails2 = (SetCurrentClientCertDetails) pVar.B(SetCurrentClientCertDetails.parser(), f0Var);
                                this.setCurrentClientCertDetails_ = setCurrentClientCertDetails2;
                                if (builder11 != null) {
                                    builder11.g0(setCurrentClientCertDetails2);
                                    this.setCurrentClientCertDetails_ = builder11.I();
                                } else {
                                    continue;
                                }
                            case 144:
                                this.proxy100Continue_ = pVar.r();
                                continue;
                            case 152:
                                this.xffNumTrustedHops_ = pVar.M();
                                continue;
                            case 160:
                                this.representIpv4RemoteAddressAsIpv4MappedIpv6_ = pVar.r();
                                continue;
                            case 168:
                                this.skipXffAppend_ = pVar.r();
                                continue;
                            case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                                this.via_ = pVar.K();
                                continue;
                            case 186:
                                if (!(z11 & true)) {
                                    this.upgradeConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.upgradeConfigs_.add((UpgradeConfig) pVar.B(UpgradeConfig.parser(), f0Var));
                                continue;
                            case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                                Duration duration5 = this.streamIdleTimeout_;
                                Duration.b builder12 = duration5 != null ? duration5.toBuilder() : null;
                                Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.streamIdleTimeout_ = duration6;
                                if (builder12 != null) {
                                    builder12.e0(duration6);
                                    this.streamIdleTimeout_ = builder12.I();
                                } else {
                                    continue;
                                }
                            case 202:
                                InternalAddressConfig internalAddressConfig = this.internalAddressConfig_;
                                InternalAddressConfig.b builder13 = internalAddressConfig != null ? internalAddressConfig.toBuilder() : null;
                                InternalAddressConfig internalAddressConfig2 = (InternalAddressConfig) pVar.B(InternalAddressConfig.parser(), f0Var);
                                this.internalAddressConfig_ = internalAddressConfig2;
                                if (builder13 != null) {
                                    builder13.g0(internalAddressConfig2);
                                    this.internalAddressConfig_ = builder13.I();
                                } else {
                                    continue;
                                }
                            case 210:
                                Duration duration7 = this.delayedCloseTimeout_;
                                Duration.b builder14 = duration7 != null ? duration7.toBuilder() : null;
                                Duration duration8 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.delayedCloseTimeout_ = duration8;
                                if (builder14 != null) {
                                    builder14.e0(duration8);
                                    this.delayedCloseTimeout_ = builder14.I();
                                } else {
                                    continue;
                                }
                            case 226:
                                Duration duration9 = this.requestTimeout_;
                                Duration.b builder15 = duration9 != null ? duration9.toBuilder() : null;
                                Duration duration10 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.requestTimeout_ = duration10;
                                if (builder15 != null) {
                                    builder15.e0(duration10);
                                    this.requestTimeout_ = builder15.I();
                                } else {
                                    continue;
                                }
                            case 234:
                                UInt32Value uInt32Value = this.maxRequestHeadersKb_;
                                UInt32Value.b builder16 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxRequestHeadersKb_ = uInt32Value2;
                                if (builder16 != null) {
                                    builder16.g0(uInt32Value2);
                                    this.maxRequestHeadersKb_ = builder16.I();
                                } else {
                                    continue;
                                }
                            case 242:
                                BoolValue boolValue7 = this.normalizePath_;
                                BoolValue.b builder17 = boolValue7 != null ? boolValue7.toBuilder() : null;
                                BoolValue boolValue8 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.normalizePath_ = boolValue8;
                                if (builder17 != null) {
                                    builder17.d0(boolValue8);
                                    this.normalizePath_ = builder17.I();
                                } else {
                                    continue;
                                }
                            case 250:
                                ScopedRoutes.c builder18 = this.routeSpecifierCase_ == 31 ? ((ScopedRoutes) this.routeSpecifier_).toBuilder() : null;
                                o1 B3 = pVar.B(ScopedRoutes.parser(), f0Var);
                                this.routeSpecifier_ = B3;
                                if (builder18 != null) {
                                    builder18.g0((ScopedRoutes) B3);
                                    this.routeSpecifier_ = builder18.I();
                                }
                                this.routeSpecifierCase_ = 31;
                                continue;
                            case 256:
                                this.preserveExternalRequestId_ = pVar.r();
                                continue;
                            case 264:
                                this.mergeSlashes_ = pVar.r();
                                continue;
                            case 272:
                                this.serverHeaderTransformation_ = pVar.u();
                                continue;
                            case 282:
                                HttpProtocolOptions httpProtocolOptions = this.commonHttpProtocolOptions_;
                                HttpProtocolOptions.b builder19 = httpProtocolOptions != null ? httpProtocolOptions.toBuilder() : null;
                                HttpProtocolOptions httpProtocolOptions2 = (HttpProtocolOptions) pVar.B(HttpProtocolOptions.parser(), f0Var);
                                this.commonHttpProtocolOptions_ = httpProtocolOptions2;
                                if (builder19 != null) {
                                    builder19.g0(httpProtocolOptions2);
                                    this.commonHttpProtocolOptions_ = builder19.I();
                                } else {
                                    continue;
                                }
                            case BuildConfig.VERSION_CODE /* 290 */:
                                RequestIDExtension requestIDExtension = this.requestIdExtension_;
                                RequestIDExtension.b builder20 = requestIDExtension != null ? requestIDExtension.toBuilder() : null;
                                RequestIDExtension requestIDExtension2 = (RequestIDExtension) pVar.B(RequestIDExtension.parser(), f0Var);
                                this.requestIdExtension_ = requestIDExtension2;
                                if (builder20 != null) {
                                    builder20.g0(requestIDExtension2);
                                    this.requestIdExtension_ = builder20.I();
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
                    this.httpFilters_ = Collections.unmodifiableList(this.httpFilters_);
                }
                if (z11 & true) {
                    this.accessLog_ = Collections.unmodifiableList(this.accessLog_);
                }
                if (z11 & true) {
                    this.upgradeConfigs_ = Collections.unmodifiableList(this.upgradeConfigs_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
