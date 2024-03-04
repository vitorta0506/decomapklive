package io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.z2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Bootstrap;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class BootstrapConfigDump extends GeneratedMessageV3 implements r1 {
    public static final int BOOTSTRAP_FIELD_NUMBER = 1;
    public static final int LAST_UPDATED_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Bootstrap bootstrap_;
    private Timestamp lastUpdated_;
    private byte memoizedIsInitialized;
    private static final BootstrapConfigDump DEFAULT_INSTANCE = new BootstrapConfigDump();
    private static final e2<BootstrapConfigDump> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<BootstrapConfigDump> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public BootstrapConfigDump m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new BootstrapConfigDump(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Bootstrap f45762e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Bootstrap, Bootstrap.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.b> f45763f;

        /* renamed from: g  reason: collision with root package name */
        private Timestamp f45764g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f45765h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45901f.d(BootstrapConfigDump.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public BootstrapConfigDump build() {
            BootstrapConfigDump I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public BootstrapConfigDump I() {
            BootstrapConfigDump bootstrapConfigDump = new BootstrapConfigDump(this, (a) null);
            q2<Bootstrap, Bootstrap.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.b> q2Var = this.f45763f;
            if (q2Var == null) {
                bootstrapConfigDump.bootstrap_ = this.f45762e;
            } else {
                bootstrapConfigDump.bootstrap_ = q2Var.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45765h;
            if (q2Var2 == null) {
                bootstrapConfigDump.lastUpdated_ = this.f45764g;
            } else {
                bootstrapConfigDump.lastUpdated_ = q2Var2.b();
            }
            Q();
            return bootstrapConfigDump;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public BootstrapConfigDump getDefaultInstanceForType() {
            return BootstrapConfigDump.getDefaultInstance();
        }

        public b d0(Bootstrap bootstrap) {
            q2<Bootstrap, Bootstrap.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.b> q2Var = this.f45763f;
            if (q2Var == null) {
                Bootstrap bootstrap2 = this.f45762e;
                if (bootstrap2 != null) {
                    this.f45762e = Bootstrap.newBuilder(bootstrap2).B0(bootstrap).I();
                } else {
                    this.f45762e = bootstrap;
                }
                R();
            } else {
                q2Var.e(bootstrap);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.BootstrapConfigDump$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof BootstrapConfigDump) {
                return h0((BootstrapConfigDump) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45900e;
        }

        public b h0(BootstrapConfigDump bootstrapConfigDump) {
            if (bootstrapConfigDump == BootstrapConfigDump.getDefaultInstance()) {
                return this;
            }
            if (bootstrapConfigDump.hasBootstrap()) {
                d0(bootstrapConfigDump.getBootstrap());
            }
            if (bootstrapConfigDump.hasLastUpdated()) {
                i0(bootstrapConfigDump.getLastUpdated());
            }
            z(((GeneratedMessageV3) bootstrapConfigDump).unknownFields);
            R();
            return this;
        }

        public b i0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f45765h;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f45764g;
                if (timestamp2 != null) {
                    this.f45764g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f45764g = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
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

    /* synthetic */ BootstrapConfigDump(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static BootstrapConfigDump getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45900e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BootstrapConfigDump parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BootstrapConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BootstrapConfigDump parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<BootstrapConfigDump> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BootstrapConfigDump)) {
            return super.equals(obj);
        }
        BootstrapConfigDump bootstrapConfigDump = (BootstrapConfigDump) obj;
        if (hasBootstrap() != bootstrapConfigDump.hasBootstrap()) {
            return false;
        }
        if ((!hasBootstrap() || getBootstrap().equals(bootstrapConfigDump.getBootstrap())) && hasLastUpdated() == bootstrapConfigDump.hasLastUpdated()) {
            return (!hasLastUpdated() || getLastUpdated().equals(bootstrapConfigDump.getLastUpdated())) && this.unknownFields.equals(bootstrapConfigDump.unknownFields);
        }
        return false;
    }

    public Bootstrap getBootstrap() {
        Bootstrap bootstrap = this.bootstrap_;
        return bootstrap == null ? Bootstrap.getDefaultInstance() : bootstrap;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.b getBootstrapOrBuilder() {
        return getBootstrap();
    }

    public Timestamp getLastUpdated() {
        Timestamp timestamp = this.lastUpdated_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastUpdatedOrBuilder() {
        return getLastUpdated();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<BootstrapConfigDump> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.bootstrap_ != null ? 0 + CodedOutputStream.G(1, getBootstrap()) : 0;
        if (this.lastUpdated_ != null) {
            G += CodedOutputStream.G(2, getLastUpdated());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBootstrap() {
        return this.bootstrap_ != null;
    }

    public boolean hasLastUpdated() {
        return this.lastUpdated_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasBootstrap()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getBootstrap().hashCode();
        }
        if (hasLastUpdated()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLastUpdated().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45901f.d(BootstrapConfigDump.class, b.class);
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
        return new BootstrapConfigDump();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.bootstrap_ != null) {
            codedOutputStream.L0(1, getBootstrap());
        }
        if (this.lastUpdated_ != null) {
            codedOutputStream.L0(2, getLastUpdated());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ BootstrapConfigDump(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(BootstrapConfigDump bootstrapConfigDump) {
        return DEFAULT_INSTANCE.toBuilder().h0(bootstrapConfigDump);
    }

    public static BootstrapConfigDump parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private BootstrapConfigDump(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BootstrapConfigDump parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (BootstrapConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static BootstrapConfigDump parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public BootstrapConfigDump getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static BootstrapConfigDump parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private BootstrapConfigDump() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BootstrapConfigDump parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static BootstrapConfigDump parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private BootstrapConfigDump(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Bootstrap bootstrap = this.bootstrap_;
                            Bootstrap.c builder = bootstrap != null ? bootstrap.toBuilder() : null;
                            Bootstrap bootstrap2 = (Bootstrap) pVar.B(Bootstrap.parser(), f0Var);
                            this.bootstrap_ = bootstrap2;
                            if (builder != null) {
                                builder.B0(bootstrap2);
                                this.bootstrap_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Timestamp timestamp = this.lastUpdated_;
                            Timestamp.b builder2 = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.lastUpdated_ = timestamp2;
                            if (builder2 != null) {
                                builder2.g0(timestamp2);
                                this.lastUpdated_ = builder2.I();
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

    public static BootstrapConfigDump parseFrom(InputStream inputStream) throws IOException {
        return (BootstrapConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static BootstrapConfigDump parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (BootstrapConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static BootstrapConfigDump parseFrom(p pVar) throws IOException {
        return (BootstrapConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static BootstrapConfigDump parseFrom(p pVar, f0 f0Var) throws IOException {
        return (BootstrapConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
