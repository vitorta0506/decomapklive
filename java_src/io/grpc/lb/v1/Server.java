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
public final class Server extends GeneratedMessageV3 implements i {
    public static final int DROP_FIELD_NUMBER = 4;
    public static final int IP_ADDRESS_FIELD_NUMBER = 1;
    public static final int LOAD_BALANCE_TOKEN_FIELD_NUMBER = 3;
    public static final int PORT_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private boolean drop_;
    private ByteString ipAddress_;
    private volatile Object loadBalanceToken_;
    private byte memoizedIsInitialized;
    private int port_;
    private static final Server DEFAULT_INSTANCE = new Server();
    private static final e2<Server> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Server> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Server m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Server(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private ByteString f43378e;

        /* renamed from: f  reason: collision with root package name */
        private int f43379f;

        /* renamed from: g  reason: collision with root package name */
        private Object f43380g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f43381h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f43404r.d(Server.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Server build() {
            Server I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Server I() {
            Server server = new Server(this, (a) null);
            server.ipAddress_ = this.f43378e;
            server.port_ = this.f43379f;
            server.loadBalanceToken_ = this.f43380g;
            server.drop_ = this.f43381h;
            Q();
            return server;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Server getDefaultInstanceForType() {
            return Server.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.lb.v1.Server.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.lb.v1.Server.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.lb.v1.Server r3 = (io.grpc.lb.v1.Server) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.lb.v1.Server r4 = (io.grpc.lb.v1.Server) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.lb.v1.Server.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.lb.v1.Server$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Server) {
                return g0((Server) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Server server) {
            if (server == Server.getDefaultInstance()) {
                return this;
            }
            if (server.getIpAddress() != ByteString.EMPTY) {
                k0(server.getIpAddress());
            }
            if (server.getPort() != 0) {
                l0(server.getPort());
            }
            if (!server.getLoadBalanceToken().isEmpty()) {
                this.f43380g = server.loadBalanceToken_;
                R();
            }
            if (server.getDrop()) {
                i0(server.getDrop());
            }
            z(((GeneratedMessageV3) server).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f43403q;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(boolean z10) {
            this.f43381h = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b k0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f43378e = byteString;
            R();
            return this;
        }

        public b l0(int i9) {
            this.f43379f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f43378e = ByteString.EMPTY;
            this.f43380g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f43378e = ByteString.EMPTY;
            this.f43380g = "";
            b0();
        }
    }

    /* synthetic */ Server(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Server getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f43403q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Server parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Server) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Server parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Server> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Server)) {
            return super.equals(obj);
        }
        Server server = (Server) obj;
        return getIpAddress().equals(server.getIpAddress()) && getPort() == server.getPort() && getLoadBalanceToken().equals(server.getLoadBalanceToken()) && getDrop() == server.getDrop() && this.unknownFields.equals(server.unknownFields);
    }

    public boolean getDrop() {
        return this.drop_;
    }

    public ByteString getIpAddress() {
        return this.ipAddress_;
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Server> getParserForType() {
        return PARSER;
    }

    public int getPort() {
        return this.port_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int h10 = this.ipAddress_.isEmpty() ? 0 : 0 + CodedOutputStream.h(1, this.ipAddress_);
        int i10 = this.port_;
        if (i10 != 0) {
            h10 += CodedOutputStream.x(2, i10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.loadBalanceToken_)) {
            h10 += GeneratedMessageV3.computeStringSize(3, this.loadBalanceToken_);
        }
        boolean z10 = this.drop_;
        if (z10) {
            h10 += CodedOutputStream.e(4, z10);
        }
        int serializedSize = h10 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getIpAddress().hashCode()) * 37) + 2) * 53) + getPort()) * 37) + 3) * 53) + getLoadBalanceToken().hashCode()) * 37) + 4) * 53) + u0.d(getDrop())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f43404r.d(Server.class, b.class);
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
        return new Server();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.ipAddress_.isEmpty()) {
            codedOutputStream.r0(1, this.ipAddress_);
        }
        int i9 = this.port_;
        if (i9 != 0) {
            codedOutputStream.H0(2, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.loadBalanceToken_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.loadBalanceToken_);
        }
        boolean z10 = this.drop_;
        if (z10) {
            codedOutputStream.n0(4, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Server(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Server server) {
        return DEFAULT_INSTANCE.toBuilder().g0(server);
    }

    public static Server parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Server(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Server parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Server) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Server parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Server getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Server parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Server() {
        this.memoizedIsInitialized = (byte) -1;
        this.ipAddress_ = ByteString.EMPTY;
        this.loadBalanceToken_ = "";
    }

    public static Server parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Server parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Server parseFrom(InputStream inputStream) throws IOException {
        return (Server) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Server(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.ipAddress_ = pVar.s();
                        } else if (L == 16) {
                            this.port_ = pVar.z();
                        } else if (L == 26) {
                            this.loadBalanceToken_ = pVar.K();
                        } else if (L != 32) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.drop_ = pVar.r();
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

    public static Server parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Server) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Server parseFrom(p pVar) throws IOException {
        return (Server) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Server parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Server) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}