package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.b;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.google.rpc.Status;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DiscoveryRequest extends GeneratedMessageV3 implements r1 {
    public static final int ERROR_DETAIL_FIELD_NUMBER = 6;
    public static final int NODE_FIELD_NUMBER = 2;
    public static final int RESOURCE_NAMES_FIELD_NUMBER = 3;
    public static final int RESPONSE_NONCE_FIELD_NUMBER = 5;
    public static final int TYPE_URL_FIELD_NUMBER = 4;
    public static final int VERSION_INFO_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Status errorDetail_;
    private byte memoizedIsInitialized;
    private Node node_;
    private z0 resourceNames_;
    private volatile Object responseNonce_;
    private volatile Object typeUrl_;
    private volatile Object versionInfo_;
    private static final DiscoveryRequest DEFAULT_INSTANCE = new DiscoveryRequest();
    private static final e2<DiscoveryRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DiscoveryRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DiscoveryRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DiscoveryRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50084e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50085f;

        /* renamed from: g  reason: collision with root package name */
        private Node f50086g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Node, Node.c, l0> f50087h;

        /* renamed from: i  reason: collision with root package name */
        private z0 f50088i;

        /* renamed from: j  reason: collision with root package name */
        private Object f50089j;

        /* renamed from: k  reason: collision with root package name */
        private Object f50090k;

        /* renamed from: l  reason: collision with root package name */
        private Status f50091l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Status, Status.b, com.google.rpc.c> f50092m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            if ((this.f50084e & 1) == 0) {
                this.f50088i = new y0(this.f50088i);
                this.f50084e |= 1;
            }
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f50119b.d(DiscoveryRequest.class, b.class);
        }

        public b W(Iterable<String> iterable) {
            b0();
            b.a.a(iterable, this.f50088i);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: X */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DiscoveryRequest build() {
            DiscoveryRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public DiscoveryRequest I() {
            DiscoveryRequest discoveryRequest = new DiscoveryRequest(this, (a) null);
            discoveryRequest.versionInfo_ = this.f50085f;
            q2<Node, Node.c, l0> q2Var = this.f50087h;
            if (q2Var == null) {
                discoveryRequest.node_ = this.f50086g;
            } else {
                discoveryRequest.node_ = q2Var.b();
            }
            if ((this.f50084e & 1) != 0) {
                this.f50088i = this.f50088i.V0();
                this.f50084e &= -2;
            }
            discoveryRequest.resourceNames_ = this.f50088i;
            discoveryRequest.typeUrl_ = this.f50089j;
            discoveryRequest.responseNonce_ = this.f50090k;
            q2<Status, Status.b, com.google.rpc.c> q2Var2 = this.f50092m;
            if (q2Var2 == null) {
                discoveryRequest.errorDetail_ = this.f50091l;
            } else {
                discoveryRequest.errorDetail_ = q2Var2.b();
            }
            Q();
            return discoveryRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: a0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public DiscoveryRequest getDefaultInstanceForType() {
            return DiscoveryRequest.getDefaultInstance();
        }

        public b g0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f50092m;
            if (q2Var == null) {
                Status status2 = this.f50091l;
                if (status2 != null) {
                    this.f50091l = Status.newBuilder(status2).i0(status).I();
                } else {
                    this.f50091l = status;
                }
                R();
            } else {
                q2Var.e(status);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f50118a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DiscoveryRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DiscoveryRequest) {
                return j0((DiscoveryRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(DiscoveryRequest discoveryRequest) {
            if (discoveryRequest == DiscoveryRequest.getDefaultInstance()) {
                return this;
            }
            if (!discoveryRequest.getVersionInfo().isEmpty()) {
                this.f50085f = discoveryRequest.versionInfo_;
                R();
            }
            if (discoveryRequest.hasNode()) {
                k0(discoveryRequest.getNode());
            }
            if (!discoveryRequest.resourceNames_.isEmpty()) {
                if (this.f50088i.isEmpty()) {
                    this.f50088i = discoveryRequest.resourceNames_;
                    this.f50084e &= -2;
                } else {
                    b0();
                    this.f50088i.addAll(discoveryRequest.resourceNames_);
                }
                R();
            }
            if (!discoveryRequest.getTypeUrl().isEmpty()) {
                this.f50089j = discoveryRequest.typeUrl_;
                R();
            }
            if (!discoveryRequest.getResponseNonce().isEmpty()) {
                this.f50090k = discoveryRequest.responseNonce_;
                R();
            }
            if (discoveryRequest.hasErrorDetail()) {
                g0(discoveryRequest.getErrorDetail());
            }
            z(((GeneratedMessageV3) discoveryRequest).unknownFields);
            R();
            return this;
        }

        public b k0(Node node) {
            q2<Node, Node.c, l0> q2Var = this.f50087h;
            if (q2Var == null) {
                Node node2 = this.f50086g;
                if (node2 != null) {
                    this.f50086g = Node.newBuilder(node2).q0(node).I();
                } else {
                    this.f50086g = node;
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

        public b m0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f50092m;
            if (q2Var == null) {
                Objects.requireNonNull(status);
                this.f50091l = status;
                R();
            } else {
                q2Var.g(status);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b o0(Node node) {
            q2<Node, Node.c, l0> q2Var = this.f50087h;
            if (q2Var == null) {
                Objects.requireNonNull(node);
                this.f50086g = node;
                R();
            } else {
                q2Var.g(node);
            }
            return this;
        }

        public b q0(String str) {
            Objects.requireNonNull(str);
            this.f50090k = str;
            R();
            return this;
        }

        public b r0(String str) {
            Objects.requireNonNull(str);
            this.f50089j = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        public b t0(String str) {
            Objects.requireNonNull(str);
            this.f50085f = str;
            R();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50085f = "";
            this.f50088i = y0.f15344d;
            this.f50089j = "";
            this.f50090k = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50085f = "";
            this.f50088i = y0.f15344d;
            this.f50089j = "";
            this.f50090k = "";
            e0();
        }
    }

    /* synthetic */ DiscoveryRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DiscoveryRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f50118a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DiscoveryRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DiscoveryRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DiscoveryRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DiscoveryRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DiscoveryRequest)) {
            return super.equals(obj);
        }
        DiscoveryRequest discoveryRequest = (DiscoveryRequest) obj;
        if (getVersionInfo().equals(discoveryRequest.getVersionInfo()) && hasNode() == discoveryRequest.hasNode()) {
            if ((!hasNode() || getNode().equals(discoveryRequest.getNode())) && m1644getResourceNamesList().equals(discoveryRequest.m1644getResourceNamesList()) && getTypeUrl().equals(discoveryRequest.getTypeUrl()) && getResponseNonce().equals(discoveryRequest.getResponseNonce()) && hasErrorDetail() == discoveryRequest.hasErrorDetail()) {
                return (!hasErrorDetail() || getErrorDetail().equals(discoveryRequest.getErrorDetail())) && this.unknownFields.equals(discoveryRequest.unknownFields);
            }
            return false;
        }
        return false;
    }

    public Status getErrorDetail() {
        Status status = this.errorDetail_;
        return status == null ? Status.getDefaultInstance() : status;
    }

    public com.google.rpc.c getErrorDetailOrBuilder() {
        return getErrorDetail();
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public l0 getNodeOrBuilder() {
        return getNode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DiscoveryRequest> getParserForType() {
        return PARSER;
    }

    public String getResourceNames(int i9) {
        return this.resourceNames_.get(i9);
    }

    public ByteString getResourceNamesBytes(int i9) {
        return this.resourceNames_.j0(i9);
    }

    public int getResourceNamesCount() {
        return this.resourceNames_.size();
    }

    public String getResponseNonce() {
        Object obj = this.responseNonce_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.responseNonce_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResponseNonceBytes() {
        Object obj = this.responseNonce_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.responseNonce_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? GeneratedMessageV3.computeStringSize(1, this.versionInfo_) + 0 : 0;
        if (this.node_ != null) {
            computeStringSize += CodedOutputStream.G(2, getNode());
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.resourceNames_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.resourceNames_.c1(i11));
        }
        int size = computeStringSize + i10 + (m1644getResourceNamesList().size() * 1);
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            size += GeneratedMessageV3.computeStringSize(4, this.typeUrl_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseNonce_)) {
            size += GeneratedMessageV3.computeStringSize(5, this.responseNonce_);
        }
        if (this.errorDetail_ != null) {
            size += CodedOutputStream.G(6, getErrorDetail());
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTypeUrl() {
        Object obj = this.typeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.typeUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeUrlBytes() {
        Object obj = this.typeUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.typeUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getVersionInfo() {
        Object obj = this.versionInfo_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.versionInfo_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getVersionInfoBytes() {
        Object obj = this.versionInfo_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.versionInfo_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasErrorDetail() {
        return this.errorDetail_ != null;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVersionInfo().hashCode();
        if (hasNode()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getNode().hashCode();
        }
        if (getResourceNamesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m1644getResourceNamesList().hashCode();
        }
        int hashCode2 = (((((((hashCode * 37) + 4) * 53) + getTypeUrl().hashCode()) * 37) + 5) * 53) + getResponseNonce().hashCode();
        if (hasErrorDetail()) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getErrorDetail().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f50119b.d(DiscoveryRequest.class, b.class);
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
        return new DiscoveryRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
        }
        if (this.node_ != null) {
            codedOutputStream.L0(2, getNode());
        }
        for (int i9 = 0; i9 < this.resourceNames_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.resourceNames_.c1(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.typeUrl_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseNonce_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.responseNonce_);
        }
        if (this.errorDetail_ != null) {
            codedOutputStream.L0(6, getErrorDetail());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DiscoveryRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DiscoveryRequest discoveryRequest) {
        return DEFAULT_INSTANCE.toBuilder().j0(discoveryRequest);
    }

    public static DiscoveryRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getResourceNamesList */
    public i2 m1644getResourceNamesList() {
        return this.resourceNames_;
    }

    private DiscoveryRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DiscoveryRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DiscoveryRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DiscoveryRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DiscoveryRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static DiscoveryRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DiscoveryRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.versionInfo_ = "";
        this.resourceNames_ = y0.f15344d;
        this.typeUrl_ = "";
        this.responseNonce_ = "";
    }

    public static DiscoveryRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DiscoveryRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DiscoveryRequest parseFrom(InputStream inputStream) throws IOException {
        return (DiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DiscoveryRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DiscoveryRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 18) {
                                Node node = this.node_;
                                Node.c builder = node != null ? node.toBuilder() : null;
                                Node node2 = (Node) pVar.B(Node.parser(), f0Var);
                                this.node_ = node2;
                                if (builder != null) {
                                    builder.q0(node2);
                                    this.node_ = builder.I();
                                }
                            } else if (L == 26) {
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.resourceNames_ = new y0();
                                    z11 |= true;
                                }
                                this.resourceNames_.add(K);
                            } else if (L == 34) {
                                this.typeUrl_ = pVar.K();
                            } else if (L == 42) {
                                this.responseNonce_ = pVar.K();
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Status status = this.errorDetail_;
                                Status.b builder2 = status != null ? status.toBuilder() : null;
                                Status status2 = (Status) pVar.B(Status.parser(), f0Var);
                                this.errorDetail_ = status2;
                                if (builder2 != null) {
                                    builder2.i0(status2);
                                    this.errorDetail_ = builder2.I();
                                }
                            }
                        } else {
                            this.versionInfo_ = pVar.K();
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
                    this.resourceNames_ = this.resourceNames_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DiscoveryRequest parseFrom(p pVar) throws IOException {
        return (DiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DiscoveryRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
