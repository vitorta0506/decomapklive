package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

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
public final class SdsSecretConfig extends GeneratedMessageV3 implements g {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int SDS_CONFIG_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private ConfigSource sdsConfig_;
    private static final SdsSecretConfig DEFAULT_INSTANCE = new SdsSecretConfig();
    private static final e2<SdsSecretConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<SdsSecretConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SdsSecretConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SdsSecretConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private Object f49983e;

        /* renamed from: f  reason: collision with root package name */
        private ConfigSource f49984f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> f49985g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f50039d.d(SdsSecretConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SdsSecretConfig build() {
            SdsSecretConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SdsSecretConfig I() {
            SdsSecretConfig sdsSecretConfig = new SdsSecretConfig(this, (a) null);
            sdsSecretConfig.name_ = this.f49983e;
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var = this.f49985g;
            if (q2Var == null) {
                sdsSecretConfig.sdsConfig_ = this.f49984f;
            } else {
                sdsSecretConfig.sdsConfig_ = q2Var.b();
            }
            Q();
            return sdsSecretConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SdsSecretConfig getDefaultInstanceForType() {
            return SdsSecretConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SdsSecretConfig) {
                return g0((SdsSecretConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(SdsSecretConfig sdsSecretConfig) {
            if (sdsSecretConfig == SdsSecretConfig.getDefaultInstance()) {
                return this;
            }
            if (!sdsSecretConfig.getName().isEmpty()) {
                this.f49983e = sdsSecretConfig.name_;
                R();
            }
            if (sdsSecretConfig.hasSdsConfig()) {
                h0(sdsSecretConfig.getSdsConfig());
            }
            z(((GeneratedMessageV3) sdsSecretConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f50038c;
        }

        public b h0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k> q2Var = this.f49985g;
            if (q2Var == null) {
                ConfigSource configSource2 = this.f49984f;
                if (configSource2 != null) {
                    this.f49984f = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                } else {
                    this.f49984f = configSource;
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
            this.f49983e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49983e = "";
            b0();
        }
    }

    /* synthetic */ SdsSecretConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SdsSecretConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f50038c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SdsSecretConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SdsSecretConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SdsSecretConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SdsSecretConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SdsSecretConfig)) {
            return super.equals(obj);
        }
        SdsSecretConfig sdsSecretConfig = (SdsSecretConfig) obj;
        if (getName().equals(sdsSecretConfig.getName()) && hasSdsConfig() == sdsSecretConfig.hasSdsConfig()) {
            return (!hasSdsConfig() || getSdsConfig().equals(sdsSecretConfig.getSdsConfig())) && this.unknownFields.equals(sdsSecretConfig.unknownFields);
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
    public e2<SdsSecretConfig> getParserForType() {
        return PARSER;
    }

    public ConfigSource getSdsConfig() {
        ConfigSource configSource = this.sdsConfig_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k getSdsConfigOrBuilder() {
        return getSdsConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.sdsConfig_ != null) {
            computeStringSize += CodedOutputStream.G(2, getSdsConfig());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasSdsConfig() {
        return this.sdsConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasSdsConfig()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getSdsConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f50039d.d(SdsSecretConfig.class, b.class);
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
        return new SdsSecretConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.sdsConfig_ != null) {
            codedOutputStream.L0(2, getSdsConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SdsSecretConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SdsSecretConfig sdsSecretConfig) {
        return DEFAULT_INSTANCE.toBuilder().g0(sdsSecretConfig);
    }

    public static SdsSecretConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SdsSecretConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SdsSecretConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SdsSecretConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SdsSecretConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SdsSecretConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static SdsSecretConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SdsSecretConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static SdsSecretConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SdsSecretConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SdsSecretConfig parseFrom(InputStream inputStream) throws IOException {
        return (SdsSecretConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private SdsSecretConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            ConfigSource configSource = this.sdsConfig_;
                            ConfigSource.c builder = configSource != null ? configSource.toBuilder() : null;
                            ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                            this.sdsConfig_ = configSource2;
                            if (builder != null) {
                                builder.k0(configSource2);
                                this.sdsConfig_ = builder.I();
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

    public static SdsSecretConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SdsSecretConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SdsSecretConfig parseFrom(p pVar) throws IOException {
        return (SdsSecretConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SdsSecretConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SdsSecretConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
