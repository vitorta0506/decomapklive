package io.opencensus.proto.agent.metrics.v1;

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
import io.opencensus.proto.agent.common.v1.Node;
import io.opencensus.proto.metrics.v1.Metric;
import io.opencensus.proto.metrics.v1.e;
import io.opencensus.proto.resource.v1.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class ExportMetricsServiceRequest extends GeneratedMessageV3 implements r1 {
    public static final int METRICS_FIELD_NUMBER = 2;
    public static final int NODE_FIELD_NUMBER = 1;
    public static final int RESOURCE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private List<Metric> metrics_;
    private Node node_;
    private Resource resource_;
    private static final ExportMetricsServiceRequest DEFAULT_INSTANCE = new ExportMetricsServiceRequest();
    private static final e2<ExportMetricsServiceRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends c<ExportMetricsServiceRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ExportMetricsServiceRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ExportMetricsServiceRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes4.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50932e;

        /* renamed from: f  reason: collision with root package name */
        private Node f50933f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Node, Node.c, io.opencensus.proto.agent.common.v1.c> f50934g;

        /* renamed from: h  reason: collision with root package name */
        private List<Metric> f50935h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Metric, Metric.b, e> f50936i;

        /* renamed from: j  reason: collision with root package name */
        private Resource f50937j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> f50938k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50932e & 2) != 2) {
                this.f50935h = new ArrayList(this.f50935h);
                this.f50932e |= 2;
            }
        }

        private l2<Metric, Metric.b, e> d0() {
            if (this.f50936i == null) {
                this.f50936i = new l2<>(this.f50935h, (this.f50932e & 2) == 2, H(), O());
                this.f50935h = null;
            }
            return this.f50936i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.opencensus.proto.agent.metrics.v1.a.f50940b.d(ExportMetricsServiceRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ExportMetricsServiceRequest build() {
            ExportMetricsServiceRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ExportMetricsServiceRequest I() {
            ExportMetricsServiceRequest exportMetricsServiceRequest = new ExportMetricsServiceRequest(this, (a) null);
            q2<Node, Node.c, io.opencensus.proto.agent.common.v1.c> q2Var = this.f50934g;
            if (q2Var == null) {
                exportMetricsServiceRequest.node_ = this.f50933f;
            } else {
                exportMetricsServiceRequest.node_ = q2Var.b();
            }
            l2<Metric, Metric.b, e> l2Var = this.f50936i;
            if (l2Var == null) {
                if ((this.f50932e & 2) == 2) {
                    this.f50935h = Collections.unmodifiableList(this.f50935h);
                    this.f50932e &= -3;
                }
                exportMetricsServiceRequest.metrics_ = this.f50935h;
            } else {
                exportMetricsServiceRequest.metrics_ = l2Var.e();
            }
            q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> q2Var2 = this.f50938k;
            if (q2Var2 == null) {
                exportMetricsServiceRequest.resource_ = this.f50937j;
            } else {
                exportMetricsServiceRequest.resource_ = q2Var2.b();
            }
            exportMetricsServiceRequest.bitField0_ = 0;
            Q();
            return exportMetricsServiceRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ExportMetricsServiceRequest getDefaultInstanceForType() {
            return ExportMetricsServiceRequest.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest r3 = (io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest r4 = (io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.opencensus.proto.agent.metrics.v1.a.f50939a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ExportMetricsServiceRequest) {
                return i0((ExportMetricsServiceRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(ExportMetricsServiceRequest exportMetricsServiceRequest) {
            if (exportMetricsServiceRequest == ExportMetricsServiceRequest.getDefaultInstance()) {
                return this;
            }
            if (exportMetricsServiceRequest.hasNode()) {
                j0(exportMetricsServiceRequest.getNode());
            }
            if (this.f50936i == null) {
                if (!exportMetricsServiceRequest.metrics_.isEmpty()) {
                    if (this.f50935h.isEmpty()) {
                        this.f50935h = exportMetricsServiceRequest.metrics_;
                        this.f50932e &= -3;
                    } else {
                        a0();
                        this.f50935h.addAll(exportMetricsServiceRequest.metrics_);
                    }
                    R();
                }
            } else if (!exportMetricsServiceRequest.metrics_.isEmpty()) {
                if (this.f50936i.k()) {
                    this.f50936i.f();
                    this.f50936i = null;
                    this.f50935h = exportMetricsServiceRequest.metrics_;
                    this.f50932e &= -3;
                    this.f50936i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50936i.b(exportMetricsServiceRequest.metrics_);
                }
            }
            if (exportMetricsServiceRequest.hasResource()) {
                k0(exportMetricsServiceRequest.getResource());
            }
            z(((GeneratedMessageV3) exportMetricsServiceRequest).unknownFields);
            R();
            return this;
        }

        public b j0(Node node) {
            q2<Node, Node.c, io.opencensus.proto.agent.common.v1.c> q2Var = this.f50934g;
            if (q2Var == null) {
                Node node2 = this.f50933f;
                if (node2 != null) {
                    this.f50933f = Node.newBuilder(node2).i0(node).I();
                } else {
                    this.f50933f = node;
                }
                R();
            } else {
                q2Var.e(node);
            }
            return this;
        }

        public b k0(Resource resource) {
            q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> q2Var = this.f50938k;
            if (q2Var == null) {
                Resource resource2 = this.f50937j;
                if (resource2 != null) {
                    this.f50937j = Resource.newBuilder(resource2).i0(resource).I();
                } else {
                    this.f50937j = resource;
                }
                R();
            } else {
                q2Var.e(resource);
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
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50933f = null;
            this.f50935h = Collections.emptyList();
            this.f50937j = null;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50933f = null;
            this.f50935h = Collections.emptyList();
            this.f50937j = null;
            e0();
        }
    }

    /* synthetic */ ExportMetricsServiceRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ExportMetricsServiceRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.opencensus.proto.agent.metrics.v1.a.f50939a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ExportMetricsServiceRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ExportMetricsServiceRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ExportMetricsServiceRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ExportMetricsServiceRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExportMetricsServiceRequest)) {
            return super.equals(obj);
        }
        ExportMetricsServiceRequest exportMetricsServiceRequest = (ExportMetricsServiceRequest) obj;
        boolean z10 = hasNode() == exportMetricsServiceRequest.hasNode();
        if (hasNode()) {
            z10 = z10 && getNode().equals(exportMetricsServiceRequest.getNode());
        }
        boolean z11 = (z10 && getMetricsList().equals(exportMetricsServiceRequest.getMetricsList())) && hasResource() == exportMetricsServiceRequest.hasResource();
        if (hasResource()) {
            z11 = z11 && getResource().equals(exportMetricsServiceRequest.getResource());
        }
        return z11 && this.unknownFields.equals(exportMetricsServiceRequest.unknownFields);
    }

    public Metric getMetrics(int i9) {
        return this.metrics_.get(i9);
    }

    public int getMetricsCount() {
        return this.metrics_.size();
    }

    public List<Metric> getMetricsList() {
        return this.metrics_;
    }

    public e getMetricsOrBuilder(int i9) {
        return this.metrics_.get(i9);
    }

    public List<? extends e> getMetricsOrBuilderList() {
        return this.metrics_;
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public io.opencensus.proto.agent.common.v1.c getNodeOrBuilder() {
        return getNode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ExportMetricsServiceRequest> getParserForType() {
        return PARSER;
    }

    public Resource getResource() {
        Resource resource = this.resource_;
        return resource == null ? Resource.getDefaultInstance() : resource;
    }

    public io.opencensus.proto.resource.v1.a getResourceOrBuilder() {
        return getResource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.node_ != null ? CodedOutputStream.G(1, getNode()) + 0 : 0;
        for (int i10 = 0; i10 < this.metrics_.size(); i10++) {
            G += CodedOutputStream.G(2, this.metrics_.get(i10));
        }
        if (this.resource_ != null) {
            G += CodedOutputStream.G(3, getResource());
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

    public boolean hasResource() {
        return this.resource_ != null;
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
        if (getMetricsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMetricsList().hashCode();
        }
        if (hasResource()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getResource().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.opencensus.proto.agent.metrics.v1.a.f50940b.d(ExportMetricsServiceRequest.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.node_ != null) {
            codedOutputStream.L0(1, getNode());
        }
        for (int i9 = 0; i9 < this.metrics_.size(); i9++) {
            codedOutputStream.L0(2, this.metrics_.get(i9));
        }
        if (this.resource_ != null) {
            codedOutputStream.L0(3, getResource());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ExportMetricsServiceRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ExportMetricsServiceRequest exportMetricsServiceRequest) {
        return DEFAULT_INSTANCE.toBuilder().i0(exportMetricsServiceRequest);
    }

    public static ExportMetricsServiceRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ExportMetricsServiceRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ExportMetricsServiceRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ExportMetricsServiceRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ExportMetricsServiceRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ExportMetricsServiceRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ExportMetricsServiceRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ExportMetricsServiceRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.metrics_ = Collections.emptyList();
    }

    public static ExportMetricsServiceRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ExportMetricsServiceRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ExportMetricsServiceRequest parseFrom(InputStream inputStream) throws IOException {
        return (ExportMetricsServiceRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ExportMetricsServiceRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            if (z10) {
                break;
            }
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
                                builder.i0(node2);
                                this.node_ = builder.I();
                            }
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.metrics_ = new ArrayList();
                                z11 |= true;
                            }
                            this.metrics_.add(pVar.B(Metric.parser(), f0Var));
                        } else if (L != 26) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Resource resource = this.resource_;
                            Resource.b builder2 = resource != null ? resource.toBuilder() : null;
                            Resource resource2 = (Resource) pVar.B(Resource.parser(), f0Var);
                            this.resource_ = resource2;
                            if (builder2 != null) {
                                builder2.i0(resource2);
                                this.resource_ = builder2.I();
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
                if (z11 & true) {
                    this.metrics_ = Collections.unmodifiableList(this.metrics_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ExportMetricsServiceRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ExportMetricsServiceRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ExportMetricsServiceRequest parseFrom(p pVar) throws IOException {
        return (ExportMetricsServiceRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ExportMetricsServiceRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ExportMetricsServiceRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
