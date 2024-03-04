package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3;

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
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class EnvoyMobileHttpConnectionManager extends GeneratedMessageV3 implements r1 {
    public static final int CONFIG_FIELD_NUMBER = 1;
    private static final EnvoyMobileHttpConnectionManager DEFAULT_INSTANCE = new EnvoyMobileHttpConnectionManager();
    private static final e2<EnvoyMobileHttpConnectionManager> PARSER = new a();
    private static final long serialVersionUID = 0;
    private HttpConnectionManager config_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<EnvoyMobileHttpConnectionManager> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public EnvoyMobileHttpConnectionManager m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new EnvoyMobileHttpConnectionManager(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private HttpConnectionManager f49753e;

        /* renamed from: f  reason: collision with root package name */
        private q2<HttpConnectionManager, HttpConnectionManager.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.a> f49754f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.L.d(EnvoyMobileHttpConnectionManager.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public EnvoyMobileHttpConnectionManager build() {
            EnvoyMobileHttpConnectionManager I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public EnvoyMobileHttpConnectionManager I() {
            EnvoyMobileHttpConnectionManager envoyMobileHttpConnectionManager = new EnvoyMobileHttpConnectionManager(this, (a) null);
            q2<HttpConnectionManager, HttpConnectionManager.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.a> q2Var = this.f49754f;
            if (q2Var == null) {
                envoyMobileHttpConnectionManager.config_ = this.f49753e;
            } else {
                envoyMobileHttpConnectionManager.config_ = q2Var.b();
            }
            Q();
            return envoyMobileHttpConnectionManager;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public EnvoyMobileHttpConnectionManager getDefaultInstanceForType() {
            return EnvoyMobileHttpConnectionManager.getDefaultInstance();
        }

        public b d0(HttpConnectionManager httpConnectionManager) {
            q2<HttpConnectionManager, HttpConnectionManager.c, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.a> q2Var = this.f49754f;
            if (q2Var == null) {
                HttpConnectionManager httpConnectionManager2 = this.f49753e;
                if (httpConnectionManager2 != null) {
                    this.f49753e = HttpConnectionManager.newBuilder(httpConnectionManager2).t0(httpConnectionManager).I();
                } else {
                    this.f49753e = httpConnectionManager;
                }
                R();
            } else {
                q2Var.e(httpConnectionManager);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.EnvoyMobileHttpConnectionManager$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof EnvoyMobileHttpConnectionManager) {
                return h0((EnvoyMobileHttpConnectionManager) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.K;
        }

        public b h0(EnvoyMobileHttpConnectionManager envoyMobileHttpConnectionManager) {
            if (envoyMobileHttpConnectionManager == EnvoyMobileHttpConnectionManager.getDefaultInstance()) {
                return this;
            }
            if (envoyMobileHttpConnectionManager.hasConfig()) {
                d0(envoyMobileHttpConnectionManager.getConfig());
            }
            z(((GeneratedMessageV3) envoyMobileHttpConnectionManager).unknownFields);
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

    /* synthetic */ EnvoyMobileHttpConnectionManager(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static EnvoyMobileHttpConnectionManager getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.K;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static EnvoyMobileHttpConnectionManager parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (EnvoyMobileHttpConnectionManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<EnvoyMobileHttpConnectionManager> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EnvoyMobileHttpConnectionManager)) {
            return super.equals(obj);
        }
        EnvoyMobileHttpConnectionManager envoyMobileHttpConnectionManager = (EnvoyMobileHttpConnectionManager) obj;
        if (hasConfig() != envoyMobileHttpConnectionManager.hasConfig()) {
            return false;
        }
        return (!hasConfig() || getConfig().equals(envoyMobileHttpConnectionManager.getConfig())) && this.unknownFields.equals(envoyMobileHttpConnectionManager.unknownFields);
    }

    public HttpConnectionManager getConfig() {
        HttpConnectionManager httpConnectionManager = this.config_;
        return httpConnectionManager == null ? HttpConnectionManager.getDefaultInstance() : httpConnectionManager;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.a getConfigOrBuilder() {
        return getConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<EnvoyMobileHttpConnectionManager> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.config_ != null ? 0 + CodedOutputStream.G(1, getConfig()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConfig() {
        return this.config_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasConfig()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.L.d(EnvoyMobileHttpConnectionManager.class, b.class);
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
        return new EnvoyMobileHttpConnectionManager();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.config_ != null) {
            codedOutputStream.L0(1, getConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ EnvoyMobileHttpConnectionManager(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(EnvoyMobileHttpConnectionManager envoyMobileHttpConnectionManager) {
        return DEFAULT_INSTANCE.toBuilder().h0(envoyMobileHttpConnectionManager);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private EnvoyMobileHttpConnectionManager(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EnvoyMobileHttpConnectionManager parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (EnvoyMobileHttpConnectionManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public EnvoyMobileHttpConnectionManager getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private EnvoyMobileHttpConnectionManager() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private EnvoyMobileHttpConnectionManager(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                HttpConnectionManager httpConnectionManager = this.config_;
                                HttpConnectionManager.c builder = httpConnectionManager != null ? httpConnectionManager.toBuilder() : null;
                                HttpConnectionManager httpConnectionManager2 = (HttpConnectionManager) pVar.B(HttpConnectionManager.parser(), f0Var);
                                this.config_ = httpConnectionManager2;
                                if (builder != null) {
                                    builder.t0(httpConnectionManager2);
                                    this.config_ = builder.I();
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

    public static EnvoyMobileHttpConnectionManager parseFrom(InputStream inputStream) throws IOException {
        return (EnvoyMobileHttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (EnvoyMobileHttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(p pVar) throws IOException {
        return (EnvoyMobileHttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static EnvoyMobileHttpConnectionManager parseFrom(p pVar, f0 f0Var) throws IOException {
        return (EnvoyMobileHttpConnectionManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
