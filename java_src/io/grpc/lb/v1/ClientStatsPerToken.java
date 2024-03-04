package io.grpc.lb.v1;

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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ClientStatsPerToken extends GeneratedMessageV3 implements io.grpc.lb.v1.b {
    public static final int LOAD_BALANCE_TOKEN_FIELD_NUMBER = 1;
    public static final int NUM_CALLS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object loadBalanceToken_;
    private byte memoizedIsInitialized;
    private long numCalls_;
    private static final ClientStatsPerToken DEFAULT_INSTANCE = new ClientStatsPerToken();
    private static final e2<ClientStatsPerToken> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ClientStatsPerToken> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClientStatsPerToken m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClientStatsPerToken(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.lb.v1.b {

        /* renamed from: e  reason: collision with root package name */
        private Object f43362e;

        /* renamed from: f  reason: collision with root package name */
        private long f43363f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f43392f.d(ClientStatsPerToken.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClientStatsPerToken build() {
            ClientStatsPerToken I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClientStatsPerToken I() {
            ClientStatsPerToken clientStatsPerToken = new ClientStatsPerToken(this, (a) null);
            clientStatsPerToken.loadBalanceToken_ = this.f43362e;
            clientStatsPerToken.numCalls_ = this.f43363f;
            Q();
            return clientStatsPerToken;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ClientStatsPerToken getDefaultInstanceForType() {
            return ClientStatsPerToken.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.lb.v1.ClientStatsPerToken.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.lb.v1.ClientStatsPerToken.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.lb.v1.ClientStatsPerToken r3 = (io.grpc.lb.v1.ClientStatsPerToken) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.lb.v1.ClientStatsPerToken r4 = (io.grpc.lb.v1.ClientStatsPerToken) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.lb.v1.ClientStatsPerToken.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.lb.v1.ClientStatsPerToken$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClientStatsPerToken) {
                return g0((ClientStatsPerToken) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ClientStatsPerToken clientStatsPerToken) {
            if (clientStatsPerToken == ClientStatsPerToken.getDefaultInstance()) {
                return this;
            }
            if (!clientStatsPerToken.getLoadBalanceToken().isEmpty()) {
                this.f43362e = clientStatsPerToken.loadBalanceToken_;
                R();
            }
            if (clientStatsPerToken.getNumCalls() != 0) {
                k0(clientStatsPerToken.getNumCalls());
            }
            z(((GeneratedMessageV3) clientStatsPerToken).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f43391e;
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

        public b j0(String str) {
            Objects.requireNonNull(str);
            this.f43362e = str;
            R();
            return this;
        }

        public b k0(long j10) {
            this.f43363f = j10;
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
            this.f43362e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f43362e = "";
            b0();
        }
    }

    /* synthetic */ ClientStatsPerToken(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClientStatsPerToken getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f43391e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClientStatsPerToken parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClientStatsPerToken) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClientStatsPerToken parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClientStatsPerToken> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientStatsPerToken)) {
            return super.equals(obj);
        }
        ClientStatsPerToken clientStatsPerToken = (ClientStatsPerToken) obj;
        return getLoadBalanceToken().equals(clientStatsPerToken.getLoadBalanceToken()) && getNumCalls() == clientStatsPerToken.getNumCalls() && this.unknownFields.equals(clientStatsPerToken.unknownFields);
    }

    public String getLoadBalanceToken() {
        Object obj = this.loadBalanceToken_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.loadBalanceToken_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLoadBalanceTokenBytes() {
        Object obj = this.loadBalanceToken_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.loadBalanceToken_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public long getNumCalls() {
        return this.numCalls_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClientStatsPerToken> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.loadBalanceToken_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.loadBalanceToken_);
        long j10 = this.numCalls_;
        if (j10 != 0) {
            computeStringSize += CodedOutputStream.z(2, j10);
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getLoadBalanceToken().hashCode()) * 37) + 2) * 53) + u0.i(getNumCalls())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f43392f.d(ClientStatsPerToken.class, b.class);
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
        return new ClientStatsPerToken();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.loadBalanceToken_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.loadBalanceToken_);
        }
        long j10 = this.numCalls_;
        if (j10 != 0) {
            codedOutputStream.J0(2, j10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClientStatsPerToken(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClientStatsPerToken clientStatsPerToken) {
        return DEFAULT_INSTANCE.toBuilder().g0(clientStatsPerToken);
    }

    public static ClientStatsPerToken parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClientStatsPerToken(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClientStatsPerToken parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStatsPerToken) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStatsPerToken parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClientStatsPerToken getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ClientStatsPerToken parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClientStatsPerToken() {
        this.memoizedIsInitialized = (byte) -1;
        this.loadBalanceToken_ = "";
    }

    public static ClientStatsPerToken parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClientStatsPerToken parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClientStatsPerToken parseFrom(InputStream inputStream) throws IOException {
        return (ClientStatsPerToken) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClientStatsPerToken(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.loadBalanceToken_ = pVar.K();
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.numCalls_ = pVar.A();
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

    public static ClientStatsPerToken parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStatsPerToken) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStatsPerToken parseFrom(p pVar) throws IOException {
        return (ClientStatsPerToken) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClientStatsPerToken parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClientStatsPerToken) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
