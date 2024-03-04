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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Rds extends GeneratedMessageV3 implements e {
    public static final int CONFIG_SOURCE_FIELD_NUMBER = 1;
    private static final Rds DEFAULT_INSTANCE = new Rds();
    private static final e2<Rds> PARSER = new a();
    public static final int ROUTE_CONFIG_NAME_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private ConfigSource configSource_;
    private byte memoizedIsInitialized;
    private volatile Object routeConfigName_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Rds> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Rds m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Rds(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private ConfigSource f49830e;

        /* renamed from: f  reason: collision with root package name */
        private q2<ConfigSource, ConfigSource.c, k> f49831f;

        /* renamed from: g  reason: collision with root package name */
        private Object f49832g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49894r.d(Rds.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Rds build() {
            Rds I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Rds I() {
            Rds rds = new Rds(this, (a) null);
            q2<ConfigSource, ConfigSource.c, k> q2Var = this.f49831f;
            if (q2Var == null) {
                rds.configSource_ = this.f49830e;
            } else {
                rds.configSource_ = q2Var.b();
            }
            rds.routeConfigName_ = this.f49832g;
            Q();
            return rds;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Rds getDefaultInstanceForType() {
            return Rds.getDefaultInstance();
        }

        public b d0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, k> q2Var = this.f49831f;
            if (q2Var == null) {
                ConfigSource configSource2 = this.f49830e;
                if (configSource2 != null) {
                    this.f49830e = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                } else {
                    this.f49830e = configSource;
                }
                R();
            } else {
                q2Var.e(configSource);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.Rds$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Rds) {
                return h0((Rds) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49893q;
        }

        public b h0(Rds rds) {
            if (rds == Rds.getDefaultInstance()) {
                return this;
            }
            if (rds.hasConfigSource()) {
                d0(rds.getConfigSource());
            }
            if (!rds.getRouteConfigName().isEmpty()) {
                this.f49832g = rds.routeConfigName_;
                R();
            }
            z(((GeneratedMessageV3) rds).unknownFields);
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
            this.f49832g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49832g = "";
            b0();
        }
    }

    /* synthetic */ Rds(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Rds getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49893q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Rds parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Rds) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Rds parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Rds> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Rds)) {
            return super.equals(obj);
        }
        Rds rds = (Rds) obj;
        if (hasConfigSource() != rds.hasConfigSource()) {
            return false;
        }
        return (!hasConfigSource() || getConfigSource().equals(rds.getConfigSource())) && getRouteConfigName().equals(rds.getRouteConfigName()) && this.unknownFields.equals(rds.unknownFields);
    }

    public ConfigSource getConfigSource() {
        ConfigSource configSource = this.configSource_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public k getConfigSourceOrBuilder() {
        return getConfigSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Rds> getParserForType() {
        return PARSER;
    }

    public String getRouteConfigName() {
        Object obj = this.routeConfigName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.routeConfigName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRouteConfigNameBytes() {
        Object obj = this.routeConfigName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.routeConfigName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.configSource_ != null ? 0 + CodedOutputStream.G(1, getConfigSource()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.routeConfigName_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.routeConfigName_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConfigSource() {
        return this.configSource_ != null;
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
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getRouteConfigName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49894r.d(Rds.class, b.class);
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
        return new Rds();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.configSource_ != null) {
            codedOutputStream.L0(1, getConfigSource());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.routeConfigName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.routeConfigName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Rds(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Rds rds) {
        return DEFAULT_INSTANCE.toBuilder().h0(rds);
    }

    public static Rds parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Rds(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Rds parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Rds) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Rds parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Rds getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Rds parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Rds() {
        this.memoizedIsInitialized = (byte) -1;
        this.routeConfigName_ = "";
    }

    public static Rds parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Rds parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Rds parseFrom(InputStream inputStream) throws IOException {
        return (Rds) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Rds(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            ConfigSource configSource = this.configSource_;
                            ConfigSource.c builder = configSource != null ? configSource.toBuilder() : null;
                            ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                            this.configSource_ = configSource2;
                            if (builder != null) {
                                builder.k0(configSource2);
                                this.configSource_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.routeConfigName_ = pVar.K();
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

    public static Rds parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Rds) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Rds parseFrom(p pVar) throws IOException {
        return (Rds) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Rds parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Rds) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
