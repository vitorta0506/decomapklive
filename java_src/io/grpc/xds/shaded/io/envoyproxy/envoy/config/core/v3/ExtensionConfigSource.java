package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ConfigSource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ExtensionConfigSource extends GeneratedMessageV3 implements t {
    public static final int APPLY_DEFAULT_CONFIG_WITHOUT_WARMING_FIELD_NUMBER = 3;
    public static final int CONFIG_SOURCE_FIELD_NUMBER = 1;
    public static final int DEFAULT_CONFIG_FIELD_NUMBER = 2;
    private static final ExtensionConfigSource DEFAULT_INSTANCE = new ExtensionConfigSource();
    private static final e2<ExtensionConfigSource> PARSER = new a();
    public static final int TYPE_URLS_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private boolean applyDefaultConfigWithoutWarming_;
    private ConfigSource configSource_;
    private Any defaultConfig_;
    private byte memoizedIsInitialized;
    private com.google.protobuf.z0 typeUrls_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ExtensionConfigSource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ExtensionConfigSource m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ExtensionConfigSource(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements t {

        /* renamed from: e  reason: collision with root package name */
        private int f47845e;

        /* renamed from: f  reason: collision with root package name */
        private ConfigSource f47846f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ConfigSource, ConfigSource.c, k> f47847g;

        /* renamed from: h  reason: collision with root package name */
        private Any f47848h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f47849i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f47850j;

        /* renamed from: k  reason: collision with root package name */
        private com.google.protobuf.z0 f47851k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47845e & 1) == 0) {
                this.f47851k = new com.google.protobuf.y0(this.f47851k);
                this.f47845e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return v.f48293d.d(ExtensionConfigSource.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ExtensionConfigSource build() {
            ExtensionConfigSource I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ExtensionConfigSource I() {
            ExtensionConfigSource extensionConfigSource = new ExtensionConfigSource(this, (a) null);
            q2<ConfigSource, ConfigSource.c, k> q2Var = this.f47847g;
            if (q2Var == null) {
                extensionConfigSource.configSource_ = this.f47846f;
            } else {
                extensionConfigSource.configSource_ = q2Var.b();
            }
            q2<Any, Any.b, com.google.protobuf.f> q2Var2 = this.f47849i;
            if (q2Var2 == null) {
                extensionConfigSource.defaultConfig_ = this.f47848h;
            } else {
                extensionConfigSource.defaultConfig_ = q2Var2.b();
            }
            extensionConfigSource.applyDefaultConfigWithoutWarming_ = this.f47850j;
            if ((this.f47845e & 1) != 0) {
                this.f47851k = this.f47851k.V0();
                this.f47845e &= -2;
            }
            extensionConfigSource.typeUrls_ = this.f47851k;
            Q();
            return extensionConfigSource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ExtensionConfigSource getDefaultInstanceForType() {
            return ExtensionConfigSource.getDefaultInstance();
        }

        public b e0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, k> q2Var = this.f47847g;
            if (q2Var == null) {
                ConfigSource configSource2 = this.f47846f;
                if (configSource2 != null) {
                    this.f47846f = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                } else {
                    this.f47846f = configSource;
                }
                R();
            } else {
                q2Var.e(configSource);
            }
            return this;
        }

        public b g0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47849i;
            if (q2Var == null) {
                Any any2 = this.f47848h;
                if (any2 != null) {
                    this.f47848h = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f47848h = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return v.f48292c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof ExtensionConfigSource) {
                return j0((ExtensionConfigSource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(ExtensionConfigSource extensionConfigSource) {
            if (extensionConfigSource == ExtensionConfigSource.getDefaultInstance()) {
                return this;
            }
            if (extensionConfigSource.hasConfigSource()) {
                e0(extensionConfigSource.getConfigSource());
            }
            if (extensionConfigSource.hasDefaultConfig()) {
                g0(extensionConfigSource.getDefaultConfig());
            }
            if (extensionConfigSource.getApplyDefaultConfigWithoutWarming()) {
                l0(extensionConfigSource.getApplyDefaultConfigWithoutWarming());
            }
            if (!extensionConfigSource.typeUrls_.isEmpty()) {
                if (this.f47851k.isEmpty()) {
                    this.f47851k = extensionConfigSource.typeUrls_;
                    this.f47845e &= -2;
                } else {
                    a0();
                    this.f47851k.addAll(extensionConfigSource.typeUrls_);
                }
                R();
            }
            z(((GeneratedMessageV3) extensionConfigSource).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b l0(boolean z10) {
            this.f47850j = z10;
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

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47851k = com.google.protobuf.y0.f15344d;
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47851k = com.google.protobuf.y0.f15344d;
            d0();
        }
    }

    /* synthetic */ ExtensionConfigSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ExtensionConfigSource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return v.f48292c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ExtensionConfigSource parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ExtensionConfigSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ExtensionConfigSource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ExtensionConfigSource> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExtensionConfigSource)) {
            return super.equals(obj);
        }
        ExtensionConfigSource extensionConfigSource = (ExtensionConfigSource) obj;
        if (hasConfigSource() != extensionConfigSource.hasConfigSource()) {
            return false;
        }
        if ((!hasConfigSource() || getConfigSource().equals(extensionConfigSource.getConfigSource())) && hasDefaultConfig() == extensionConfigSource.hasDefaultConfig()) {
            return (!hasDefaultConfig() || getDefaultConfig().equals(extensionConfigSource.getDefaultConfig())) && getApplyDefaultConfigWithoutWarming() == extensionConfigSource.getApplyDefaultConfigWithoutWarming() && m1613getTypeUrlsList().equals(extensionConfigSource.m1613getTypeUrlsList()) && this.unknownFields.equals(extensionConfigSource.unknownFields);
        }
        return false;
    }

    public boolean getApplyDefaultConfigWithoutWarming() {
        return this.applyDefaultConfigWithoutWarming_;
    }

    public ConfigSource getConfigSource() {
        ConfigSource configSource = this.configSource_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public k getConfigSourceOrBuilder() {
        return getConfigSource();
    }

    public Any getDefaultConfig() {
        Any any = this.defaultConfig_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public com.google.protobuf.f getDefaultConfigOrBuilder() {
        return getDefaultConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ExtensionConfigSource> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.configSource_ != null ? CodedOutputStream.G(1, getConfigSource()) + 0 : 0;
        if (this.defaultConfig_ != null) {
            G += CodedOutputStream.G(2, getDefaultConfig());
        }
        boolean z10 = this.applyDefaultConfigWithoutWarming_;
        if (z10) {
            G += CodedOutputStream.e(3, z10);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.typeUrls_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.typeUrls_.c1(i11));
        }
        int size = G + i10 + (m1613getTypeUrlsList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
    }

    public String getTypeUrls(int i9) {
        return this.typeUrls_.get(i9);
    }

    public ByteString getTypeUrlsBytes(int i9) {
        return this.typeUrls_.j0(i9);
    }

    public int getTypeUrlsCount() {
        return this.typeUrls_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConfigSource() {
        return this.configSource_ != null;
    }

    public boolean hasDefaultConfig() {
        return this.defaultConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasConfigSource()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getConfigSource().hashCode();
        }
        if (hasDefaultConfig()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getDefaultConfig().hashCode();
        }
        int d10 = (((hashCode * 37) + 3) * 53) + com.google.protobuf.u0.d(getApplyDefaultConfigWithoutWarming());
        if (getTypeUrlsCount() > 0) {
            d10 = (((d10 * 37) + 4) * 53) + m1613getTypeUrlsList().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return v.f48293d.d(ExtensionConfigSource.class, b.class);
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
        return new ExtensionConfigSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.configSource_ != null) {
            codedOutputStream.L0(1, getConfigSource());
        }
        if (this.defaultConfig_ != null) {
            codedOutputStream.L0(2, getDefaultConfig());
        }
        boolean z10 = this.applyDefaultConfigWithoutWarming_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        for (int i9 = 0; i9 < this.typeUrls_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.typeUrls_.c1(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ExtensionConfigSource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ExtensionConfigSource extensionConfigSource) {
        return DEFAULT_INSTANCE.toBuilder().j0(extensionConfigSource);
    }

    public static ExtensionConfigSource parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getTypeUrlsList */
    public i2 m1613getTypeUrlsList() {
        return this.typeUrls_;
    }

    private ExtensionConfigSource(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ExtensionConfigSource parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ExtensionConfigSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ExtensionConfigSource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ExtensionConfigSource getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static ExtensionConfigSource parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ExtensionConfigSource() {
        this.memoizedIsInitialized = (byte) -1;
        this.typeUrls_ = com.google.protobuf.y0.f15344d;
    }

    public static ExtensionConfigSource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ExtensionConfigSource parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ExtensionConfigSource parseFrom(InputStream inputStream) throws IOException {
        return (ExtensionConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ExtensionConfigSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            ConfigSource configSource = this.configSource_;
                            ConfigSource.c builder = configSource != null ? configSource.toBuilder() : null;
                            ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                            this.configSource_ = configSource2;
                            if (builder != null) {
                                builder.k0(configSource2);
                                this.configSource_ = builder.I();
                            }
                        } else if (L == 18) {
                            Any any = this.defaultConfig_;
                            Any.b builder2 = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                            this.defaultConfig_ = any2;
                            if (builder2 != null) {
                                builder2.d0(any2);
                                this.defaultConfig_ = builder2.I();
                            }
                        } else if (L == 24) {
                            this.applyDefaultConfigWithoutWarming_ = pVar.r();
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.typeUrls_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.typeUrls_.add(K);
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
                    this.typeUrls_ = this.typeUrls_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ExtensionConfigSource parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ExtensionConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ExtensionConfigSource parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ExtensionConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ExtensionConfigSource parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ExtensionConfigSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
