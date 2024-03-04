package io.grpc.xds.shaded.com.google.security.meshca.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class MeshCertificateRequest extends GeneratedMessageV3 implements r1 {
    public static final int CSR_FIELD_NUMBER = 2;
    private static final MeshCertificateRequest DEFAULT_INSTANCE = new MeshCertificateRequest();
    private static final e2<MeshCertificateRequest> PARSER = new a();
    public static final int REQUEST_ID_FIELD_NUMBER = 1;
    public static final int VALIDITY_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object csr_;
    private byte memoizedIsInitialized;
    private volatile Object requestId_;
    private Duration validity_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends c<MeshCertificateRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MeshCertificateRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new MeshCertificateRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f45741e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45742f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f45743g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f45744h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45748b.d(MeshCertificateRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MeshCertificateRequest build() {
            MeshCertificateRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MeshCertificateRequest I() {
            MeshCertificateRequest meshCertificateRequest = new MeshCertificateRequest(this, (a) null);
            meshCertificateRequest.requestId_ = this.f45741e;
            meshCertificateRequest.csr_ = this.f45742f;
            q2<Duration, Duration.b, v> q2Var = this.f45744h;
            if (q2Var == null) {
                meshCertificateRequest.validity_ = this.f45743g;
            } else {
                meshCertificateRequest.validity_ = q2Var.b();
            }
            Q();
            return meshCertificateRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public MeshCertificateRequest getDefaultInstanceForType() {
            return MeshCertificateRequest.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest r3 = (io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest r4 = (io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.security.meshca.v1.MeshCertificateRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof MeshCertificateRequest) {
                return g0((MeshCertificateRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(MeshCertificateRequest meshCertificateRequest) {
            if (meshCertificateRequest == MeshCertificateRequest.getDefaultInstance()) {
                return this;
            }
            if (!meshCertificateRequest.getRequestId().isEmpty()) {
                this.f45741e = meshCertificateRequest.requestId_;
                R();
            }
            if (!meshCertificateRequest.getCsr().isEmpty()) {
                this.f45742f = meshCertificateRequest.csr_;
                R();
            }
            if (meshCertificateRequest.hasValidity()) {
                i0(meshCertificateRequest.getValidity());
            }
            z(((GeneratedMessageV3) meshCertificateRequest).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45747a;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f45744h;
            if (q2Var == null) {
                Duration duration2 = this.f45743g;
                if (duration2 != null) {
                    this.f45743g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f45743g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
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
            this.f45741e = "";
            this.f45742f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45741e = "";
            this.f45742f = "";
            b0();
        }
    }

    /* synthetic */ MeshCertificateRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MeshCertificateRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45747a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MeshCertificateRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MeshCertificateRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MeshCertificateRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MeshCertificateRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MeshCertificateRequest)) {
            return super.equals(obj);
        }
        MeshCertificateRequest meshCertificateRequest = (MeshCertificateRequest) obj;
        if (getRequestId().equals(meshCertificateRequest.getRequestId()) && getCsr().equals(meshCertificateRequest.getCsr()) && hasValidity() == meshCertificateRequest.hasValidity()) {
            return (!hasValidity() || getValidity().equals(meshCertificateRequest.getValidity())) && this.unknownFields.equals(meshCertificateRequest.unknownFields);
        }
        return false;
    }

    public String getCsr() {
        Object obj = this.csr_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.csr_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCsrBytes() {
        Object obj = this.csr_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.csr_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MeshCertificateRequest> getParserForType() {
        return PARSER;
    }

    public String getRequestId() {
        Object obj = this.requestId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.requestId_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRequestIdBytes() {
        Object obj = this.requestId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.requestId_ = copyFromUtf8;
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
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.requestId_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.requestId_);
        if (!GeneratedMessageV3.isStringEmpty(this.csr_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.csr_);
        }
        if (this.validity_ != null) {
            computeStringSize += CodedOutputStream.G(3, getValidity());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public Duration getValidity() {
        Duration duration = this.validity_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getValidityOrBuilder() {
        return getValidity();
    }

    public boolean hasValidity() {
        return this.validity_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRequestId().hashCode()) * 37) + 2) * 53) + getCsr().hashCode();
        if (hasValidity()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getValidity().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.google.security.meshca.v1.a.f45748b.d(MeshCertificateRequest.class, b.class);
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
        return new MeshCertificateRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.requestId_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.requestId_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.csr_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.csr_);
        }
        if (this.validity_ != null) {
            codedOutputStream.L0(3, getValidity());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MeshCertificateRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MeshCertificateRequest meshCertificateRequest) {
        return DEFAULT_INSTANCE.toBuilder().g0(meshCertificateRequest);
    }

    public static MeshCertificateRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MeshCertificateRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MeshCertificateRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MeshCertificateRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MeshCertificateRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MeshCertificateRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static MeshCertificateRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MeshCertificateRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.requestId_ = "";
        this.csr_ = "";
    }

    public static MeshCertificateRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MeshCertificateRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MeshCertificateRequest parseFrom(InputStream inputStream) throws IOException {
        return (MeshCertificateRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private MeshCertificateRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.requestId_ = pVar.K();
                        } else if (L == 18) {
                            this.csr_ = pVar.K();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Duration duration = this.validity_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.validity_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.validity_ = builder.I();
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

    public static MeshCertificateRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MeshCertificateRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MeshCertificateRequest parseFrom(p pVar) throws IOException {
        return (MeshCertificateRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MeshCertificateRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (MeshCertificateRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
