package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AggregatedConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ApiConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SelfConfigSource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ConfigSource extends GeneratedMessageV3 implements k {
    public static final int ADS_FIELD_NUMBER = 3;
    public static final int API_CONFIG_SOURCE_FIELD_NUMBER = 2;
    public static final int INITIAL_FETCH_TIMEOUT_FIELD_NUMBER = 4;
    public static final int PATH_FIELD_NUMBER = 1;
    public static final int RESOURCE_API_VERSION_FIELD_NUMBER = 6;
    public static final int SELF_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private int configSourceSpecifierCase_;
    private Object configSourceSpecifier_;
    private Duration initialFetchTimeout_;
    private byte memoizedIsInitialized;
    private int resourceApiVersion_;
    private static final ConfigSource DEFAULT_INSTANCE = new ConfigSource();
    private static final e2<ConfigSource> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ConfigSourceSpecifierCase implements u0.c {
        PATH(1),
        API_CONFIG_SOURCE(2),
        ADS(3),
        SELF(5),
        CONFIGSOURCESPECIFIER_NOT_SET(0);
        
        private final int value;

        ConfigSourceSpecifierCase(int i9) {
            this.value = i9;
        }

        public static ConfigSourceSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 5) {
                                return null;
                            }
                            return SELF;
                        }
                        return ADS;
                    }
                    return API_CONFIG_SOURCE;
                }
                return PATH;
            }
            return CONFIGSOURCESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ConfigSourceSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ConfigSource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ConfigSource m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ConfigSource(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46391a;

        static {
            int[] iArr = new int[ConfigSourceSpecifierCase.values().length];
            f46391a = iArr;
            try {
                iArr[ConfigSourceSpecifierCase.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46391a[ConfigSourceSpecifierCase.API_CONFIG_SOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46391a[ConfigSourceSpecifierCase.ADS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f46391a[ConfigSourceSpecifierCase.SELF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f46391a[ConfigSourceSpecifierCase.CONFIGSOURCESPECIFIER_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f46392e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46393f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ApiConfigSource, ApiConfigSource.b, d> f46394g;

        /* renamed from: h  reason: collision with root package name */
        private q2<AggregatedConfigSource, AggregatedConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.c> f46395h;

        /* renamed from: i  reason: collision with root package name */
        private q2<SelfConfigSource, SelfConfigSource.b, m0> f46396i;

        /* renamed from: j  reason: collision with root package name */
        private Duration f46397j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f46398k;

        /* renamed from: l  reason: collision with root package name */
        private int f46399l;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f46746j.d(ConfigSource.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ConfigSource build() {
            ConfigSource I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ConfigSource I() {
            ConfigSource configSource = new ConfigSource(this, (a) null);
            if (this.f46392e == 1) {
                configSource.configSourceSpecifier_ = this.f46393f;
            }
            if (this.f46392e == 2) {
                q2<ApiConfigSource, ApiConfigSource.b, d> q2Var = this.f46394g;
                if (q2Var == null) {
                    configSource.configSourceSpecifier_ = this.f46393f;
                } else {
                    configSource.configSourceSpecifier_ = q2Var.b();
                }
            }
            if (this.f46392e == 3) {
                q2<AggregatedConfigSource, AggregatedConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.c> q2Var2 = this.f46395h;
                if (q2Var2 == null) {
                    configSource.configSourceSpecifier_ = this.f46393f;
                } else {
                    configSource.configSourceSpecifier_ = q2Var2.b();
                }
            }
            if (this.f46392e == 5) {
                q2<SelfConfigSource, SelfConfigSource.b, m0> q2Var3 = this.f46396i;
                if (q2Var3 == null) {
                    configSource.configSourceSpecifier_ = this.f46393f;
                } else {
                    configSource.configSourceSpecifier_ = q2Var3.b();
                }
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var4 = this.f46398k;
            if (q2Var4 == null) {
                configSource.initialFetchTimeout_ = this.f46397j;
            } else {
                configSource.initialFetchTimeout_ = q2Var4.b();
            }
            configSource.resourceApiVersion_ = this.f46399l;
            configSource.configSourceSpecifierCase_ = this.f46392e;
            Q();
            return configSource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ConfigSource getDefaultInstanceForType() {
            return ConfigSource.getDefaultInstance();
        }

        public c d0(AggregatedConfigSource aggregatedConfigSource) {
            q2<AggregatedConfigSource, AggregatedConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.c> q2Var = this.f46395h;
            if (q2Var == null) {
                if (this.f46392e == 3 && this.f46393f != AggregatedConfigSource.getDefaultInstance()) {
                    this.f46393f = AggregatedConfigSource.newBuilder((AggregatedConfigSource) this.f46393f).g0(aggregatedConfigSource).I();
                } else {
                    this.f46393f = aggregatedConfigSource;
                }
                R();
            } else {
                if (this.f46392e == 3) {
                    q2Var.e(aggregatedConfigSource);
                }
                this.f46395h.g(aggregatedConfigSource);
            }
            this.f46392e = 3;
            return this;
        }

        public c e0(ApiConfigSource apiConfigSource) {
            q2<ApiConfigSource, ApiConfigSource.b, d> q2Var = this.f46394g;
            if (q2Var == null) {
                if (this.f46392e == 2 && this.f46393f != ApiConfigSource.getDefaultInstance()) {
                    this.f46393f = ApiConfigSource.newBuilder((ApiConfigSource) this.f46393f).j0(apiConfigSource).I();
                } else {
                    this.f46393f = apiConfigSource;
                }
                R();
            } else {
                if (this.f46392e == 2) {
                    q2Var.e(apiConfigSource);
                }
                this.f46394g.g(apiConfigSource);
            }
            this.f46392e = 2;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f46745i;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ConfigSource) {
                return i0((ConfigSource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(ConfigSource configSource) {
            if (configSource == ConfigSource.getDefaultInstance()) {
                return this;
            }
            if (configSource.hasInitialFetchTimeout()) {
                j0(configSource.getInitialFetchTimeout());
            }
            if (configSource.resourceApiVersion_ != 0) {
                n0(configSource.getResourceApiVersionValue());
            }
            int i9 = b.f46391a[configSource.getConfigSourceSpecifierCase().ordinal()];
            if (i9 == 1) {
                this.f46392e = 1;
                this.f46393f = configSource.configSourceSpecifier_;
                R();
            } else if (i9 == 2) {
                e0(configSource.getApiConfigSource());
            } else if (i9 == 3) {
                d0(configSource.getAds());
            } else if (i9 == 4) {
                k0(configSource.getSelf());
            }
            z(((GeneratedMessageV3) configSource).unknownFields);
            R();
            return this;
        }

        public c j0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46398k;
            if (q2Var == null) {
                Duration duration2 = this.f46397j;
                if (duration2 != null) {
                    this.f46397j = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46397j = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c k0(SelfConfigSource selfConfigSource) {
            q2<SelfConfigSource, SelfConfigSource.b, m0> q2Var = this.f46396i;
            if (q2Var == null) {
                if (this.f46392e == 5 && this.f46393f != SelfConfigSource.getDefaultInstance()) {
                    this.f46393f = SelfConfigSource.newBuilder((SelfConfigSource) this.f46393f).g0(selfConfigSource).I();
                } else {
                    this.f46393f = selfConfigSource;
                }
                R();
            } else {
                if (this.f46392e == 5) {
                    q2Var.e(selfConfigSource);
                }
                this.f46396i.g(selfConfigSource);
            }
            this.f46392e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c n0(int i9) {
            this.f46399l = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f46392e = 0;
            this.f46399l = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46392e = 0;
            this.f46399l = 0;
            b0();
        }
    }

    /* synthetic */ ConfigSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ConfigSource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f46745i;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ConfigSource parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ConfigSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ConfigSource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ConfigSource> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConfigSource)) {
            return super.equals(obj);
        }
        ConfigSource configSource = (ConfigSource) obj;
        if (hasInitialFetchTimeout() != configSource.hasInitialFetchTimeout()) {
            return false;
        }
        if ((!hasInitialFetchTimeout() || getInitialFetchTimeout().equals(configSource.getInitialFetchTimeout())) && this.resourceApiVersion_ == configSource.resourceApiVersion_ && getConfigSourceSpecifierCase().equals(configSource.getConfigSourceSpecifierCase())) {
            int i9 = this.configSourceSpecifierCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 == 5 && !getSelf().equals(configSource.getSelf())) {
                            return false;
                        }
                    } else if (!getAds().equals(configSource.getAds())) {
                        return false;
                    }
                } else if (!getApiConfigSource().equals(configSource.getApiConfigSource())) {
                    return false;
                }
            } else if (!getPath().equals(configSource.getPath())) {
                return false;
            }
            return this.unknownFields.equals(configSource.unknownFields);
        }
        return false;
    }

    public AggregatedConfigSource getAds() {
        if (this.configSourceSpecifierCase_ == 3) {
            return (AggregatedConfigSource) this.configSourceSpecifier_;
        }
        return AggregatedConfigSource.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.c getAdsOrBuilder() {
        if (this.configSourceSpecifierCase_ == 3) {
            return (AggregatedConfigSource) this.configSourceSpecifier_;
        }
        return AggregatedConfigSource.getDefaultInstance();
    }

    public ApiConfigSource getApiConfigSource() {
        if (this.configSourceSpecifierCase_ == 2) {
            return (ApiConfigSource) this.configSourceSpecifier_;
        }
        return ApiConfigSource.getDefaultInstance();
    }

    public d getApiConfigSourceOrBuilder() {
        if (this.configSourceSpecifierCase_ == 2) {
            return (ApiConfigSource) this.configSourceSpecifier_;
        }
        return ApiConfigSource.getDefaultInstance();
    }

    public ConfigSourceSpecifierCase getConfigSourceSpecifierCase() {
        return ConfigSourceSpecifierCase.forNumber(this.configSourceSpecifierCase_);
    }

    public Duration getInitialFetchTimeout() {
        Duration duration = this.initialFetchTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getInitialFetchTimeoutOrBuilder() {
        return getInitialFetchTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ConfigSource> getParserForType() {
        return PARSER;
    }

    public String getPath() {
        String str = this.configSourceSpecifierCase_ == 1 ? this.configSourceSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.configSourceSpecifierCase_ == 1) {
            this.configSourceSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPathBytes() {
        String str = this.configSourceSpecifierCase_ == 1 ? this.configSourceSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.configSourceSpecifierCase_ == 1) {
                this.configSourceSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public ApiVersion getResourceApiVersion() {
        ApiVersion valueOf = ApiVersion.valueOf(this.resourceApiVersion_);
        return valueOf == null ? ApiVersion.UNRECOGNIZED : valueOf;
    }

    public int getResourceApiVersionValue() {
        return this.resourceApiVersion_;
    }

    public SelfConfigSource getSelf() {
        if (this.configSourceSpecifierCase_ == 5) {
            return (SelfConfigSource) this.configSourceSpecifier_;
        }
        return SelfConfigSource.getDefaultInstance();
    }

    public m0 getSelfOrBuilder() {
        if (this.configSourceSpecifierCase_ == 5) {
            return (SelfConfigSource) this.configSourceSpecifier_;
        }
        return SelfConfigSource.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.configSourceSpecifierCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.configSourceSpecifier_) : 0;
        if (this.configSourceSpecifierCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (ApiConfigSource) this.configSourceSpecifier_);
        }
        if (this.configSourceSpecifierCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (AggregatedConfigSource) this.configSourceSpecifier_);
        }
        if (this.initialFetchTimeout_ != null) {
            computeStringSize += CodedOutputStream.G(4, getInitialFetchTimeout());
        }
        if (this.configSourceSpecifierCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (SelfConfigSource) this.configSourceSpecifier_);
        }
        if (this.resourceApiVersion_ != ApiVersion.AUTO.getNumber()) {
            computeStringSize += CodedOutputStream.l(6, this.resourceApiVersion_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAds() {
        return this.configSourceSpecifierCase_ == 3;
    }

    public boolean hasApiConfigSource() {
        return this.configSourceSpecifierCase_ == 2;
    }

    public boolean hasInitialFetchTimeout() {
        return this.initialFetchTimeout_ != null;
    }

    public boolean hasPath() {
        return this.configSourceSpecifierCase_ == 1;
    }

    public boolean hasSelf() {
        return this.configSourceSpecifierCase_ == 5;
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
        if (hasInitialFetchTimeout()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getInitialFetchTimeout().hashCode();
        }
        int i11 = (((hashCode2 * 37) + 6) * 53) + this.resourceApiVersion_;
        int i12 = this.configSourceSpecifierCase_;
        if (i12 == 1) {
            i9 = ((i11 * 37) + 1) * 53;
            hashCode = getPath().hashCode();
        } else if (i12 == 2) {
            i9 = ((i11 * 37) + 2) * 53;
            hashCode = getApiConfigSource().hashCode();
        } else if (i12 == 3) {
            i9 = ((i11 * 37) + 3) * 53;
            hashCode = getAds().hashCode();
        } else {
            if (i12 == 5) {
                i9 = ((i11 * 37) + 5) * 53;
                hashCode = getSelf().hashCode();
            }
            int hashCode3 = (i11 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        i11 = i9 + hashCode;
        int hashCode32 = (i11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f46746j.d(ConfigSource.class, c.class);
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
        return new ConfigSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.configSourceSpecifierCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.configSourceSpecifier_);
        }
        if (this.configSourceSpecifierCase_ == 2) {
            codedOutputStream.L0(2, (ApiConfigSource) this.configSourceSpecifier_);
        }
        if (this.configSourceSpecifierCase_ == 3) {
            codedOutputStream.L0(3, (AggregatedConfigSource) this.configSourceSpecifier_);
        }
        if (this.initialFetchTimeout_ != null) {
            codedOutputStream.L0(4, getInitialFetchTimeout());
        }
        if (this.configSourceSpecifierCase_ == 5) {
            codedOutputStream.L0(5, (SelfConfigSource) this.configSourceSpecifier_);
        }
        if (this.resourceApiVersion_ != ApiVersion.AUTO.getNumber()) {
            codedOutputStream.v0(6, this.resourceApiVersion_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ConfigSource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ConfigSource configSource) {
        return DEFAULT_INSTANCE.toBuilder().i0(configSource);
    }

    public static ConfigSource parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ConfigSource(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.configSourceSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ConfigSource parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ConfigSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ConfigSource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ConfigSource getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static ConfigSource parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ConfigSource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ConfigSource() {
        this.configSourceSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.resourceApiVersion_ = 0;
    }

    public static ConfigSource parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ConfigSource parseFrom(InputStream inputStream) throws IOException {
        return (ConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ConfigSource parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ConfigSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    ApiConfigSource.b builder = this.configSourceSpecifierCase_ == 2 ? ((ApiConfigSource) this.configSourceSpecifier_).toBuilder() : null;
                                    o1 B = pVar.B(ApiConfigSource.parser(), f0Var);
                                    this.configSourceSpecifier_ = B;
                                    if (builder != null) {
                                        builder.j0((ApiConfigSource) B);
                                        this.configSourceSpecifier_ = builder.I();
                                    }
                                    this.configSourceSpecifierCase_ = 2;
                                } else if (L == 26) {
                                    AggregatedConfigSource.b builder2 = this.configSourceSpecifierCase_ == 3 ? ((AggregatedConfigSource) this.configSourceSpecifier_).toBuilder() : null;
                                    o1 B2 = pVar.B(AggregatedConfigSource.parser(), f0Var);
                                    this.configSourceSpecifier_ = B2;
                                    if (builder2 != null) {
                                        builder2.g0((AggregatedConfigSource) B2);
                                        this.configSourceSpecifier_ = builder2.I();
                                    }
                                    this.configSourceSpecifierCase_ = 3;
                                } else if (L == 34) {
                                    Duration duration = this.initialFetchTimeout_;
                                    Duration.b builder3 = duration != null ? duration.toBuilder() : null;
                                    Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.initialFetchTimeout_ = duration2;
                                    if (builder3 != null) {
                                        builder3.e0(duration2);
                                        this.initialFetchTimeout_ = builder3.I();
                                    }
                                } else if (L == 42) {
                                    SelfConfigSource.b builder4 = this.configSourceSpecifierCase_ == 5 ? ((SelfConfigSource) this.configSourceSpecifier_).toBuilder() : null;
                                    o1 B3 = pVar.B(SelfConfigSource.parser(), f0Var);
                                    this.configSourceSpecifier_ = B3;
                                    if (builder4 != null) {
                                        builder4.g0((SelfConfigSource) B3);
                                        this.configSourceSpecifier_ = builder4.I();
                                    }
                                    this.configSourceSpecifierCase_ = 5;
                                } else if (L != 48) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.resourceApiVersion_ = pVar.u();
                                }
                            } else {
                                String K = pVar.K();
                                this.configSourceSpecifierCase_ = 1;
                                this.configSourceSpecifier_ = K;
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

    public static ConfigSource parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ConfigSource parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
