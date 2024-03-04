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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DirectResponseAction extends GeneratedMessageV3 implements d {
    public static final int BODY_FIELD_NUMBER = 2;
    private static final DirectResponseAction DEFAULT_INSTANCE = new DirectResponseAction();
    private static final e2<DirectResponseAction> PARSER = new a();
    public static final int STATUS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private DataSource body_;
    private byte memoizedIsInitialized;
    private int status_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DirectResponseAction> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DirectResponseAction m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DirectResponseAction(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private int f49129e;

        /* renamed from: f  reason: collision with root package name */
        private DataSource f49130f;

        /* renamed from: g  reason: collision with root package name */
        private q2<DataSource, DataSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n> f49131g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f49492n0.d(DirectResponseAction.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DirectResponseAction build() {
            DirectResponseAction I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DirectResponseAction I() {
            DirectResponseAction directResponseAction = new DirectResponseAction(this, (a) null);
            directResponseAction.status_ = this.f49129e;
            q2<DataSource, DataSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n> q2Var = this.f49131g;
            if (q2Var == null) {
                directResponseAction.body_ = this.f49130f;
            } else {
                directResponseAction.body_ = q2Var.b();
            }
            Q();
            return directResponseAction;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public DirectResponseAction getDefaultInstanceForType() {
            return DirectResponseAction.getDefaultInstance();
        }

        public b d0(DataSource dataSource) {
            q2<DataSource, DataSource.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n> q2Var = this.f49131g;
            if (q2Var == null) {
                DataSource dataSource2 = this.f49130f;
                if (dataSource2 != null) {
                    this.f49130f = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f49130f = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.DirectResponseAction$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DirectResponseAction) {
                return h0((DirectResponseAction) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f49490m0;
        }

        public b h0(DirectResponseAction directResponseAction) {
            if (directResponseAction == DirectResponseAction.getDefaultInstance()) {
                return this;
            }
            if (directResponseAction.getStatus() != 0) {
                k0(directResponseAction.getStatus());
            }
            if (directResponseAction.hasBody()) {
                d0(directResponseAction.getBody());
            }
            z(((GeneratedMessageV3) directResponseAction).unknownFields);
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

        public b k0(int i9) {
            this.f49129e = i9;
            R();
            return this;
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

    /* synthetic */ DirectResponseAction(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DirectResponseAction getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f49490m0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DirectResponseAction parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DirectResponseAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DirectResponseAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DirectResponseAction> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DirectResponseAction)) {
            return super.equals(obj);
        }
        DirectResponseAction directResponseAction = (DirectResponseAction) obj;
        if (getStatus() == directResponseAction.getStatus() && hasBody() == directResponseAction.hasBody()) {
            return (!hasBody() || getBody().equals(directResponseAction.getBody())) && this.unknownFields.equals(directResponseAction.unknownFields);
        }
        return false;
    }

    public DataSource getBody() {
        DataSource dataSource = this.body_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n getBodyOrBuilder() {
        return getBody();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DirectResponseAction> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.status_;
        int Y = i10 != 0 ? 0 + CodedOutputStream.Y(1, i10) : 0;
        if (this.body_ != null) {
            Y += CodedOutputStream.G(2, getBody());
        }
        int serializedSize = Y + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public int getStatus() {
        return this.status_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBody() {
        return this.body_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getStatus();
        if (hasBody()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getBody().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.f49492n0.d(DirectResponseAction.class, b.class);
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
        return new DirectResponseAction();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.status_;
        if (i9 != 0) {
            codedOutputStream.c1(1, i9);
        }
        if (this.body_ != null) {
            codedOutputStream.L0(2, getBody());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DirectResponseAction(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DirectResponseAction directResponseAction) {
        return DEFAULT_INSTANCE.toBuilder().h0(directResponseAction);
    }

    public static DirectResponseAction parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DirectResponseAction(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DirectResponseAction parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DirectResponseAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DirectResponseAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DirectResponseAction getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static DirectResponseAction parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DirectResponseAction() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DirectResponseAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DirectResponseAction parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private DirectResponseAction(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.status_ = pVar.M();
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            DataSource dataSource = this.body_;
                            DataSource.c builder = dataSource != null ? dataSource.toBuilder() : null;
                            DataSource dataSource2 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.body_ = dataSource2;
                            if (builder != null) {
                                builder.g0(dataSource2);
                                this.body_ = builder.I();
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

    public static DirectResponseAction parseFrom(InputStream inputStream) throws IOException {
        return (DirectResponseAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DirectResponseAction parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DirectResponseAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static DirectResponseAction parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (DirectResponseAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DirectResponseAction parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (DirectResponseAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
