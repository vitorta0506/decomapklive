package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.n;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class GenericSecret extends GeneratedMessageV3 implements e {
    private static final GenericSecret DEFAULT_INSTANCE = new GenericSecret();
    private static final e2<GenericSecret> PARSER = new a();
    public static final int SECRET_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private DataSource secret_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<GenericSecret> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GenericSecret m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new GenericSecret(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private DataSource f46192e;

        /* renamed from: f  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46193f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f46250b.d(GenericSecret.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GenericSecret build() {
            GenericSecret I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GenericSecret I() {
            GenericSecret genericSecret = new GenericSecret(this, (a) null);
            q2<DataSource, DataSource.c, n> q2Var = this.f46193f;
            if (q2Var == null) {
                genericSecret.secret_ = this.f46192e;
            } else {
                genericSecret.secret_ = q2Var.b();
            }
            Q();
            return genericSecret;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public GenericSecret getDefaultInstanceForType() {
            return GenericSecret.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.GenericSecret$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof GenericSecret) {
                return g0((GenericSecret) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(GenericSecret genericSecret) {
            if (genericSecret == GenericSecret.getDefaultInstance()) {
                return this;
            }
            if (genericSecret.hasSecret()) {
                h0(genericSecret.getSecret());
            }
            z(((GeneratedMessageV3) genericSecret).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f46249a;
        }

        public b h0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46193f;
            if (q2Var == null) {
                DataSource dataSource2 = this.f46192e;
                if (dataSource2 != null) {
                    this.f46192e = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f46192e = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ GenericSecret(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GenericSecret getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f46249a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GenericSecret parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GenericSecret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GenericSecret parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GenericSecret> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GenericSecret)) {
            return super.equals(obj);
        }
        GenericSecret genericSecret = (GenericSecret) obj;
        if (hasSecret() != genericSecret.hasSecret()) {
            return false;
        }
        return (!hasSecret() || getSecret().equals(genericSecret.getSecret())) && this.unknownFields.equals(genericSecret.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GenericSecret> getParserForType() {
        return PARSER;
    }

    public DataSource getSecret() {
        DataSource dataSource = this.secret_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getSecretOrBuilder() {
        return getSecret();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.secret_ != null ? 0 + CodedOutputStream.G(1, getSecret()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasSecret() {
        return this.secret_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasSecret()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSecret().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f46250b.d(GenericSecret.class, b.class);
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
        return new GenericSecret();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.secret_ != null) {
            codedOutputStream.L0(1, getSecret());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GenericSecret(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(GenericSecret genericSecret) {
        return DEFAULT_INSTANCE.toBuilder().g0(genericSecret);
    }

    public static GenericSecret parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GenericSecret(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GenericSecret parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GenericSecret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GenericSecret parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GenericSecret getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static GenericSecret parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private GenericSecret() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GenericSecret parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static GenericSecret parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private GenericSecret(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                DataSource dataSource = this.secret_;
                                DataSource.c builder = dataSource != null ? dataSource.toBuilder() : null;
                                DataSource dataSource2 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                                this.secret_ = dataSource2;
                                if (builder != null) {
                                    builder.g0(dataSource2);
                                    this.secret_ = builder.I();
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

    public static GenericSecret parseFrom(InputStream inputStream) throws IOException {
        return (GenericSecret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static GenericSecret parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GenericSecret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static GenericSecret parseFrom(p pVar) throws IOException {
        return (GenericSecret) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GenericSecret parseFrom(p pVar, f0 f0Var) throws IOException {
        return (GenericSecret) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
