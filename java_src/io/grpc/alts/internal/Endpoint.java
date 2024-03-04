package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Endpoint extends GeneratedMessageV3 implements q {
    public static final int IP_ADDRESS_FIELD_NUMBER = 1;
    public static final int PORT_FIELD_NUMBER = 2;
    public static final int PROTOCOL_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object ipAddress_;
    private byte memoizedIsInitialized;
    private int port_;
    private int protocol_;
    private static final Endpoint DEFAULT_INSTANCE = new Endpoint();
    private static final e2<Endpoint> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Endpoint> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Endpoint m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Endpoint(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements q {

        /* renamed from: e  reason: collision with root package name */
        private Object f41760e;

        /* renamed from: f  reason: collision with root package name */
        private int f41761f;

        /* renamed from: g  reason: collision with root package name */
        private int f41762g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41947b.d(Endpoint.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Endpoint build() {
            Endpoint I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Endpoint I() {
            Endpoint endpoint = new Endpoint(this, (a) null);
            endpoint.ipAddress_ = this.f41760e;
            endpoint.port_ = this.f41761f;
            endpoint.protocol_ = this.f41762g;
            Q();
            return endpoint;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Endpoint getDefaultInstanceForType() {
            return Endpoint.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.Endpoint.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.Endpoint.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.Endpoint r3 = (io.grpc.alts.internal.Endpoint) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.Endpoint r4 = (io.grpc.alts.internal.Endpoint) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.Endpoint.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.Endpoint$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Endpoint) {
                return g0((Endpoint) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Endpoint endpoint) {
            if (endpoint == Endpoint.getDefaultInstance()) {
                return this;
            }
            if (!endpoint.getIpAddress().isEmpty()) {
                this.f41760e = endpoint.ipAddress_;
                R();
            }
            if (endpoint.getPort() != 0) {
                j0(endpoint.getPort());
            }
            if (endpoint.protocol_ != 0) {
                k0(endpoint.getProtocolValue());
            }
            z(((GeneratedMessageV3) endpoint).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41946a;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b j0(int i9) {
            this.f41761f = i9;
            R();
            return this;
        }

        public b k0(int i9) {
            this.f41762g = i9;
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
            this.f41760e = "";
            this.f41762g = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41760e = "";
            this.f41762g = 0;
            b0();
        }
    }

    /* synthetic */ Endpoint(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Endpoint getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41946a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Endpoint parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Endpoint parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Endpoint> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Endpoint)) {
            return super.equals(obj);
        }
        Endpoint endpoint = (Endpoint) obj;
        return getIpAddress().equals(endpoint.getIpAddress()) && getPort() == endpoint.getPort() && this.protocol_ == endpoint.protocol_ && this.unknownFields.equals(endpoint.unknownFields);
    }

    public String getIpAddress() {
        Object obj = this.ipAddress_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ipAddress_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIpAddressBytes() {
        Object obj = this.ipAddress_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ipAddress_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Endpoint> getParserForType() {
        return PARSER;
    }

    public int getPort() {
        return this.port_;
    }

    public NetworkProtocol getProtocol() {
        NetworkProtocol valueOf = NetworkProtocol.valueOf(this.protocol_);
        return valueOf == null ? NetworkProtocol.UNRECOGNIZED : valueOf;
    }

    public int getProtocolValue() {
        return this.protocol_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.ipAddress_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.ipAddress_);
        int i10 = this.port_;
        if (i10 != 0) {
            computeStringSize += CodedOutputStream.x(2, i10);
        }
        if (this.protocol_ != NetworkProtocol.NETWORK_PROTOCOL_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(3, this.protocol_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getIpAddress().hashCode()) * 37) + 2) * 53) + getPort()) * 37) + 3) * 53) + this.protocol_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41947b.d(Endpoint.class, b.class);
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
        return new Endpoint();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.ipAddress_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.ipAddress_);
        }
        int i9 = this.port_;
        if (i9 != 0) {
            codedOutputStream.H0(2, i9);
        }
        if (this.protocol_ != NetworkProtocol.NETWORK_PROTOCOL_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(3, this.protocol_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Endpoint(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Endpoint endpoint) {
        return DEFAULT_INSTANCE.toBuilder().g0(endpoint);
    }

    public static Endpoint parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Endpoint(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Endpoint parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Endpoint parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Endpoint getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Endpoint parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Endpoint() {
        this.memoizedIsInitialized = (byte) -1;
        this.ipAddress_ = "";
        this.protocol_ = 0;
    }

    public static Endpoint parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Endpoint parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Endpoint parseFrom(InputStream inputStream) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Endpoint(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.ipAddress_ = pVar.K();
                        } else if (L == 16) {
                            this.port_ = pVar.z();
                        } else if (L != 24) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.protocol_ = pVar.u();
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

    public static Endpoint parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Endpoint parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Endpoint parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
