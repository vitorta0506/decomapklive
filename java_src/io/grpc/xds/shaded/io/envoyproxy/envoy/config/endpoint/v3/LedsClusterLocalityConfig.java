package io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ConfigSource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LedsClusterLocalityConfig extends GeneratedMessageV3 implements h {
    public static final int LEDS_COLLECTION_NAME_FIELD_NUMBER = 2;
    public static final int LEDS_CONFIG_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object ledsCollectionName_;
    private ConfigSource ledsConfig_;
    private byte memoizedIsInitialized;
    private static final LedsClusterLocalityConfig DEFAULT_INSTANCE = new LedsClusterLocalityConfig();
    private static final e2<LedsClusterLocalityConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<LedsClusterLocalityConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LedsClusterLocalityConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LedsClusterLocalityConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {

        /* renamed from: e  reason: collision with root package name */
        private ConfigSource f48370e;

        /* renamed from: f  reason: collision with root package name */
        private q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> f48371f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48372g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f48421h.d(LedsClusterLocalityConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LedsClusterLocalityConfig build() {
            LedsClusterLocalityConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LedsClusterLocalityConfig I() {
            LedsClusterLocalityConfig ledsClusterLocalityConfig = new LedsClusterLocalityConfig(this, (a) null);
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var = this.f48371f;
            if (q2Var == null) {
                ledsClusterLocalityConfig.ledsConfig_ = this.f48370e;
            } else {
                ledsClusterLocalityConfig.ledsConfig_ = q2Var.b();
            }
            ledsClusterLocalityConfig.ledsCollectionName_ = this.f48372g;
            Q();
            return ledsClusterLocalityConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LedsClusterLocalityConfig getDefaultInstanceForType() {
            return LedsClusterLocalityConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LedsClusterLocalityConfig) {
                return g0((LedsClusterLocalityConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(LedsClusterLocalityConfig ledsClusterLocalityConfig) {
            if (ledsClusterLocalityConfig == LedsClusterLocalityConfig.getDefaultInstance()) {
                return this;
            }
            if (ledsClusterLocalityConfig.hasLedsConfig()) {
                h0(ledsClusterLocalityConfig.getLedsConfig());
            }
            if (!ledsClusterLocalityConfig.getLedsCollectionName().isEmpty()) {
                this.f48372g = ledsClusterLocalityConfig.ledsCollectionName_;
                R();
            }
            z(((GeneratedMessageV3) ledsClusterLocalityConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f48420g;
        }

        public b h0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var = this.f48371f;
            if (q2Var == null) {
                ConfigSource configSource2 = this.f48370e;
                if (configSource2 != null) {
                    this.f48370e = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                } else {
                    this.f48370e = configSource;
                }
                R();
            } else {
                q2Var.e(configSource);
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
            this.f48372g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48372g = "";
            b0();
        }
    }

    /* synthetic */ LedsClusterLocalityConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LedsClusterLocalityConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f48420g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LedsClusterLocalityConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LedsClusterLocalityConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LedsClusterLocalityConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LedsClusterLocalityConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LedsClusterLocalityConfig)) {
            return super.equals(obj);
        }
        LedsClusterLocalityConfig ledsClusterLocalityConfig = (LedsClusterLocalityConfig) obj;
        if (hasLedsConfig() != ledsClusterLocalityConfig.hasLedsConfig()) {
            return false;
        }
        return (!hasLedsConfig() || getLedsConfig().equals(ledsClusterLocalityConfig.getLedsConfig())) && getLedsCollectionName().equals(ledsClusterLocalityConfig.getLedsCollectionName()) && this.unknownFields.equals(ledsClusterLocalityConfig.unknownFields);
    }

    public String getLedsCollectionName() {
        Object obj = this.ledsCollectionName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ledsCollectionName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLedsCollectionNameBytes() {
        Object obj = this.ledsCollectionName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ledsCollectionName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public ConfigSource getLedsConfig() {
        ConfigSource configSource = this.ledsConfig_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k getLedsConfigOrBuilder() {
        return getLedsConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LedsClusterLocalityConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.ledsConfig_ != null ? 0 + CodedOutputStream.G(1, getLedsConfig()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.ledsCollectionName_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.ledsCollectionName_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLedsConfig() {
        return this.ledsConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasLedsConfig()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getLedsConfig().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getLedsCollectionName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f48421h.d(LedsClusterLocalityConfig.class, b.class);
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
        return new LedsClusterLocalityConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.ledsConfig_ != null) {
            codedOutputStream.L0(1, getLedsConfig());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.ledsCollectionName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.ledsCollectionName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LedsClusterLocalityConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LedsClusterLocalityConfig ledsClusterLocalityConfig) {
        return DEFAULT_INSTANCE.toBuilder().g0(ledsClusterLocalityConfig);
    }

    public static LedsClusterLocalityConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LedsClusterLocalityConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LedsClusterLocalityConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LedsClusterLocalityConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LedsClusterLocalityConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LedsClusterLocalityConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static LedsClusterLocalityConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LedsClusterLocalityConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.ledsCollectionName_ = "";
    }

    public static LedsClusterLocalityConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LedsClusterLocalityConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LedsClusterLocalityConfig parseFrom(InputStream inputStream) throws IOException {
        return (LedsClusterLocalityConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LedsClusterLocalityConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            ConfigSource configSource = this.ledsConfig_;
                            ConfigSource.c builder = configSource != null ? configSource.toBuilder() : null;
                            ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                            this.ledsConfig_ = configSource2;
                            if (builder != null) {
                                builder.k0(configSource2);
                                this.ledsConfig_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.ledsCollectionName_ = pVar.K();
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

    public static LedsClusterLocalityConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LedsClusterLocalityConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LedsClusterLocalityConfig parseFrom(p pVar) throws IOException {
        return (LedsClusterLocalityConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LedsClusterLocalityConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LedsClusterLocalityConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
