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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import io.grpc.lb.v1.Server;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ServerList extends GeneratedMessageV3 implements h {
    private static final ServerList DEFAULT_INSTANCE = new ServerList();
    private static final e2<ServerList> PARSER = new a();
    public static final int SERVERS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Server> servers_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ServerList> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ServerList m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ServerList(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f43382e;

        /* renamed from: f  reason: collision with root package name */
        private List<Server> f43383f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Server, Server.b, i> f43384g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f43382e & 1) == 0) {
                this.f43383f = new ArrayList(this.f43383f);
                this.f43382e |= 1;
            }
        }

        private l2<Server, Server.b, i> d0() {
            if (this.f43384g == null) {
                this.f43384g = new l2<>(this.f43383f, (this.f43382e & 1) != 0, H(), O());
                this.f43383f = null;
            }
            return this.f43384g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f43402p.d(ServerList.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ServerList build() {
            ServerList I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ServerList I() {
            ServerList serverList = new ServerList(this, (a) null);
            int i9 = this.f43382e;
            l2<Server, Server.b, i> l2Var = this.f43384g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f43383f = Collections.unmodifiableList(this.f43383f);
                    this.f43382e &= -2;
                }
                serverList.servers_ = this.f43383f;
            } else {
                serverList.servers_ = l2Var.e();
            }
            Q();
            return serverList;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ServerList getDefaultInstanceForType() {
            return ServerList.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.lb.v1.ServerList.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.lb.v1.ServerList.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.lb.v1.ServerList r3 = (io.grpc.lb.v1.ServerList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.lb.v1.ServerList r4 = (io.grpc.lb.v1.ServerList) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.lb.v1.ServerList.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.lb.v1.ServerList$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f43401o;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ServerList) {
                return i0((ServerList) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(ServerList serverList) {
            if (serverList == ServerList.getDefaultInstance()) {
                return this;
            }
            if (this.f43384g == null) {
                if (!serverList.servers_.isEmpty()) {
                    if (this.f43383f.isEmpty()) {
                        this.f43383f = serverList.servers_;
                        this.f43382e &= -2;
                    } else {
                        a0();
                        this.f43383f.addAll(serverList.servers_);
                    }
                    R();
                }
            } else if (!serverList.servers_.isEmpty()) {
                if (this.f43384g.k()) {
                    this.f43384g.f();
                    this.f43384g = null;
                    this.f43383f = serverList.servers_;
                    this.f43382e &= -2;
                    this.f43384g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f43384g.b(serverList.servers_);
                }
            }
            z(((GeneratedMessageV3) serverList).unknownFields);
            R();
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
            this.f43383f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f43383f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ServerList(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ServerList getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f43401o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ServerList parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ServerList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ServerList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ServerList> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServerList)) {
            return super.equals(obj);
        }
        ServerList serverList = (ServerList) obj;
        return getServersList().equals(serverList.getServersList()) && this.unknownFields.equals(serverList.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ServerList> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.servers_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.servers_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Server getServers(int i9) {
        return this.servers_.get(i9);
    }

    public int getServersCount() {
        return this.servers_.size();
    }

    public List<Server> getServersList() {
        return this.servers_;
    }

    public i getServersOrBuilder(int i9) {
        return this.servers_.get(i9);
    }

    public List<? extends i> getServersOrBuilderList() {
        return this.servers_;
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
        if (getServersCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getServersList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f43402p.d(ServerList.class, b.class);
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
        return new ServerList();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.servers_.size(); i9++) {
            codedOutputStream.L0(1, this.servers_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ServerList(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ServerList serverList) {
        return DEFAULT_INSTANCE.toBuilder().i0(serverList);
    }

    public static ServerList parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ServerList(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ServerList parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ServerList getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ServerList parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ServerList() {
        this.memoizedIsInitialized = (byte) -1;
        this.servers_ = Collections.emptyList();
    }

    public static ServerList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ServerList parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ServerList parseFrom(InputStream inputStream) throws IOException {
        return (ServerList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ServerList(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!(z11 & true)) {
                                this.servers_ = new ArrayList();
                                z11 |= true;
                            }
                            this.servers_.add((Server) pVar.B(Server.parser(), f0Var));
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
                    this.servers_ = Collections.unmodifiableList(this.servers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ServerList parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerList parseFrom(p pVar) throws IOException {
        return (ServerList) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ServerList parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ServerList) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
