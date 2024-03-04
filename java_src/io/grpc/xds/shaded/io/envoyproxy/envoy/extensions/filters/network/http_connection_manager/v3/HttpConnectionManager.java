package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3;

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
import com.google.protobuf.l;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLog;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.c0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.e0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtension;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.CustomTag;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Percent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HttpConnectionManager extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.a {
    public static final int ACCESS_LOG_FIELD_NUMBER = 13;
    public static final int ADD_USER_AGENT_FIELD_NUMBER = 6;
    public static final int ALWAYS_SET_REQUEST_ID_IN_RESPONSE_FIELD_NUMBER = 37;
    public static final int CODEC_TYPE_FIELD_NUMBER = 1;
    public static final int COMMON_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 35;
    public static final int DELAYED_CLOSE_TIMEOUT_FIELD_NUMBER = 26;
    public static final int DRAIN_TIMEOUT_FIELD_NUMBER = 12;
    public static final int FORWARD_CLIENT_CERT_DETAILS_FIELD_NUMBER = 16;
    public static final int GENERATE_REQUEST_ID_FIELD_NUMBER = 15;
    public static final int HTTP2_PROTOCOL_OPTIONS_FIELD_NUMBER = 9;
    public static final int HTTP3_PROTOCOL_OPTIONS_FIELD_NUMBER = 44;
    public static final int HTTP_FILTERS_FIELD_NUMBER = 5;
    public static final int HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER = 8;
    public static final int INTERNAL_ADDRESS_CONFIG_FIELD_NUMBER = 25;
    public static final int LOCAL_REPLY_CONFIG_FIELD_NUMBER = 38;
    public static final int MAX_REQUEST_HEADERS_KB_FIELD_NUMBER = 29;
    public static final int MERGE_SLASHES_FIELD_NUMBER = 33;
    public static final int NORMALIZE_PATH_FIELD_NUMBER = 30;
    public static final int ORIGINAL_IP_DETECTION_EXTENSIONS_FIELD_NUMBER = 46;
    public static final int PATH_NORMALIZATION_OPTIONS_FIELD_NUMBER = 43;
    public static final int PATH_WITH_ESCAPED_SLASHES_ACTION_FIELD_NUMBER = 45;
    public static final int PRESERVE_EXTERNAL_REQUEST_ID_FIELD_NUMBER = 32;
    public static final int PROXY_100_CONTINUE_FIELD_NUMBER = 18;
    public static final int RDS_FIELD_NUMBER = 3;
    public static final int REPRESENT_IPV4_REMOTE_ADDRESS_AS_IPV4_MAPPED_IPV6_FIELD_NUMBER = 20;
    public static final int REQUEST_HEADERS_TIMEOUT_FIELD_NUMBER = 41;
    public static final int REQUEST_ID_EXTENSION_FIELD_NUMBER = 36;
    public static final int REQUEST_TIMEOUT_FIELD_NUMBER = 28;
    public static final int ROUTE_CONFIG_FIELD_NUMBER = 4;
    public static final int SCHEME_HEADER_TRANSFORMATION_FIELD_NUMBER = 48;
    public static final int SCOPED_ROUTES_FIELD_NUMBER = 31;
    public static final int SERVER_HEADER_TRANSFORMATION_FIELD_NUMBER = 34;
    public static final int SERVER_NAME_FIELD_NUMBER = 10;
    public static final int SET_CURRENT_CLIENT_CERT_DETAILS_FIELD_NUMBER = 17;
    public static final int SKIP_XFF_APPEND_FIELD_NUMBER = 21;
    public static final int STAT_PREFIX_FIELD_NUMBER = 2;
    public static final int STREAM_ERROR_ON_INVALID_HTTP_MESSAGE_FIELD_NUMBER = 40;
    public static final int STREAM_IDLE_TIMEOUT_FIELD_NUMBER = 24;
    public static final int STRIP_ANY_HOST_PORT_FIELD_NUMBER = 42;
    public static final int STRIP_MATCHING_HOST_PORT_FIELD_NUMBER = 39;
    public static final int STRIP_TRAILING_HOST_DOT_FIELD_NUMBER = 47;
    public static final int TRACING_FIELD_NUMBER = 7;
    public static final int UPGRADE_CONFIGS_FIELD_NUMBER = 23;
    public static final int USE_REMOTE_ADDRESS_FIELD_NUMBER = 14;
    public static final int VIA_FIELD_NUMBER = 22;
    public static final int XFF_NUM_TRUSTED_HOPS_FIELD_NUMBER = 19;
    private static final long serialVersionUID = 0;
    private List<AccessLog> accessLog_;
    private BoolValue addUserAgent_;
    private boolean alwaysSetRequestIdInResponse_;
    private int codecType_;
    private HttpProtocolOptions commonHttpProtocolOptions_;
    private Duration delayedCloseTimeout_;
    private Duration drainTimeout_;
    private int forwardClientCertDetails_;
    private BoolValue generateRequestId_;
    private Http2ProtocolOptions http2ProtocolOptions_;
    private Http3ProtocolOptions http3ProtocolOptions_;
    private List<HttpFilter> httpFilters_;
    private Http1ProtocolOptions httpProtocolOptions_;
    private InternalAddressConfig internalAddressConfig_;
    private LocalReplyConfig localReplyConfig_;
    private UInt32Value maxRequestHeadersKb_;
    private byte memoizedIsInitialized;
    private boolean mergeSlashes_;
    private BoolValue normalizePath_;
    private List<TypedExtensionConfig> originalIpDetectionExtensions_;
    private PathNormalizationOptions pathNormalizationOptions_;
    private int pathWithEscapedSlashesAction_;
    private boolean preserveExternalRequestId_;
    private boolean proxy100Continue_;
    private boolean representIpv4RemoteAddressAsIpv4MappedIpv6_;
    private Duration requestHeadersTimeout_;
    private RequestIDExtension requestIdExtension_;
    private Duration requestTimeout_;
    private int routeSpecifierCase_;
    private Object routeSpecifier_;
    private SchemeHeaderTransformation schemeHeaderTransformation_;
    private int serverHeaderTransformation_;
    private volatile Object serverName_;
    private SetCurrentClientCertDetails setCurrentClientCertDetails_;
    private boolean skipXffAppend_;
    private volatile Object statPrefix_;
    private BoolValue streamErrorOnInvalidHttpMessage_;
    private Duration streamIdleTimeout_;
    private boolean stripMatchingHostPort_;
    private int stripPortModeCase_;
    private Object stripPortMode_;
    private boolean stripTrailingHostDot_;
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
            private boolean f49755e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49882f.d(InternalAddressConfig.class, b.class);
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
                internalAddressConfig.unixSockets_ = this.f49755e;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig.access$2100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$InternalAddressConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$InternalAddressConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$InternalAddressConfig$b");
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49881e;
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
                this.f49755e = z10;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49881e;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49882f.d(InternalAddressConfig.class, b.class);
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
    public static final class PathNormalizationOptions extends GeneratedMessageV3 implements e {
        public static final int FORWARDING_TRANSFORMATION_FIELD_NUMBER = 1;
        public static final int HTTP_FILTER_TRANSFORMATION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private PathTransformation forwardingTransformation_;
        private PathTransformation httpFilterTransformation_;
        private byte memoizedIsInitialized;
        private static final PathNormalizationOptions DEFAULT_INSTANCE = new PathNormalizationOptions();
        private static final e2<PathNormalizationOptions> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<PathNormalizationOptions> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public PathNormalizationOptions m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new PathNormalizationOptions(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private PathTransformation f49756e;

            /* renamed from: f  reason: collision with root package name */
            private q2<PathTransformation, PathTransformation.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a> f49757f;

            /* renamed from: g  reason: collision with root package name */
            private PathTransformation f49758g;

            /* renamed from: h  reason: collision with root package name */
            private q2<PathTransformation, PathTransformation.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a> f49759h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49888l.d(PathNormalizationOptions.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public PathNormalizationOptions build() {
                PathNormalizationOptions I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public PathNormalizationOptions I() {
                PathNormalizationOptions pathNormalizationOptions = new PathNormalizationOptions(this, (a) null);
                q2<PathTransformation, PathTransformation.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a> q2Var = this.f49757f;
                if (q2Var == null) {
                    pathNormalizationOptions.forwardingTransformation_ = this.f49756e;
                } else {
                    pathNormalizationOptions.forwardingTransformation_ = q2Var.b();
                }
                q2<PathTransformation, PathTransformation.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a> q2Var2 = this.f49759h;
                if (q2Var2 == null) {
                    pathNormalizationOptions.httpFilterTransformation_ = this.f49758g;
                } else {
                    pathNormalizationOptions.httpFilterTransformation_ = q2Var2.b();
                }
                Q();
                return pathNormalizationOptions;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public PathNormalizationOptions getDefaultInstanceForType() {
                return PathNormalizationOptions.getDefaultInstance();
            }

            public b d0(PathTransformation pathTransformation) {
                q2<PathTransformation, PathTransformation.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a> q2Var = this.f49757f;
                if (q2Var == null) {
                    PathTransformation pathTransformation2 = this.f49756e;
                    if (pathTransformation2 != null) {
                        this.f49756e = PathTransformation.newBuilder(pathTransformation2).i0(pathTransformation).I();
                    } else {
                        this.f49756e = pathTransformation;
                    }
                    R();
                } else {
                    q2Var.e(pathTransformation);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions.access$5400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$PathNormalizationOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$PathNormalizationOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$PathNormalizationOptions$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof PathNormalizationOptions) {
                    return h0((PathNormalizationOptions) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49887k;
            }

            public b h0(PathNormalizationOptions pathNormalizationOptions) {
                if (pathNormalizationOptions == PathNormalizationOptions.getDefaultInstance()) {
                    return this;
                }
                if (pathNormalizationOptions.hasForwardingTransformation()) {
                    d0(pathNormalizationOptions.getForwardingTransformation());
                }
                if (pathNormalizationOptions.hasHttpFilterTransformation()) {
                    i0(pathNormalizationOptions.getHttpFilterTransformation());
                }
                z(((GeneratedMessageV3) pathNormalizationOptions).unknownFields);
                R();
                return this;
            }

            public b i0(PathTransformation pathTransformation) {
                q2<PathTransformation, PathTransformation.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a> q2Var = this.f49759h;
                if (q2Var == null) {
                    PathTransformation pathTransformation2 = this.f49758g;
                    if (pathTransformation2 != null) {
                        this.f49758g = PathTransformation.newBuilder(pathTransformation2).i0(pathTransformation).I();
                    } else {
                        this.f49758g = pathTransformation;
                    }
                    R();
                } else {
                    q2Var.e(pathTransformation);
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

        /* synthetic */ PathNormalizationOptions(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static PathNormalizationOptions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49887k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PathNormalizationOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PathNormalizationOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PathNormalizationOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<PathNormalizationOptions> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PathNormalizationOptions)) {
                return super.equals(obj);
            }
            PathNormalizationOptions pathNormalizationOptions = (PathNormalizationOptions) obj;
            if (hasForwardingTransformation() != pathNormalizationOptions.hasForwardingTransformation()) {
                return false;
            }
            if ((!hasForwardingTransformation() || getForwardingTransformation().equals(pathNormalizationOptions.getForwardingTransformation())) && hasHttpFilterTransformation() == pathNormalizationOptions.hasHttpFilterTransformation()) {
                return (!hasHttpFilterTransformation() || getHttpFilterTransformation().equals(pathNormalizationOptions.getHttpFilterTransformation())) && this.unknownFields.equals(pathNormalizationOptions.unknownFields);
            }
            return false;
        }

        public PathTransformation getForwardingTransformation() {
            PathTransformation pathTransformation = this.forwardingTransformation_;
            return pathTransformation == null ? PathTransformation.getDefaultInstance() : pathTransformation;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a getForwardingTransformationOrBuilder() {
            return getForwardingTransformation();
        }

        public PathTransformation getHttpFilterTransformation() {
            PathTransformation pathTransformation = this.httpFilterTransformation_;
            return pathTransformation == null ? PathTransformation.getDefaultInstance() : pathTransformation;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a getHttpFilterTransformationOrBuilder() {
            return getHttpFilterTransformation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<PathNormalizationOptions> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.forwardingTransformation_ != null ? 0 + CodedOutputStream.G(1, getForwardingTransformation()) : 0;
            if (this.httpFilterTransformation_ != null) {
                G += CodedOutputStream.G(2, getHttpFilterTransformation());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasForwardingTransformation() {
            return this.forwardingTransformation_ != null;
        }

        public boolean hasHttpFilterTransformation() {
            return this.httpFilterTransformation_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasForwardingTransformation()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getForwardingTransformation().hashCode();
            }
            if (hasHttpFilterTransformation()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getHttpFilterTransformation().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49888l.d(PathNormalizationOptions.class, b.class);
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
            return new PathNormalizationOptions();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.forwardingTransformation_ != null) {
                codedOutputStream.L0(1, getForwardingTransformation());
            }
            if (this.httpFilterTransformation_ != null) {
                codedOutputStream.L0(2, getHttpFilterTransformation());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ PathNormalizationOptions(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(PathNormalizationOptions pathNormalizationOptions) {
            return DEFAULT_INSTANCE.toBuilder().h0(pathNormalizationOptions);
        }

        public static PathNormalizationOptions parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private PathNormalizationOptions(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PathNormalizationOptions parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (PathNormalizationOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static PathNormalizationOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public PathNormalizationOptions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static PathNormalizationOptions parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private PathNormalizationOptions() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PathNormalizationOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static PathNormalizationOptions parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private PathNormalizationOptions(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            PathTransformation.c builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                PathTransformation pathTransformation = this.forwardingTransformation_;
                                builder = pathTransformation != null ? pathTransformation.toBuilder() : null;
                                PathTransformation pathTransformation2 = (PathTransformation) pVar.B(PathTransformation.parser(), f0Var);
                                this.forwardingTransformation_ = pathTransformation2;
                                if (builder != null) {
                                    builder.i0(pathTransformation2);
                                    this.forwardingTransformation_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                PathTransformation pathTransformation3 = this.httpFilterTransformation_;
                                builder = pathTransformation3 != null ? pathTransformation3.toBuilder() : null;
                                PathTransformation pathTransformation4 = (PathTransformation) pVar.B(PathTransformation.parser(), f0Var);
                                this.httpFilterTransformation_ = pathTransformation4;
                                if (builder != null) {
                                    builder.i0(pathTransformation4);
                                    this.httpFilterTransformation_ = builder.I();
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

        public static PathNormalizationOptions parseFrom(InputStream inputStream) throws IOException {
            return (PathNormalizationOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static PathNormalizationOptions parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (PathNormalizationOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static PathNormalizationOptions parseFrom(p pVar) throws IOException {
            return (PathNormalizationOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static PathNormalizationOptions parseFrom(p pVar, f0 f0Var) throws IOException {
            return (PathNormalizationOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum PathWithEscapedSlashesAction implements h2 {
        IMPLEMENTATION_SPECIFIC_DEFAULT(0),
        KEEP_UNCHANGED(1),
        REJECT_REQUEST(2),
        UNESCAPE_AND_REDIRECT(3),
        UNESCAPE_AND_FORWARD(4),
        UNRECOGNIZED(-1);
        
        public static final int IMPLEMENTATION_SPECIFIC_DEFAULT_VALUE = 0;
        public static final int KEEP_UNCHANGED_VALUE = 1;
        public static final int REJECT_REQUEST_VALUE = 2;
        public static final int UNESCAPE_AND_FORWARD_VALUE = 4;
        public static final int UNESCAPE_AND_REDIRECT_VALUE = 3;
        private final int value;
        private static final u0.d<PathWithEscapedSlashesAction> internalValueMap = new a();
        private static final PathWithEscapedSlashesAction[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<PathWithEscapedSlashesAction> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public PathWithEscapedSlashesAction a(int i9) {
                return PathWithEscapedSlashesAction.forNumber(i9);
            }
        }

        PathWithEscapedSlashesAction(int i9) {
            this.value = i9;
        }

        public static PathWithEscapedSlashesAction forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return UNESCAPE_AND_FORWARD;
                        }
                        return UNESCAPE_AND_REDIRECT;
                    }
                    return REJECT_REQUEST;
                }
                return KEEP_UNCHANGED;
            }
            return IMPLEMENTATION_SPECIFIC_DEFAULT;
        }

        public static final Descriptors.d getDescriptor() {
            return HttpConnectionManager.getDescriptor().k().get(3);
        }

        public static u0.d<PathWithEscapedSlashesAction> internalGetValueMap() {
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
        public static PathWithEscapedSlashesAction valueOf(int i9) {
            return forNumber(i9);
        }

        public static PathWithEscapedSlashesAction valueOf(Descriptors.e eVar) {
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
    public static final class SetCurrentClientCertDetails extends GeneratedMessageV3 implements f {
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
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private BoolValue f49760e;

            /* renamed from: f  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, l> f49761f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f49762g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f49763h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f49764i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f49765j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49884h.d(SetCurrentClientCertDetails.class, b.class);
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
                q2<BoolValue, BoolValue.b, l> q2Var = this.f49761f;
                if (q2Var == null) {
                    setCurrentClientCertDetails.subject_ = this.f49760e;
                } else {
                    setCurrentClientCertDetails.subject_ = q2Var.b();
                }
                setCurrentClientCertDetails.cert_ = this.f49762g;
                setCurrentClientCertDetails.chain_ = this.f49763h;
                setCurrentClientCertDetails.dns_ = this.f49764i;
                setCurrentClientCertDetails.uri_ = this.f49765j;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails.access$3300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$SetCurrentClientCertDetails r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$SetCurrentClientCertDetails r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$SetCurrentClientCertDetails$b");
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49883g;
            }

            public b h0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, l> q2Var = this.f49761f;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f49760e;
                    if (boolValue2 != null) {
                        this.f49760e = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f49760e = boolValue;
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
                this.f49762g = z10;
                R();
                return this;
            }

            public b k0(boolean z10) {
                this.f49763h = z10;
                R();
                return this;
            }

            public b l0(boolean z10) {
                this.f49764i = z10;
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
                this.f49765j = z10;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49883g;
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49884h.d(SetCurrentClientCertDetails.class, b.class);
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
    public enum StripPortModeCase implements u0.c {
        STRIP_ANY_HOST_PORT(42),
        STRIPPORTMODE_NOT_SET(0);
        
        private final int value;

        StripPortModeCase(int i9) {
            this.value = i9;
        }

        public static StripPortModeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 42) {
                    return null;
                }
                return STRIP_ANY_HOST_PORT;
            }
            return STRIPPORTMODE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static StripPortModeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Tracing extends GeneratedMessageV3 implements g {
        public static final int CLIENT_SAMPLING_FIELD_NUMBER = 3;
        public static final int CUSTOM_TAGS_FIELD_NUMBER = 8;
        public static final int MAX_PATH_TAG_LENGTH_FIELD_NUMBER = 7;
        public static final int OVERALL_SAMPLING_FIELD_NUMBER = 5;
        public static final int PROVIDER_FIELD_NUMBER = 9;
        public static final int RANDOM_SAMPLING_FIELD_NUMBER = 4;
        public static final int VERBOSE_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private Percent clientSampling_;
        private List<CustomTag> customTags_;
        private UInt32Value maxPathTagLength_;
        private byte memoizedIsInitialized;
        private Percent overallSampling_;
        private Tracing.Http provider_;
        private Percent randomSampling_;
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
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f49766e;

            /* renamed from: f  reason: collision with root package name */
            private Percent f49767f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f49768g;

            /* renamed from: h  reason: collision with root package name */
            private Percent f49769h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f49770i;

            /* renamed from: j  reason: collision with root package name */
            private Percent f49771j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f49772k;

            /* renamed from: l  reason: collision with root package name */
            private boolean f49773l;

            /* renamed from: m  reason: collision with root package name */
            private UInt32Value f49774m;

            /* renamed from: n  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f49775n;

            /* renamed from: o  reason: collision with root package name */
            private List<CustomTag> f49776o;

            /* renamed from: p  reason: collision with root package name */
            private l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.a> f49777p;

            /* renamed from: q  reason: collision with root package name */
            private Tracing.Http f49778q;

            /* renamed from: r  reason: collision with root package name */
            private q2<Tracing.Http, Tracing.Http.b, Tracing.d> f49779r;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f49766e & 1) == 0) {
                    this.f49776o = new ArrayList(this.f49776o);
                    this.f49766e |= 1;
                }
            }

            private l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.a> b0() {
                if (this.f49777p == null) {
                    this.f49777p = new l2<>(this.f49776o, (this.f49766e & 1) != 0, H(), O());
                    this.f49776o = null;
                }
                return this.f49777p;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    b0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49880d.d(Tracing.class, b.class);
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
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f49768g;
                if (q2Var == null) {
                    tracing.clientSampling_ = this.f49767f;
                } else {
                    tracing.clientSampling_ = q2Var.b();
                }
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var2 = this.f49770i;
                if (q2Var2 == null) {
                    tracing.randomSampling_ = this.f49769h;
                } else {
                    tracing.randomSampling_ = q2Var2.b();
                }
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var3 = this.f49772k;
                if (q2Var3 == null) {
                    tracing.overallSampling_ = this.f49771j;
                } else {
                    tracing.overallSampling_ = q2Var3.b();
                }
                tracing.verbose_ = this.f49773l;
                q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f49775n;
                if (q2Var4 == null) {
                    tracing.maxPathTagLength_ = this.f49774m;
                } else {
                    tracing.maxPathTagLength_ = q2Var4.b();
                }
                l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.a> l2Var = this.f49777p;
                if (l2Var == null) {
                    if ((this.f49766e & 1) != 0) {
                        this.f49776o = Collections.unmodifiableList(this.f49776o);
                        this.f49766e &= -2;
                    }
                    tracing.customTags_ = this.f49776o;
                } else {
                    tracing.customTags_ = l2Var.e();
                }
                q2<Tracing.Http, Tracing.Http.b, Tracing.d> q2Var5 = this.f49779r;
                if (q2Var5 == null) {
                    tracing.provider_ = this.f49778q;
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
            /* renamed from: d0 */
            public Tracing getDefaultInstanceForType() {
                return Tracing.getDefaultInstance();
            }

            public b g0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f49768g;
                if (q2Var == null) {
                    Percent percent2 = this.f49767f;
                    if (percent2 != null) {
                        this.f49767f = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f49767f = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49879c;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$Tracing r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$Tracing r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$Tracing$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Tracing) {
                    return j0((Tracing) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Tracing tracing) {
                if (tracing == Tracing.getDefaultInstance()) {
                    return this;
                }
                if (tracing.hasClientSampling()) {
                    g0(tracing.getClientSampling());
                }
                if (tracing.hasRandomSampling()) {
                    n0(tracing.getRandomSampling());
                }
                if (tracing.hasOverallSampling()) {
                    l0(tracing.getOverallSampling());
                }
                if (tracing.getVerbose()) {
                    s0(tracing.getVerbose());
                }
                if (tracing.hasMaxPathTagLength()) {
                    k0(tracing.getMaxPathTagLength());
                }
                if (this.f49777p == null) {
                    if (!tracing.customTags_.isEmpty()) {
                        if (this.f49776o.isEmpty()) {
                            this.f49776o = tracing.customTags_;
                            this.f49766e &= -2;
                        } else {
                            a0();
                            this.f49776o.addAll(tracing.customTags_);
                        }
                        R();
                    }
                } else if (!tracing.customTags_.isEmpty()) {
                    if (this.f49777p.k()) {
                        this.f49777p.f();
                        this.f49777p = null;
                        this.f49776o = tracing.customTags_;
                        this.f49766e &= -2;
                        this.f49777p = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                    } else {
                        this.f49777p.b(tracing.customTags_);
                    }
                }
                if (tracing.hasProvider()) {
                    m0(tracing.getProvider());
                }
                z(((GeneratedMessageV3) tracing).unknownFields);
                R();
                return this;
            }

            public b k0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49775n;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f49774m;
                    if (uInt32Value2 != null) {
                        this.f49774m = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f49774m = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            public b l0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f49772k;
                if (q2Var == null) {
                    Percent percent2 = this.f49771j;
                    if (percent2 != null) {
                        this.f49771j = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f49771j = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            public b m0(Tracing.Http http) {
                q2<Tracing.Http, Tracing.Http.b, Tracing.d> q2Var = this.f49779r;
                if (q2Var == null) {
                    Tracing.Http http2 = this.f49778q;
                    if (http2 != null) {
                        this.f49778q = Tracing.Http.newBuilder(http2).g0(http).I();
                    } else {
                        this.f49778q = http;
                    }
                    R();
                } else {
                    q2Var.e(http);
                }
                return this;
            }

            public b n0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f49770i;
                if (q2Var == null) {
                    Percent percent2 = this.f49769h;
                    if (percent2 != null) {
                        this.f49769h = Percent.newBuilder(percent2).g0(percent).I();
                    } else {
                        this.f49769h = percent;
                    }
                    R();
                } else {
                    q2Var.e(percent);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: o0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            public b s0(boolean z10) {
                this.f49773l = z10;
                R();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f49776o = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49776o = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ Tracing(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Tracing getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49879c;
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
            if (hasClientSampling() != tracing.hasClientSampling()) {
                return false;
            }
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

        public Percent getClientSampling() {
            Percent percent = this.clientSampling_;
            return percent == null ? Percent.getDefaultInstance() : percent;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getClientSamplingOrBuilder() {
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

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.a getCustomTagsOrBuilder(int i9) {
            return this.customTags_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.a> getCustomTagsOrBuilderList() {
            return this.customTags_;
        }

        public UInt32Value getMaxPathTagLength() {
            UInt32Value uInt32Value = this.maxPathTagLength_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getMaxPathTagLengthOrBuilder() {
            return getMaxPathTagLength();
        }

        public Percent getOverallSampling() {
            Percent percent = this.overallSampling_;
            return percent == null ? Percent.getDefaultInstance() : percent;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getOverallSamplingOrBuilder() {
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

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getRandomSamplingOrBuilder() {
            return getRandomSampling();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.clientSampling_ != null ? CodedOutputStream.G(3, getClientSampling()) + 0 : 0;
            if (this.randomSampling_ != null) {
                G += CodedOutputStream.G(4, getRandomSampling());
            }
            if (this.overallSampling_ != null) {
                G += CodedOutputStream.G(5, getOverallSampling());
            }
            boolean z10 = this.verbose_;
            if (z10) {
                G += CodedOutputStream.e(6, z10);
            }
            if (this.maxPathTagLength_ != null) {
                G += CodedOutputStream.G(7, getMaxPathTagLength());
            }
            for (int i10 = 0; i10 < this.customTags_.size(); i10++) {
                G += CodedOutputStream.G(8, this.customTags_.get(i10));
            }
            if (this.provider_ != null) {
                G += CodedOutputStream.G(9, getProvider());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
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
            int hashCode = 779 + getDescriptor().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49880d.d(Tracing.class, b.class);
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
            for (int i9 = 0; i9 < this.customTags_.size(); i9++) {
                codedOutputStream.L0(8, this.customTags_.get(i9));
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
            return DEFAULT_INSTANCE.toBuilder().j0(tracing);
        }

        public static Tracing parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
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
                                    builder5.g0(http2);
                                    this.provider_ = builder5.I();
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
                        this.customTags_ = Collections.unmodifiableList(this.customTags_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Tracing parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Tracing parseFrom(p pVar) throws IOException {
            return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Tracing parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class UpgradeConfig extends GeneratedMessageV3 implements h {
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
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private int f49780e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49781f;

            /* renamed from: g  reason: collision with root package name */
            private List<HttpFilter> f49782g;

            /* renamed from: h  reason: collision with root package name */
            private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> f49783h;

            /* renamed from: i  reason: collision with root package name */
            private BoolValue f49784i;

            /* renamed from: j  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, l> f49785j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f49780e & 1) == 0) {
                    this.f49782g = new ArrayList(this.f49782g);
                    this.f49780e |= 1;
                }
            }

            private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> d0() {
                if (this.f49783h == null) {
                    this.f49783h = new l2<>(this.f49782g, (this.f49780e & 1) != 0, H(), O());
                    this.f49782g = null;
                }
                return this.f49783h;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49886j.d(UpgradeConfig.class, b.class);
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
                upgradeConfig.upgradeType_ = this.f49781f;
                l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> l2Var = this.f49783h;
                if (l2Var == null) {
                    if ((this.f49780e & 1) != 0) {
                        this.f49782g = Collections.unmodifiableList(this.f49782g);
                        this.f49780e &= -2;
                    }
                    upgradeConfig.filters_ = this.f49782g;
                } else {
                    upgradeConfig.filters_ = l2Var.e();
                }
                q2<BoolValue, BoolValue.b, l> q2Var = this.f49785j;
                if (q2Var == null) {
                    upgradeConfig.enabled_ = this.f49784i;
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
                q2<BoolValue, BoolValue.b, l> q2Var = this.f49785j;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f49784i;
                    if (boolValue2 != null) {
                        this.f49784i = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f49784i = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49885i;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig.access$4400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$UpgradeConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$UpgradeConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$UpgradeConfig$b");
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
                    this.f49781f = upgradeConfig.upgradeType_;
                    R();
                }
                if (this.f49783h == null) {
                    if (!upgradeConfig.filters_.isEmpty()) {
                        if (this.f49782g.isEmpty()) {
                            this.f49782g = upgradeConfig.filters_;
                            this.f49780e &= -2;
                        } else {
                            a0();
                            this.f49782g.addAll(upgradeConfig.filters_);
                        }
                        R();
                    }
                } else if (!upgradeConfig.filters_.isEmpty()) {
                    if (this.f49783h.k()) {
                        this.f49783h.f();
                        this.f49783h = null;
                        this.f49782g = upgradeConfig.filters_;
                        this.f49780e &= -2;
                        this.f49783h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f49783h.b(upgradeConfig.filters_);
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
                this.f49781f = "";
                this.f49782g = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49781f = "";
                this.f49782g = Collections.emptyList();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49885i;
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

        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c getFiltersOrBuilder(int i9) {
            return this.filters_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> getFiltersOrBuilderList() {
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49886j.d(UpgradeConfig.class, b.class);
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
        static final /* synthetic */ int[] f49786a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f49787b;

        static {
            int[] iArr = new int[StripPortModeCase.values().length];
            f49787b = iArr;
            try {
                iArr[StripPortModeCase.STRIP_ANY_HOST_PORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49787b[StripPortModeCase.STRIPPORTMODE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[RouteSpecifierCase.values().length];
            f49786a = iArr2;
            try {
                iArr2[RouteSpecifierCase.RDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49786a[RouteSpecifierCase.ROUTE_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49786a[RouteSpecifierCase.SCOPED_ROUTES.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49786a[RouteSpecifierCase.ROUTESPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.a {
        private Http3ProtocolOptions A;
        private q2<Http3ProtocolOptions, Http3ProtocolOptions.b, e0> B;
        private int B3;
        private Object C;
        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> C4;
        private int D;
        private InternalAddressConfig D4;
        private SchemeHeaderTransformation E;
        private q2<InternalAddressConfig, InternalAddressConfig.b, d> E4;
        private q2<SchemeHeaderTransformation, SchemeHeaderTransformation.c, z0> F;
        private boolean F4;
        private UInt32Value G;
        private Object G4;
        private q2<UInt32Value, UInt32Value.b, e3> H;
        private BoolValue H4;
        private Duration I;
        private q2<BoolValue, BoolValue.b, l> I4;
        private q2<Duration, Duration.b, v> J;
        private boolean J4;
        private Duration K;
        private boolean K4;
        private q2<Duration, Duration.b, v> L;
        private int L4;
        private Duration M;
        private SetCurrentClientCertDetails M4;
        private q2<Duration, Duration.b, v> N;
        private q2<SetCurrentClientCertDetails, SetCurrentClientCertDetails.b, f> N4;
        private Duration O;
        private boolean O4;
        private q2<Duration, Duration.b, v> P;
        private boolean P4;
        private Duration Q;
        private List<UpgradeConfig> Q4;
        private q2<Duration, Duration.b, v> R;
        private l2<UpgradeConfig, UpgradeConfig.b, h> R4;
        private BoolValue S4;
        private q2<BoolValue, BoolValue.b, l> T4;
        private boolean U4;
        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> V1;
        private q2<BoolValue, BoolValue.b, l> V2;
        private List<TypedExtensionConfig> V3;
        private int V4;
        private RequestIDExtension W4;
        private q2<RequestIDExtension, RequestIDExtension.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.f> X4;
        private LocalReplyConfig Y4;
        private q2<LocalReplyConfig, LocalReplyConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.d> Z4;

        /* renamed from: a1  reason: collision with root package name */
        private List<AccessLog> f49788a1;

        /* renamed from: a2  reason: collision with root package name */
        private BoolValue f49789a2;

        /* renamed from: a5  reason: collision with root package name */
        private boolean f49790a5;

        /* renamed from: b5  reason: collision with root package name */
        private BoolValue f49791b5;

        /* renamed from: c5  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, l> f49792c5;

        /* renamed from: d5  reason: collision with root package name */
        private PathNormalizationOptions f49793d5;

        /* renamed from: e  reason: collision with root package name */
        private int f49794e;

        /* renamed from: e5  reason: collision with root package name */
        private q2<PathNormalizationOptions, PathNormalizationOptions.b, e> f49795e5;

        /* renamed from: f  reason: collision with root package name */
        private Object f49796f;

        /* renamed from: f5  reason: collision with root package name */
        private boolean f49797f5;

        /* renamed from: g  reason: collision with root package name */
        private int f49798g;

        /* renamed from: h  reason: collision with root package name */
        private Object f49799h;

        /* renamed from: i  reason: collision with root package name */
        private int f49800i;

        /* renamed from: j  reason: collision with root package name */
        private int f49801j;

        /* renamed from: k  reason: collision with root package name */
        private Object f49802k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Rds, Rds.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.e> f49803l;

        /* renamed from: m  reason: collision with root package name */
        private q2<RouteConfiguration, RouteConfiguration.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.p> f49804m;

        /* renamed from: n  reason: collision with root package name */
        private q2<ScopedRoutes, ScopedRoutes.c, j> f49805n;

        /* renamed from: o  reason: collision with root package name */
        private List<HttpFilter> f49806o;

        /* renamed from: p  reason: collision with root package name */
        private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> f49807p;

        /* renamed from: q  reason: collision with root package name */
        private BoolValue f49808q;

        /* renamed from: r  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, l> f49809r;

        /* renamed from: s  reason: collision with root package name */
        private Tracing f49810s;

        /* renamed from: t  reason: collision with root package name */
        private q2<Tracing, Tracing.b, g> f49811t;

        /* renamed from: u  reason: collision with root package name */
        private HttpProtocolOptions f49812u;

        /* renamed from: v  reason: collision with root package name */
        private q2<HttpProtocolOptions, HttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0> f49813v;

        /* renamed from: w  reason: collision with root package name */
        private Http1ProtocolOptions f49814w;

        /* renamed from: x  reason: collision with root package name */
        private q2<Http1ProtocolOptions, Http1ProtocolOptions.c, c0> f49815x;

        /* renamed from: y  reason: collision with root package name */
        private Http2ProtocolOptions f49816y;

        /* renamed from: z  reason: collision with root package name */
        private q2<Http2ProtocolOptions, Http2ProtocolOptions.b, d0> f49817z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49800i & 2) == 0) {
                this.f49788a1 = new ArrayList(this.f49788a1);
                this.f49800i |= 2;
            }
        }

        private void b0() {
            if ((this.f49800i & 1) == 0) {
                this.f49806o = new ArrayList(this.f49806o);
                this.f49800i |= 1;
            }
        }

        private void d0() {
            if ((this.f49800i & 4) == 0) {
                this.V3 = new ArrayList(this.V3);
                this.f49800i |= 4;
            }
        }

        private void e0() {
            if ((this.f49800i & 8) == 0) {
                this.Q4 = new ArrayList(this.Q4);
                this.f49800i |= 8;
            }
        }

        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> g0() {
            if (this.V1 == null) {
                this.V1 = new l2<>(this.f49788a1, (this.f49800i & 2) != 0, H(), O());
                this.f49788a1 = null;
            }
            return this.V1;
        }

        private l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> i0() {
            if (this.f49807p == null) {
                this.f49807p = new l2<>(this.f49806o, (this.f49800i & 1) != 0, H(), O());
                this.f49806o = null;
            }
            return this.f49807p;
        }

        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> j0() {
            if (this.C4 == null) {
                this.C4 = new l2<>(this.V3, (this.f49800i & 4) != 0, H(), O());
                this.V3 = null;
            }
            return this.C4;
        }

        private l2<UpgradeConfig, UpgradeConfig.b, h> k0() {
            if (this.R4 == null) {
                this.R4 = new l2<>(this.Q4, (this.f49800i & 8) != 0, H(), O());
                this.Q4 = null;
            }
            return this.R4;
        }

        private void l0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                g0();
                j0();
                k0();
            }
        }

        public c B0(LocalReplyConfig localReplyConfig) {
            q2<LocalReplyConfig, LocalReplyConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.d> q2Var = this.Z4;
            if (q2Var == null) {
                LocalReplyConfig localReplyConfig2 = this.Y4;
                if (localReplyConfig2 != null) {
                    this.Y4 = LocalReplyConfig.newBuilder(localReplyConfig2).j0(localReplyConfig).I();
                } else {
                    this.Y4 = localReplyConfig;
                }
                R();
            } else {
                q2Var.e(localReplyConfig);
            }
            return this;
        }

        public c D0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.H;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.G;
                if (uInt32Value2 != null) {
                    this.G = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.G = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c H0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.T4;
            if (q2Var == null) {
                BoolValue boolValue2 = this.S4;
                if (boolValue2 != null) {
                    this.S4 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.S4 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c I0(PathNormalizationOptions pathNormalizationOptions) {
            q2<PathNormalizationOptions, PathNormalizationOptions.b, e> q2Var = this.f49795e5;
            if (q2Var == null) {
                PathNormalizationOptions pathNormalizationOptions2 = this.f49793d5;
                if (pathNormalizationOptions2 != null) {
                    this.f49793d5 = PathNormalizationOptions.newBuilder(pathNormalizationOptions2).h0(pathNormalizationOptions).I();
                } else {
                    this.f49793d5 = pathNormalizationOptions;
                }
                R();
            } else {
                q2Var.e(pathNormalizationOptions);
            }
            return this;
        }

        public c J0(Rds rds) {
            q2<Rds, Rds.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.e> q2Var = this.f49803l;
            if (q2Var == null) {
                if (this.f49794e == 3 && this.f49796f != Rds.getDefaultInstance()) {
                    this.f49796f = Rds.newBuilder((Rds) this.f49796f).h0(rds).I();
                } else {
                    this.f49796f = rds;
                }
                R();
            } else {
                if (this.f49794e == 3) {
                    q2Var.e(rds);
                }
                this.f49803l.g(rds);
            }
            this.f49794e = 3;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49878b.d(HttpConnectionManager.class, c.class);
        }

        public c K0(Duration duration) {
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

        public c L0(RequestIDExtension requestIDExtension) {
            q2<RequestIDExtension, RequestIDExtension.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.f> q2Var = this.X4;
            if (q2Var == null) {
                RequestIDExtension requestIDExtension2 = this.W4;
                if (requestIDExtension2 != null) {
                    this.W4 = RequestIDExtension.newBuilder(requestIDExtension2).g0(requestIDExtension).I();
                } else {
                    this.W4 = requestIDExtension;
                }
                R();
            } else {
                q2Var.e(requestIDExtension);
            }
            return this;
        }

        public c M0(Duration duration) {
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

        public c N0(RouteConfiguration routeConfiguration) {
            q2<RouteConfiguration, RouteConfiguration.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.p> q2Var = this.f49804m;
            if (q2Var == null) {
                if (this.f49794e == 4 && this.f49796f != RouteConfiguration.getDefaultInstance()) {
                    this.f49796f = RouteConfiguration.newBuilder((RouteConfiguration) this.f49796f).s0(routeConfiguration).I();
                } else {
                    this.f49796f = routeConfiguration;
                }
                R();
            } else {
                if (this.f49794e == 4) {
                    q2Var.e(routeConfiguration);
                }
                this.f49804m.g(routeConfiguration);
            }
            this.f49794e = 4;
            return this;
        }

        public c O0(SchemeHeaderTransformation schemeHeaderTransformation) {
            q2<SchemeHeaderTransformation, SchemeHeaderTransformation.c, z0> q2Var = this.F;
            if (q2Var == null) {
                SchemeHeaderTransformation schemeHeaderTransformation2 = this.E;
                if (schemeHeaderTransformation2 != null) {
                    this.E = SchemeHeaderTransformation.newBuilder(schemeHeaderTransformation2).g0(schemeHeaderTransformation).I();
                } else {
                    this.E = schemeHeaderTransformation;
                }
                R();
            } else {
                q2Var.e(schemeHeaderTransformation);
            }
            return this;
        }

        public c Q0(ScopedRoutes scopedRoutes) {
            q2<ScopedRoutes, ScopedRoutes.c, j> q2Var = this.f49805n;
            if (q2Var == null) {
                if (this.f49794e == 31 && this.f49796f != ScopedRoutes.getDefaultInstance()) {
                    this.f49796f = ScopedRoutes.newBuilder((ScopedRoutes) this.f49796f).g0(scopedRoutes).I();
                } else {
                    this.f49796f = scopedRoutes;
                }
                R();
            } else {
                if (this.f49794e == 31) {
                    q2Var.e(scopedRoutes);
                }
                this.f49805n.g(scopedRoutes);
            }
            this.f49794e = 31;
            return this;
        }

        public c S0(SetCurrentClientCertDetails setCurrentClientCertDetails) {
            q2<SetCurrentClientCertDetails, SetCurrentClientCertDetails.b, f> q2Var = this.N4;
            if (q2Var == null) {
                SetCurrentClientCertDetails setCurrentClientCertDetails2 = this.M4;
                if (setCurrentClientCertDetails2 != null) {
                    this.M4 = SetCurrentClientCertDetails.newBuilder(setCurrentClientCertDetails2).g0(setCurrentClientCertDetails).I();
                } else {
                    this.M4 = setCurrentClientCertDetails;
                }
                R();
            } else {
                q2Var.e(setCurrentClientCertDetails);
            }
            return this;
        }

        public c T0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.f49792c5;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49791b5;
                if (boolValue2 != null) {
                    this.f49791b5 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49791b5 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c U0(Duration duration) {
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

        public c V0(Tracing tracing) {
            q2<Tracing, Tracing.b, g> q2Var = this.f49811t;
            if (q2Var == null) {
                Tracing tracing2 = this.f49810s;
                if (tracing2 != null) {
                    this.f49810s = Tracing.newBuilder(tracing2).j0(tracing).I();
                } else {
                    this.f49810s = tracing;
                }
                R();
            } else {
                q2Var.e(tracing);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: W0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
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

        public c X0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.V2;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49789a2;
                if (boolValue2 != null) {
                    this.f49789a2 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49789a2 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpConnectionManager I() {
            HttpConnectionManager httpConnectionManager = new HttpConnectionManager(this, (a) null);
            httpConnectionManager.codecType_ = this.f49801j;
            httpConnectionManager.statPrefix_ = this.f49802k;
            if (this.f49794e == 3) {
                q2<Rds, Rds.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.e> q2Var = this.f49803l;
                if (q2Var == null) {
                    httpConnectionManager.routeSpecifier_ = this.f49796f;
                } else {
                    httpConnectionManager.routeSpecifier_ = q2Var.b();
                }
            }
            if (this.f49794e == 4) {
                q2<RouteConfiguration, RouteConfiguration.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.p> q2Var2 = this.f49804m;
                if (q2Var2 == null) {
                    httpConnectionManager.routeSpecifier_ = this.f49796f;
                } else {
                    httpConnectionManager.routeSpecifier_ = q2Var2.b();
                }
            }
            if (this.f49794e == 31) {
                q2<ScopedRoutes, ScopedRoutes.c, j> q2Var3 = this.f49805n;
                if (q2Var3 == null) {
                    httpConnectionManager.routeSpecifier_ = this.f49796f;
                } else {
                    httpConnectionManager.routeSpecifier_ = q2Var3.b();
                }
            }
            l2<HttpFilter, HttpFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> l2Var = this.f49807p;
            if (l2Var == null) {
                if ((this.f49800i & 1) != 0) {
                    this.f49806o = Collections.unmodifiableList(this.f49806o);
                    this.f49800i &= -2;
                }
                httpConnectionManager.httpFilters_ = this.f49806o;
            } else {
                httpConnectionManager.httpFilters_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var4 = this.f49809r;
            if (q2Var4 == null) {
                httpConnectionManager.addUserAgent_ = this.f49808q;
            } else {
                httpConnectionManager.addUserAgent_ = q2Var4.b();
            }
            q2<Tracing, Tracing.b, g> q2Var5 = this.f49811t;
            if (q2Var5 == null) {
                httpConnectionManager.tracing_ = this.f49810s;
            } else {
                httpConnectionManager.tracing_ = q2Var5.b();
            }
            q2<HttpProtocolOptions, HttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0> q2Var6 = this.f49813v;
            if (q2Var6 == null) {
                httpConnectionManager.commonHttpProtocolOptions_ = this.f49812u;
            } else {
                httpConnectionManager.commonHttpProtocolOptions_ = q2Var6.b();
            }
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, c0> q2Var7 = this.f49815x;
            if (q2Var7 == null) {
                httpConnectionManager.httpProtocolOptions_ = this.f49814w;
            } else {
                httpConnectionManager.httpProtocolOptions_ = q2Var7.b();
            }
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, d0> q2Var8 = this.f49817z;
            if (q2Var8 == null) {
                httpConnectionManager.http2ProtocolOptions_ = this.f49816y;
            } else {
                httpConnectionManager.http2ProtocolOptions_ = q2Var8.b();
            }
            q2<Http3ProtocolOptions, Http3ProtocolOptions.b, e0> q2Var9 = this.B;
            if (q2Var9 == null) {
                httpConnectionManager.http3ProtocolOptions_ = this.A;
            } else {
                httpConnectionManager.http3ProtocolOptions_ = q2Var9.b();
            }
            httpConnectionManager.serverName_ = this.C;
            httpConnectionManager.serverHeaderTransformation_ = this.D;
            q2<SchemeHeaderTransformation, SchemeHeaderTransformation.c, z0> q2Var10 = this.F;
            if (q2Var10 == null) {
                httpConnectionManager.schemeHeaderTransformation_ = this.E;
            } else {
                httpConnectionManager.schemeHeaderTransformation_ = q2Var10.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var11 = this.H;
            if (q2Var11 == null) {
                httpConnectionManager.maxRequestHeadersKb_ = this.G;
            } else {
                httpConnectionManager.maxRequestHeadersKb_ = q2Var11.b();
            }
            q2<Duration, Duration.b, v> q2Var12 = this.J;
            if (q2Var12 == null) {
                httpConnectionManager.streamIdleTimeout_ = this.I;
            } else {
                httpConnectionManager.streamIdleTimeout_ = q2Var12.b();
            }
            q2<Duration, Duration.b, v> q2Var13 = this.L;
            if (q2Var13 == null) {
                httpConnectionManager.requestTimeout_ = this.K;
            } else {
                httpConnectionManager.requestTimeout_ = q2Var13.b();
            }
            q2<Duration, Duration.b, v> q2Var14 = this.N;
            if (q2Var14 == null) {
                httpConnectionManager.requestHeadersTimeout_ = this.M;
            } else {
                httpConnectionManager.requestHeadersTimeout_ = q2Var14.b();
            }
            q2<Duration, Duration.b, v> q2Var15 = this.P;
            if (q2Var15 == null) {
                httpConnectionManager.drainTimeout_ = this.O;
            } else {
                httpConnectionManager.drainTimeout_ = q2Var15.b();
            }
            q2<Duration, Duration.b, v> q2Var16 = this.R;
            if (q2Var16 == null) {
                httpConnectionManager.delayedCloseTimeout_ = this.Q;
            } else {
                httpConnectionManager.delayedCloseTimeout_ = q2Var16.b();
            }
            l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> l2Var2 = this.V1;
            if (l2Var2 == null) {
                if ((this.f49800i & 2) != 0) {
                    this.f49788a1 = Collections.unmodifiableList(this.f49788a1);
                    this.f49800i &= -3;
                }
                httpConnectionManager.accessLog_ = this.f49788a1;
            } else {
                httpConnectionManager.accessLog_ = l2Var2.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var17 = this.V2;
            if (q2Var17 == null) {
                httpConnectionManager.useRemoteAddress_ = this.f49789a2;
            } else {
                httpConnectionManager.useRemoteAddress_ = q2Var17.b();
            }
            httpConnectionManager.xffNumTrustedHops_ = this.B3;
            l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> l2Var3 = this.C4;
            if (l2Var3 == null) {
                if ((this.f49800i & 4) != 0) {
                    this.V3 = Collections.unmodifiableList(this.V3);
                    this.f49800i &= -5;
                }
                httpConnectionManager.originalIpDetectionExtensions_ = this.V3;
            } else {
                httpConnectionManager.originalIpDetectionExtensions_ = l2Var3.e();
            }
            q2<InternalAddressConfig, InternalAddressConfig.b, d> q2Var18 = this.E4;
            if (q2Var18 == null) {
                httpConnectionManager.internalAddressConfig_ = this.D4;
            } else {
                httpConnectionManager.internalAddressConfig_ = q2Var18.b();
            }
            httpConnectionManager.skipXffAppend_ = this.F4;
            httpConnectionManager.via_ = this.G4;
            q2<BoolValue, BoolValue.b, l> q2Var19 = this.I4;
            if (q2Var19 == null) {
                httpConnectionManager.generateRequestId_ = this.H4;
            } else {
                httpConnectionManager.generateRequestId_ = q2Var19.b();
            }
            httpConnectionManager.preserveExternalRequestId_ = this.J4;
            httpConnectionManager.alwaysSetRequestIdInResponse_ = this.K4;
            httpConnectionManager.forwardClientCertDetails_ = this.L4;
            q2<SetCurrentClientCertDetails, SetCurrentClientCertDetails.b, f> q2Var20 = this.N4;
            if (q2Var20 == null) {
                httpConnectionManager.setCurrentClientCertDetails_ = this.M4;
            } else {
                httpConnectionManager.setCurrentClientCertDetails_ = q2Var20.b();
            }
            httpConnectionManager.proxy100Continue_ = this.O4;
            httpConnectionManager.representIpv4RemoteAddressAsIpv4MappedIpv6_ = this.P4;
            l2<UpgradeConfig, UpgradeConfig.b, h> l2Var4 = this.R4;
            if (l2Var4 == null) {
                if ((this.f49800i & 8) != 0) {
                    this.Q4 = Collections.unmodifiableList(this.Q4);
                    this.f49800i &= -9;
                }
                httpConnectionManager.upgradeConfigs_ = this.Q4;
            } else {
                httpConnectionManager.upgradeConfigs_ = l2Var4.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var21 = this.T4;
            if (q2Var21 == null) {
                httpConnectionManager.normalizePath_ = this.S4;
            } else {
                httpConnectionManager.normalizePath_ = q2Var21.b();
            }
            httpConnectionManager.mergeSlashes_ = this.U4;
            httpConnectionManager.pathWithEscapedSlashesAction_ = this.V4;
            q2<RequestIDExtension, RequestIDExtension.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.f> q2Var22 = this.X4;
            if (q2Var22 == null) {
                httpConnectionManager.requestIdExtension_ = this.W4;
            } else {
                httpConnectionManager.requestIdExtension_ = q2Var22.b();
            }
            q2<LocalReplyConfig, LocalReplyConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.d> q2Var23 = this.Z4;
            if (q2Var23 == null) {
                httpConnectionManager.localReplyConfig_ = this.Y4;
            } else {
                httpConnectionManager.localReplyConfig_ = q2Var23.b();
            }
            httpConnectionManager.stripMatchingHostPort_ = this.f49790a5;
            if (this.f49798g == 42) {
                httpConnectionManager.stripPortMode_ = this.f49799h;
            }
            q2<BoolValue, BoolValue.b, l> q2Var24 = this.f49792c5;
            if (q2Var24 == null) {
                httpConnectionManager.streamErrorOnInvalidHttpMessage_ = this.f49791b5;
            } else {
                httpConnectionManager.streamErrorOnInvalidHttpMessage_ = q2Var24.b();
            }
            q2<PathNormalizationOptions, PathNormalizationOptions.b, e> q2Var25 = this.f49795e5;
            if (q2Var25 == null) {
                httpConnectionManager.pathNormalizationOptions_ = this.f49793d5;
            } else {
                httpConnectionManager.pathNormalizationOptions_ = q2Var25.b();
            }
            httpConnectionManager.stripTrailingHostDot_ = this.f49797f5;
            httpConnectionManager.routeSpecifierCase_ = this.f49794e;
            httpConnectionManager.stripPortModeCase_ = this.f49798g;
            Q();
            return httpConnectionManager;
        }

        public c Y0(boolean z10) {
            this.K4 = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        public c Z0(int i9) {
            this.f49801j = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: a1 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c b1(int i9) {
            this.L4 = i9;
            R();
            return this;
        }

        public c c1(boolean z10) {
            this.U4 = z10;
            R();
            return this;
        }

        public c d1(int i9) {
            this.V4 = i9;
            R();
            return this;
        }

        public c e1(boolean z10) {
            this.J4 = z10;
            R();
            return this;
        }

        public c g1(boolean z10) {
            this.O4 = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49877a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: h0 */
        public HttpConnectionManager getDefaultInstanceForType() {
            return HttpConnectionManager.getDefaultInstance();
        }

        public c h1(boolean z10) {
            this.P4 = z10;
            R();
            return this;
        }

        public c i1(int i9) {
            this.D = i9;
            R();
            return this;
        }

        public c k1(boolean z10) {
            this.F4 = z10;
            R();
            return this;
        }

        public c l1(boolean z10) {
            this.f49798g = 42;
            this.f49799h = Boolean.valueOf(z10);
            R();
            return this;
        }

        public c m0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.f49809r;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49808q;
                if (boolValue2 != null) {
                    this.f49808q = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49808q = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c m1(boolean z10) {
            this.f49790a5 = z10;
            R();
            return this;
        }

        public c n0(HttpProtocolOptions httpProtocolOptions) {
            q2<HttpProtocolOptions, HttpProtocolOptions.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0> q2Var = this.f49813v;
            if (q2Var == null) {
                HttpProtocolOptions httpProtocolOptions2 = this.f49812u;
                if (httpProtocolOptions2 != null) {
                    this.f49812u = HttpProtocolOptions.newBuilder(httpProtocolOptions2).g0(httpProtocolOptions).I();
                } else {
                    this.f49812u = httpProtocolOptions;
                }
                R();
            } else {
                q2Var.e(httpProtocolOptions);
            }
            return this;
        }

        public c n1(boolean z10) {
            this.f49797f5 = z10;
            R();
            return this;
        }

        public c o0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.R;
            if (q2Var == null) {
                Duration duration2 = this.Q;
                if (duration2 != null) {
                    this.Q = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.Q = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o1 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        public c p1(int i9) {
            this.B3 = i9;
            R();
            return this;
        }

        public c q0(Duration duration) {
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

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.access$11100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.t0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.t0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: s0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof HttpConnectionManager) {
                return t0((HttpConnectionManager) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c t0(HttpConnectionManager httpConnectionManager) {
            if (httpConnectionManager == HttpConnectionManager.getDefaultInstance()) {
                return this;
            }
            if (httpConnectionManager.codecType_ != 0) {
                Z0(httpConnectionManager.getCodecTypeValue());
            }
            if (!httpConnectionManager.getStatPrefix().isEmpty()) {
                this.f49802k = httpConnectionManager.statPrefix_;
                R();
            }
            if (this.f49807p == null) {
                if (!httpConnectionManager.httpFilters_.isEmpty()) {
                    if (this.f49806o.isEmpty()) {
                        this.f49806o = httpConnectionManager.httpFilters_;
                        this.f49800i &= -2;
                    } else {
                        b0();
                        this.f49806o.addAll(httpConnectionManager.httpFilters_);
                    }
                    R();
                }
            } else if (!httpConnectionManager.httpFilters_.isEmpty()) {
                if (this.f49807p.k()) {
                    this.f49807p.f();
                    this.f49807p = null;
                    this.f49806o = httpConnectionManager.httpFilters_;
                    this.f49800i &= -2;
                    this.f49807p = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f49807p.b(httpConnectionManager.httpFilters_);
                }
            }
            if (httpConnectionManager.hasAddUserAgent()) {
                m0(httpConnectionManager.getAddUserAgent());
            }
            if (httpConnectionManager.hasTracing()) {
                V0(httpConnectionManager.getTracing());
            }
            if (httpConnectionManager.hasCommonHttpProtocolOptions()) {
                n0(httpConnectionManager.getCommonHttpProtocolOptions());
            }
            if (httpConnectionManager.hasHttpProtocolOptions()) {
                y0(httpConnectionManager.getHttpProtocolOptions());
            }
            if (httpConnectionManager.hasHttp2ProtocolOptions()) {
                v0(httpConnectionManager.getHttp2ProtocolOptions());
            }
            if (httpConnectionManager.hasHttp3ProtocolOptions()) {
                x0(httpConnectionManager.getHttp3ProtocolOptions());
            }
            if (!httpConnectionManager.getServerName().isEmpty()) {
                this.C = httpConnectionManager.serverName_;
                R();
            }
            if (httpConnectionManager.serverHeaderTransformation_ != 0) {
                i1(httpConnectionManager.getServerHeaderTransformationValue());
            }
            if (httpConnectionManager.hasSchemeHeaderTransformation()) {
                O0(httpConnectionManager.getSchemeHeaderTransformation());
            }
            if (httpConnectionManager.hasMaxRequestHeadersKb()) {
                D0(httpConnectionManager.getMaxRequestHeadersKb());
            }
            if (httpConnectionManager.hasStreamIdleTimeout()) {
                U0(httpConnectionManager.getStreamIdleTimeout());
            }
            if (httpConnectionManager.hasRequestTimeout()) {
                M0(httpConnectionManager.getRequestTimeout());
            }
            if (httpConnectionManager.hasRequestHeadersTimeout()) {
                K0(httpConnectionManager.getRequestHeadersTimeout());
            }
            if (httpConnectionManager.hasDrainTimeout()) {
                q0(httpConnectionManager.getDrainTimeout());
            }
            if (httpConnectionManager.hasDelayedCloseTimeout()) {
                o0(httpConnectionManager.getDelayedCloseTimeout());
            }
            if (this.V1 == null) {
                if (!httpConnectionManager.accessLog_.isEmpty()) {
                    if (this.f49788a1.isEmpty()) {
                        this.f49788a1 = httpConnectionManager.accessLog_;
                        this.f49800i &= -3;
                    } else {
                        a0();
                        this.f49788a1.addAll(httpConnectionManager.accessLog_);
                    }
                    R();
                }
            } else if (!httpConnectionManager.accessLog_.isEmpty()) {
                if (this.V1.k()) {
                    this.V1.f();
                    this.V1 = null;
                    this.f49788a1 = httpConnectionManager.accessLog_;
                    this.f49800i &= -3;
                    this.V1 = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.V1.b(httpConnectionManager.accessLog_);
                }
            }
            if (httpConnectionManager.hasUseRemoteAddress()) {
                X0(httpConnectionManager.getUseRemoteAddress());
            }
            if (httpConnectionManager.getXffNumTrustedHops() != 0) {
                p1(httpConnectionManager.getXffNumTrustedHops());
            }
            if (this.C4 == null) {
                if (!httpConnectionManager.originalIpDetectionExtensions_.isEmpty()) {
                    if (this.V3.isEmpty()) {
                        this.V3 = httpConnectionManager.originalIpDetectionExtensions_;
                        this.f49800i &= -5;
                    } else {
                        d0();
                        this.V3.addAll(httpConnectionManager.originalIpDetectionExtensions_);
                    }
                    R();
                }
            } else if (!httpConnectionManager.originalIpDetectionExtensions_.isEmpty()) {
                if (this.C4.k()) {
                    this.C4.f();
                    this.C4 = null;
                    this.V3 = httpConnectionManager.originalIpDetectionExtensions_;
                    this.f49800i &= -5;
                    this.C4 = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.C4.b(httpConnectionManager.originalIpDetectionExtensions_);
                }
            }
            if (httpConnectionManager.hasInternalAddressConfig()) {
                z0(httpConnectionManager.getInternalAddressConfig());
            }
            if (httpConnectionManager.getSkipXffAppend()) {
                k1(httpConnectionManager.getSkipXffAppend());
            }
            if (!httpConnectionManager.getVia().isEmpty()) {
                this.G4 = httpConnectionManager.via_;
                R();
            }
            if (httpConnectionManager.hasGenerateRequestId()) {
                u0(httpConnectionManager.getGenerateRequestId());
            }
            if (httpConnectionManager.getPreserveExternalRequestId()) {
                e1(httpConnectionManager.getPreserveExternalRequestId());
            }
            if (httpConnectionManager.getAlwaysSetRequestIdInResponse()) {
                Y0(httpConnectionManager.getAlwaysSetRequestIdInResponse());
            }
            if (httpConnectionManager.forwardClientCertDetails_ != 0) {
                b1(httpConnectionManager.getForwardClientCertDetailsValue());
            }
            if (httpConnectionManager.hasSetCurrentClientCertDetails()) {
                S0(httpConnectionManager.getSetCurrentClientCertDetails());
            }
            if (httpConnectionManager.getProxy100Continue()) {
                g1(httpConnectionManager.getProxy100Continue());
            }
            if (httpConnectionManager.getRepresentIpv4RemoteAddressAsIpv4MappedIpv6()) {
                h1(httpConnectionManager.getRepresentIpv4RemoteAddressAsIpv4MappedIpv6());
            }
            if (this.R4 == null) {
                if (!httpConnectionManager.upgradeConfigs_.isEmpty()) {
                    if (this.Q4.isEmpty()) {
                        this.Q4 = httpConnectionManager.upgradeConfigs_;
                        this.f49800i &= -9;
                    } else {
                        e0();
                        this.Q4.addAll(httpConnectionManager.upgradeConfigs_);
                    }
                    R();
                }
            } else if (!httpConnectionManager.upgradeConfigs_.isEmpty()) {
                if (this.R4.k()) {
                    this.R4.f();
                    this.R4 = null;
                    this.Q4 = httpConnectionManager.upgradeConfigs_;
                    this.f49800i &= -9;
                    this.R4 = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.R4.b(httpConnectionManager.upgradeConfigs_);
                }
            }
            if (httpConnectionManager.hasNormalizePath()) {
                H0(httpConnectionManager.getNormalizePath());
            }
            if (httpConnectionManager.getMergeSlashes()) {
                c1(httpConnectionManager.getMergeSlashes());
            }
            if (httpConnectionManager.pathWithEscapedSlashesAction_ != 0) {
                d1(httpConnectionManager.getPathWithEscapedSlashesActionValue());
            }
            if (httpConnectionManager.hasRequestIdExtension()) {
                L0(httpConnectionManager.getRequestIdExtension());
            }
            if (httpConnectionManager.hasLocalReplyConfig()) {
                B0(httpConnectionManager.getLocalReplyConfig());
            }
            if (httpConnectionManager.getStripMatchingHostPort()) {
                m1(httpConnectionManager.getStripMatchingHostPort());
            }
            if (httpConnectionManager.hasStreamErrorOnInvalidHttpMessage()) {
                T0(httpConnectionManager.getStreamErrorOnInvalidHttpMessage());
            }
            if (httpConnectionManager.hasPathNormalizationOptions()) {
                I0(httpConnectionManager.getPathNormalizationOptions());
            }
            if (httpConnectionManager.getStripTrailingHostDot()) {
                n1(httpConnectionManager.getStripTrailingHostDot());
            }
            int i9 = b.f49786a[httpConnectionManager.getRouteSpecifierCase().ordinal()];
            if (i9 == 1) {
                J0(httpConnectionManager.getRds());
            } else if (i9 == 2) {
                N0(httpConnectionManager.getRouteConfig());
            } else if (i9 == 3) {
                Q0(httpConnectionManager.getScopedRoutes());
            }
            if (b.f49787b[httpConnectionManager.getStripPortModeCase().ordinal()] == 1) {
                l1(httpConnectionManager.getStripAnyHostPort());
            }
            z(((GeneratedMessageV3) httpConnectionManager).unknownFields);
            R();
            return this;
        }

        public c u0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.I4;
            if (q2Var == null) {
                BoolValue boolValue2 = this.H4;
                if (boolValue2 != null) {
                    this.H4 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.H4 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c v0(Http2ProtocolOptions http2ProtocolOptions) {
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, d0> q2Var = this.f49817z;
            if (q2Var == null) {
                Http2ProtocolOptions http2ProtocolOptions2 = this.f49816y;
                if (http2ProtocolOptions2 != null) {
                    this.f49816y = Http2ProtocolOptions.newBuilder(http2ProtocolOptions2).j0(http2ProtocolOptions).I();
                } else {
                    this.f49816y = http2ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http2ProtocolOptions);
            }
            return this;
        }

        public c x0(Http3ProtocolOptions http3ProtocolOptions) {
            q2<Http3ProtocolOptions, Http3ProtocolOptions.b, e0> q2Var = this.B;
            if (q2Var == null) {
                Http3ProtocolOptions http3ProtocolOptions2 = this.A;
                if (http3ProtocolOptions2 != null) {
                    this.A = Http3ProtocolOptions.newBuilder(http3ProtocolOptions2).g0(http3ProtocolOptions).I();
                } else {
                    this.A = http3ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http3ProtocolOptions);
            }
            return this;
        }

        public c y0(Http1ProtocolOptions http1ProtocolOptions) {
            q2<Http1ProtocolOptions, Http1ProtocolOptions.c, c0> q2Var = this.f49815x;
            if (q2Var == null) {
                Http1ProtocolOptions http1ProtocolOptions2 = this.f49814w;
                if (http1ProtocolOptions2 != null) {
                    this.f49814w = Http1ProtocolOptions.newBuilder(http1ProtocolOptions2).h0(http1ProtocolOptions).I();
                } else {
                    this.f49814w = http1ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http1ProtocolOptions);
            }
            return this;
        }

        public c z0(InternalAddressConfig internalAddressConfig) {
            q2<InternalAddressConfig, InternalAddressConfig.b, d> q2Var = this.E4;
            if (q2Var == null) {
                InternalAddressConfig internalAddressConfig2 = this.D4;
                if (internalAddressConfig2 != null) {
                    this.D4 = InternalAddressConfig.newBuilder(internalAddressConfig2).g0(internalAddressConfig).I();
                } else {
                    this.D4 = internalAddressConfig;
                }
                R();
            } else {
                q2Var.e(internalAddressConfig);
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49794e = 0;
            this.f49798g = 0;
            this.f49801j = 0;
            this.f49802k = "";
            this.f49806o = Collections.emptyList();
            this.C = "";
            this.D = 0;
            this.f49788a1 = Collections.emptyList();
            this.V3 = Collections.emptyList();
            this.G4 = "";
            this.L4 = 0;
            this.Q4 = Collections.emptyList();
            this.V4 = 0;
            l0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49794e = 0;
            this.f49798g = 0;
            this.f49801j = 0;
            this.f49802k = "";
            this.f49806o = Collections.emptyList();
            this.C = "";
            this.D = 0;
            this.f49788a1 = Collections.emptyList();
            this.V3 = Collections.emptyList();
            this.G4 = "";
            this.L4 = 0;
            this.Q4 = Collections.emptyList();
            this.V4 = 0;
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

    /* loaded from: classes6.dex */
    public interface h extends r1 {
    }

    /* synthetic */ HttpConnectionManager(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpConnectionManager getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49877a;
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
                            if ((!hasHttp2ProtocolOptions() || getHttp2ProtocolOptions().equals(httpConnectionManager.getHttp2ProtocolOptions())) && hasHttp3ProtocolOptions() == httpConnectionManager.hasHttp3ProtocolOptions()) {
                                if ((!hasHttp3ProtocolOptions() || getHttp3ProtocolOptions().equals(httpConnectionManager.getHttp3ProtocolOptions())) && getServerName().equals(httpConnectionManager.getServerName()) && this.serverHeaderTransformation_ == httpConnectionManager.serverHeaderTransformation_ && hasSchemeHeaderTransformation() == httpConnectionManager.hasSchemeHeaderTransformation()) {
                                    if ((!hasSchemeHeaderTransformation() || getSchemeHeaderTransformation().equals(httpConnectionManager.getSchemeHeaderTransformation())) && hasMaxRequestHeadersKb() == httpConnectionManager.hasMaxRequestHeadersKb()) {
                                        if ((!hasMaxRequestHeadersKb() || getMaxRequestHeadersKb().equals(httpConnectionManager.getMaxRequestHeadersKb())) && hasStreamIdleTimeout() == httpConnectionManager.hasStreamIdleTimeout()) {
                                            if ((!hasStreamIdleTimeout() || getStreamIdleTimeout().equals(httpConnectionManager.getStreamIdleTimeout())) && hasRequestTimeout() == httpConnectionManager.hasRequestTimeout()) {
                                                if ((!hasRequestTimeout() || getRequestTimeout().equals(httpConnectionManager.getRequestTimeout())) && hasRequestHeadersTimeout() == httpConnectionManager.hasRequestHeadersTimeout()) {
                                                    if ((!hasRequestHeadersTimeout() || getRequestHeadersTimeout().equals(httpConnectionManager.getRequestHeadersTimeout())) && hasDrainTimeout() == httpConnectionManager.hasDrainTimeout()) {
                                                        if ((!hasDrainTimeout() || getDrainTimeout().equals(httpConnectionManager.getDrainTimeout())) && hasDelayedCloseTimeout() == httpConnectionManager.hasDelayedCloseTimeout()) {
                                                            if ((!hasDelayedCloseTimeout() || getDelayedCloseTimeout().equals(httpConnectionManager.getDelayedCloseTimeout())) && getAccessLogList().equals(httpConnectionManager.getAccessLogList()) && hasUseRemoteAddress() == httpConnectionManager.hasUseRemoteAddress()) {
                                                                if ((!hasUseRemoteAddress() || getUseRemoteAddress().equals(httpConnectionManager.getUseRemoteAddress())) && getXffNumTrustedHops() == httpConnectionManager.getXffNumTrustedHops() && getOriginalIpDetectionExtensionsList().equals(httpConnectionManager.getOriginalIpDetectionExtensionsList()) && hasInternalAddressConfig() == httpConnectionManager.hasInternalAddressConfig()) {
                                                                    if ((!hasInternalAddressConfig() || getInternalAddressConfig().equals(httpConnectionManager.getInternalAddressConfig())) && getSkipXffAppend() == httpConnectionManager.getSkipXffAppend() && getVia().equals(httpConnectionManager.getVia()) && hasGenerateRequestId() == httpConnectionManager.hasGenerateRequestId()) {
                                                                        if ((!hasGenerateRequestId() || getGenerateRequestId().equals(httpConnectionManager.getGenerateRequestId())) && getPreserveExternalRequestId() == httpConnectionManager.getPreserveExternalRequestId() && getAlwaysSetRequestIdInResponse() == httpConnectionManager.getAlwaysSetRequestIdInResponse() && this.forwardClientCertDetails_ == httpConnectionManager.forwardClientCertDetails_ && hasSetCurrentClientCertDetails() == httpConnectionManager.hasSetCurrentClientCertDetails()) {
                                                                            if ((!hasSetCurrentClientCertDetails() || getSetCurrentClientCertDetails().equals(httpConnectionManager.getSetCurrentClientCertDetails())) && getProxy100Continue() == httpConnectionManager.getProxy100Continue() && getRepresentIpv4RemoteAddressAsIpv4MappedIpv6() == httpConnectionManager.getRepresentIpv4RemoteAddressAsIpv4MappedIpv6() && getUpgradeConfigsList().equals(httpConnectionManager.getUpgradeConfigsList()) && hasNormalizePath() == httpConnectionManager.hasNormalizePath()) {
                                                                                if ((!hasNormalizePath() || getNormalizePath().equals(httpConnectionManager.getNormalizePath())) && getMergeSlashes() == httpConnectionManager.getMergeSlashes() && this.pathWithEscapedSlashesAction_ == httpConnectionManager.pathWithEscapedSlashesAction_ && hasRequestIdExtension() == httpConnectionManager.hasRequestIdExtension()) {
                                                                                    if ((!hasRequestIdExtension() || getRequestIdExtension().equals(httpConnectionManager.getRequestIdExtension())) && hasLocalReplyConfig() == httpConnectionManager.hasLocalReplyConfig()) {
                                                                                        if ((!hasLocalReplyConfig() || getLocalReplyConfig().equals(httpConnectionManager.getLocalReplyConfig())) && getStripMatchingHostPort() == httpConnectionManager.getStripMatchingHostPort() && hasStreamErrorOnInvalidHttpMessage() == httpConnectionManager.hasStreamErrorOnInvalidHttpMessage()) {
                                                                                            if ((!hasStreamErrorOnInvalidHttpMessage() || getStreamErrorOnInvalidHttpMessage().equals(httpConnectionManager.getStreamErrorOnInvalidHttpMessage())) && hasPathNormalizationOptions() == httpConnectionManager.hasPathNormalizationOptions()) {
                                                                                                if ((!hasPathNormalizationOptions() || getPathNormalizationOptions().equals(httpConnectionManager.getPathNormalizationOptions())) && getStripTrailingHostDot() == httpConnectionManager.getStripTrailingHostDot() && getRouteSpecifierCase().equals(httpConnectionManager.getRouteSpecifierCase())) {
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
                                                                                                    if (getStripPortModeCase().equals(httpConnectionManager.getStripPortModeCase())) {
                                                                                                        return (this.stripPortModeCase_ != 42 || getStripAnyHostPort() == httpConnectionManager.getStripAnyHostPort()) && this.unknownFields.equals(httpConnectionManager.unknownFields);
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

    public AccessLog getAccessLog(int i9) {
        return this.accessLog_.get(i9);
    }

    public int getAccessLogCount() {
        return this.accessLog_.size();
    }

    public List<AccessLog> getAccessLogList() {
        return this.accessLog_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b getAccessLogOrBuilder(int i9) {
        return this.accessLog_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> getAccessLogOrBuilderList() {
        return this.accessLog_;
    }

    public BoolValue getAddUserAgent() {
        BoolValue boolValue = this.addUserAgent_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getAddUserAgentOrBuilder() {
        return getAddUserAgent();
    }

    public boolean getAlwaysSetRequestIdInResponse() {
        return this.alwaysSetRequestIdInResponse_;
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f0 getCommonHttpProtocolOptionsOrBuilder() {
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

    public d0 getHttp2ProtocolOptionsOrBuilder() {
        return getHttp2ProtocolOptions();
    }

    public Http3ProtocolOptions getHttp3ProtocolOptions() {
        Http3ProtocolOptions http3ProtocolOptions = this.http3ProtocolOptions_;
        return http3ProtocolOptions == null ? Http3ProtocolOptions.getDefaultInstance() : http3ProtocolOptions;
    }

    public e0 getHttp3ProtocolOptionsOrBuilder() {
        return getHttp3ProtocolOptions();
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c getHttpFiltersOrBuilder(int i9) {
        return this.httpFilters_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c> getHttpFiltersOrBuilderList() {
        return this.httpFilters_;
    }

    public Http1ProtocolOptions getHttpProtocolOptions() {
        Http1ProtocolOptions http1ProtocolOptions = this.httpProtocolOptions_;
        return http1ProtocolOptions == null ? Http1ProtocolOptions.getDefaultInstance() : http1ProtocolOptions;
    }

    public c0 getHttpProtocolOptionsOrBuilder() {
        return getHttpProtocolOptions();
    }

    public InternalAddressConfig getInternalAddressConfig() {
        InternalAddressConfig internalAddressConfig = this.internalAddressConfig_;
        return internalAddressConfig == null ? InternalAddressConfig.getDefaultInstance() : internalAddressConfig;
    }

    public d getInternalAddressConfigOrBuilder() {
        return getInternalAddressConfig();
    }

    public LocalReplyConfig getLocalReplyConfig() {
        LocalReplyConfig localReplyConfig = this.localReplyConfig_;
        return localReplyConfig == null ? LocalReplyConfig.getDefaultInstance() : localReplyConfig;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.d getLocalReplyConfigOrBuilder() {
        return getLocalReplyConfig();
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

    public TypedExtensionConfig getOriginalIpDetectionExtensions(int i9) {
        return this.originalIpDetectionExtensions_.get(i9);
    }

    public int getOriginalIpDetectionExtensionsCount() {
        return this.originalIpDetectionExtensions_.size();
    }

    public List<TypedExtensionConfig> getOriginalIpDetectionExtensionsList() {
        return this.originalIpDetectionExtensions_;
    }

    public i1 getOriginalIpDetectionExtensionsOrBuilder(int i9) {
        return this.originalIpDetectionExtensions_.get(i9);
    }

    public List<? extends i1> getOriginalIpDetectionExtensionsOrBuilderList() {
        return this.originalIpDetectionExtensions_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HttpConnectionManager> getParserForType() {
        return PARSER;
    }

    public PathNormalizationOptions getPathNormalizationOptions() {
        PathNormalizationOptions pathNormalizationOptions = this.pathNormalizationOptions_;
        return pathNormalizationOptions == null ? PathNormalizationOptions.getDefaultInstance() : pathNormalizationOptions;
    }

    public e getPathNormalizationOptionsOrBuilder() {
        return getPathNormalizationOptions();
    }

    public PathWithEscapedSlashesAction getPathWithEscapedSlashesAction() {
        PathWithEscapedSlashesAction valueOf = PathWithEscapedSlashesAction.valueOf(this.pathWithEscapedSlashesAction_);
        return valueOf == null ? PathWithEscapedSlashesAction.UNRECOGNIZED : valueOf;
    }

    public int getPathWithEscapedSlashesActionValue() {
        return this.pathWithEscapedSlashesAction_;
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.e getRdsOrBuilder() {
        if (this.routeSpecifierCase_ == 3) {
            return (Rds) this.routeSpecifier_;
        }
        return Rds.getDefaultInstance();
    }

    public boolean getRepresentIpv4RemoteAddressAsIpv4MappedIpv6() {
        return this.representIpv4RemoteAddressAsIpv4MappedIpv6_;
    }

    public Duration getRequestHeadersTimeout() {
        Duration duration = this.requestHeadersTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getRequestHeadersTimeoutOrBuilder() {
        return getRequestHeadersTimeout();
    }

    public RequestIDExtension getRequestIdExtension() {
        RequestIDExtension requestIDExtension = this.requestIdExtension_;
        return requestIDExtension == null ? RequestIDExtension.getDefaultInstance() : requestIDExtension;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.f getRequestIdExtensionOrBuilder() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.p getRouteConfigOrBuilder() {
        if (this.routeSpecifierCase_ == 4) {
            return (RouteConfiguration) this.routeSpecifier_;
        }
        return RouteConfiguration.getDefaultInstance();
    }

    public RouteSpecifierCase getRouteSpecifierCase() {
        return RouteSpecifierCase.forNumber(this.routeSpecifierCase_);
    }

    public SchemeHeaderTransformation getSchemeHeaderTransformation() {
        SchemeHeaderTransformation schemeHeaderTransformation = this.schemeHeaderTransformation_;
        return schemeHeaderTransformation == null ? SchemeHeaderTransformation.getDefaultInstance() : schemeHeaderTransformation;
    }

    public z0 getSchemeHeaderTransformationOrBuilder() {
        return getSchemeHeaderTransformation();
    }

    public ScopedRoutes getScopedRoutes() {
        if (this.routeSpecifierCase_ == 31) {
            return (ScopedRoutes) this.routeSpecifier_;
        }
        return ScopedRoutes.getDefaultInstance();
    }

    public j getScopedRoutesOrBuilder() {
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
        boolean z15 = this.alwaysSetRequestIdInResponse_;
        if (z15) {
            l10 += CodedOutputStream.e(37, z15);
        }
        if (this.localReplyConfig_ != null) {
            l10 += CodedOutputStream.G(38, getLocalReplyConfig());
        }
        boolean z16 = this.stripMatchingHostPort_;
        if (z16) {
            l10 += CodedOutputStream.e(39, z16);
        }
        if (this.streamErrorOnInvalidHttpMessage_ != null) {
            l10 += CodedOutputStream.G(40, getStreamErrorOnInvalidHttpMessage());
        }
        if (this.requestHeadersTimeout_ != null) {
            l10 += CodedOutputStream.G(41, getRequestHeadersTimeout());
        }
        if (this.stripPortModeCase_ == 42) {
            l10 += CodedOutputStream.e(42, ((Boolean) this.stripPortMode_).booleanValue());
        }
        if (this.pathNormalizationOptions_ != null) {
            l10 += CodedOutputStream.G(43, getPathNormalizationOptions());
        }
        if (this.http3ProtocolOptions_ != null) {
            l10 += CodedOutputStream.G(44, getHttp3ProtocolOptions());
        }
        if (this.pathWithEscapedSlashesAction_ != PathWithEscapedSlashesAction.IMPLEMENTATION_SPECIFIC_DEFAULT.getNumber()) {
            l10 += CodedOutputStream.l(45, this.pathWithEscapedSlashesAction_);
        }
        for (int i14 = 0; i14 < this.originalIpDetectionExtensions_.size(); i14++) {
            l10 += CodedOutputStream.G(46, this.originalIpDetectionExtensions_.get(i14));
        }
        boolean z17 = this.stripTrailingHostDot_;
        if (z17) {
            l10 += CodedOutputStream.e(47, z17);
        }
        if (this.schemeHeaderTransformation_ != null) {
            l10 += CodedOutputStream.G(48, getSchemeHeaderTransformation());
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

    public f getSetCurrentClientCertDetailsOrBuilder() {
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

    public BoolValue getStreamErrorOnInvalidHttpMessage() {
        BoolValue boolValue = this.streamErrorOnInvalidHttpMessage_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getStreamErrorOnInvalidHttpMessageOrBuilder() {
        return getStreamErrorOnInvalidHttpMessage();
    }

    public Duration getStreamIdleTimeout() {
        Duration duration = this.streamIdleTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getStreamIdleTimeoutOrBuilder() {
        return getStreamIdleTimeout();
    }

    public boolean getStripAnyHostPort() {
        if (this.stripPortModeCase_ == 42) {
            return ((Boolean) this.stripPortMode_).booleanValue();
        }
        return false;
    }

    public boolean getStripMatchingHostPort() {
        return this.stripMatchingHostPort_;
    }

    public StripPortModeCase getStripPortModeCase() {
        return StripPortModeCase.forNumber(this.stripPortModeCase_);
    }

    public boolean getStripTrailingHostDot() {
        return this.stripTrailingHostDot_;
    }

    public Tracing getTracing() {
        Tracing tracing = this.tracing_;
        return tracing == null ? Tracing.getDefaultInstance() : tracing;
    }

    public g getTracingOrBuilder() {
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

    public h getUpgradeConfigsOrBuilder(int i9) {
        return this.upgradeConfigs_.get(i9);
    }

    public List<? extends h> getUpgradeConfigsOrBuilderList() {
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

    public boolean hasHttp3ProtocolOptions() {
        return this.http3ProtocolOptions_ != null;
    }

    public boolean hasHttpProtocolOptions() {
        return this.httpProtocolOptions_ != null;
    }

    public boolean hasInternalAddressConfig() {
        return this.internalAddressConfig_ != null;
    }

    public boolean hasLocalReplyConfig() {
        return this.localReplyConfig_ != null;
    }

    public boolean hasMaxRequestHeadersKb() {
        return this.maxRequestHeadersKb_ != null;
    }

    public boolean hasNormalizePath() {
        return this.normalizePath_ != null;
    }

    public boolean hasPathNormalizationOptions() {
        return this.pathNormalizationOptions_ != null;
    }

    public boolean hasRds() {
        return this.routeSpecifierCase_ == 3;
    }

    public boolean hasRequestHeadersTimeout() {
        return this.requestHeadersTimeout_ != null;
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

    public boolean hasSchemeHeaderTransformation() {
        return this.schemeHeaderTransformation_ != null;
    }

    public boolean hasScopedRoutes() {
        return this.routeSpecifierCase_ == 31;
    }

    public boolean hasSetCurrentClientCertDetails() {
        return this.setCurrentClientCertDetails_ != null;
    }

    public boolean hasStreamErrorOnInvalidHttpMessage() {
        return this.streamErrorOnInvalidHttpMessage_ != null;
    }

    public boolean hasStreamIdleTimeout() {
        return this.streamIdleTimeout_ != null;
    }

    public boolean hasStripAnyHostPort() {
        return this.stripPortModeCase_ == 42;
    }

    public boolean hasTracing() {
        return this.tracing_ != null;
    }

    public boolean hasUseRemoteAddress() {
        return this.useRemoteAddress_ != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x0344  */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hashCode() {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.hashCode():int");
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49878b.d(HttpConnectionManager.class, c.class);
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
        boolean z15 = this.alwaysSetRequestIdInResponse_;
        if (z15) {
            codedOutputStream.n0(37, z15);
        }
        if (this.localReplyConfig_ != null) {
            codedOutputStream.L0(38, getLocalReplyConfig());
        }
        boolean z16 = this.stripMatchingHostPort_;
        if (z16) {
            codedOutputStream.n0(39, z16);
        }
        if (this.streamErrorOnInvalidHttpMessage_ != null) {
            codedOutputStream.L0(40, getStreamErrorOnInvalidHttpMessage());
        }
        if (this.requestHeadersTimeout_ != null) {
            codedOutputStream.L0(41, getRequestHeadersTimeout());
        }
        if (this.stripPortModeCase_ == 42) {
            codedOutputStream.n0(42, ((Boolean) this.stripPortMode_).booleanValue());
        }
        if (this.pathNormalizationOptions_ != null) {
            codedOutputStream.L0(43, getPathNormalizationOptions());
        }
        if (this.http3ProtocolOptions_ != null) {
            codedOutputStream.L0(44, getHttp3ProtocolOptions());
        }
        if (this.pathWithEscapedSlashesAction_ != PathWithEscapedSlashesAction.IMPLEMENTATION_SPECIFIC_DEFAULT.getNumber()) {
            codedOutputStream.v0(45, this.pathWithEscapedSlashesAction_);
        }
        for (int i13 = 0; i13 < this.originalIpDetectionExtensions_.size(); i13++) {
            codedOutputStream.L0(46, this.originalIpDetectionExtensions_.get(i13));
        }
        boolean z17 = this.stripTrailingHostDot_;
        if (z17) {
            codedOutputStream.n0(47, z17);
        }
        if (this.schemeHeaderTransformation_ != null) {
            codedOutputStream.L0(48, getSchemeHeaderTransformation());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpConnectionManager(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HttpConnectionManager httpConnectionManager) {
        return DEFAULT_INSTANCE.toBuilder().t0(httpConnectionManager);
    }

    public static HttpConnectionManager parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpConnectionManager(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.routeSpecifierCase_ = 0;
        this.stripPortModeCase_ = 0;
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
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).t0(this);
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

    public static HttpConnectionManager parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private HttpConnectionManager() {
        this.routeSpecifierCase_ = 0;
        this.stripPortModeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.codecType_ = 0;
        this.statPrefix_ = "";
        this.httpFilters_ = Collections.emptyList();
        this.serverName_ = "";
        this.serverHeaderTransformation_ = 0;
        this.accessLog_ = Collections.emptyList();
        this.originalIpDetectionExtensions_ = Collections.emptyList();
        this.via_ = "";
        this.forwardClientCertDetails_ = 0;
        this.upgradeConfigs_ = Collections.emptyList();
        this.pathWithEscapedSlashesAction_ = 0;
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
                                builder2.s0((RouteConfiguration) B2);
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
                                builder4.j0(tracing2);
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
                                builder6.j0(http2ProtocolOptions2);
                                this.http2ProtocolOptions_ = builder6.I();
                            } else {
                                continue;
                            }
                        case 82:
                            this.serverName_ = pVar.K();
                            continue;
                        case 98:
                            Duration duration = this.drainTimeout_;
                            Duration.b builder7 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.drainTimeout_ = duration2;
                            if (builder7 != null) {
                                builder7.e0(duration2);
                                this.drainTimeout_ = builder7.I();
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
                            BoolValue.b builder8 = boolValue3 != null ? boolValue3.toBuilder() : null;
                            BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.useRemoteAddress_ = boolValue4;
                            if (builder8 != null) {
                                builder8.d0(boolValue4);
                                this.useRemoteAddress_ = builder8.I();
                            } else {
                                continue;
                            }
                        case 122:
                            BoolValue boolValue5 = this.generateRequestId_;
                            BoolValue.b builder9 = boolValue5 != null ? boolValue5.toBuilder() : null;
                            BoolValue boolValue6 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.generateRequestId_ = boolValue6;
                            if (builder9 != null) {
                                builder9.d0(boolValue6);
                                this.generateRequestId_ = builder9.I();
                            } else {
                                continue;
                            }
                        case 128:
                            this.forwardClientCertDetails_ = pVar.u();
                            continue;
                        case 138:
                            SetCurrentClientCertDetails setCurrentClientCertDetails = this.setCurrentClientCertDetails_;
                            SetCurrentClientCertDetails.b builder10 = setCurrentClientCertDetails != null ? setCurrentClientCertDetails.toBuilder() : null;
                            SetCurrentClientCertDetails setCurrentClientCertDetails2 = (SetCurrentClientCertDetails) pVar.B(SetCurrentClientCertDetails.parser(), f0Var);
                            this.setCurrentClientCertDetails_ = setCurrentClientCertDetails2;
                            if (builder10 != null) {
                                builder10.g0(setCurrentClientCertDetails2);
                                this.setCurrentClientCertDetails_ = builder10.I();
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
                            Duration duration3 = this.streamIdleTimeout_;
                            Duration.b builder11 = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.streamIdleTimeout_ = duration4;
                            if (builder11 != null) {
                                builder11.e0(duration4);
                                this.streamIdleTimeout_ = builder11.I();
                            } else {
                                continue;
                            }
                        case 202:
                            InternalAddressConfig internalAddressConfig = this.internalAddressConfig_;
                            InternalAddressConfig.b builder12 = internalAddressConfig != null ? internalAddressConfig.toBuilder() : null;
                            InternalAddressConfig internalAddressConfig2 = (InternalAddressConfig) pVar.B(InternalAddressConfig.parser(), f0Var);
                            this.internalAddressConfig_ = internalAddressConfig2;
                            if (builder12 != null) {
                                builder12.g0(internalAddressConfig2);
                                this.internalAddressConfig_ = builder12.I();
                            } else {
                                continue;
                            }
                        case 210:
                            Duration duration5 = this.delayedCloseTimeout_;
                            Duration.b builder13 = duration5 != null ? duration5.toBuilder() : null;
                            Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.delayedCloseTimeout_ = duration6;
                            if (builder13 != null) {
                                builder13.e0(duration6);
                                this.delayedCloseTimeout_ = builder13.I();
                            } else {
                                continue;
                            }
                        case 226:
                            Duration duration7 = this.requestTimeout_;
                            Duration.b builder14 = duration7 != null ? duration7.toBuilder() : null;
                            Duration duration8 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.requestTimeout_ = duration8;
                            if (builder14 != null) {
                                builder14.e0(duration8);
                                this.requestTimeout_ = builder14.I();
                            } else {
                                continue;
                            }
                        case 234:
                            UInt32Value uInt32Value = this.maxRequestHeadersKb_;
                            UInt32Value.b builder15 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxRequestHeadersKb_ = uInt32Value2;
                            if (builder15 != null) {
                                builder15.g0(uInt32Value2);
                                this.maxRequestHeadersKb_ = builder15.I();
                            } else {
                                continue;
                            }
                        case 242:
                            BoolValue boolValue7 = this.normalizePath_;
                            BoolValue.b builder16 = boolValue7 != null ? boolValue7.toBuilder() : null;
                            BoolValue boolValue8 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.normalizePath_ = boolValue8;
                            if (builder16 != null) {
                                builder16.d0(boolValue8);
                                this.normalizePath_ = builder16.I();
                            } else {
                                continue;
                            }
                        case 250:
                            ScopedRoutes.c builder17 = this.routeSpecifierCase_ == 31 ? ((ScopedRoutes) this.routeSpecifier_).toBuilder() : null;
                            o1 B3 = pVar.B(ScopedRoutes.parser(), f0Var);
                            this.routeSpecifier_ = B3;
                            if (builder17 != null) {
                                builder17.g0((ScopedRoutes) B3);
                                this.routeSpecifier_ = builder17.I();
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
                            HttpProtocolOptions.b builder18 = httpProtocolOptions != null ? httpProtocolOptions.toBuilder() : null;
                            HttpProtocolOptions httpProtocolOptions2 = (HttpProtocolOptions) pVar.B(HttpProtocolOptions.parser(), f0Var);
                            this.commonHttpProtocolOptions_ = httpProtocolOptions2;
                            if (builder18 != null) {
                                builder18.g0(httpProtocolOptions2);
                                this.commonHttpProtocolOptions_ = builder18.I();
                            } else {
                                continue;
                            }
                        case BuildConfig.VERSION_CODE /* 290 */:
                            RequestIDExtension requestIDExtension = this.requestIdExtension_;
                            RequestIDExtension.b builder19 = requestIDExtension != null ? requestIDExtension.toBuilder() : null;
                            RequestIDExtension requestIDExtension2 = (RequestIDExtension) pVar.B(RequestIDExtension.parser(), f0Var);
                            this.requestIdExtension_ = requestIDExtension2;
                            if (builder19 != null) {
                                builder19.g0(requestIDExtension2);
                                this.requestIdExtension_ = builder19.I();
                            } else {
                                continue;
                            }
                        case 296:
                            this.alwaysSetRequestIdInResponse_ = pVar.r();
                            continue;
                        case 306:
                            LocalReplyConfig localReplyConfig = this.localReplyConfig_;
                            LocalReplyConfig.b builder20 = localReplyConfig != null ? localReplyConfig.toBuilder() : null;
                            LocalReplyConfig localReplyConfig2 = (LocalReplyConfig) pVar.B(LocalReplyConfig.parser(), f0Var);
                            this.localReplyConfig_ = localReplyConfig2;
                            if (builder20 != null) {
                                builder20.j0(localReplyConfig2);
                                this.localReplyConfig_ = builder20.I();
                            } else {
                                continue;
                            }
                        case 312:
                            this.stripMatchingHostPort_ = pVar.r();
                            continue;
                        case com.tencent.xmagic.BuildConfig.VERSION_CODE /* 322 */:
                            BoolValue boolValue9 = this.streamErrorOnInvalidHttpMessage_;
                            BoolValue.b builder21 = boolValue9 != null ? boolValue9.toBuilder() : null;
                            BoolValue boolValue10 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.streamErrorOnInvalidHttpMessage_ = boolValue10;
                            if (builder21 != null) {
                                builder21.d0(boolValue10);
                                this.streamErrorOnInvalidHttpMessage_ = builder21.I();
                            } else {
                                continue;
                            }
                        case 330:
                            Duration duration9 = this.requestHeadersTimeout_;
                            Duration.b builder22 = duration9 != null ? duration9.toBuilder() : null;
                            Duration duration10 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.requestHeadersTimeout_ = duration10;
                            if (builder22 != null) {
                                builder22.e0(duration10);
                                this.requestHeadersTimeout_ = builder22.I();
                            } else {
                                continue;
                            }
                        case 336:
                            this.stripPortMode_ = Boolean.valueOf(pVar.r());
                            this.stripPortModeCase_ = 42;
                            continue;
                        case 346:
                            PathNormalizationOptions pathNormalizationOptions = this.pathNormalizationOptions_;
                            PathNormalizationOptions.b builder23 = pathNormalizationOptions != null ? pathNormalizationOptions.toBuilder() : null;
                            PathNormalizationOptions pathNormalizationOptions2 = (PathNormalizationOptions) pVar.B(PathNormalizationOptions.parser(), f0Var);
                            this.pathNormalizationOptions_ = pathNormalizationOptions2;
                            if (builder23 != null) {
                                builder23.h0(pathNormalizationOptions2);
                                this.pathNormalizationOptions_ = builder23.I();
                            } else {
                                continue;
                            }
                        case 354:
                            Http3ProtocolOptions http3ProtocolOptions = this.http3ProtocolOptions_;
                            Http3ProtocolOptions.b builder24 = http3ProtocolOptions != null ? http3ProtocolOptions.toBuilder() : null;
                            Http3ProtocolOptions http3ProtocolOptions2 = (Http3ProtocolOptions) pVar.B(Http3ProtocolOptions.parser(), f0Var);
                            this.http3ProtocolOptions_ = http3ProtocolOptions2;
                            if (builder24 != null) {
                                builder24.g0(http3ProtocolOptions2);
                                this.http3ProtocolOptions_ = builder24.I();
                            } else {
                                continue;
                            }
                        case 360:
                            this.pathWithEscapedSlashesAction_ = pVar.u();
                            continue;
                        case 370:
                            if (!(z11 & true)) {
                                this.originalIpDetectionExtensions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.originalIpDetectionExtensions_.add((TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var));
                            continue;
                        case 376:
                            this.stripTrailingHostDot_ = pVar.r();
                            continue;
                        case 386:
                            SchemeHeaderTransformation schemeHeaderTransformation = this.schemeHeaderTransformation_;
                            SchemeHeaderTransformation.c builder25 = schemeHeaderTransformation != null ? schemeHeaderTransformation.toBuilder() : null;
                            SchemeHeaderTransformation schemeHeaderTransformation2 = (SchemeHeaderTransformation) pVar.B(SchemeHeaderTransformation.parser(), f0Var);
                            this.schemeHeaderTransformation_ = schemeHeaderTransformation2;
                            if (builder25 != null) {
                                builder25.g0(schemeHeaderTransformation2);
                                this.schemeHeaderTransformation_ = builder25.I();
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
                    this.httpFilters_ = Collections.unmodifiableList(this.httpFilters_);
                }
                if (z11 & true) {
                    this.accessLog_ = Collections.unmodifiableList(this.accessLog_);
                }
                if (z11 & true) {
                    this.upgradeConfigs_ = Collections.unmodifiableList(this.upgradeConfigs_);
                }
                if (z11 & true) {
                    this.originalIpDetectionExtensions_ = Collections.unmodifiableList(this.originalIpDetectionExtensions_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
