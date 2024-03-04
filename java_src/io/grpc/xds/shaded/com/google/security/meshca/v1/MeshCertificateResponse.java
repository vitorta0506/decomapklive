package io.grpc.xds.shaded.com.google.security.meshca.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class MeshCertificateResponse extends GeneratedMessageV3 implements r1 {
    public static final int CERT_CHAIN_FIELD_NUMBER = 1;
    private static final MeshCertificateResponse DEFAULT_INSTANCE = new MeshCertificateResponse();
    private static final e2<MeshCertificateResponse> PARSER = new a();
    private static final long serialVersionUID = 0;
    private z0 certChain_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends c<MeshCertificateResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MeshCertificateResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new MeshCertificateResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f45745e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f45746f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45745e & 1) == 0) {
                this.f45746f = new y0(this.f45746f);
                this.f45745e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45750d.d(MeshCertificateResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MeshCertificateResponse build() {
            MeshCertificateResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MeshCertificateResponse I() {
            MeshCertificateResponse meshCertificateResponse = new MeshCertificateResponse(this, (a) null);
            if ((this.f45745e & 1) != 0) {
                this.f45746f = this.f45746f.V0();
                this.f45745e &= -2;
            }
            meshCertificateResponse.certChain_ = this.f45746f;
            Q();
            return meshCertificateResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public MeshCertificateResponse getDefaultInstanceForType() {
            return MeshCertificateResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse r3 = (io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse r4 = (io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof MeshCertificateResponse) {
                return h0((MeshCertificateResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45749c;
        }

        public b h0(MeshCertificateResponse meshCertificateResponse) {
            if (meshCertificateResponse == MeshCertificateResponse.getDefaultInstance()) {
                return this;
            }
            if (!meshCertificateResponse.certChain_.isEmpty()) {
                if (this.f45746f.isEmpty()) {
                    this.f45746f = meshCertificateResponse.certChain_;
                    this.f45745e &= -2;
                } else {
                    a0();
                    this.f45746f.addAll(meshCertificateResponse.certChain_);
                }
                R();
            }
            z(((GeneratedMessageV3) meshCertificateResponse).unknownFields);
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
            this.f45746f = y0.f15344d;
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45746f = y0.f15344d;
            d0();
        }
    }

    /* synthetic */ MeshCertificateResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MeshCertificateResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45749c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MeshCertificateResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MeshCertificateResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MeshCertificateResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MeshCertificateResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MeshCertificateResponse)) {
            return super.equals(obj);
        }
        MeshCertificateResponse meshCertificateResponse = (MeshCertificateResponse) obj;
        return m1575getCertChainList().equals(meshCertificateResponse.m1575getCertChainList()) && this.unknownFields.equals(meshCertificateResponse.unknownFields);
    }

    public String getCertChain(int i9) {
        return this.certChain_.get(i9);
    }

    public ByteString getCertChainBytes(int i9) {
        return this.certChain_.j0(i9);
    }

    public int getCertChainCount() {
        return this.certChain_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MeshCertificateResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.certChain_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.certChain_.c1(i11));
        }
        int size = 0 + i10 + (m1575getCertChainList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getCertChainCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m1575getCertChainList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45750d.d(MeshCertificateResponse.class, b.class);
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
        return new MeshCertificateResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.certChain_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.certChain_.c1(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MeshCertificateResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MeshCertificateResponse meshCertificateResponse) {
        return DEFAULT_INSTANCE.toBuilder().h0(meshCertificateResponse);
    }

    public static MeshCertificateResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getCertChainList */
    public i2 m1575getCertChainList() {
        return this.certChain_;
    }

    private MeshCertificateResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MeshCertificateResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MeshCertificateResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MeshCertificateResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MeshCertificateResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static MeshCertificateResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MeshCertificateResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.certChain_ = y0.f15344d;
    }

    public static MeshCertificateResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MeshCertificateResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MeshCertificateResponse parseFrom(InputStream inputStream) throws IOException {
        return (MeshCertificateResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private MeshCertificateResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.certChain_ = new y0();
                                z11 |= true;
                            }
                            this.certChain_.add(K);
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
                    this.certChain_ = this.certChain_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static MeshCertificateResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MeshCertificateResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MeshCertificateResponse parseFrom(p pVar) throws IOException {
        return (MeshCertificateResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MeshCertificateResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (MeshCertificateResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
