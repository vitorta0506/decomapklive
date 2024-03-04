package io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3;

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
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.NodeMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.f;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ClientStatusRequest extends GeneratedMessageV3 implements r1 {
    public static final int NODE_FIELD_NUMBER = 2;
    public static final int NODE_MATCHERS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<NodeMatcher> nodeMatchers_;
    private Node node_;
    private static final ClientStatusRequest DEFAULT_INSTANCE = new ClientStatusRequest();
    private static final e2<ClientStatusRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ClientStatusRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClientStatusRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClientStatusRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50188e;

        /* renamed from: f  reason: collision with root package name */
        private List<NodeMatcher> f50189f;

        /* renamed from: g  reason: collision with root package name */
        private l2<NodeMatcher, NodeMatcher.b, f> f50190g;

        /* renamed from: h  reason: collision with root package name */
        private Node f50191h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Node, Node.c, l0> f50192i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50188e & 1) == 0) {
                this.f50189f = new ArrayList(this.f50189f);
                this.f50188e |= 1;
            }
        }

        private l2<NodeMatcher, NodeMatcher.b, f> d0() {
            if (this.f50190g == null) {
                this.f50190g = new l2<>(this.f50189f, (this.f50188e & 1) != 0, H(), O());
                this.f50189f = null;
            }
            return this.f50190g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50207b.d(ClientStatusRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClientStatusRequest build() {
            ClientStatusRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClientStatusRequest I() {
            ClientStatusRequest clientStatusRequest = new ClientStatusRequest(this, (a) null);
            int i9 = this.f50188e;
            l2<NodeMatcher, NodeMatcher.b, f> l2Var = this.f50190g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f50189f = Collections.unmodifiableList(this.f50189f);
                    this.f50188e &= -2;
                }
                clientStatusRequest.nodeMatchers_ = this.f50189f;
            } else {
                clientStatusRequest.nodeMatchers_ = l2Var.e();
            }
            q2<Node, Node.c, l0> q2Var = this.f50192i;
            if (q2Var == null) {
                clientStatusRequest.node_ = this.f50191h;
            } else {
                clientStatusRequest.node_ = q2Var.b();
            }
            Q();
            return clientStatusRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ClientStatusRequest getDefaultInstanceForType() {
            return ClientStatusRequest.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusRequest$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50206a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClientStatusRequest) {
                return i0((ClientStatusRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(ClientStatusRequest clientStatusRequest) {
            if (clientStatusRequest == ClientStatusRequest.getDefaultInstance()) {
                return this;
            }
            if (this.f50190g == null) {
                if (!clientStatusRequest.nodeMatchers_.isEmpty()) {
                    if (this.f50189f.isEmpty()) {
                        this.f50189f = clientStatusRequest.nodeMatchers_;
                        this.f50188e &= -2;
                    } else {
                        a0();
                        this.f50189f.addAll(clientStatusRequest.nodeMatchers_);
                    }
                    R();
                }
            } else if (!clientStatusRequest.nodeMatchers_.isEmpty()) {
                if (this.f50190g.k()) {
                    this.f50190g.f();
                    this.f50190g = null;
                    this.f50189f = clientStatusRequest.nodeMatchers_;
                    this.f50188e &= -2;
                    this.f50190g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50190g.b(clientStatusRequest.nodeMatchers_);
                }
            }
            if (clientStatusRequest.hasNode()) {
                j0(clientStatusRequest.getNode());
            }
            z(((GeneratedMessageV3) clientStatusRequest).unknownFields);
            R();
            return this;
        }

        public b j0(Node node) {
            q2<Node, Node.c, l0> q2Var = this.f50192i;
            if (q2Var == null) {
                Node node2 = this.f50191h;
                if (node2 != null) {
                    this.f50191h = Node.newBuilder(node2).q0(node).I();
                } else {
                    this.f50191h = node;
                }
                R();
            } else {
                q2Var.e(node);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
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
            this.f50189f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50189f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ClientStatusRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClientStatusRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50206a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClientStatusRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClientStatusRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClientStatusRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClientStatusRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientStatusRequest)) {
            return super.equals(obj);
        }
        ClientStatusRequest clientStatusRequest = (ClientStatusRequest) obj;
        if (getNodeMatchersList().equals(clientStatusRequest.getNodeMatchersList()) && hasNode() == clientStatusRequest.hasNode()) {
            return (!hasNode() || getNode().equals(clientStatusRequest.getNode())) && this.unknownFields.equals(clientStatusRequest.unknownFields);
        }
        return false;
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public NodeMatcher getNodeMatchers(int i9) {
        return this.nodeMatchers_.get(i9);
    }

    public int getNodeMatchersCount() {
        return this.nodeMatchers_.size();
    }

    public List<NodeMatcher> getNodeMatchersList() {
        return this.nodeMatchers_;
    }

    public f getNodeMatchersOrBuilder(int i9) {
        return this.nodeMatchers_.get(i9);
    }

    public List<? extends f> getNodeMatchersOrBuilderList() {
        return this.nodeMatchers_;
    }

    public l0 getNodeOrBuilder() {
        return getNode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClientStatusRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.nodeMatchers_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.nodeMatchers_.get(i11));
        }
        if (this.node_ != null) {
            i10 += CodedOutputStream.G(2, getNode());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasNode() {
        return this.node_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getNodeMatchersCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getNodeMatchersList().hashCode();
        }
        if (hasNode()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getNode().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50207b.d(ClientStatusRequest.class, b.class);
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
        return new ClientStatusRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.nodeMatchers_.size(); i9++) {
            codedOutputStream.L0(1, this.nodeMatchers_.get(i9));
        }
        if (this.node_ != null) {
            codedOutputStream.L0(2, getNode());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClientStatusRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClientStatusRequest clientStatusRequest) {
        return DEFAULT_INSTANCE.toBuilder().i0(clientStatusRequest);
    }

    public static ClientStatusRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClientStatusRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClientStatusRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStatusRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStatusRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClientStatusRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ClientStatusRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClientStatusRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.nodeMatchers_ = Collections.emptyList();
    }

    public static ClientStatusRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClientStatusRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClientStatusRequest parseFrom(InputStream inputStream) throws IOException {
        return (ClientStatusRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClientStatusRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                if (!(z11 & true)) {
                                    this.nodeMatchers_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.nodeMatchers_.add((NodeMatcher) pVar.B(NodeMatcher.parser(), f0Var));
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Node node = this.node_;
                                Node.c builder = node != null ? node.toBuilder() : null;
                                Node node2 = (Node) pVar.B(Node.parser(), f0Var);
                                this.node_ = node2;
                                if (builder != null) {
                                    builder.q0(node2);
                                    this.node_ = builder.I();
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
                if (z11 & true) {
                    this.nodeMatchers_ = Collections.unmodifiableList(this.nodeMatchers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClientStatusRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStatusRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStatusRequest parseFrom(p pVar) throws IOException {
        return (ClientStatusRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClientStatusRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClientStatusRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
