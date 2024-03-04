package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

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
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ClusterSpecifierPlugin extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.a {
    public static final int EXTENSION_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private TypedExtensionConfig extension_;
    private byte memoizedIsInitialized;
    private static final ClusterSpecifierPlugin DEFAULT_INSTANCE = new ClusterSpecifierPlugin();
    private static final e2<ClusterSpecifierPlugin> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ClusterSpecifierPlugin> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClusterSpecifierPlugin m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClusterSpecifierPlugin(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private TypedExtensionConfig f49109e;

        /* renamed from: f  reason: collision with root package name */
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f49110f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return s.f49520d.d(ClusterSpecifierPlugin.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClusterSpecifierPlugin build() {
            ClusterSpecifierPlugin I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClusterSpecifierPlugin I() {
            ClusterSpecifierPlugin clusterSpecifierPlugin = new ClusterSpecifierPlugin(this, (a) null);
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f49110f;
            if (q2Var == null) {
                clusterSpecifierPlugin.extension_ = this.f49109e;
            } else {
                clusterSpecifierPlugin.extension_ = q2Var.b();
            }
            Q();
            return clusterSpecifierPlugin;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ClusterSpecifierPlugin getDefaultInstanceForType() {
            return ClusterSpecifierPlugin.getDefaultInstance();
        }

        public b d0(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f49110f;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.f49109e;
                if (typedExtensionConfig2 != null) {
                    this.f49109e = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.f49109e = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClusterSpecifierPlugin) {
                return h0((ClusterSpecifierPlugin) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return s.f49519c;
        }

        public b h0(ClusterSpecifierPlugin clusterSpecifierPlugin) {
            if (clusterSpecifierPlugin == ClusterSpecifierPlugin.getDefaultInstance()) {
                return this;
            }
            if (clusterSpecifierPlugin.hasExtension()) {
                d0(clusterSpecifierPlugin.getExtension());
            }
            z(((GeneratedMessageV3) clusterSpecifierPlugin).unknownFields);
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ ClusterSpecifierPlugin(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClusterSpecifierPlugin getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return s.f49519c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClusterSpecifierPlugin parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClusterSpecifierPlugin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClusterSpecifierPlugin parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClusterSpecifierPlugin> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClusterSpecifierPlugin)) {
            return super.equals(obj);
        }
        ClusterSpecifierPlugin clusterSpecifierPlugin = (ClusterSpecifierPlugin) obj;
        if (hasExtension() != clusterSpecifierPlugin.hasExtension()) {
            return false;
        }
        return (!hasExtension() || getExtension().equals(clusterSpecifierPlugin.getExtension())) && this.unknownFields.equals(clusterSpecifierPlugin.unknownFields);
    }

    public TypedExtensionConfig getExtension() {
        TypedExtensionConfig typedExtensionConfig = this.extension_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getExtensionOrBuilder() {
        return getExtension();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClusterSpecifierPlugin> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.extension_ != null ? 0 + CodedOutputStream.G(1, getExtension()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasExtension() {
        return this.extension_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasExtension()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getExtension().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return s.f49520d.d(ClusterSpecifierPlugin.class, b.class);
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
        return new ClusterSpecifierPlugin();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.extension_ != null) {
            codedOutputStream.L0(1, getExtension());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClusterSpecifierPlugin(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClusterSpecifierPlugin clusterSpecifierPlugin) {
        return DEFAULT_INSTANCE.toBuilder().h0(clusterSpecifierPlugin);
    }

    public static ClusterSpecifierPlugin parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClusterSpecifierPlugin(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClusterSpecifierPlugin parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterSpecifierPlugin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterSpecifierPlugin parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClusterSpecifierPlugin getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static ClusterSpecifierPlugin parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClusterSpecifierPlugin() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClusterSpecifierPlugin parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClusterSpecifierPlugin parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private ClusterSpecifierPlugin(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                TypedExtensionConfig typedExtensionConfig = this.extension_;
                                TypedExtensionConfig.b builder = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                                TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                                this.extension_ = typedExtensionConfig2;
                                if (builder != null) {
                                    builder.g0(typedExtensionConfig2);
                                    this.extension_ = builder.I();
                                }
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

    public static ClusterSpecifierPlugin parseFrom(InputStream inputStream) throws IOException {
        return (ClusterSpecifierPlugin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ClusterSpecifierPlugin parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterSpecifierPlugin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterSpecifierPlugin parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ClusterSpecifierPlugin) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClusterSpecifierPlugin parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ClusterSpecifierPlugin) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
