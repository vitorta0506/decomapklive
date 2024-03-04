package io.grpc.binarylog.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.v;
import io.grpc.binarylog.v1.Metadata;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ClientHeader extends GeneratedMessageV3 implements c {
    public static final int AUTHORITY_FIELD_NUMBER = 3;
    public static final int METADATA_FIELD_NUMBER = 1;
    public static final int METHOD_NAME_FIELD_NUMBER = 2;
    public static final int TIMEOUT_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object authority_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private volatile Object methodName_;
    private Duration timeout_;
    private static final ClientHeader DEFAULT_INSTANCE = new ClientHeader();
    private static final e2<ClientHeader> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ClientHeader> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClientHeader m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClientHeader(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private Metadata f41984e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Metadata, Metadata.b, f> f41985f;

        /* renamed from: g  reason: collision with root package name */
        private Object f41986g;

        /* renamed from: h  reason: collision with root package name */
        private Object f41987h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f41988i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f41989j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.binarylog.v1.b.f42023d.d(ClientHeader.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClientHeader build() {
            ClientHeader I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClientHeader I() {
            ClientHeader clientHeader = new ClientHeader(this, (a) null);
            q2<Metadata, Metadata.b, f> q2Var = this.f41985f;
            if (q2Var == null) {
                clientHeader.metadata_ = this.f41984e;
            } else {
                clientHeader.metadata_ = q2Var.b();
            }
            clientHeader.methodName_ = this.f41986g;
            clientHeader.authority_ = this.f41987h;
            q2<Duration, Duration.b, v> q2Var2 = this.f41989j;
            if (q2Var2 == null) {
                clientHeader.timeout_ = this.f41988i;
            } else {
                clientHeader.timeout_ = q2Var2.b();
            }
            Q();
            return clientHeader;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ClientHeader getDefaultInstanceForType() {
            return ClientHeader.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.binarylog.v1.ClientHeader.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.binarylog.v1.ClientHeader.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.binarylog.v1.ClientHeader r3 = (io.grpc.binarylog.v1.ClientHeader) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.binarylog.v1.ClientHeader r4 = (io.grpc.binarylog.v1.ClientHeader) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.binarylog.v1.ClientHeader.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.binarylog.v1.ClientHeader$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClientHeader) {
                return g0((ClientHeader) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ClientHeader clientHeader) {
            if (clientHeader == ClientHeader.getDefaultInstance()) {
                return this;
            }
            if (clientHeader.hasMetadata()) {
                h0(clientHeader.getMetadata());
            }
            if (!clientHeader.getMethodName().isEmpty()) {
                this.f41986g = clientHeader.methodName_;
                R();
            }
            if (!clientHeader.getAuthority().isEmpty()) {
                this.f41987h = clientHeader.authority_;
                R();
            }
            if (clientHeader.hasTimeout()) {
                i0(clientHeader.getTimeout());
            }
            z(((GeneratedMessageV3) clientHeader).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.binarylog.v1.b.f42022c;
        }

        public b h0(Metadata metadata) {
            q2<Metadata, Metadata.b, f> q2Var = this.f41985f;
            if (q2Var == null) {
                Metadata metadata2 = this.f41984e;
                if (metadata2 != null) {
                    this.f41984e = Metadata.newBuilder(metadata2).i0(metadata).I();
                } else {
                    this.f41984e = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f41989j;
            if (q2Var == null) {
                Duration duration2 = this.f41988i;
                if (duration2 != null) {
                    this.f41988i = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f41988i = duration;
                }
                R();
            } else {
                q2Var.e(duration);
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
            this.f41986g = "";
            this.f41987h = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41986g = "";
            this.f41987h = "";
            b0();
        }
    }

    /* synthetic */ ClientHeader(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClientHeader getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.binarylog.v1.b.f42022c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClientHeader parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClientHeader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClientHeader parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClientHeader> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientHeader)) {
            return super.equals(obj);
        }
        ClientHeader clientHeader = (ClientHeader) obj;
        if (hasMetadata() != clientHeader.hasMetadata()) {
            return false;
        }
        if ((!hasMetadata() || getMetadata().equals(clientHeader.getMetadata())) && getMethodName().equals(clientHeader.getMethodName()) && getAuthority().equals(clientHeader.getAuthority()) && hasTimeout() == clientHeader.hasTimeout()) {
            return (!hasTimeout() || getTimeout().equals(clientHeader.getTimeout())) && this.unknownFields.equals(clientHeader.unknownFields);
        }
        return false;
    }

    public String getAuthority() {
        Object obj = this.authority_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.authority_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAuthorityBytes() {
        Object obj = this.authority_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authority_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Metadata getMetadata() {
        Metadata metadata = this.metadata_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public f getMetadataOrBuilder() {
        return getMetadata();
    }

    public String getMethodName() {
        Object obj = this.methodName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.methodName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMethodNameBytes() {
        Object obj = this.methodName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.methodName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClientHeader> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.metadata_ != null ? 0 + CodedOutputStream.G(1, getMetadata()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.methodName_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.methodName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.authority_);
        }
        if (this.timeout_ != null) {
            G += CodedOutputStream.G(4, getTimeout());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Duration getTimeout() {
        Duration duration = this.timeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getTimeoutOrBuilder() {
        return getTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasTimeout() {
        return this.timeout_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMetadata()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMetadata().hashCode();
        }
        int hashCode2 = (((((((hashCode * 37) + 2) * 53) + getMethodName().hashCode()) * 37) + 3) * 53) + getAuthority().hashCode();
        if (hasTimeout()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getTimeout().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.binarylog.v1.b.f42023d.d(ClientHeader.class, b.class);
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
        return new ClientHeader();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.metadata_ != null) {
            codedOutputStream.L0(1, getMetadata());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.methodName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.methodName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.authority_);
        }
        if (this.timeout_ != null) {
            codedOutputStream.L0(4, getTimeout());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClientHeader(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClientHeader clientHeader) {
        return DEFAULT_INSTANCE.toBuilder().g0(clientHeader);
    }

    public static ClientHeader parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClientHeader(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClientHeader parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientHeader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientHeader parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClientHeader getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ClientHeader parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClientHeader() {
        this.memoizedIsInitialized = (byte) -1;
        this.methodName_ = "";
        this.authority_ = "";
    }

    public static ClientHeader parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClientHeader parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClientHeader parseFrom(InputStream inputStream) throws IOException {
        return (ClientHeader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClientHeader(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                Metadata metadata = this.metadata_;
                                Metadata.b builder = metadata != null ? metadata.toBuilder() : null;
                                Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                                this.metadata_ = metadata2;
                                if (builder != null) {
                                    builder.i0(metadata2);
                                    this.metadata_ = builder.I();
                                }
                            } else if (L == 18) {
                                this.methodName_ = pVar.K();
                            } else if (L == 26) {
                                this.authority_ = pVar.K();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Duration duration = this.timeout_;
                                Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.timeout_ = duration2;
                                if (builder2 != null) {
                                    builder2.e0(duration2);
                                    this.timeout_ = builder2.I();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClientHeader parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientHeader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientHeader parseFrom(p pVar) throws IOException {
        return (ClientHeader) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClientHeader parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClientHeader) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
