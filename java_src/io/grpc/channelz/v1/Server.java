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
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import io.grpc.channelz.v1.ServerData;
import io.grpc.channelz.v1.ServerRef;
import io.grpc.channelz.v1.SocketRef;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Server extends GeneratedMessageV3 implements k {
    public static final int DATA_FIELD_NUMBER = 2;
    public static final int LISTEN_SOCKET_FIELD_NUMBER = 3;
    public static final int REF_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private ServerData data_;
    private List<SocketRef> listenSocket_;
    private byte memoizedIsInitialized;
    private ServerRef ref_;
    private static final Server DEFAULT_INSTANCE = new Server();
    private static final e2<Server> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Server> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Server m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Server(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f42160e;

        /* renamed from: f  reason: collision with root package name */
        private ServerRef f42161f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ServerRef, ServerRef.b, l> f42162g;

        /* renamed from: h  reason: collision with root package name */
        private ServerData f42163h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ServerData, ServerData.b, j> f42164i;

        /* renamed from: j  reason: collision with root package name */
        private List<SocketRef> f42165j;

        /* renamed from: k  reason: collision with root package name */
        private l2<SocketRef, SocketRef.b, p> f42166k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f42160e & 1) == 0) {
                this.f42165j = new ArrayList(this.f42165j);
                this.f42160e |= 1;
            }
        }

        private l2<SocketRef, SocketRef.b, p> d0() {
            if (this.f42166k == null) {
                this.f42166k = new l2<>(this.f42165j, (this.f42160e & 1) != 0, H(), O());
                this.f42165j = null;
            }
            return this.f42166k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42296v.d(Server.class, b.class);
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
            q2<ServerRef, ServerRef.b, l> q2Var = this.f42162g;
            if (q2Var == null) {
                server.ref_ = this.f42161f;
            } else {
                server.ref_ = q2Var.b();
            }
            q2<ServerData, ServerData.b, j> q2Var2 = this.f42164i;
            if (q2Var2 == null) {
                server.data_ = this.f42163h;
            } else {
                server.data_ = q2Var2.b();
            }
            l2<SocketRef, SocketRef.b, p> l2Var = this.f42166k;
            if (l2Var == null) {
                if ((this.f42160e & 1) != 0) {
                    this.f42165j = Collections.unmodifiableList(this.f42165j);
                    this.f42160e &= -2;
                }
                server.listenSocket_ = this.f42165j;
            } else {
                server.listenSocket_ = l2Var.e();
            }
            Q();
            return server;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Server getDefaultInstanceForType() {
            return Server.getDefaultInstance();
        }

        public b g0(ServerData serverData) {
            q2<ServerData, ServerData.b, j> q2Var = this.f42164i;
            if (q2Var == null) {
                ServerData serverData2 = this.f42163h;
                if (serverData2 != null) {
                    this.f42163h = ServerData.newBuilder(serverData2).g0(serverData).I();
                } else {
                    this.f42163h = serverData;
                }
                R();
            } else {
                q2Var.e(serverData);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42294u;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.Server.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Server.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.Server r3 = (io.grpc.channelz.v1.Server) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.channelz.v1.Server r4 = (io.grpc.channelz.v1.Server) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Server.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Server$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Server) {
                return j0((Server) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Server server) {
            if (server == Server.getDefaultInstance()) {
                return this;
            }
            if (server.hasRef()) {
                k0(server.getRef());
            }
            if (server.hasData()) {
                g0(server.getData());
            }
            if (this.f42166k == null) {
                if (!server.listenSocket_.isEmpty()) {
                    if (this.f42165j.isEmpty()) {
                        this.f42165j = server.listenSocket_;
                        this.f42160e &= -2;
                    } else {
                        a0();
                        this.f42165j.addAll(server.listenSocket_);
                    }
                    R();
                }
            } else if (!server.listenSocket_.isEmpty()) {
                if (this.f42166k.k()) {
                    this.f42166k.f();
                    this.f42166k = null;
                    this.f42165j = server.listenSocket_;
                    this.f42160e &= -2;
                    this.f42166k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f42166k.b(server.listenSocket_);
                }
            }
            z(((GeneratedMessageV3) server).unknownFields);
            R();
            return this;
        }

        public b k0(ServerRef serverRef) {
            q2<ServerRef, ServerRef.b, l> q2Var = this.f42162g;
            if (q2Var == null) {
                ServerRef serverRef2 = this.f42161f;
                if (serverRef2 != null) {
                    this.f42161f = ServerRef.newBuilder(serverRef2).g0(serverRef).I();
                } else {
                    this.f42161f = serverRef;
                }
                R();
            } else {
                q2Var.e(serverRef);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f42165j = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42165j = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ Server(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Server getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42294u;
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
        if (hasRef() != server.hasRef()) {
            return false;
        }
        if ((!hasRef() || getRef().equals(server.getRef())) && hasData() == server.hasData()) {
            return (!hasData() || getData().equals(server.getData())) && getListenSocketList().equals(server.getListenSocketList()) && this.unknownFields.equals(server.unknownFields);
        }
        return false;
    }

    public ServerData getData() {
        ServerData serverData = this.data_;
        return serverData == null ? ServerData.getDefaultInstance() : serverData;
    }

    public j getDataOrBuilder() {
        return getData();
    }

    public SocketRef getListenSocket(int i9) {
        return this.listenSocket_.get(i9);
    }

    public int getListenSocketCount() {
        return this.listenSocket_.size();
    }

    public List<SocketRef> getListenSocketList() {
        return this.listenSocket_;
    }

    public p getListenSocketOrBuilder(int i9) {
        return this.listenSocket_.get(i9);
    }

    public List<? extends p> getListenSocketOrBuilderList() {
        return this.listenSocket_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Server> getParserForType() {
        return PARSER;
    }

    public ServerRef getRef() {
        ServerRef serverRef = this.ref_;
        return serverRef == null ? ServerRef.getDefaultInstance() : serverRef;
    }

    public l getRefOrBuilder() {
        return getRef();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.ref_ != null ? CodedOutputStream.G(1, getRef()) + 0 : 0;
        if (this.data_ != null) {
            G += CodedOutputStream.G(2, getData());
        }
        for (int i10 = 0; i10 < this.listenSocket_.size(); i10++) {
            G += CodedOutputStream.G(3, this.listenSocket_.get(i10));
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

    public boolean hasRef() {
        return this.ref_ != null;
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
        if (getListenSocketCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getListenSocketList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42296v.d(Server.class, b.class);
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
        if (this.ref_ != null) {
            codedOutputStream.L0(1, getRef());
        }
        if (this.data_ != null) {
            codedOutputStream.L0(2, getData());
        }
        for (int i9 = 0; i9 < this.listenSocket_.size(); i9++) {
            codedOutputStream.L0(3, this.listenSocket_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Server(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Server server) {
        return DEFAULT_INSTANCE.toBuilder().j0(server);
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
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
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
        this.listenSocket_ = Collections.emptyList();
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

    private Server(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            ServerRef serverRef = this.ref_;
                            ServerRef.b builder = serverRef != null ? serverRef.toBuilder() : null;
                            ServerRef serverRef2 = (ServerRef) pVar.B(ServerRef.parser(), f0Var);
                            this.ref_ = serverRef2;
                            if (builder != null) {
                                builder.g0(serverRef2);
                                this.ref_ = builder.I();
                            }
                        } else if (L == 18) {
                            ServerData serverData = this.data_;
                            ServerData.b builder2 = serverData != null ? serverData.toBuilder() : null;
                            ServerData serverData2 = (ServerData) pVar.B(ServerData.parser(), f0Var);
                            this.data_ = serverData2;
                            if (builder2 != null) {
                                builder2.g0(serverData2);
                                this.data_ = builder2.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.listenSocket_ = new ArrayList();
                                z11 |= true;
                            }
                            this.listenSocket_.add((SocketRef) pVar.B(SocketRef.parser(), f0Var));
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
                    this.listenSocket_ = Collections.unmodifiableList(this.listenSocket_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Server parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Server) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Server parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Server) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Server parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Server) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
