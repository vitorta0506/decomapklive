package io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2;

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
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.e0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LoadStatsRequest extends GeneratedMessageV3 implements r1 {
    public static final int CLUSTER_STATS_FIELD_NUMBER = 2;
    public static final int NODE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<ClusterStats> clusterStats_;
    private byte memoizedIsInitialized;
    private Node node_;
    private static final LoadStatsRequest DEFAULT_INSTANCE = new LoadStatsRequest();
    private static final e2<LoadStatsRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends c<LoadStatsRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LoadStatsRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LoadStatsRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50133e;

        /* renamed from: f  reason: collision with root package name */
        private Node f50134f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Node, Node.c, e0> f50135g;

        /* renamed from: h  reason: collision with root package name */
        private List<ClusterStats> f50136h;

        /* renamed from: i  reason: collision with root package name */
        private l2<ClusterStats, ClusterStats.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a> f50137i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            if ((this.f50133e & 1) == 0) {
                this.f50136h = new ArrayList(this.f50136h);
                this.f50133e |= 1;
            }
        }

        private l2<ClusterStats, ClusterStats.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a> d0() {
            if (this.f50137i == null) {
                this.f50137i = new l2<>(this.f50136h, (this.f50133e & 1) != 0, H(), O());
                this.f50136h = null;
            }
            return this.f50137i;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.b.f50147b.d(LoadStatsRequest.class, b.class);
        }

        public b W(ClusterStats clusterStats) {
            l2<ClusterStats, ClusterStats.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a> l2Var = this.f50137i;
            if (l2Var == null) {
                Objects.requireNonNull(clusterStats);
                b0();
                this.f50136h.add(clusterStats);
                R();
            } else {
                l2Var.d(clusterStats);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: X */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LoadStatsRequest build() {
            LoadStatsRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public LoadStatsRequest I() {
            LoadStatsRequest loadStatsRequest = new LoadStatsRequest(this, (a) null);
            q2<Node, Node.c, e0> q2Var = this.f50135g;
            if (q2Var == null) {
                loadStatsRequest.node_ = this.f50134f;
            } else {
                loadStatsRequest.node_ = q2Var.b();
            }
            l2<ClusterStats, ClusterStats.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a> l2Var = this.f50137i;
            if (l2Var == null) {
                if ((this.f50133e & 1) != 0) {
                    this.f50136h = Collections.unmodifiableList(this.f50136h);
                    this.f50133e &= -2;
                }
                loadStatsRequest.clusterStats_ = this.f50136h;
            } else {
                loadStatsRequest.clusterStats_ = l2Var.e();
            }
            Q();
            return loadStatsRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: a0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public LoadStatsRequest getDefaultInstanceForType() {
            return LoadStatsRequest.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.b.f50146a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.LoadStatsRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LoadStatsRequest) {
                return j0((LoadStatsRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(LoadStatsRequest loadStatsRequest) {
            if (loadStatsRequest == LoadStatsRequest.getDefaultInstance()) {
                return this;
            }
            if (loadStatsRequest.hasNode()) {
                k0(loadStatsRequest.getNode());
            }
            if (this.f50137i == null) {
                if (!loadStatsRequest.clusterStats_.isEmpty()) {
                    if (this.f50136h.isEmpty()) {
                        this.f50136h = loadStatsRequest.clusterStats_;
                        this.f50133e &= -2;
                    } else {
                        b0();
                        this.f50136h.addAll(loadStatsRequest.clusterStats_);
                    }
                    R();
                }
            } else if (!loadStatsRequest.clusterStats_.isEmpty()) {
                if (this.f50137i.k()) {
                    this.f50137i.f();
                    this.f50137i = null;
                    this.f50136h = loadStatsRequest.clusterStats_;
                    this.f50133e &= -2;
                    this.f50137i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50137i.b(loadStatsRequest.clusterStats_);
                }
            }
            z(((GeneratedMessageV3) loadStatsRequest).unknownFields);
            R();
            return this;
        }

        public b k0(Node node) {
            q2<Node, Node.c, e0> q2Var = this.f50135g;
            if (q2Var == null) {
                Node node2 = this.f50134f;
                if (node2 != null) {
                    this.f50134f = Node.newBuilder(node2).n0(node).I();
                } else {
                    this.f50134f = node;
                }
                R();
            } else {
                q2Var.e(node);
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

        public b n0(Node node) {
            q2<Node, Node.c, e0> q2Var = this.f50135g;
            if (q2Var == null) {
                Objects.requireNonNull(node);
                this.f50134f = node;
                R();
            } else {
                q2Var.g(node);
            }
            return this;
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
            this.f50136h = Collections.emptyList();
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50136h = Collections.emptyList();
            g0();
        }
    }

    /* synthetic */ LoadStatsRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LoadStatsRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.b.f50146a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LoadStatsRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LoadStatsRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LoadStatsRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LoadStatsRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LoadStatsRequest)) {
            return super.equals(obj);
        }
        LoadStatsRequest loadStatsRequest = (LoadStatsRequest) obj;
        if (hasNode() != loadStatsRequest.hasNode()) {
            return false;
        }
        return (!hasNode() || getNode().equals(loadStatsRequest.getNode())) && getClusterStatsList().equals(loadStatsRequest.getClusterStatsList()) && this.unknownFields.equals(loadStatsRequest.unknownFields);
    }

    public ClusterStats getClusterStats(int i9) {
        return this.clusterStats_.get(i9);
    }

    public int getClusterStatsCount() {
        return this.clusterStats_.size();
    }

    public List<ClusterStats> getClusterStatsList() {
        return this.clusterStats_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a getClusterStatsOrBuilder(int i9) {
        return this.clusterStats_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a> getClusterStatsOrBuilderList() {
        return this.clusterStats_;
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public e0 getNodeOrBuilder() {
        return getNode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LoadStatsRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.node_ != null ? CodedOutputStream.G(1, getNode()) + 0 : 0;
        for (int i10 = 0; i10 < this.clusterStats_.size(); i10++) {
            G += CodedOutputStream.G(2, this.clusterStats_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
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
        if (hasNode()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getNode().hashCode();
        }
        if (getClusterStatsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getClusterStatsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.b.f50147b.d(LoadStatsRequest.class, b.class);
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
        return new LoadStatsRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.node_ != null) {
            codedOutputStream.L0(1, getNode());
        }
        for (int i9 = 0; i9 < this.clusterStats_.size(); i9++) {
            codedOutputStream.L0(2, this.clusterStats_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LoadStatsRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LoadStatsRequest loadStatsRequest) {
        return DEFAULT_INSTANCE.toBuilder().j0(loadStatsRequest);
    }

    public static LoadStatsRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LoadStatsRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoadStatsRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadStatsRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadStatsRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LoadStatsRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static LoadStatsRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LoadStatsRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.clusterStats_ = Collections.emptyList();
    }

    public static LoadStatsRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LoadStatsRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LoadStatsRequest parseFrom(InputStream inputStream) throws IOException {
        return (LoadStatsRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LoadStatsRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Node node = this.node_;
                                Node.c builder = node != null ? node.toBuilder() : null;
                                Node node2 = (Node) pVar.B(Node.parser(), f0Var);
                                this.node_ = node2;
                                if (builder != null) {
                                    builder.n0(node2);
                                    this.node_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.clusterStats_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.clusterStats_.add((ClusterStats) pVar.B(ClusterStats.parser(), f0Var));
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
                    this.clusterStats_ = Collections.unmodifiableList(this.clusterStats_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LoadStatsRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadStatsRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadStatsRequest parseFrom(p pVar) throws IOException {
        return (LoadStatsRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LoadStatsRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LoadStatsRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
