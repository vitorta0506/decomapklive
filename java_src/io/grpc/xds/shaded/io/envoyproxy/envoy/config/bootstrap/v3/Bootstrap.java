package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt64Value;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.f3;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.FatalAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.o;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsSink;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Bootstrap extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.b {
    public static final int ADMIN_FIELD_NUMBER = 12;
    public static final int BOOTSTRAP_EXTENSIONS_FIELD_NUMBER = 21;
    public static final int CERTIFICATE_PROVIDER_INSTANCES_FIELD_NUMBER = 25;
    public static final int CLUSTER_MANAGER_FIELD_NUMBER = 4;
    public static final int CONFIG_SOURCES_FIELD_NUMBER = 22;
    public static final int DEFAULT_CONFIG_SOURCE_FIELD_NUMBER = 23;
    public static final int DEFAULT_SOCKET_INTERFACE_FIELD_NUMBER = 24;
    public static final int DNS_RESOLUTION_CONFIG_FIELD_NUMBER = 30;
    public static final int DYNAMIC_RESOURCES_FIELD_NUMBER = 3;
    public static final int ENABLE_DISPATCHER_STATS_FIELD_NUMBER = 16;
    public static final int FATAL_ACTIONS_FIELD_NUMBER = 28;
    public static final int FLAGS_PATH_FIELD_NUMBER = 5;
    public static final int HDS_CONFIG_FIELD_NUMBER = 14;
    public static final int HEADER_PREFIX_FIELD_NUMBER = 18;
    public static final int INLINE_HEADERS_FIELD_NUMBER = 32;
    public static final int LAYERED_RUNTIME_FIELD_NUMBER = 17;
    public static final int NODE_CONTEXT_PARAMS_FIELD_NUMBER = 26;
    public static final int NODE_FIELD_NUMBER = 1;
    public static final int OVERLOAD_MANAGER_FIELD_NUMBER = 15;
    public static final int STATIC_RESOURCES_FIELD_NUMBER = 2;
    public static final int STATS_CONFIG_FIELD_NUMBER = 13;
    public static final int STATS_FLUSH_INTERVAL_FIELD_NUMBER = 7;
    public static final int STATS_FLUSH_ON_ADMIN_FIELD_NUMBER = 29;
    public static final int STATS_SERVER_VERSION_OVERRIDE_FIELD_NUMBER = 19;
    public static final int STATS_SINKS_FIELD_NUMBER = 6;
    public static final int TRACING_FIELD_NUMBER = 9;
    public static final int TYPED_DNS_RESOLVER_CONFIG_FIELD_NUMBER = 31;
    public static final int USE_TCP_FOR_DNS_LOOKUPS_FIELD_NUMBER = 20;
    public static final int WATCHDOGS_FIELD_NUMBER = 27;
    public static final int WATCHDOG_FIELD_NUMBER = 8;
    private static final long serialVersionUID = 0;
    private Admin admin_;
    private List<TypedExtensionConfig> bootstrapExtensions_;
    private g1<String, TypedExtensionConfig> certificateProviderInstances_;
    private ClusterManager clusterManager_;
    private List<ConfigSource> configSources_;
    private ConfigSource defaultConfigSource_;
    private volatile Object defaultSocketInterface_;
    private DnsResolutionConfig dnsResolutionConfig_;
    private DynamicResources dynamicResources_;
    private boolean enableDispatcherStats_;
    private List<FatalAction> fatalActions_;
    private volatile Object flagsPath_;
    private ApiConfigSource hdsConfig_;
    private volatile Object headerPrefix_;
    private List<CustomInlineHeader> inlineHeaders_;
    private LayeredRuntime layeredRuntime_;
    private byte memoizedIsInitialized;
    private z0 nodeContextParams_;
    private Node node_;
    private OverloadManager overloadManager_;
    private StaticResources staticResources_;
    private StatsConfig statsConfig_;
    private int statsFlushCase_;
    private Duration statsFlushInterval_;
    private Object statsFlush_;
    private UInt64Value statsServerVersionOverride_;
    private List<StatsSink> statsSinks_;
    private Tracing tracing_;
    private TypedExtensionConfig typedDnsResolverConfig_;
    private boolean useTcpForDnsLookups_;
    private Watchdog watchdog_;
    private Watchdogs watchdogs_;
    private static final Bootstrap DEFAULT_INSTANCE = new Bootstrap();
    private static final e2<Bootstrap> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class DynamicResources extends GeneratedMessageV3 implements e {
        public static final int ADS_CONFIG_FIELD_NUMBER = 3;
        public static final int CDS_CONFIG_FIELD_NUMBER = 2;
        public static final int CDS_RESOURCES_LOCATOR_FIELD_NUMBER = 6;
        public static final int LDS_CONFIG_FIELD_NUMBER = 1;
        public static final int LDS_RESOURCES_LOCATOR_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private ApiConfigSource adsConfig_;
        private ConfigSource cdsConfig_;
        private volatile Object cdsResourcesLocator_;
        private ConfigSource ldsConfig_;
        private volatile Object ldsResourcesLocator_;
        private byte memoizedIsInitialized;
        private static final DynamicResources DEFAULT_INSTANCE = new DynamicResources();
        private static final e2<DynamicResources> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<DynamicResources> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicResources m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicResources(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private ConfigSource f47425e;

            /* renamed from: f  reason: collision with root package name */
            private q2<ConfigSource, ConfigSource.c, k> f47426f;

            /* renamed from: g  reason: collision with root package name */
            private Object f47427g;

            /* renamed from: h  reason: collision with root package name */
            private ConfigSource f47428h;

            /* renamed from: i  reason: collision with root package name */
            private q2<ConfigSource, ConfigSource.c, k> f47429i;

            /* renamed from: j  reason: collision with root package name */
            private Object f47430j;

            /* renamed from: k  reason: collision with root package name */
            private ApiConfigSource f47431k;

            /* renamed from: l  reason: collision with root package name */
            private q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> f47432l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47529f.d(DynamicResources.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicResources build() {
                DynamicResources I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicResources I() {
                DynamicResources dynamicResources = new DynamicResources(this, (a) null);
                q2<ConfigSource, ConfigSource.c, k> q2Var = this.f47426f;
                if (q2Var == null) {
                    dynamicResources.ldsConfig_ = this.f47425e;
                } else {
                    dynamicResources.ldsConfig_ = q2Var.b();
                }
                dynamicResources.ldsResourcesLocator_ = this.f47427g;
                q2<ConfigSource, ConfigSource.c, k> q2Var2 = this.f47429i;
                if (q2Var2 == null) {
                    dynamicResources.cdsConfig_ = this.f47428h;
                } else {
                    dynamicResources.cdsConfig_ = q2Var2.b();
                }
                dynamicResources.cdsResourcesLocator_ = this.f47430j;
                q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> q2Var3 = this.f47432l;
                if (q2Var3 == null) {
                    dynamicResources.adsConfig_ = this.f47431k;
                } else {
                    dynamicResources.adsConfig_ = q2Var3.b();
                }
                Q();
                return dynamicResources;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DynamicResources getDefaultInstanceForType() {
                return DynamicResources.getDefaultInstance();
            }

            public b d0(ApiConfigSource apiConfigSource) {
                q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> q2Var = this.f47432l;
                if (q2Var == null) {
                    ApiConfigSource apiConfigSource2 = this.f47431k;
                    if (apiConfigSource2 != null) {
                        this.f47431k = ApiConfigSource.newBuilder(apiConfigSource2).j0(apiConfigSource).I();
                    } else {
                        this.f47431k = apiConfigSource;
                    }
                    R();
                } else {
                    q2Var.e(apiConfigSource);
                }
                return this;
            }

            public b e0(ConfigSource configSource) {
                q2<ConfigSource, ConfigSource.c, k> q2Var = this.f47429i;
                if (q2Var == null) {
                    ConfigSource configSource2 = this.f47428h;
                    if (configSource2 != null) {
                        this.f47428h = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                    } else {
                        this.f47428h = configSource;
                    }
                    R();
                } else {
                    q2Var.e(configSource);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.DynamicResources.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.DynamicResources.access$2300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap$DynamicResources r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.DynamicResources) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap$DynamicResources r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.DynamicResources) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.DynamicResources.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap$DynamicResources$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47528e;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicResources) {
                    return i0((DynamicResources) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(DynamicResources dynamicResources) {
                if (dynamicResources == DynamicResources.getDefaultInstance()) {
                    return this;
                }
                if (dynamicResources.hasLdsConfig()) {
                    j0(dynamicResources.getLdsConfig());
                }
                if (!dynamicResources.getLdsResourcesLocator().isEmpty()) {
                    this.f47427g = dynamicResources.ldsResourcesLocator_;
                    R();
                }
                if (dynamicResources.hasCdsConfig()) {
                    e0(dynamicResources.getCdsConfig());
                }
                if (!dynamicResources.getCdsResourcesLocator().isEmpty()) {
                    this.f47430j = dynamicResources.cdsResourcesLocator_;
                    R();
                }
                if (dynamicResources.hasAdsConfig()) {
                    d0(dynamicResources.getAdsConfig());
                }
                z(((GeneratedMessageV3) dynamicResources).unknownFields);
                R();
                return this;
            }

            public b j0(ConfigSource configSource) {
                q2<ConfigSource, ConfigSource.c, k> q2Var = this.f47426f;
                if (q2Var == null) {
                    ConfigSource configSource2 = this.f47425e;
                    if (configSource2 != null) {
                        this.f47425e = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                    } else {
                        this.f47425e = configSource;
                    }
                    R();
                } else {
                    q2Var.e(configSource);
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
                this.f47427g = "";
                this.f47430j = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47427g = "";
                this.f47430j = "";
                b0();
            }
        }

        /* synthetic */ DynamicResources(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicResources getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47528e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicResources parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicResources) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicResources parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicResources> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicResources)) {
                return super.equals(obj);
            }
            DynamicResources dynamicResources = (DynamicResources) obj;
            if (hasLdsConfig() != dynamicResources.hasLdsConfig()) {
                return false;
            }
            if ((!hasLdsConfig() || getLdsConfig().equals(dynamicResources.getLdsConfig())) && getLdsResourcesLocator().equals(dynamicResources.getLdsResourcesLocator()) && hasCdsConfig() == dynamicResources.hasCdsConfig()) {
                if ((!hasCdsConfig() || getCdsConfig().equals(dynamicResources.getCdsConfig())) && getCdsResourcesLocator().equals(dynamicResources.getCdsResourcesLocator()) && hasAdsConfig() == dynamicResources.hasAdsConfig()) {
                    return (!hasAdsConfig() || getAdsConfig().equals(dynamicResources.getAdsConfig())) && this.unknownFields.equals(dynamicResources.unknownFields);
                }
                return false;
            }
            return false;
        }

        public ApiConfigSource getAdsConfig() {
            ApiConfigSource apiConfigSource = this.adsConfig_;
            return apiConfigSource == null ? ApiConfigSource.getDefaultInstance() : apiConfigSource;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d getAdsConfigOrBuilder() {
            return getAdsConfig();
        }

        public ConfigSource getCdsConfig() {
            ConfigSource configSource = this.cdsConfig_;
            return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
        }

        public k getCdsConfigOrBuilder() {
            return getCdsConfig();
        }

        public String getCdsResourcesLocator() {
            Object obj = this.cdsResourcesLocator_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cdsResourcesLocator_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getCdsResourcesLocatorBytes() {
            Object obj = this.cdsResourcesLocator_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cdsResourcesLocator_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public ConfigSource getLdsConfig() {
            ConfigSource configSource = this.ldsConfig_;
            return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
        }

        public k getLdsConfigOrBuilder() {
            return getLdsConfig();
        }

        public String getLdsResourcesLocator() {
            Object obj = this.ldsResourcesLocator_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ldsResourcesLocator_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getLdsResourcesLocatorBytes() {
            Object obj = this.ldsResourcesLocator_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ldsResourcesLocator_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DynamicResources> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.ldsConfig_ != null ? 0 + CodedOutputStream.G(1, getLdsConfig()) : 0;
            if (this.cdsConfig_ != null) {
                G += CodedOutputStream.G(2, getCdsConfig());
            }
            if (this.adsConfig_ != null) {
                G += CodedOutputStream.G(3, getAdsConfig());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.ldsResourcesLocator_)) {
                G += GeneratedMessageV3.computeStringSize(5, this.ldsResourcesLocator_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.cdsResourcesLocator_)) {
                G += GeneratedMessageV3.computeStringSize(6, this.cdsResourcesLocator_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasAdsConfig() {
            return this.adsConfig_ != null;
        }

        public boolean hasCdsConfig() {
            return this.cdsConfig_ != null;
        }

        public boolean hasLdsConfig() {
            return this.ldsConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasLdsConfig()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getLdsConfig().hashCode();
            }
            int hashCode2 = (((hashCode * 37) + 5) * 53) + getLdsResourcesLocator().hashCode();
            if (hasCdsConfig()) {
                hashCode2 = (((hashCode2 * 37) + 2) * 53) + getCdsConfig().hashCode();
            }
            int hashCode3 = (((hashCode2 * 37) + 6) * 53) + getCdsResourcesLocator().hashCode();
            if (hasAdsConfig()) {
                hashCode3 = (((hashCode3 * 37) + 3) * 53) + getAdsConfig().hashCode();
            }
            int hashCode4 = (hashCode3 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode4;
            return hashCode4;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47529f.d(DynamicResources.class, b.class);
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
            return new DynamicResources();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.ldsConfig_ != null) {
                codedOutputStream.L0(1, getLdsConfig());
            }
            if (this.cdsConfig_ != null) {
                codedOutputStream.L0(2, getCdsConfig());
            }
            if (this.adsConfig_ != null) {
                codedOutputStream.L0(3, getAdsConfig());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.ldsResourcesLocator_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.ldsResourcesLocator_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.cdsResourcesLocator_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.cdsResourcesLocator_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DynamicResources(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicResources dynamicResources) {
            return DEFAULT_INSTANCE.toBuilder().i0(dynamicResources);
        }

        public static DynamicResources parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicResources(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicResources parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicResources) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicResources parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicResources getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static DynamicResources parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicResources() {
            this.memoizedIsInitialized = (byte) -1;
            this.ldsResourcesLocator_ = "";
            this.cdsResourcesLocator_ = "";
        }

        public static DynamicResources parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicResources parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicResources parseFrom(InputStream inputStream) throws IOException {
            return (DynamicResources) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DynamicResources(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    ConfigSource configSource = this.ldsConfig_;
                                    ConfigSource.c builder = configSource != null ? configSource.toBuilder() : null;
                                    ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                                    this.ldsConfig_ = configSource2;
                                    if (builder != null) {
                                        builder.k0(configSource2);
                                        this.ldsConfig_ = builder.I();
                                    }
                                } else if (L == 18) {
                                    ConfigSource configSource3 = this.cdsConfig_;
                                    ConfigSource.c builder2 = configSource3 != null ? configSource3.toBuilder() : null;
                                    ConfigSource configSource4 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                                    this.cdsConfig_ = configSource4;
                                    if (builder2 != null) {
                                        builder2.k0(configSource4);
                                        this.cdsConfig_ = builder2.I();
                                    }
                                } else if (L == 26) {
                                    ApiConfigSource apiConfigSource = this.adsConfig_;
                                    ApiConfigSource.b builder3 = apiConfigSource != null ? apiConfigSource.toBuilder() : null;
                                    ApiConfigSource apiConfigSource2 = (ApiConfigSource) pVar.B(ApiConfigSource.parser(), f0Var);
                                    this.adsConfig_ = apiConfigSource2;
                                    if (builder3 != null) {
                                        builder3.j0(apiConfigSource2);
                                        this.adsConfig_ = builder3.I();
                                    }
                                } else if (L == 42) {
                                    this.ldsResourcesLocator_ = pVar.K();
                                } else if (L != 50) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.cdsResourcesLocator_ = pVar.K();
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

        public static DynamicResources parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicResources) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicResources parseFrom(p pVar) throws IOException {
            return (DynamicResources) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicResources parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicResources) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class StaticResources extends GeneratedMessageV3 implements f {
        public static final int CLUSTERS_FIELD_NUMBER = 2;
        public static final int LISTENERS_FIELD_NUMBER = 1;
        public static final int SECRETS_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private List<Cluster> clusters_;
        private List<Listener> listeners_;
        private byte memoizedIsInitialized;
        private List<Secret> secrets_;
        private static final StaticResources DEFAULT_INSTANCE = new StaticResources();
        private static final e2<StaticResources> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<StaticResources> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StaticResources m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StaticResources(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private int f47433e;

            /* renamed from: f  reason: collision with root package name */
            private List<Listener> f47434f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Listener, Listener.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.i> f47435g;

            /* renamed from: h  reason: collision with root package name */
            private List<Cluster> f47436h;

            /* renamed from: i  reason: collision with root package name */
            private l2<Cluster, Cluster.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.c> f47437i;

            /* renamed from: j  reason: collision with root package name */
            private List<Secret> f47438j;

            /* renamed from: k  reason: collision with root package name */
            private l2<Secret, Secret.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.h> f47439k;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f47433e & 2) == 0) {
                    this.f47436h = new ArrayList(this.f47436h);
                    this.f47433e |= 2;
                }
            }

            private void b0() {
                if ((this.f47433e & 1) == 0) {
                    this.f47434f = new ArrayList(this.f47434f);
                    this.f47433e |= 1;
                }
            }

            private void d0() {
                if ((this.f47433e & 4) == 0) {
                    this.f47438j = new ArrayList(this.f47438j);
                    this.f47433e |= 4;
                }
            }

            private l2<Cluster, Cluster.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.c> e0() {
                if (this.f47437i == null) {
                    this.f47437i = new l2<>(this.f47436h, (this.f47433e & 2) != 0, H(), O());
                    this.f47436h = null;
                }
                return this.f47437i;
            }

            private l2<Listener, Listener.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.i> h0() {
                if (this.f47435g == null) {
                    this.f47435g = new l2<>(this.f47434f, (this.f47433e & 1) != 0, H(), O());
                    this.f47434f = null;
                }
                return this.f47435g;
            }

            private l2<Secret, Secret.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.h> i0() {
                if (this.f47439k == null) {
                    this.f47439k = new l2<>(this.f47438j, (this.f47433e & 4) != 0, H(), O());
                    this.f47438j = null;
                }
                return this.f47439k;
            }

            private void j0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    h0();
                    e0();
                    i0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47527d.d(StaticResources.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StaticResources build() {
                StaticResources I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StaticResources I() {
                StaticResources staticResources = new StaticResources(this, (a) null);
                int i9 = this.f47433e;
                l2<Listener, Listener.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.i> l2Var = this.f47435g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f47434f = Collections.unmodifiableList(this.f47434f);
                        this.f47433e &= -2;
                    }
                    staticResources.listeners_ = this.f47434f;
                } else {
                    staticResources.listeners_ = l2Var.e();
                }
                l2<Cluster, Cluster.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.c> l2Var2 = this.f47437i;
                if (l2Var2 == null) {
                    if ((this.f47433e & 2) != 0) {
                        this.f47436h = Collections.unmodifiableList(this.f47436h);
                        this.f47433e &= -3;
                    }
                    staticResources.clusters_ = this.f47436h;
                } else {
                    staticResources.clusters_ = l2Var2.e();
                }
                l2<Secret, Secret.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.h> l2Var3 = this.f47439k;
                if (l2Var3 == null) {
                    if ((this.f47433e & 4) != 0) {
                        this.f47438j = Collections.unmodifiableList(this.f47438j);
                        this.f47433e &= -5;
                    }
                    staticResources.secrets_ = this.f47438j;
                } else {
                    staticResources.secrets_ = l2Var3.e();
                }
                Q();
                return staticResources;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: g0 */
            public StaticResources getDefaultInstanceForType() {
                return StaticResources.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47526c;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.StaticResources.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.StaticResources.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap$StaticResources r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.StaticResources) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.m0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap$StaticResources r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.StaticResources) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.m0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.StaticResources.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap$StaticResources$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: l0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StaticResources) {
                    return m0((StaticResources) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b m0(StaticResources staticResources) {
                if (staticResources == StaticResources.getDefaultInstance()) {
                    return this;
                }
                if (this.f47435g == null) {
                    if (!staticResources.listeners_.isEmpty()) {
                        if (this.f47434f.isEmpty()) {
                            this.f47434f = staticResources.listeners_;
                            this.f47433e &= -2;
                        } else {
                            b0();
                            this.f47434f.addAll(staticResources.listeners_);
                        }
                        R();
                    }
                } else if (!staticResources.listeners_.isEmpty()) {
                    if (this.f47435g.k()) {
                        this.f47435g.f();
                        this.f47435g = null;
                        this.f47434f = staticResources.listeners_;
                        this.f47433e &= -2;
                        this.f47435g = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                    } else {
                        this.f47435g.b(staticResources.listeners_);
                    }
                }
                if (this.f47437i == null) {
                    if (!staticResources.clusters_.isEmpty()) {
                        if (this.f47436h.isEmpty()) {
                            this.f47436h = staticResources.clusters_;
                            this.f47433e &= -3;
                        } else {
                            a0();
                            this.f47436h.addAll(staticResources.clusters_);
                        }
                        R();
                    }
                } else if (!staticResources.clusters_.isEmpty()) {
                    if (this.f47437i.k()) {
                        this.f47437i.f();
                        this.f47437i = null;
                        this.f47436h = staticResources.clusters_;
                        this.f47433e &= -3;
                        this.f47437i = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                    } else {
                        this.f47437i.b(staticResources.clusters_);
                    }
                }
                if (this.f47439k == null) {
                    if (!staticResources.secrets_.isEmpty()) {
                        if (this.f47438j.isEmpty()) {
                            this.f47438j = staticResources.secrets_;
                            this.f47433e &= -5;
                        } else {
                            d0();
                            this.f47438j.addAll(staticResources.secrets_);
                        }
                        R();
                    }
                } else if (!staticResources.secrets_.isEmpty()) {
                    if (this.f47439k.k()) {
                        this.f47439k.f();
                        this.f47439k = null;
                        this.f47438j = staticResources.secrets_;
                        this.f47433e &= -5;
                        this.f47439k = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                    } else {
                        this.f47439k.b(staticResources.secrets_);
                    }
                }
                z(((GeneratedMessageV3) staticResources).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: n0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                this.f47434f = Collections.emptyList();
                this.f47436h = Collections.emptyList();
                this.f47438j = Collections.emptyList();
                j0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47434f = Collections.emptyList();
                this.f47436h = Collections.emptyList();
                this.f47438j = Collections.emptyList();
                j0();
            }
        }

        /* synthetic */ StaticResources(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StaticResources getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47526c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StaticResources parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StaticResources) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StaticResources parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StaticResources> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StaticResources)) {
                return super.equals(obj);
            }
            StaticResources staticResources = (StaticResources) obj;
            return getListenersList().equals(staticResources.getListenersList()) && getClustersList().equals(staticResources.getClustersList()) && getSecretsList().equals(staticResources.getSecretsList()) && this.unknownFields.equals(staticResources.unknownFields);
        }

        public Cluster getClusters(int i9) {
            return this.clusters_.get(i9);
        }

        public int getClustersCount() {
            return this.clusters_.size();
        }

        public List<Cluster> getClustersList() {
            return this.clusters_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.c getClustersOrBuilder(int i9) {
            return this.clusters_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.c> getClustersOrBuilderList() {
            return this.clusters_;
        }

        public Listener getListeners(int i9) {
            return this.listeners_.get(i9);
        }

        public int getListenersCount() {
            return this.listeners_.size();
        }

        public List<Listener> getListenersList() {
            return this.listeners_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.i getListenersOrBuilder(int i9) {
            return this.listeners_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.i> getListenersOrBuilderList() {
            return this.listeners_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StaticResources> getParserForType() {
            return PARSER;
        }

        public Secret getSecrets(int i9) {
            return this.secrets_.get(i9);
        }

        public int getSecretsCount() {
            return this.secrets_.size();
        }

        public List<Secret> getSecretsList() {
            return this.secrets_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.h getSecretsOrBuilder(int i9) {
            return this.secrets_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.h> getSecretsOrBuilderList() {
            return this.secrets_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.listeners_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.listeners_.get(i11));
            }
            for (int i12 = 0; i12 < this.clusters_.size(); i12++) {
                i10 += CodedOutputStream.G(2, this.clusters_.get(i12));
            }
            for (int i13 = 0; i13 < this.secrets_.size(); i13++) {
                i10 += CodedOutputStream.G(3, this.secrets_.get(i13));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
            int hashCode = 779 + getDescriptor().hashCode();
            if (getListenersCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getListenersList().hashCode();
            }
            if (getClustersCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getClustersList().hashCode();
            }
            if (getSecretsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getSecretsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47527d.d(StaticResources.class, b.class);
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
            return new StaticResources();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.listeners_.size(); i9++) {
                codedOutputStream.L0(1, this.listeners_.get(i9));
            }
            for (int i10 = 0; i10 < this.clusters_.size(); i10++) {
                codedOutputStream.L0(2, this.clusters_.get(i10));
            }
            for (int i11 = 0; i11 < this.secrets_.size(); i11++) {
                codedOutputStream.L0(3, this.secrets_.get(i11));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StaticResources(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StaticResources staticResources) {
            return DEFAULT_INSTANCE.toBuilder().m0(staticResources);
        }

        public static StaticResources parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StaticResources(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticResources parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticResources) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticResources parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StaticResources getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).m0(this);
        }

        public static StaticResources parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StaticResources() {
            this.memoizedIsInitialized = (byte) -1;
            this.listeners_ = Collections.emptyList();
            this.clusters_ = Collections.emptyList();
            this.secrets_ = Collections.emptyList();
        }

        public static StaticResources parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StaticResources parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static StaticResources parseFrom(InputStream inputStream) throws IOException {
            return (StaticResources) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static StaticResources parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticResources) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private StaticResources(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    if (!(z11 & true)) {
                                        this.listeners_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.listeners_.add((Listener) pVar.B(Listener.parser(), f0Var));
                                } else if (L == 18) {
                                    if (!(z11 & true)) {
                                        this.clusters_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.clusters_.add((Cluster) pVar.B(Cluster.parser(), f0Var));
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.secrets_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.secrets_.add((Secret) pVar.B(Secret.parser(), f0Var));
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
                        this.listeners_ = Collections.unmodifiableList(this.listeners_);
                    }
                    if (z11 & true) {
                        this.clusters_ = Collections.unmodifiableList(this.clusters_);
                    }
                    if (z11 & true) {
                        this.secrets_ = Collections.unmodifiableList(this.secrets_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static StaticResources parseFrom(p pVar) throws IOException {
            return (StaticResources) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StaticResources parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StaticResources) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum StatsFlushCase implements u0.c {
        STATS_FLUSH_ON_ADMIN(29),
        STATSFLUSH_NOT_SET(0);
        
        private final int value;

        StatsFlushCase(int i9) {
            this.value = i9;
        }

        public static StatsFlushCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 29) {
                    return null;
                }
                return STATS_FLUSH_ON_ADMIN;
            }
            return STATSFLUSH_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static StatsFlushCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Bootstrap> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Bootstrap m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Bootstrap(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47440a;

        static {
            int[] iArr = new int[StatsFlushCase.values().length];
            f47440a = iArr;
            try {
                iArr[StatsFlushCase.STATS_FLUSH_ON_ADMIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47440a[StatsFlushCase.STATSFLUSH_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.b {
        private q2<Watchdog, Watchdog.b, i> A;
        private Watchdogs B;
        private List<FatalAction> B3;
        private q2<Watchdogs, Watchdogs.b, j> C;
        private List<ConfigSource> C4;
        private Tracing D;
        private l2<ConfigSource, ConfigSource.c, k> D4;
        private q2<Tracing, Tracing.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.g> E;
        private ConfigSource E4;
        private LayeredRuntime F;
        private q2<ConfigSource, ConfigSource.c, k> F4;
        private q2<LayeredRuntime, LayeredRuntime.b, g> G;
        private Object G4;
        private Admin H;
        private g1<String, TypedExtensionConfig> H4;
        private q2<Admin, Admin.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.a> I;
        private List<CustomInlineHeader> I4;
        private OverloadManager J;
        private l2<CustomInlineHeader, CustomInlineHeader.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.e> J4;
        private q2<OverloadManager, OverloadManager.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.c> K;
        private boolean L;
        private Object M;
        private UInt64Value N;
        private q2<UInt64Value, UInt64Value.b, f3> O;
        private boolean P;
        private DnsResolutionConfig Q;
        private q2<DnsResolutionConfig, DnsResolutionConfig.b, o> R;
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> V1;
        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> V2;
        private l2<FatalAction, FatalAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.f> V3;

        /* renamed from: a1  reason: collision with root package name */
        private TypedExtensionConfig f47441a1;

        /* renamed from: a2  reason: collision with root package name */
        private List<TypedExtensionConfig> f47442a2;

        /* renamed from: e  reason: collision with root package name */
        private int f47443e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47444f;

        /* renamed from: g  reason: collision with root package name */
        private int f47445g;

        /* renamed from: h  reason: collision with root package name */
        private Node f47446h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Node, Node.c, l0> f47447i;

        /* renamed from: j  reason: collision with root package name */
        private z0 f47448j;

        /* renamed from: k  reason: collision with root package name */
        private StaticResources f47449k;

        /* renamed from: l  reason: collision with root package name */
        private q2<StaticResources, StaticResources.b, f> f47450l;

        /* renamed from: m  reason: collision with root package name */
        private DynamicResources f47451m;

        /* renamed from: n  reason: collision with root package name */
        private q2<DynamicResources, DynamicResources.b, e> f47452n;

        /* renamed from: o  reason: collision with root package name */
        private ClusterManager f47453o;

        /* renamed from: p  reason: collision with root package name */
        private q2<ClusterManager, ClusterManager.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.d> f47454p;

        /* renamed from: q  reason: collision with root package name */
        private ApiConfigSource f47455q;

        /* renamed from: r  reason: collision with root package name */
        private q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> f47456r;

        /* renamed from: s  reason: collision with root package name */
        private Object f47457s;

        /* renamed from: t  reason: collision with root package name */
        private List<StatsSink> f47458t;

        /* renamed from: u  reason: collision with root package name */
        private l2<StatsSink, StatsSink.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.e> f47459u;

        /* renamed from: v  reason: collision with root package name */
        private StatsConfig f47460v;

        /* renamed from: w  reason: collision with root package name */
        private q2<StatsConfig, StatsConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.b> f47461w;

        /* renamed from: x  reason: collision with root package name */
        private Duration f47462x;

        /* renamed from: y  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47463y;

        /* renamed from: z  reason: collision with root package name */
        private Watchdog f47464z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47445g & 4) == 0) {
                this.f47442a2 = new ArrayList(this.f47442a2);
                this.f47445g |= 4;
            }
        }

        private void b0() {
            if ((this.f47445g & 16) == 0) {
                this.C4 = new ArrayList(this.C4);
                this.f47445g |= 16;
            }
        }

        private void d0() {
            if ((this.f47445g & 8) == 0) {
                this.B3 = new ArrayList(this.B3);
                this.f47445g |= 8;
            }
        }

        private void e0() {
            if ((this.f47445g & 64) == 0) {
                this.I4 = new ArrayList(this.I4);
                this.f47445g |= 64;
            }
        }

        private void g0() {
            if ((this.f47445g & 1) == 0) {
                this.f47448j = new y0(this.f47448j);
                this.f47445g |= 1;
            }
        }

        private void h0() {
            if ((this.f47445g & 2) == 0) {
                this.f47458t = new ArrayList(this.f47458t);
                this.f47445g |= 2;
            }
        }

        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> i0() {
            if (this.V2 == null) {
                this.V2 = new l2<>(this.f47442a2, (this.f47445g & 4) != 0, H(), O());
                this.f47442a2 = null;
            }
            return this.V2;
        }

        private l2<ConfigSource, ConfigSource.c, k> j0() {
            if (this.D4 == null) {
                this.D4 = new l2<>(this.C4, (this.f47445g & 16) != 0, H(), O());
                this.C4 = null;
            }
            return this.D4;
        }

        private l2<FatalAction, FatalAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.f> l0() {
            if (this.V3 == null) {
                this.V3 = new l2<>(this.B3, (this.f47445g & 8) != 0, H(), O());
                this.B3 = null;
            }
            return this.V3;
        }

        private l2<CustomInlineHeader, CustomInlineHeader.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.e> m0() {
            if (this.J4 == null) {
                this.J4 = new l2<>(this.I4, (this.f47445g & 64) != 0, H(), O());
                this.I4 = null;
            }
            return this.J4;
        }

        private l2<StatsSink, StatsSink.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.e> n0() {
            if (this.f47459u == null) {
                this.f47459u = new l2<>(this.f47458t, (this.f47445g & 2) != 0, H(), O());
                this.f47458t = null;
            }
            return this.f47459u;
        }

        private g1<String, TypedExtensionConfig> o0() {
            g1<String, TypedExtensionConfig> g1Var = this.H4;
            return g1Var == null ? g1.g(d.f47465a) : g1Var;
        }

        private g1<String, TypedExtensionConfig> q0() {
            R();
            if (this.H4 == null) {
                this.H4 = g1.p(d.f47465a);
            }
            if (!this.H4.m()) {
                this.H4 = this.H4.f();
            }
            return this.H4;
        }

        private void r0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                n0();
                i0();
                l0();
                j0();
                m0();
            }
        }

        public c B0(Bootstrap bootstrap) {
            if (bootstrap == Bootstrap.getDefaultInstance()) {
                return this;
            }
            if (bootstrap.hasNode()) {
                I0(bootstrap.getNode());
            }
            if (!bootstrap.nodeContextParams_.isEmpty()) {
                if (this.f47448j.isEmpty()) {
                    this.f47448j = bootstrap.nodeContextParams_;
                    this.f47445g &= -2;
                } else {
                    g0();
                    this.f47448j.addAll(bootstrap.nodeContextParams_);
                }
                R();
            }
            if (bootstrap.hasStaticResources()) {
                K0(bootstrap.getStaticResources());
            }
            if (bootstrap.hasDynamicResources()) {
                x0(bootstrap.getDynamicResources());
            }
            if (bootstrap.hasClusterManager()) {
                t0(bootstrap.getClusterManager());
            }
            if (bootstrap.hasHdsConfig()) {
                D0(bootstrap.getHdsConfig());
            }
            if (!bootstrap.getFlagsPath().isEmpty()) {
                this.f47457s = bootstrap.flagsPath_;
                R();
            }
            if (this.f47459u == null) {
                if (!bootstrap.statsSinks_.isEmpty()) {
                    if (this.f47458t.isEmpty()) {
                        this.f47458t = bootstrap.statsSinks_;
                        this.f47445g &= -3;
                    } else {
                        h0();
                        this.f47458t.addAll(bootstrap.statsSinks_);
                    }
                    R();
                }
            } else if (!bootstrap.statsSinks_.isEmpty()) {
                if (this.f47459u.k()) {
                    this.f47459u.f();
                    this.f47459u = null;
                    this.f47458t = bootstrap.statsSinks_;
                    this.f47445g &= -3;
                    this.f47459u = GeneratedMessageV3.alwaysUseFieldBuilders ? n0() : null;
                } else {
                    this.f47459u.b(bootstrap.statsSinks_);
                }
            }
            if (bootstrap.hasStatsConfig()) {
                L0(bootstrap.getStatsConfig());
            }
            if (bootstrap.hasStatsFlushInterval()) {
                M0(bootstrap.getStatsFlushInterval());
            }
            if (bootstrap.hasWatchdog()) {
                T0(bootstrap.getWatchdog());
            }
            if (bootstrap.hasWatchdogs()) {
                U0(bootstrap.getWatchdogs());
            }
            if (bootstrap.hasTracing()) {
                O0(bootstrap.getTracing());
            }
            if (bootstrap.hasLayeredRuntime()) {
                H0(bootstrap.getLayeredRuntime());
            }
            if (bootstrap.hasAdmin()) {
                s0(bootstrap.getAdmin());
            }
            if (bootstrap.hasOverloadManager()) {
                J0(bootstrap.getOverloadManager());
            }
            if (bootstrap.getEnableDispatcherStats()) {
                V0(bootstrap.getEnableDispatcherStats());
            }
            if (!bootstrap.getHeaderPrefix().isEmpty()) {
                this.M = bootstrap.headerPrefix_;
                R();
            }
            if (bootstrap.hasStatsServerVersionOverride()) {
                N0(bootstrap.getStatsServerVersionOverride());
            }
            if (bootstrap.getUseTcpForDnsLookups()) {
                Z0(bootstrap.getUseTcpForDnsLookups());
            }
            if (bootstrap.hasDnsResolutionConfig()) {
                v0(bootstrap.getDnsResolutionConfig());
            }
            if (bootstrap.hasTypedDnsResolverConfig()) {
                Q0(bootstrap.getTypedDnsResolverConfig());
            }
            if (this.V2 == null) {
                if (!bootstrap.bootstrapExtensions_.isEmpty()) {
                    if (this.f47442a2.isEmpty()) {
                        this.f47442a2 = bootstrap.bootstrapExtensions_;
                        this.f47445g &= -5;
                    } else {
                        a0();
                        this.f47442a2.addAll(bootstrap.bootstrapExtensions_);
                    }
                    R();
                }
            } else if (!bootstrap.bootstrapExtensions_.isEmpty()) {
                if (this.V2.k()) {
                    this.V2.f();
                    this.V2 = null;
                    this.f47442a2 = bootstrap.bootstrapExtensions_;
                    this.f47445g &= -5;
                    this.V2 = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.V2.b(bootstrap.bootstrapExtensions_);
                }
            }
            if (this.V3 == null) {
                if (!bootstrap.fatalActions_.isEmpty()) {
                    if (this.B3.isEmpty()) {
                        this.B3 = bootstrap.fatalActions_;
                        this.f47445g &= -9;
                    } else {
                        d0();
                        this.B3.addAll(bootstrap.fatalActions_);
                    }
                    R();
                }
            } else if (!bootstrap.fatalActions_.isEmpty()) {
                if (this.V3.k()) {
                    this.V3.f();
                    this.V3 = null;
                    this.B3 = bootstrap.fatalActions_;
                    this.f47445g &= -9;
                    this.V3 = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                } else {
                    this.V3.b(bootstrap.fatalActions_);
                }
            }
            if (this.D4 == null) {
                if (!bootstrap.configSources_.isEmpty()) {
                    if (this.C4.isEmpty()) {
                        this.C4 = bootstrap.configSources_;
                        this.f47445g &= -17;
                    } else {
                        b0();
                        this.C4.addAll(bootstrap.configSources_);
                    }
                    R();
                }
            } else if (!bootstrap.configSources_.isEmpty()) {
                if (this.D4.k()) {
                    this.D4.f();
                    this.D4 = null;
                    this.C4 = bootstrap.configSources_;
                    this.f47445g &= -17;
                    this.D4 = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.D4.b(bootstrap.configSources_);
                }
            }
            if (bootstrap.hasDefaultConfigSource()) {
                u0(bootstrap.getDefaultConfigSource());
            }
            if (!bootstrap.getDefaultSocketInterface().isEmpty()) {
                this.G4 = bootstrap.defaultSocketInterface_;
                R();
            }
            q0().o(bootstrap.internalGetCertificateProviderInstances());
            if (this.J4 == null) {
                if (!bootstrap.inlineHeaders_.isEmpty()) {
                    if (this.I4.isEmpty()) {
                        this.I4 = bootstrap.inlineHeaders_;
                        this.f47445g &= -65;
                    } else {
                        e0();
                        this.I4.addAll(bootstrap.inlineHeaders_);
                    }
                    R();
                }
            } else if (!bootstrap.inlineHeaders_.isEmpty()) {
                if (this.J4.k()) {
                    this.J4.f();
                    this.J4 = null;
                    this.I4 = bootstrap.inlineHeaders_;
                    this.f47445g &= -65;
                    this.J4 = GeneratedMessageV3.alwaysUseFieldBuilders ? m0() : null;
                } else {
                    this.J4.b(bootstrap.inlineHeaders_);
                }
            }
            if (b.f47440a[bootstrap.getStatsFlushCase().ordinal()] == 1) {
                X0(bootstrap.getStatsFlushOnAdmin());
            }
            z(((GeneratedMessageV3) bootstrap).unknownFields);
            R();
            return this;
        }

        public c D0(ApiConfigSource apiConfigSource) {
            q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> q2Var = this.f47456r;
            if (q2Var == null) {
                ApiConfigSource apiConfigSource2 = this.f47455q;
                if (apiConfigSource2 != null) {
                    this.f47455q = ApiConfigSource.newBuilder(apiConfigSource2).j0(apiConfigSource).I();
                } else {
                    this.f47455q = apiConfigSource;
                }
                R();
            } else {
                q2Var.e(apiConfigSource);
            }
            return this;
        }

        public c H0(LayeredRuntime layeredRuntime) {
            q2<LayeredRuntime, LayeredRuntime.b, g> q2Var = this.G;
            if (q2Var == null) {
                LayeredRuntime layeredRuntime2 = this.F;
                if (layeredRuntime2 != null) {
                    this.F = LayeredRuntime.newBuilder(layeredRuntime2).i0(layeredRuntime).I();
                } else {
                    this.F = layeredRuntime;
                }
                R();
            } else {
                q2Var.e(layeredRuntime);
            }
            return this;
        }

        public c I0(Node node) {
            q2<Node, Node.c, l0> q2Var = this.f47447i;
            if (q2Var == null) {
                Node node2 = this.f47446h;
                if (node2 != null) {
                    this.f47446h = Node.newBuilder(node2).q0(node).I();
                } else {
                    this.f47446h = node;
                }
                R();
            } else {
                q2Var.e(node);
            }
            return this;
        }

        public c J0(OverloadManager overloadManager) {
            q2<OverloadManager, OverloadManager.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.c> q2Var = this.K;
            if (q2Var == null) {
                OverloadManager overloadManager2 = this.J;
                if (overloadManager2 != null) {
                    this.J = OverloadManager.newBuilder(overloadManager2).l0(overloadManager).I();
                } else {
                    this.J = overloadManager;
                }
                R();
            } else {
                q2Var.e(overloadManager);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47525b.d(Bootstrap.class, c.class);
        }

        public c K0(StaticResources staticResources) {
            q2<StaticResources, StaticResources.b, f> q2Var = this.f47450l;
            if (q2Var == null) {
                StaticResources staticResources2 = this.f47449k;
                if (staticResources2 != null) {
                    this.f47449k = StaticResources.newBuilder(staticResources2).m0(staticResources).I();
                } else {
                    this.f47449k = staticResources;
                }
                R();
            } else {
                q2Var.e(staticResources);
            }
            return this;
        }

        public c L0(StatsConfig statsConfig) {
            q2<StatsConfig, StatsConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.b> q2Var = this.f47461w;
            if (q2Var == null) {
                StatsConfig statsConfig2 = this.f47460v;
                if (statsConfig2 != null) {
                    this.f47460v = StatsConfig.newBuilder(statsConfig2).k0(statsConfig).I();
                } else {
                    this.f47460v = statsConfig;
                }
                R();
            } else {
                q2Var.e(statsConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 25) {
                return o0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        public c M0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47463y;
            if (q2Var == null) {
                Duration duration2 = this.f47462x;
                if (duration2 != null) {
                    this.f47462x = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47462x = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 25) {
                return q0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        public c N0(UInt64Value uInt64Value) {
            q2<UInt64Value, UInt64Value.b, f3> q2Var = this.O;
            if (q2Var == null) {
                UInt64Value uInt64Value2 = this.N;
                if (uInt64Value2 != null) {
                    this.N = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                } else {
                    this.N = uInt64Value;
                }
                R();
            } else {
                q2Var.e(uInt64Value);
            }
            return this;
        }

        @Deprecated
        public c O0(Tracing tracing) {
            q2<Tracing, Tracing.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.g> q2Var = this.E;
            if (q2Var == null) {
                Tracing tracing2 = this.D;
                if (tracing2 != null) {
                    this.D = Tracing.newBuilder(tracing2).g0(tracing).I();
                } else {
                    this.D = tracing;
                }
                R();
            } else {
                q2Var.e(tracing);
            }
            return this;
        }

        public c Q0(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.V1;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.f47441a1;
                if (typedExtensionConfig2 != null) {
                    this.f47441a1 = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.f47441a1 = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: S0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Deprecated
        public c T0(Watchdog watchdog) {
            q2<Watchdog, Watchdog.b, i> q2Var = this.A;
            if (q2Var == null) {
                Watchdog watchdog2 = this.f47464z;
                if (watchdog2 != null) {
                    this.f47464z = Watchdog.newBuilder(watchdog2).i0(watchdog).I();
                } else {
                    this.f47464z = watchdog;
                }
                R();
            } else {
                q2Var.e(watchdog);
            }
            return this;
        }

        public c U0(Watchdogs watchdogs) {
            q2<Watchdogs, Watchdogs.b, j> q2Var = this.C;
            if (q2Var == null) {
                Watchdogs watchdogs2 = this.B;
                if (watchdogs2 != null) {
                    this.B = Watchdogs.newBuilder(watchdogs2).g0(watchdogs).I();
                } else {
                    this.B = watchdogs;
                }
                R();
            } else {
                q2Var.e(watchdogs);
            }
            return this;
        }

        public c V0(boolean z10) {
            this.L = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Bootstrap build() {
            Bootstrap I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        public c X0(boolean z10) {
            this.f47443e = 29;
            this.f47444f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Bootstrap I() {
            Bootstrap bootstrap = new Bootstrap(this, (a) null);
            q2<Node, Node.c, l0> q2Var = this.f47447i;
            if (q2Var == null) {
                bootstrap.node_ = this.f47446h;
            } else {
                bootstrap.node_ = q2Var.b();
            }
            if ((this.f47445g & 1) != 0) {
                this.f47448j = this.f47448j.V0();
                this.f47445g &= -2;
            }
            bootstrap.nodeContextParams_ = this.f47448j;
            q2<StaticResources, StaticResources.b, f> q2Var2 = this.f47450l;
            if (q2Var2 == null) {
                bootstrap.staticResources_ = this.f47449k;
            } else {
                bootstrap.staticResources_ = q2Var2.b();
            }
            q2<DynamicResources, DynamicResources.b, e> q2Var3 = this.f47452n;
            if (q2Var3 == null) {
                bootstrap.dynamicResources_ = this.f47451m;
            } else {
                bootstrap.dynamicResources_ = q2Var3.b();
            }
            q2<ClusterManager, ClusterManager.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.d> q2Var4 = this.f47454p;
            if (q2Var4 == null) {
                bootstrap.clusterManager_ = this.f47453o;
            } else {
                bootstrap.clusterManager_ = q2Var4.b();
            }
            q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> q2Var5 = this.f47456r;
            if (q2Var5 == null) {
                bootstrap.hdsConfig_ = this.f47455q;
            } else {
                bootstrap.hdsConfig_ = q2Var5.b();
            }
            bootstrap.flagsPath_ = this.f47457s;
            l2<StatsSink, StatsSink.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.e> l2Var = this.f47459u;
            if (l2Var == null) {
                if ((this.f47445g & 2) != 0) {
                    this.f47458t = Collections.unmodifiableList(this.f47458t);
                    this.f47445g &= -3;
                }
                bootstrap.statsSinks_ = this.f47458t;
            } else {
                bootstrap.statsSinks_ = l2Var.e();
            }
            q2<StatsConfig, StatsConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.b> q2Var6 = this.f47461w;
            if (q2Var6 == null) {
                bootstrap.statsConfig_ = this.f47460v;
            } else {
                bootstrap.statsConfig_ = q2Var6.b();
            }
            q2<Duration, Duration.b, v> q2Var7 = this.f47463y;
            if (q2Var7 == null) {
                bootstrap.statsFlushInterval_ = this.f47462x;
            } else {
                bootstrap.statsFlushInterval_ = q2Var7.b();
            }
            if (this.f47443e == 29) {
                bootstrap.statsFlush_ = this.f47444f;
            }
            q2<Watchdog, Watchdog.b, i> q2Var8 = this.A;
            if (q2Var8 == null) {
                bootstrap.watchdog_ = this.f47464z;
            } else {
                bootstrap.watchdog_ = q2Var8.b();
            }
            q2<Watchdogs, Watchdogs.b, j> q2Var9 = this.C;
            if (q2Var9 == null) {
                bootstrap.watchdogs_ = this.B;
            } else {
                bootstrap.watchdogs_ = q2Var9.b();
            }
            q2<Tracing, Tracing.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.g> q2Var10 = this.E;
            if (q2Var10 == null) {
                bootstrap.tracing_ = this.D;
            } else {
                bootstrap.tracing_ = q2Var10.b();
            }
            q2<LayeredRuntime, LayeredRuntime.b, g> q2Var11 = this.G;
            if (q2Var11 == null) {
                bootstrap.layeredRuntime_ = this.F;
            } else {
                bootstrap.layeredRuntime_ = q2Var11.b();
            }
            q2<Admin, Admin.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.a> q2Var12 = this.I;
            if (q2Var12 == null) {
                bootstrap.admin_ = this.H;
            } else {
                bootstrap.admin_ = q2Var12.b();
            }
            q2<OverloadManager, OverloadManager.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.c> q2Var13 = this.K;
            if (q2Var13 == null) {
                bootstrap.overloadManager_ = this.J;
            } else {
                bootstrap.overloadManager_ = q2Var13.b();
            }
            bootstrap.enableDispatcherStats_ = this.L;
            bootstrap.headerPrefix_ = this.M;
            q2<UInt64Value, UInt64Value.b, f3> q2Var14 = this.O;
            if (q2Var14 == null) {
                bootstrap.statsServerVersionOverride_ = this.N;
            } else {
                bootstrap.statsServerVersionOverride_ = q2Var14.b();
            }
            bootstrap.useTcpForDnsLookups_ = this.P;
            q2<DnsResolutionConfig, DnsResolutionConfig.b, o> q2Var15 = this.R;
            if (q2Var15 == null) {
                bootstrap.dnsResolutionConfig_ = this.Q;
            } else {
                bootstrap.dnsResolutionConfig_ = q2Var15.b();
            }
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var16 = this.V1;
            if (q2Var16 == null) {
                bootstrap.typedDnsResolverConfig_ = this.f47441a1;
            } else {
                bootstrap.typedDnsResolverConfig_ = q2Var16.b();
            }
            l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> l2Var2 = this.V2;
            if (l2Var2 == null) {
                if ((this.f47445g & 4) != 0) {
                    this.f47442a2 = Collections.unmodifiableList(this.f47442a2);
                    this.f47445g &= -5;
                }
                bootstrap.bootstrapExtensions_ = this.f47442a2;
            } else {
                bootstrap.bootstrapExtensions_ = l2Var2.e();
            }
            l2<FatalAction, FatalAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.f> l2Var3 = this.V3;
            if (l2Var3 == null) {
                if ((this.f47445g & 8) != 0) {
                    this.B3 = Collections.unmodifiableList(this.B3);
                    this.f47445g &= -9;
                }
                bootstrap.fatalActions_ = this.B3;
            } else {
                bootstrap.fatalActions_ = l2Var3.e();
            }
            l2<ConfigSource, ConfigSource.c, k> l2Var4 = this.D4;
            if (l2Var4 == null) {
                if ((this.f47445g & 16) != 0) {
                    this.C4 = Collections.unmodifiableList(this.C4);
                    this.f47445g &= -17;
                }
                bootstrap.configSources_ = this.C4;
            } else {
                bootstrap.configSources_ = l2Var4.e();
            }
            q2<ConfigSource, ConfigSource.c, k> q2Var17 = this.F4;
            if (q2Var17 == null) {
                bootstrap.defaultConfigSource_ = this.E4;
            } else {
                bootstrap.defaultConfigSource_ = q2Var17.b();
            }
            bootstrap.defaultSocketInterface_ = this.G4;
            bootstrap.certificateProviderInstances_ = o0();
            bootstrap.certificateProviderInstances_.n();
            l2<CustomInlineHeader, CustomInlineHeader.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.e> l2Var5 = this.J4;
            if (l2Var5 == null) {
                if ((this.f47445g & 64) != 0) {
                    this.I4 = Collections.unmodifiableList(this.I4);
                    this.f47445g &= -65;
                }
                bootstrap.inlineHeaders_ = this.I4;
            } else {
                bootstrap.inlineHeaders_ = l2Var5.e();
            }
            bootstrap.statsFlushCase_ = this.f47443e;
            Q();
            return bootstrap;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: Y0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Deprecated
        public c Z0(boolean z10) {
            this.P = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47524a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: k0 */
        public Bootstrap getDefaultInstanceForType() {
            return Bootstrap.getDefaultInstance();
        }

        public c s0(Admin admin) {
            q2<Admin, Admin.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.a> q2Var = this.I;
            if (q2Var == null) {
                Admin admin2 = this.H;
                if (admin2 != null) {
                    this.H = Admin.newBuilder(admin2).l0(admin).I();
                } else {
                    this.H = admin;
                }
                R();
            } else {
                q2Var.e(admin);
            }
            return this;
        }

        public c t0(ClusterManager clusterManager) {
            q2<ClusterManager, ClusterManager.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.d> q2Var = this.f47454p;
            if (q2Var == null) {
                ClusterManager clusterManager2 = this.f47453o;
                if (clusterManager2 != null) {
                    this.f47453o = ClusterManager.newBuilder(clusterManager2).g0(clusterManager).I();
                } else {
                    this.f47453o = clusterManager;
                }
                R();
            } else {
                q2Var.e(clusterManager);
            }
            return this;
        }

        public c u0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, k> q2Var = this.F4;
            if (q2Var == null) {
                ConfigSource configSource2 = this.E4;
                if (configSource2 != null) {
                    this.E4 = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                } else {
                    this.E4 = configSource;
                }
                R();
            } else {
                q2Var.e(configSource);
            }
            return this;
        }

        public c v0(DnsResolutionConfig dnsResolutionConfig) {
            q2<DnsResolutionConfig, DnsResolutionConfig.b, o> q2Var = this.R;
            if (q2Var == null) {
                DnsResolutionConfig dnsResolutionConfig2 = this.Q;
                if (dnsResolutionConfig2 != null) {
                    this.Q = DnsResolutionConfig.newBuilder(dnsResolutionConfig2).j0(dnsResolutionConfig).I();
                } else {
                    this.Q = dnsResolutionConfig;
                }
                R();
            } else {
                q2Var.e(dnsResolutionConfig);
            }
            return this;
        }

        public c x0(DynamicResources dynamicResources) {
            q2<DynamicResources, DynamicResources.b, e> q2Var = this.f47452n;
            if (q2Var == null) {
                DynamicResources dynamicResources2 = this.f47451m;
                if (dynamicResources2 != null) {
                    this.f47451m = DynamicResources.newBuilder(dynamicResources2).i0(dynamicResources).I();
                } else {
                    this.f47451m = dynamicResources;
                }
                R();
            } else {
                q2Var.e(dynamicResources);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: y0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.access$6900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.B0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.B0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: z0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Bootstrap) {
                return B0((Bootstrap) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47443e = 0;
            this.f47448j = y0.f15344d;
            this.f47457s = "";
            this.f47458t = Collections.emptyList();
            this.M = "";
            this.f47442a2 = Collections.emptyList();
            this.B3 = Collections.emptyList();
            this.C4 = Collections.emptyList();
            this.G4 = "";
            this.I4 = Collections.emptyList();
            r0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47443e = 0;
            this.f47448j = y0.f15344d;
            this.f47457s = "";
            this.f47458t = Collections.emptyList();
            this.M = "";
            this.f47442a2 = Collections.emptyList();
            this.B3 = Collections.emptyList();
            this.C4 = Collections.emptyList();
            this.G4 = "";
            this.I4 = Collections.emptyList();
            r0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, TypedExtensionConfig> f47465a = e1.k(io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47530g, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, TypedExtensionConfig.getDefaultInstance());
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface f extends r1 {
    }

    /* synthetic */ Bootstrap(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Bootstrap getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47524a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, TypedExtensionConfig> internalGetCertificateProviderInstances() {
        g1<String, TypedExtensionConfig> g1Var = this.certificateProviderInstances_;
        return g1Var == null ? g1.g(d.f47465a) : g1Var;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Bootstrap parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Bootstrap) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Bootstrap parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Bootstrap> parser() {
        return PARSER;
    }

    public boolean containsCertificateProviderInstances(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetCertificateProviderInstances().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Bootstrap)) {
            return super.equals(obj);
        }
        Bootstrap bootstrap = (Bootstrap) obj;
        if (hasNode() != bootstrap.hasNode()) {
            return false;
        }
        if ((!hasNode() || getNode().equals(bootstrap.getNode())) && m1608getNodeContextParamsList().equals(bootstrap.m1608getNodeContextParamsList()) && hasStaticResources() == bootstrap.hasStaticResources()) {
            if ((!hasStaticResources() || getStaticResources().equals(bootstrap.getStaticResources())) && hasDynamicResources() == bootstrap.hasDynamicResources()) {
                if ((!hasDynamicResources() || getDynamicResources().equals(bootstrap.getDynamicResources())) && hasClusterManager() == bootstrap.hasClusterManager()) {
                    if ((!hasClusterManager() || getClusterManager().equals(bootstrap.getClusterManager())) && hasHdsConfig() == bootstrap.hasHdsConfig()) {
                        if ((!hasHdsConfig() || getHdsConfig().equals(bootstrap.getHdsConfig())) && getFlagsPath().equals(bootstrap.getFlagsPath()) && getStatsSinksList().equals(bootstrap.getStatsSinksList()) && hasStatsConfig() == bootstrap.hasStatsConfig()) {
                            if ((!hasStatsConfig() || getStatsConfig().equals(bootstrap.getStatsConfig())) && hasStatsFlushInterval() == bootstrap.hasStatsFlushInterval()) {
                                if ((!hasStatsFlushInterval() || getStatsFlushInterval().equals(bootstrap.getStatsFlushInterval())) && hasWatchdog() == bootstrap.hasWatchdog()) {
                                    if ((!hasWatchdog() || getWatchdog().equals(bootstrap.getWatchdog())) && hasWatchdogs() == bootstrap.hasWatchdogs()) {
                                        if ((!hasWatchdogs() || getWatchdogs().equals(bootstrap.getWatchdogs())) && hasTracing() == bootstrap.hasTracing()) {
                                            if ((!hasTracing() || getTracing().equals(bootstrap.getTracing())) && hasLayeredRuntime() == bootstrap.hasLayeredRuntime()) {
                                                if ((!hasLayeredRuntime() || getLayeredRuntime().equals(bootstrap.getLayeredRuntime())) && hasAdmin() == bootstrap.hasAdmin()) {
                                                    if ((!hasAdmin() || getAdmin().equals(bootstrap.getAdmin())) && hasOverloadManager() == bootstrap.hasOverloadManager()) {
                                                        if ((!hasOverloadManager() || getOverloadManager().equals(bootstrap.getOverloadManager())) && getEnableDispatcherStats() == bootstrap.getEnableDispatcherStats() && getHeaderPrefix().equals(bootstrap.getHeaderPrefix()) && hasStatsServerVersionOverride() == bootstrap.hasStatsServerVersionOverride()) {
                                                            if ((!hasStatsServerVersionOverride() || getStatsServerVersionOverride().equals(bootstrap.getStatsServerVersionOverride())) && getUseTcpForDnsLookups() == bootstrap.getUseTcpForDnsLookups() && hasDnsResolutionConfig() == bootstrap.hasDnsResolutionConfig()) {
                                                                if ((!hasDnsResolutionConfig() || getDnsResolutionConfig().equals(bootstrap.getDnsResolutionConfig())) && hasTypedDnsResolverConfig() == bootstrap.hasTypedDnsResolverConfig()) {
                                                                    if ((!hasTypedDnsResolverConfig() || getTypedDnsResolverConfig().equals(bootstrap.getTypedDnsResolverConfig())) && getBootstrapExtensionsList().equals(bootstrap.getBootstrapExtensionsList()) && getFatalActionsList().equals(bootstrap.getFatalActionsList()) && getConfigSourcesList().equals(bootstrap.getConfigSourcesList()) && hasDefaultConfigSource() == bootstrap.hasDefaultConfigSource()) {
                                                                        if ((!hasDefaultConfigSource() || getDefaultConfigSource().equals(bootstrap.getDefaultConfigSource())) && getDefaultSocketInterface().equals(bootstrap.getDefaultSocketInterface()) && internalGetCertificateProviderInstances().equals(bootstrap.internalGetCertificateProviderInstances()) && getInlineHeadersList().equals(bootstrap.getInlineHeadersList()) && getStatsFlushCase().equals(bootstrap.getStatsFlushCase())) {
                                                                            return (this.statsFlushCase_ != 29 || getStatsFlushOnAdmin() == bootstrap.getStatsFlushOnAdmin()) && this.unknownFields.equals(bootstrap.unknownFields);
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

    public Admin getAdmin() {
        Admin admin = this.admin_;
        return admin == null ? Admin.getDefaultInstance() : admin;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.a getAdminOrBuilder() {
        return getAdmin();
    }

    public TypedExtensionConfig getBootstrapExtensions(int i9) {
        return this.bootstrapExtensions_.get(i9);
    }

    public int getBootstrapExtensionsCount() {
        return this.bootstrapExtensions_.size();
    }

    public List<TypedExtensionConfig> getBootstrapExtensionsList() {
        return this.bootstrapExtensions_;
    }

    public i1 getBootstrapExtensionsOrBuilder(int i9) {
        return this.bootstrapExtensions_.get(i9);
    }

    public List<? extends i1> getBootstrapExtensionsOrBuilderList() {
        return this.bootstrapExtensions_;
    }

    @Deprecated
    public Map<String, TypedExtensionConfig> getCertificateProviderInstances() {
        return getCertificateProviderInstancesMap();
    }

    public int getCertificateProviderInstancesCount() {
        return internalGetCertificateProviderInstances().i().size();
    }

    public Map<String, TypedExtensionConfig> getCertificateProviderInstancesMap() {
        return internalGetCertificateProviderInstances().i();
    }

    public TypedExtensionConfig getCertificateProviderInstancesOrDefault(String str, TypedExtensionConfig typedExtensionConfig) {
        Objects.requireNonNull(str, "map key");
        Map<String, TypedExtensionConfig> i9 = internalGetCertificateProviderInstances().i();
        return i9.containsKey(str) ? i9.get(str) : typedExtensionConfig;
    }

    public TypedExtensionConfig getCertificateProviderInstancesOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, TypedExtensionConfig> i9 = internalGetCertificateProviderInstances().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public ClusterManager getClusterManager() {
        ClusterManager clusterManager = this.clusterManager_;
        return clusterManager == null ? ClusterManager.getDefaultInstance() : clusterManager;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.d getClusterManagerOrBuilder() {
        return getClusterManager();
    }

    public ConfigSource getConfigSources(int i9) {
        return this.configSources_.get(i9);
    }

    public int getConfigSourcesCount() {
        return this.configSources_.size();
    }

    public List<ConfigSource> getConfigSourcesList() {
        return this.configSources_;
    }

    public k getConfigSourcesOrBuilder(int i9) {
        return this.configSources_.get(i9);
    }

    public List<? extends k> getConfigSourcesOrBuilderList() {
        return this.configSources_;
    }

    public ConfigSource getDefaultConfigSource() {
        ConfigSource configSource = this.defaultConfigSource_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public k getDefaultConfigSourceOrBuilder() {
        return getDefaultConfigSource();
    }

    public String getDefaultSocketInterface() {
        Object obj = this.defaultSocketInterface_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.defaultSocketInterface_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDefaultSocketInterfaceBytes() {
        Object obj = this.defaultSocketInterface_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.defaultSocketInterface_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public DnsResolutionConfig getDnsResolutionConfig() {
        DnsResolutionConfig dnsResolutionConfig = this.dnsResolutionConfig_;
        return dnsResolutionConfig == null ? DnsResolutionConfig.getDefaultInstance() : dnsResolutionConfig;
    }

    public o getDnsResolutionConfigOrBuilder() {
        return getDnsResolutionConfig();
    }

    public DynamicResources getDynamicResources() {
        DynamicResources dynamicResources = this.dynamicResources_;
        return dynamicResources == null ? DynamicResources.getDefaultInstance() : dynamicResources;
    }

    public e getDynamicResourcesOrBuilder() {
        return getDynamicResources();
    }

    public boolean getEnableDispatcherStats() {
        return this.enableDispatcherStats_;
    }

    public FatalAction getFatalActions(int i9) {
        return this.fatalActions_.get(i9);
    }

    public int getFatalActionsCount() {
        return this.fatalActions_.size();
    }

    public List<FatalAction> getFatalActionsList() {
        return this.fatalActions_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.f getFatalActionsOrBuilder(int i9) {
        return this.fatalActions_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.f> getFatalActionsOrBuilderList() {
        return this.fatalActions_;
    }

    public String getFlagsPath() {
        Object obj = this.flagsPath_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.flagsPath_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getFlagsPathBytes() {
        Object obj = this.flagsPath_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.flagsPath_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public ApiConfigSource getHdsConfig() {
        ApiConfigSource apiConfigSource = this.hdsConfig_;
        return apiConfigSource == null ? ApiConfigSource.getDefaultInstance() : apiConfigSource;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d getHdsConfigOrBuilder() {
        return getHdsConfig();
    }

    public String getHeaderPrefix() {
        Object obj = this.headerPrefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.headerPrefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getHeaderPrefixBytes() {
        Object obj = this.headerPrefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.headerPrefix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public CustomInlineHeader getInlineHeaders(int i9) {
        return this.inlineHeaders_.get(i9);
    }

    public int getInlineHeadersCount() {
        return this.inlineHeaders_.size();
    }

    public List<CustomInlineHeader> getInlineHeadersList() {
        return this.inlineHeaders_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.e getInlineHeadersOrBuilder(int i9) {
        return this.inlineHeaders_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.e> getInlineHeadersOrBuilderList() {
        return this.inlineHeaders_;
    }

    public LayeredRuntime getLayeredRuntime() {
        LayeredRuntime layeredRuntime = this.layeredRuntime_;
        return layeredRuntime == null ? LayeredRuntime.getDefaultInstance() : layeredRuntime;
    }

    public g getLayeredRuntimeOrBuilder() {
        return getLayeredRuntime();
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public String getNodeContextParams(int i9) {
        return this.nodeContextParams_.get(i9);
    }

    public ByteString getNodeContextParamsBytes(int i9) {
        return this.nodeContextParams_.j0(i9);
    }

    public int getNodeContextParamsCount() {
        return this.nodeContextParams_.size();
    }

    public l0 getNodeOrBuilder() {
        return getNode();
    }

    public OverloadManager getOverloadManager() {
        OverloadManager overloadManager = this.overloadManager_;
        return overloadManager == null ? OverloadManager.getDefaultInstance() : overloadManager;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.c getOverloadManagerOrBuilder() {
        return getOverloadManager();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Bootstrap> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.node_ != null ? CodedOutputStream.G(1, getNode()) + 0 : 0;
        if (this.staticResources_ != null) {
            G += CodedOutputStream.G(2, getStaticResources());
        }
        if (this.dynamicResources_ != null) {
            G += CodedOutputStream.G(3, getDynamicResources());
        }
        if (this.clusterManager_ != null) {
            G += CodedOutputStream.G(4, getClusterManager());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.flagsPath_)) {
            G += GeneratedMessageV3.computeStringSize(5, this.flagsPath_);
        }
        for (int i10 = 0; i10 < this.statsSinks_.size(); i10++) {
            G += CodedOutputStream.G(6, this.statsSinks_.get(i10));
        }
        if (this.statsFlushInterval_ != null) {
            G += CodedOutputStream.G(7, getStatsFlushInterval());
        }
        if (this.watchdog_ != null) {
            G += CodedOutputStream.G(8, getWatchdog());
        }
        if (this.tracing_ != null) {
            G += CodedOutputStream.G(9, getTracing());
        }
        if (this.admin_ != null) {
            G += CodedOutputStream.G(12, getAdmin());
        }
        if (this.statsConfig_ != null) {
            G += CodedOutputStream.G(13, getStatsConfig());
        }
        if (this.hdsConfig_ != null) {
            G += CodedOutputStream.G(14, getHdsConfig());
        }
        if (this.overloadManager_ != null) {
            G += CodedOutputStream.G(15, getOverloadManager());
        }
        boolean z10 = this.enableDispatcherStats_;
        if (z10) {
            G += CodedOutputStream.e(16, z10);
        }
        if (this.layeredRuntime_ != null) {
            G += CodedOutputStream.G(17, getLayeredRuntime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.headerPrefix_)) {
            G += GeneratedMessageV3.computeStringSize(18, this.headerPrefix_);
        }
        if (this.statsServerVersionOverride_ != null) {
            G += CodedOutputStream.G(19, getStatsServerVersionOverride());
        }
        boolean z11 = this.useTcpForDnsLookups_;
        if (z11) {
            G += CodedOutputStream.e(20, z11);
        }
        for (int i11 = 0; i11 < this.bootstrapExtensions_.size(); i11++) {
            G += CodedOutputStream.G(21, this.bootstrapExtensions_.get(i11));
        }
        for (int i12 = 0; i12 < this.configSources_.size(); i12++) {
            G += CodedOutputStream.G(22, this.configSources_.get(i12));
        }
        if (this.defaultConfigSource_ != null) {
            G += CodedOutputStream.G(23, getDefaultConfigSource());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.defaultSocketInterface_)) {
            G += GeneratedMessageV3.computeStringSize(24, this.defaultSocketInterface_);
        }
        for (Map.Entry<String, TypedExtensionConfig> entry : internalGetCertificateProviderInstances().i().entrySet()) {
            G += CodedOutputStream.G(25, d.f47465a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.nodeContextParams_.size(); i14++) {
            i13 += GeneratedMessageV3.computeStringSizeNoTag(this.nodeContextParams_.c1(i14));
        }
        int size = G + i13 + (m1608getNodeContextParamsList().size() * 2);
        if (this.watchdogs_ != null) {
            size += CodedOutputStream.G(27, getWatchdogs());
        }
        for (int i15 = 0; i15 < this.fatalActions_.size(); i15++) {
            size += CodedOutputStream.G(28, this.fatalActions_.get(i15));
        }
        if (this.statsFlushCase_ == 29) {
            size += CodedOutputStream.e(29, ((Boolean) this.statsFlush_).booleanValue());
        }
        if (this.dnsResolutionConfig_ != null) {
            size += CodedOutputStream.G(30, getDnsResolutionConfig());
        }
        if (this.typedDnsResolverConfig_ != null) {
            size += CodedOutputStream.G(31, getTypedDnsResolverConfig());
        }
        for (int i16 = 0; i16 < this.inlineHeaders_.size(); i16++) {
            size += CodedOutputStream.G(32, this.inlineHeaders_.get(i16));
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StaticResources getStaticResources() {
        StaticResources staticResources = this.staticResources_;
        return staticResources == null ? StaticResources.getDefaultInstance() : staticResources;
    }

    public f getStaticResourcesOrBuilder() {
        return getStaticResources();
    }

    public StatsConfig getStatsConfig() {
        StatsConfig statsConfig = this.statsConfig_;
        return statsConfig == null ? StatsConfig.getDefaultInstance() : statsConfig;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.b getStatsConfigOrBuilder() {
        return getStatsConfig();
    }

    public StatsFlushCase getStatsFlushCase() {
        return StatsFlushCase.forNumber(this.statsFlushCase_);
    }

    public Duration getStatsFlushInterval() {
        Duration duration = this.statsFlushInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getStatsFlushIntervalOrBuilder() {
        return getStatsFlushInterval();
    }

    public boolean getStatsFlushOnAdmin() {
        if (this.statsFlushCase_ == 29) {
            return ((Boolean) this.statsFlush_).booleanValue();
        }
        return false;
    }

    public UInt64Value getStatsServerVersionOverride() {
        UInt64Value uInt64Value = this.statsServerVersionOverride_;
        return uInt64Value == null ? UInt64Value.getDefaultInstance() : uInt64Value;
    }

    public f3 getStatsServerVersionOverrideOrBuilder() {
        return getStatsServerVersionOverride();
    }

    public StatsSink getStatsSinks(int i9) {
        return this.statsSinks_.get(i9);
    }

    public int getStatsSinksCount() {
        return this.statsSinks_.size();
    }

    public List<StatsSink> getStatsSinksList() {
        return this.statsSinks_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.e getStatsSinksOrBuilder(int i9) {
        return this.statsSinks_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.e> getStatsSinksOrBuilderList() {
        return this.statsSinks_;
    }

    @Deprecated
    public Tracing getTracing() {
        Tracing tracing = this.tracing_;
        return tracing == null ? Tracing.getDefaultInstance() : tracing;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.g getTracingOrBuilder() {
        return getTracing();
    }

    public TypedExtensionConfig getTypedDnsResolverConfig() {
        TypedExtensionConfig typedExtensionConfig = this.typedDnsResolverConfig_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getTypedDnsResolverConfigOrBuilder() {
        return getTypedDnsResolverConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public boolean getUseTcpForDnsLookups() {
        return this.useTcpForDnsLookups_;
    }

    @Deprecated
    public Watchdog getWatchdog() {
        Watchdog watchdog = this.watchdog_;
        return watchdog == null ? Watchdog.getDefaultInstance() : watchdog;
    }

    @Deprecated
    public i getWatchdogOrBuilder() {
        return getWatchdog();
    }

    public Watchdogs getWatchdogs() {
        Watchdogs watchdogs = this.watchdogs_;
        return watchdogs == null ? Watchdogs.getDefaultInstance() : watchdogs;
    }

    public j getWatchdogsOrBuilder() {
        return getWatchdogs();
    }

    public boolean hasAdmin() {
        return this.admin_ != null;
    }

    public boolean hasClusterManager() {
        return this.clusterManager_ != null;
    }

    public boolean hasDefaultConfigSource() {
        return this.defaultConfigSource_ != null;
    }

    public boolean hasDnsResolutionConfig() {
        return this.dnsResolutionConfig_ != null;
    }

    public boolean hasDynamicResources() {
        return this.dynamicResources_ != null;
    }

    public boolean hasHdsConfig() {
        return this.hdsConfig_ != null;
    }

    public boolean hasLayeredRuntime() {
        return this.layeredRuntime_ != null;
    }

    public boolean hasNode() {
        return this.node_ != null;
    }

    public boolean hasOverloadManager() {
        return this.overloadManager_ != null;
    }

    public boolean hasStaticResources() {
        return this.staticResources_ != null;
    }

    public boolean hasStatsConfig() {
        return this.statsConfig_ != null;
    }

    public boolean hasStatsFlushInterval() {
        return this.statsFlushInterval_ != null;
    }

    public boolean hasStatsFlushOnAdmin() {
        return this.statsFlushCase_ == 29;
    }

    public boolean hasStatsServerVersionOverride() {
        return this.statsServerVersionOverride_ != null;
    }

    @Deprecated
    public boolean hasTracing() {
        return this.tracing_ != null;
    }

    public boolean hasTypedDnsResolverConfig() {
        return this.typedDnsResolverConfig_ != null;
    }

    @Deprecated
    public boolean hasWatchdog() {
        return this.watchdog_ != null;
    }

    public boolean hasWatchdogs() {
        return this.watchdogs_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasNode()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getNode().hashCode();
        }
        if (getNodeContextParamsCount() > 0) {
            hashCode = (((hashCode * 37) + 26) * 53) + m1608getNodeContextParamsList().hashCode();
        }
        if (hasStaticResources()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getStaticResources().hashCode();
        }
        if (hasDynamicResources()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDynamicResources().hashCode();
        }
        if (hasClusterManager()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getClusterManager().hashCode();
        }
        if (hasHdsConfig()) {
            hashCode = (((hashCode * 37) + 14) * 53) + getHdsConfig().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 5) * 53) + getFlagsPath().hashCode();
        if (getStatsSinksCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getStatsSinksList().hashCode();
        }
        if (hasStatsConfig()) {
            hashCode2 = (((hashCode2 * 37) + 13) * 53) + getStatsConfig().hashCode();
        }
        if (hasStatsFlushInterval()) {
            hashCode2 = (((hashCode2 * 37) + 7) * 53) + getStatsFlushInterval().hashCode();
        }
        if (hasWatchdog()) {
            hashCode2 = (((hashCode2 * 37) + 8) * 53) + getWatchdog().hashCode();
        }
        if (hasWatchdogs()) {
            hashCode2 = (((hashCode2 * 37) + 27) * 53) + getWatchdogs().hashCode();
        }
        if (hasTracing()) {
            hashCode2 = (((hashCode2 * 37) + 9) * 53) + getTracing().hashCode();
        }
        if (hasLayeredRuntime()) {
            hashCode2 = (((hashCode2 * 37) + 17) * 53) + getLayeredRuntime().hashCode();
        }
        if (hasAdmin()) {
            hashCode2 = (((hashCode2 * 37) + 12) * 53) + getAdmin().hashCode();
        }
        if (hasOverloadManager()) {
            hashCode2 = (((hashCode2 * 37) + 15) * 53) + getOverloadManager().hashCode();
        }
        int d10 = (((((((hashCode2 * 37) + 16) * 53) + u0.d(getEnableDispatcherStats())) * 37) + 18) * 53) + getHeaderPrefix().hashCode();
        if (hasStatsServerVersionOverride()) {
            d10 = (((d10 * 37) + 19) * 53) + getStatsServerVersionOverride().hashCode();
        }
        int d11 = (((d10 * 37) + 20) * 53) + u0.d(getUseTcpForDnsLookups());
        if (hasDnsResolutionConfig()) {
            d11 = (((d11 * 37) + 30) * 53) + getDnsResolutionConfig().hashCode();
        }
        if (hasTypedDnsResolverConfig()) {
            d11 = (((d11 * 37) + 31) * 53) + getTypedDnsResolverConfig().hashCode();
        }
        if (getBootstrapExtensionsCount() > 0) {
            d11 = (((d11 * 37) + 21) * 53) + getBootstrapExtensionsList().hashCode();
        }
        if (getFatalActionsCount() > 0) {
            d11 = (((d11 * 37) + 28) * 53) + getFatalActionsList().hashCode();
        }
        if (getConfigSourcesCount() > 0) {
            d11 = (((d11 * 37) + 22) * 53) + getConfigSourcesList().hashCode();
        }
        if (hasDefaultConfigSource()) {
            d11 = (((d11 * 37) + 23) * 53) + getDefaultConfigSource().hashCode();
        }
        int hashCode3 = (((d11 * 37) + 24) * 53) + getDefaultSocketInterface().hashCode();
        if (!internalGetCertificateProviderInstances().i().isEmpty()) {
            hashCode3 = (((hashCode3 * 37) + 25) * 53) + internalGetCertificateProviderInstances().hashCode();
        }
        if (getInlineHeadersCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 32) * 53) + getInlineHeadersList().hashCode();
        }
        if (this.statsFlushCase_ == 29) {
            hashCode3 = (((hashCode3 * 37) + 29) * 53) + u0.d(getStatsFlushOnAdmin());
        }
        int hashCode4 = (hashCode3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode4;
        return hashCode4;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47525b.d(Bootstrap.class, c.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 25) {
            return internalGetCertificateProviderInstances();
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
        return new Bootstrap();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.node_ != null) {
            codedOutputStream.L0(1, getNode());
        }
        if (this.staticResources_ != null) {
            codedOutputStream.L0(2, getStaticResources());
        }
        if (this.dynamicResources_ != null) {
            codedOutputStream.L0(3, getDynamicResources());
        }
        if (this.clusterManager_ != null) {
            codedOutputStream.L0(4, getClusterManager());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.flagsPath_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.flagsPath_);
        }
        for (int i9 = 0; i9 < this.statsSinks_.size(); i9++) {
            codedOutputStream.L0(6, this.statsSinks_.get(i9));
        }
        if (this.statsFlushInterval_ != null) {
            codedOutputStream.L0(7, getStatsFlushInterval());
        }
        if (this.watchdog_ != null) {
            codedOutputStream.L0(8, getWatchdog());
        }
        if (this.tracing_ != null) {
            codedOutputStream.L0(9, getTracing());
        }
        if (this.admin_ != null) {
            codedOutputStream.L0(12, getAdmin());
        }
        if (this.statsConfig_ != null) {
            codedOutputStream.L0(13, getStatsConfig());
        }
        if (this.hdsConfig_ != null) {
            codedOutputStream.L0(14, getHdsConfig());
        }
        if (this.overloadManager_ != null) {
            codedOutputStream.L0(15, getOverloadManager());
        }
        boolean z10 = this.enableDispatcherStats_;
        if (z10) {
            codedOutputStream.n0(16, z10);
        }
        if (this.layeredRuntime_ != null) {
            codedOutputStream.L0(17, getLayeredRuntime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.headerPrefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 18, this.headerPrefix_);
        }
        if (this.statsServerVersionOverride_ != null) {
            codedOutputStream.L0(19, getStatsServerVersionOverride());
        }
        boolean z11 = this.useTcpForDnsLookups_;
        if (z11) {
            codedOutputStream.n0(20, z11);
        }
        for (int i10 = 0; i10 < this.bootstrapExtensions_.size(); i10++) {
            codedOutputStream.L0(21, this.bootstrapExtensions_.get(i10));
        }
        for (int i11 = 0; i11 < this.configSources_.size(); i11++) {
            codedOutputStream.L0(22, this.configSources_.get(i11));
        }
        if (this.defaultConfigSource_ != null) {
            codedOutputStream.L0(23, getDefaultConfigSource());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.defaultSocketInterface_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 24, this.defaultSocketInterface_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCertificateProviderInstances(), d.f47465a, 25);
        for (int i12 = 0; i12 < this.nodeContextParams_.size(); i12++) {
            GeneratedMessageV3.writeString(codedOutputStream, 26, this.nodeContextParams_.c1(i12));
        }
        if (this.watchdogs_ != null) {
            codedOutputStream.L0(27, getWatchdogs());
        }
        for (int i13 = 0; i13 < this.fatalActions_.size(); i13++) {
            codedOutputStream.L0(28, this.fatalActions_.get(i13));
        }
        if (this.statsFlushCase_ == 29) {
            codedOutputStream.n0(29, ((Boolean) this.statsFlush_).booleanValue());
        }
        if (this.dnsResolutionConfig_ != null) {
            codedOutputStream.L0(30, getDnsResolutionConfig());
        }
        if (this.typedDnsResolverConfig_ != null) {
            codedOutputStream.L0(31, getTypedDnsResolverConfig());
        }
        for (int i14 = 0; i14 < this.inlineHeaders_.size(); i14++) {
            codedOutputStream.L0(32, this.inlineHeaders_.get(i14));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Bootstrap(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Bootstrap bootstrap) {
        return DEFAULT_INSTANCE.toBuilder().B0(bootstrap);
    }

    public static Bootstrap parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getNodeContextParamsList */
    public i2 m1608getNodeContextParamsList() {
        return this.nodeContextParams_;
    }

    private Bootstrap(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.statsFlushCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Bootstrap parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Bootstrap) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Bootstrap parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Bootstrap getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).B0(this);
    }

    public static Bootstrap parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Bootstrap parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Bootstrap() {
        this.statsFlushCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.nodeContextParams_ = y0.f15344d;
        this.flagsPath_ = "";
        this.statsSinks_ = Collections.emptyList();
        this.headerPrefix_ = "";
        this.bootstrapExtensions_ = Collections.emptyList();
        this.fatalActions_ = Collections.emptyList();
        this.configSources_ = Collections.emptyList();
        this.defaultSocketInterface_ = "";
        this.inlineHeaders_ = Collections.emptyList();
    }

    public static Bootstrap parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Bootstrap parseFrom(InputStream inputStream) throws IOException {
        return (Bootstrap) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Bootstrap parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Bootstrap) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Bootstrap parseFrom(p pVar) throws IOException {
        return (Bootstrap) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Bootstrap parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Bootstrap) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private Bootstrap(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Node node = this.node_;
                            Node.c builder = node != null ? node.toBuilder() : null;
                            Node node2 = (Node) pVar.B(Node.parser(), f0Var);
                            this.node_ = node2;
                            if (builder != null) {
                                builder.q0(node2);
                                this.node_ = builder.I();
                            } else {
                                continue;
                            }
                        case 18:
                            StaticResources staticResources = this.staticResources_;
                            StaticResources.b builder2 = staticResources != null ? staticResources.toBuilder() : null;
                            StaticResources staticResources2 = (StaticResources) pVar.B(StaticResources.parser(), f0Var);
                            this.staticResources_ = staticResources2;
                            if (builder2 != null) {
                                builder2.m0(staticResources2);
                                this.staticResources_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 26:
                            DynamicResources dynamicResources = this.dynamicResources_;
                            DynamicResources.b builder3 = dynamicResources != null ? dynamicResources.toBuilder() : null;
                            DynamicResources dynamicResources2 = (DynamicResources) pVar.B(DynamicResources.parser(), f0Var);
                            this.dynamicResources_ = dynamicResources2;
                            if (builder3 != null) {
                                builder3.i0(dynamicResources2);
                                this.dynamicResources_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 34:
                            ClusterManager clusterManager = this.clusterManager_;
                            ClusterManager.b builder4 = clusterManager != null ? clusterManager.toBuilder() : null;
                            ClusterManager clusterManager2 = (ClusterManager) pVar.B(ClusterManager.parser(), f0Var);
                            this.clusterManager_ = clusterManager2;
                            if (builder4 != null) {
                                builder4.g0(clusterManager2);
                                this.clusterManager_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 42:
                            this.flagsPath_ = pVar.K();
                            continue;
                        case 50:
                            if (!(z11 & true)) {
                                this.statsSinks_ = new ArrayList();
                                z11 |= true;
                            }
                            this.statsSinks_.add((StatsSink) pVar.B(StatsSink.parser(), f0Var));
                            continue;
                        case 58:
                            Duration duration = this.statsFlushInterval_;
                            Duration.b builder5 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.statsFlushInterval_ = duration2;
                            if (builder5 != null) {
                                builder5.e0(duration2);
                                this.statsFlushInterval_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 66:
                            Watchdog watchdog = this.watchdog_;
                            Watchdog.b builder6 = watchdog != null ? watchdog.toBuilder() : null;
                            Watchdog watchdog2 = (Watchdog) pVar.B(Watchdog.parser(), f0Var);
                            this.watchdog_ = watchdog2;
                            if (builder6 != null) {
                                builder6.i0(watchdog2);
                                this.watchdog_ = builder6.I();
                            } else {
                                continue;
                            }
                        case 74:
                            Tracing tracing = this.tracing_;
                            Tracing.c builder7 = tracing != null ? tracing.toBuilder() : null;
                            Tracing tracing2 = (Tracing) pVar.B(Tracing.parser(), f0Var);
                            this.tracing_ = tracing2;
                            if (builder7 != null) {
                                builder7.g0(tracing2);
                                this.tracing_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 98:
                            Admin admin = this.admin_;
                            Admin.b builder8 = admin != null ? admin.toBuilder() : null;
                            Admin admin2 = (Admin) pVar.B(Admin.parser(), f0Var);
                            this.admin_ = admin2;
                            if (builder8 != null) {
                                builder8.l0(admin2);
                                this.admin_ = builder8.I();
                            } else {
                                continue;
                            }
                        case 106:
                            StatsConfig statsConfig = this.statsConfig_;
                            StatsConfig.b builder9 = statsConfig != null ? statsConfig.toBuilder() : null;
                            StatsConfig statsConfig2 = (StatsConfig) pVar.B(StatsConfig.parser(), f0Var);
                            this.statsConfig_ = statsConfig2;
                            if (builder9 != null) {
                                builder9.k0(statsConfig2);
                                this.statsConfig_ = builder9.I();
                            } else {
                                continue;
                            }
                        case 114:
                            ApiConfigSource apiConfigSource = this.hdsConfig_;
                            ApiConfigSource.b builder10 = apiConfigSource != null ? apiConfigSource.toBuilder() : null;
                            ApiConfigSource apiConfigSource2 = (ApiConfigSource) pVar.B(ApiConfigSource.parser(), f0Var);
                            this.hdsConfig_ = apiConfigSource2;
                            if (builder10 != null) {
                                builder10.j0(apiConfigSource2);
                                this.hdsConfig_ = builder10.I();
                            } else {
                                continue;
                            }
                        case 122:
                            OverloadManager overloadManager = this.overloadManager_;
                            OverloadManager.b builder11 = overloadManager != null ? overloadManager.toBuilder() : null;
                            OverloadManager overloadManager2 = (OverloadManager) pVar.B(OverloadManager.parser(), f0Var);
                            this.overloadManager_ = overloadManager2;
                            if (builder11 != null) {
                                builder11.l0(overloadManager2);
                                this.overloadManager_ = builder11.I();
                            } else {
                                continue;
                            }
                        case 128:
                            this.enableDispatcherStats_ = pVar.r();
                            continue;
                        case 138:
                            LayeredRuntime layeredRuntime = this.layeredRuntime_;
                            LayeredRuntime.b builder12 = layeredRuntime != null ? layeredRuntime.toBuilder() : null;
                            LayeredRuntime layeredRuntime2 = (LayeredRuntime) pVar.B(LayeredRuntime.parser(), f0Var);
                            this.layeredRuntime_ = layeredRuntime2;
                            if (builder12 != null) {
                                builder12.i0(layeredRuntime2);
                                this.layeredRuntime_ = builder12.I();
                            } else {
                                continue;
                            }
                        case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                            this.headerPrefix_ = pVar.K();
                            continue;
                        case 154:
                            UInt64Value uInt64Value = this.statsServerVersionOverride_;
                            UInt64Value.b builder13 = uInt64Value != null ? uInt64Value.toBuilder() : null;
                            UInt64Value uInt64Value2 = (UInt64Value) pVar.B(UInt64Value.parser(), f0Var);
                            this.statsServerVersionOverride_ = uInt64Value2;
                            if (builder13 != null) {
                                builder13.g0(uInt64Value2);
                                this.statsServerVersionOverride_ = builder13.I();
                            } else {
                                continue;
                            }
                        case 160:
                            this.useTcpForDnsLookups_ = pVar.r();
                            continue;
                        case 170:
                            if (!(z11 & true)) {
                                this.bootstrapExtensions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.bootstrapExtensions_.add((TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var));
                            continue;
                        case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                            if (!(z11 & true)) {
                                this.configSources_ = new ArrayList();
                                z11 |= true;
                            }
                            this.configSources_.add((ConfigSource) pVar.B(ConfigSource.parser(), f0Var));
                            continue;
                        case 186:
                            ConfigSource configSource = this.defaultConfigSource_;
                            ConfigSource.c builder14 = configSource != null ? configSource.toBuilder() : null;
                            ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                            this.defaultConfigSource_ = configSource2;
                            if (builder14 != null) {
                                builder14.k0(configSource2);
                                this.defaultConfigSource_ = builder14.I();
                            } else {
                                continue;
                            }
                        case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                            this.defaultSocketInterface_ = pVar.K();
                            continue;
                        case 202:
                            if (!(z11 & true)) {
                                this.certificateProviderInstances_ = g1.p(d.f47465a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(d.f47465a.getParserForType(), f0Var);
                            this.certificateProviderInstances_.l().put((String) e1Var.f(), (TypedExtensionConfig) e1Var.h());
                            continue;
                        case 210:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.nodeContextParams_ = new y0();
                                z11 |= true;
                            }
                            this.nodeContextParams_.add(K);
                            continue;
                        case 218:
                            Watchdogs watchdogs = this.watchdogs_;
                            Watchdogs.b builder15 = watchdogs != null ? watchdogs.toBuilder() : null;
                            Watchdogs watchdogs2 = (Watchdogs) pVar.B(Watchdogs.parser(), f0Var);
                            this.watchdogs_ = watchdogs2;
                            if (builder15 != null) {
                                builder15.g0(watchdogs2);
                                this.watchdogs_ = builder15.I();
                            } else {
                                continue;
                            }
                        case 226:
                            if (!(z11 & true)) {
                                this.fatalActions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.fatalActions_.add((FatalAction) pVar.B(FatalAction.parser(), f0Var));
                            continue;
                        case 232:
                            this.statsFlush_ = Boolean.valueOf(pVar.r());
                            this.statsFlushCase_ = 29;
                            continue;
                        case 242:
                            DnsResolutionConfig dnsResolutionConfig = this.dnsResolutionConfig_;
                            DnsResolutionConfig.b builder16 = dnsResolutionConfig != null ? dnsResolutionConfig.toBuilder() : null;
                            DnsResolutionConfig dnsResolutionConfig2 = (DnsResolutionConfig) pVar.B(DnsResolutionConfig.parser(), f0Var);
                            this.dnsResolutionConfig_ = dnsResolutionConfig2;
                            if (builder16 != null) {
                                builder16.j0(dnsResolutionConfig2);
                                this.dnsResolutionConfig_ = builder16.I();
                            } else {
                                continue;
                            }
                        case 250:
                            TypedExtensionConfig typedExtensionConfig = this.typedDnsResolverConfig_;
                            TypedExtensionConfig.b builder17 = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                            TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                            this.typedDnsResolverConfig_ = typedExtensionConfig2;
                            if (builder17 != null) {
                                builder17.g0(typedExtensionConfig2);
                                this.typedDnsResolverConfig_ = builder17.I();
                            } else {
                                continue;
                            }
                        case 258:
                            if (!(z11 & true)) {
                                this.inlineHeaders_ = new ArrayList();
                                z11 |= true;
                            }
                            this.inlineHeaders_.add((CustomInlineHeader) pVar.B(CustomInlineHeader.parser(), f0Var));
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
                    this.statsSinks_ = Collections.unmodifiableList(this.statsSinks_);
                }
                if (z11 & true) {
                    this.bootstrapExtensions_ = Collections.unmodifiableList(this.bootstrapExtensions_);
                }
                if (z11 & true) {
                    this.configSources_ = Collections.unmodifiableList(this.configSources_);
                }
                if (z11 & true) {
                    this.nodeContextParams_ = this.nodeContextParams_.V0();
                }
                if (z11 & true) {
                    this.fatalActions_ = Collections.unmodifiableList(this.fatalActions_);
                }
                if (z11 & true) {
                    this.inlineHeaders_ = Collections.unmodifiableList(this.inlineHeaders_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
