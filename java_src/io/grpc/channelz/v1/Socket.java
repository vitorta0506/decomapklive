package io.grpc.channelz.v1;

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
import io.grpc.channelz.v1.Address;
import io.grpc.channelz.v1.Security;
import io.grpc.channelz.v1.SocketData;
import io.grpc.channelz.v1.SocketRef;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Socket extends GeneratedMessageV3 implements o {
    public static final int DATA_FIELD_NUMBER = 2;
    public static final int LOCAL_FIELD_NUMBER = 3;
    public static final int REF_FIELD_NUMBER = 1;
    public static final int REMOTE_FIELD_NUMBER = 4;
    public static final int REMOTE_NAME_FIELD_NUMBER = 6;
    public static final int SECURITY_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private SocketData data_;
    private Address local_;
    private byte memoizedIsInitialized;
    private SocketRef ref_;
    private volatile Object remoteName_;
    private Address remote_;
    private Security security_;
    private static final Socket DEFAULT_INSTANCE = new Socket();
    private static final e2<Socket> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Socket> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Socket m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Socket(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements o {

        /* renamed from: e  reason: collision with root package name */
        private SocketRef f42176e;

        /* renamed from: f  reason: collision with root package name */
        private q2<SocketRef, SocketRef.b, p> f42177f;

        /* renamed from: g  reason: collision with root package name */
        private SocketData f42178g;

        /* renamed from: h  reason: collision with root package name */
        private q2<SocketData, SocketData.b, m> f42179h;

        /* renamed from: i  reason: collision with root package name */
        private Address f42180i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.channelz.v1.a> f42181j;

        /* renamed from: k  reason: collision with root package name */
        private Address f42182k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.channelz.v1.a> f42183l;

        /* renamed from: m  reason: collision with root package name */
        private Security f42184m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Security, Security.c, i> f42185n;

        /* renamed from: o  reason: collision with root package name */
        private Object f42186o;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42304z.d(Socket.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Socket build() {
            Socket I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Socket I() {
            Socket socket = new Socket(this, (a) null);
            q2<SocketRef, SocketRef.b, p> q2Var = this.f42177f;
            if (q2Var == null) {
                socket.ref_ = this.f42176e;
            } else {
                socket.ref_ = q2Var.b();
            }
            q2<SocketData, SocketData.b, m> q2Var2 = this.f42179h;
            if (q2Var2 == null) {
                socket.data_ = this.f42178g;
            } else {
                socket.data_ = q2Var2.b();
            }
            q2<Address, Address.c, io.grpc.channelz.v1.a> q2Var3 = this.f42181j;
            if (q2Var3 == null) {
                socket.local_ = this.f42180i;
            } else {
                socket.local_ = q2Var3.b();
            }
            q2<Address, Address.c, io.grpc.channelz.v1.a> q2Var4 = this.f42183l;
            if (q2Var4 == null) {
                socket.remote_ = this.f42182k;
            } else {
                socket.remote_ = q2Var4.b();
            }
            q2<Security, Security.c, i> q2Var5 = this.f42185n;
            if (q2Var5 == null) {
                socket.security_ = this.f42184m;
            } else {
                socket.security_ = q2Var5.b();
            }
            socket.remoteName_ = this.f42186o;
            Q();
            return socket;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Socket getDefaultInstanceForType() {
            return Socket.getDefaultInstance();
        }

        public b d0(SocketData socketData) {
            q2<SocketData, SocketData.b, m> q2Var = this.f42179h;
            if (q2Var == null) {
                SocketData socketData2 = this.f42178g;
                if (socketData2 != null) {
                    this.f42178g = SocketData.newBuilder(socketData2).i0(socketData).I();
                } else {
                    this.f42178g = socketData;
                }
                R();
            } else {
                q2Var.e(socketData);
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
        public io.grpc.channelz.v1.Socket.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Socket.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.Socket r3 = (io.grpc.channelz.v1.Socket) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.Socket r4 = (io.grpc.channelz.v1.Socket) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Socket.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Socket$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Socket) {
                return h0((Socket) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42302y;
        }

        public b h0(Socket socket) {
            if (socket == Socket.getDefaultInstance()) {
                return this;
            }
            if (socket.hasRef()) {
                j0(socket.getRef());
            }
            if (socket.hasData()) {
                d0(socket.getData());
            }
            if (socket.hasLocal()) {
                i0(socket.getLocal());
            }
            if (socket.hasRemote()) {
                k0(socket.getRemote());
            }
            if (socket.hasSecurity()) {
                l0(socket.getSecurity());
            }
            if (!socket.getRemoteName().isEmpty()) {
                this.f42186o = socket.remoteName_;
                R();
            }
            z(((GeneratedMessageV3) socket).unknownFields);
            R();
            return this;
        }

        public b i0(Address address) {
            q2<Address, Address.c, io.grpc.channelz.v1.a> q2Var = this.f42181j;
            if (q2Var == null) {
                Address address2 = this.f42180i;
                if (address2 != null) {
                    this.f42180i = Address.newBuilder(address2).g0(address).I();
                } else {
                    this.f42180i = address;
                }
                R();
            } else {
                q2Var.e(address);
            }
            return this;
        }

        public b j0(SocketRef socketRef) {
            q2<SocketRef, SocketRef.b, p> q2Var = this.f42177f;
            if (q2Var == null) {
                SocketRef socketRef2 = this.f42176e;
                if (socketRef2 != null) {
                    this.f42176e = SocketRef.newBuilder(socketRef2).g0(socketRef).I();
                } else {
                    this.f42176e = socketRef;
                }
                R();
            } else {
                q2Var.e(socketRef);
            }
            return this;
        }

        public b k0(Address address) {
            q2<Address, Address.c, io.grpc.channelz.v1.a> q2Var = this.f42183l;
            if (q2Var == null) {
                Address address2 = this.f42182k;
                if (address2 != null) {
                    this.f42182k = Address.newBuilder(address2).g0(address).I();
                } else {
                    this.f42182k = address;
                }
                R();
            } else {
                q2Var.e(address);
            }
            return this;
        }

        public b l0(Security security) {
            q2<Security, Security.c, i> q2Var = this.f42185n;
            if (q2Var == null) {
                Security security2 = this.f42184m;
                if (security2 != null) {
                    this.f42184m = Security.newBuilder(security2).g0(security).I();
                } else {
                    this.f42184m = security;
                }
                R();
            } else {
                q2Var.e(security);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f42186o = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42186o = "";
            b0();
        }
    }

    /* synthetic */ Socket(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Socket getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42302y;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Socket parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Socket) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Socket parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Socket> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Socket)) {
            return super.equals(obj);
        }
        Socket socket = (Socket) obj;
        if (hasRef() != socket.hasRef()) {
            return false;
        }
        if ((!hasRef() || getRef().equals(socket.getRef())) && hasData() == socket.hasData()) {
            if ((!hasData() || getData().equals(socket.getData())) && hasLocal() == socket.hasLocal()) {
                if ((!hasLocal() || getLocal().equals(socket.getLocal())) && hasRemote() == socket.hasRemote()) {
                    if ((!hasRemote() || getRemote().equals(socket.getRemote())) && hasSecurity() == socket.hasSecurity()) {
                        return (!hasSecurity() || getSecurity().equals(socket.getSecurity())) && getRemoteName().equals(socket.getRemoteName()) && this.unknownFields.equals(socket.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public SocketData getData() {
        SocketData socketData = this.data_;
        return socketData == null ? SocketData.getDefaultInstance() : socketData;
    }

    public m getDataOrBuilder() {
        return getData();
    }

    public Address getLocal() {
        Address address = this.local_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public io.grpc.channelz.v1.a getLocalOrBuilder() {
        return getLocal();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Socket> getParserForType() {
        return PARSER;
    }

    public SocketRef getRef() {
        SocketRef socketRef = this.ref_;
        return socketRef == null ? SocketRef.getDefaultInstance() : socketRef;
    }

    public p getRefOrBuilder() {
        return getRef();
    }

    public Address getRemote() {
        Address address = this.remote_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public String getRemoteName() {
        Object obj = this.remoteName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.remoteName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRemoteNameBytes() {
        Object obj = this.remoteName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.remoteName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public io.grpc.channelz.v1.a getRemoteOrBuilder() {
        return getRemote();
    }

    public Security getSecurity() {
        Security security = this.security_;
        return security == null ? Security.getDefaultInstance() : security;
    }

    public i getSecurityOrBuilder() {
        return getSecurity();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.ref_ != null ? 0 + CodedOutputStream.G(1, getRef()) : 0;
        if (this.data_ != null) {
            G += CodedOutputStream.G(2, getData());
        }
        if (this.local_ != null) {
            G += CodedOutputStream.G(3, getLocal());
        }
        if (this.remote_ != null) {
            G += CodedOutputStream.G(4, getRemote());
        }
        if (this.security_ != null) {
            G += CodedOutputStream.G(5, getSecurity());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.remoteName_)) {
            G += GeneratedMessageV3.computeStringSize(6, this.remoteName_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasData() {
        return this.data_ != null;
    }

    public boolean hasLocal() {
        return this.local_ != null;
    }

    public boolean hasRef() {
        return this.ref_ != null;
    }

    public boolean hasRemote() {
        return this.remote_ != null;
    }

    public boolean hasSecurity() {
        return this.security_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasRef()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getRef().hashCode();
        }
        if (hasData()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getData().hashCode();
        }
        if (hasLocal()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getLocal().hashCode();
        }
        if (hasRemote()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getRemote().hashCode();
        }
        if (hasSecurity()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getSecurity().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 6) * 53) + getRemoteName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42304z.d(Socket.class, b.class);
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
        return new Socket();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.ref_ != null) {
            codedOutputStream.L0(1, getRef());
        }
        if (this.data_ != null) {
            codedOutputStream.L0(2, getData());
        }
        if (this.local_ != null) {
            codedOutputStream.L0(3, getLocal());
        }
        if (this.remote_ != null) {
            codedOutputStream.L0(4, getRemote());
        }
        if (this.security_ != null) {
            codedOutputStream.L0(5, getSecurity());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.remoteName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.remoteName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Socket(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Socket socket) {
        return DEFAULT_INSTANCE.toBuilder().h0(socket);
    }

    public static Socket parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Socket(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Socket parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Socket) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Socket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Socket getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Socket parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Socket() {
        this.memoizedIsInitialized = (byte) -1;
        this.remoteName_ = "";
    }

    public static Socket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Socket parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Socket parseFrom(InputStream inputStream) throws IOException {
        return (Socket) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Socket(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                SocketRef socketRef = this.ref_;
                                SocketRef.b builder = socketRef != null ? socketRef.toBuilder() : null;
                                SocketRef socketRef2 = (SocketRef) pVar.B(SocketRef.parser(), f0Var);
                                this.ref_ = socketRef2;
                                if (builder != null) {
                                    builder.g0(socketRef2);
                                    this.ref_ = builder.I();
                                }
                            } else if (L == 18) {
                                SocketData socketData = this.data_;
                                SocketData.b builder2 = socketData != null ? socketData.toBuilder() : null;
                                SocketData socketData2 = (SocketData) pVar.B(SocketData.parser(), f0Var);
                                this.data_ = socketData2;
                                if (builder2 != null) {
                                    builder2.i0(socketData2);
                                    this.data_ = builder2.I();
                                }
                            } else if (L == 26) {
                                Address address = this.local_;
                                Address.c builder3 = address != null ? address.toBuilder() : null;
                                Address address2 = (Address) pVar.B(Address.parser(), f0Var);
                                this.local_ = address2;
                                if (builder3 != null) {
                                    builder3.g0(address2);
                                    this.local_ = builder3.I();
                                }
                            } else if (L == 34) {
                                Address address3 = this.remote_;
                                Address.c builder4 = address3 != null ? address3.toBuilder() : null;
                                Address address4 = (Address) pVar.B(Address.parser(), f0Var);
                                this.remote_ = address4;
                                if (builder4 != null) {
                                    builder4.g0(address4);
                                    this.remote_ = builder4.I();
                                }
                            } else if (L == 42) {
                                Security security = this.security_;
                                Security.c builder5 = security != null ? security.toBuilder() : null;
                                Security security2 = (Security) pVar.B(Security.parser(), f0Var);
                                this.security_ = security2;
                                if (builder5 != null) {
                                    builder5.g0(security2);
                                    this.security_ = builder5.I();
                                }
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.remoteName_ = pVar.K();
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

    public static Socket parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Socket) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Socket parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Socket) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Socket parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Socket) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
