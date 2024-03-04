package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
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
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DeltaDiscoveryRequest extends GeneratedMessageV3 implements r1 {
    public static final int ERROR_DETAIL_FIELD_NUMBER = 7;
    public static final int INITIAL_RESOURCE_VERSIONS_FIELD_NUMBER = 5;
    public static final int NODE_FIELD_NUMBER = 1;
    public static final int RESOURCE_NAMES_SUBSCRIBE_FIELD_NUMBER = 3;
    public static final int RESOURCE_NAMES_UNSUBSCRIBE_FIELD_NUMBER = 4;
    public static final int RESPONSE_NONCE_FIELD_NUMBER = 6;
    public static final int TYPE_URL_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Status errorDetail_;
    private g1<String, String> initialResourceVersions_;
    private byte memoizedIsInitialized;
    private Node node_;
    private z0 resourceNamesSubscribe_;
    private z0 resourceNamesUnsubscribe_;
    private volatile Object responseNonce_;
    private volatile Object typeUrl_;
    private static final DeltaDiscoveryRequest DEFAULT_INSTANCE = new DeltaDiscoveryRequest();
    private static final e2<DeltaDiscoveryRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DeltaDiscoveryRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DeltaDiscoveryRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DeltaDiscoveryRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50064e;

        /* renamed from: f  reason: collision with root package name */
        private Node f50065f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Node, Node.c, l0> f50066g;

        /* renamed from: h  reason: collision with root package name */
        private Object f50067h;

        /* renamed from: i  reason: collision with root package name */
        private z0 f50068i;

        /* renamed from: j  reason: collision with root package name */
        private z0 f50069j;

        /* renamed from: k  reason: collision with root package name */
        private g1<String, String> f50070k;

        /* renamed from: l  reason: collision with root package name */
        private Object f50071l;

        /* renamed from: m  reason: collision with root package name */
        private Status f50072m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Status, Status.b, com.google.rpc.c> f50073n;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50064e & 1) == 0) {
                this.f50068i = new y0(this.f50068i);
                this.f50064e |= 1;
            }
        }

        private void b0() {
            if ((this.f50064e & 2) == 0) {
                this.f50069j = new y0(this.f50069j);
                this.f50064e |= 2;
            }
        }

        private g1<String, String> e0() {
            g1<String, String> g1Var = this.f50070k;
            return g1Var == null ? g1.g(c.f50074a) : g1Var;
        }

        private g1<String, String> g0() {
            R();
            if (this.f50070k == null) {
                this.f50070k = g1.p(c.f50074a);
            }
            if (!this.f50070k.m()) {
                this.f50070k = this.f50070k.f();
            }
            return this.f50070k;
        }

        private void h0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.c.f50123f.d(DeltaDiscoveryRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 5) {
                return e0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 5) {
                return g0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DeltaDiscoveryRequest build() {
            DeltaDiscoveryRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DeltaDiscoveryRequest I() {
            DeltaDiscoveryRequest deltaDiscoveryRequest = new DeltaDiscoveryRequest(this, (a) null);
            q2<Node, Node.c, l0> q2Var = this.f50066g;
            if (q2Var == null) {
                deltaDiscoveryRequest.node_ = this.f50065f;
            } else {
                deltaDiscoveryRequest.node_ = q2Var.b();
            }
            deltaDiscoveryRequest.typeUrl_ = this.f50067h;
            if ((this.f50064e & 1) != 0) {
                this.f50068i = this.f50068i.V0();
                this.f50064e &= -2;
            }
            deltaDiscoveryRequest.resourceNamesSubscribe_ = this.f50068i;
            if ((this.f50064e & 2) != 0) {
                this.f50069j = this.f50069j.V0();
                this.f50064e &= -3;
            }
            deltaDiscoveryRequest.resourceNamesUnsubscribe_ = this.f50069j;
            deltaDiscoveryRequest.initialResourceVersions_ = e0();
            deltaDiscoveryRequest.initialResourceVersions_.n();
            deltaDiscoveryRequest.responseNonce_ = this.f50071l;
            q2<Status, Status.b, com.google.rpc.c> q2Var2 = this.f50073n;
            if (q2Var2 == null) {
                deltaDiscoveryRequest.errorDetail_ = this.f50072m;
            } else {
                deltaDiscoveryRequest.errorDetail_ = q2Var2.b();
            }
            Q();
            return deltaDiscoveryRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public DeltaDiscoveryRequest getDefaultInstanceForType() {
            return DeltaDiscoveryRequest.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.c.f50122e;
        }

        public b i0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f50073n;
            if (q2Var == null) {
                Status status2 = this.f50072m;
                if (status2 != null) {
                    this.f50072m = Status.newBuilder(status2).i0(status).I();
                } else {
                    this.f50072m = status;
                }
                R();
            } else {
                q2Var.e(status);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.l0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.l0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DeltaDiscoveryRequest) {
                return l0((DeltaDiscoveryRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(DeltaDiscoveryRequest deltaDiscoveryRequest) {
            if (deltaDiscoveryRequest == DeltaDiscoveryRequest.getDefaultInstance()) {
                return this;
            }
            if (deltaDiscoveryRequest.hasNode()) {
                m0(deltaDiscoveryRequest.getNode());
            }
            if (!deltaDiscoveryRequest.getTypeUrl().isEmpty()) {
                this.f50067h = deltaDiscoveryRequest.typeUrl_;
                R();
            }
            if (!deltaDiscoveryRequest.resourceNamesSubscribe_.isEmpty()) {
                if (this.f50068i.isEmpty()) {
                    this.f50068i = deltaDiscoveryRequest.resourceNamesSubscribe_;
                    this.f50064e &= -2;
                } else {
                    a0();
                    this.f50068i.addAll(deltaDiscoveryRequest.resourceNamesSubscribe_);
                }
                R();
            }
            if (!deltaDiscoveryRequest.resourceNamesUnsubscribe_.isEmpty()) {
                if (this.f50069j.isEmpty()) {
                    this.f50069j = deltaDiscoveryRequest.resourceNamesUnsubscribe_;
                    this.f50064e &= -3;
                } else {
                    b0();
                    this.f50069j.addAll(deltaDiscoveryRequest.resourceNamesUnsubscribe_);
                }
                R();
            }
            g0().o(deltaDiscoveryRequest.internalGetInitialResourceVersions());
            if (!deltaDiscoveryRequest.getResponseNonce().isEmpty()) {
                this.f50071l = deltaDiscoveryRequest.responseNonce_;
                R();
            }
            if (deltaDiscoveryRequest.hasErrorDetail()) {
                i0(deltaDiscoveryRequest.getErrorDetail());
            }
            z(((GeneratedMessageV3) deltaDiscoveryRequest).unknownFields);
            R();
            return this;
        }

        public b m0(Node node) {
            q2<Node, Node.c, l0> q2Var = this.f50066g;
            if (q2Var == null) {
                Node node2 = this.f50065f;
                if (node2 != null) {
                    this.f50065f = Node.newBuilder(node2).q0(node).I();
                } else {
                    this.f50065f = node;
                }
                R();
            } else {
                q2Var.e(node);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50067h = "";
            z0 z0Var = y0.f15344d;
            this.f50068i = z0Var;
            this.f50069j = z0Var;
            this.f50071l = "";
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50067h = "";
            z0 z0Var = y0.f15344d;
            this.f50068i = z0Var;
            this.f50069j = z0Var;
            this.f50071l = "";
            h0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, String> f50074a;

        static {
            Descriptors.b bVar = io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.c.f50124g;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f50074a = e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* synthetic */ DeltaDiscoveryRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DeltaDiscoveryRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.c.f50122e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, String> internalGetInitialResourceVersions() {
        g1<String, String> g1Var = this.initialResourceVersions_;
        return g1Var == null ? g1.g(c.f50074a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DeltaDiscoveryRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DeltaDiscoveryRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DeltaDiscoveryRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DeltaDiscoveryRequest> parser() {
        return PARSER;
    }

    public boolean containsInitialResourceVersions(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetInitialResourceVersions().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DeltaDiscoveryRequest)) {
            return super.equals(obj);
        }
        DeltaDiscoveryRequest deltaDiscoveryRequest = (DeltaDiscoveryRequest) obj;
        if (hasNode() != deltaDiscoveryRequest.hasNode()) {
            return false;
        }
        if ((!hasNode() || getNode().equals(deltaDiscoveryRequest.getNode())) && getTypeUrl().equals(deltaDiscoveryRequest.getTypeUrl()) && m1641getResourceNamesSubscribeList().equals(deltaDiscoveryRequest.m1641getResourceNamesSubscribeList()) && m1642getResourceNamesUnsubscribeList().equals(deltaDiscoveryRequest.m1642getResourceNamesUnsubscribeList()) && internalGetInitialResourceVersions().equals(deltaDiscoveryRequest.internalGetInitialResourceVersions()) && getResponseNonce().equals(deltaDiscoveryRequest.getResponseNonce()) && hasErrorDetail() == deltaDiscoveryRequest.hasErrorDetail()) {
            return (!hasErrorDetail() || getErrorDetail().equals(deltaDiscoveryRequest.getErrorDetail())) && this.unknownFields.equals(deltaDiscoveryRequest.unknownFields);
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

    @Deprecated
    public Map<String, String> getInitialResourceVersions() {
        return getInitialResourceVersionsMap();
    }

    public int getInitialResourceVersionsCount() {
        return internalGetInitialResourceVersions().i().size();
    }

    public Map<String, String> getInitialResourceVersionsMap() {
        return internalGetInitialResourceVersions().i();
    }

    public String getInitialResourceVersionsOrDefault(String str, String str2) {
        Objects.requireNonNull(str, "map key");
        Map<String, String> i9 = internalGetInitialResourceVersions().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getInitialResourceVersionsOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, String> i9 = internalGetInitialResourceVersions().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public l0 getNodeOrBuilder() {
        return getNode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DeltaDiscoveryRequest> getParserForType() {
        return PARSER;
    }

    public String getResourceNamesSubscribe(int i9) {
        return this.resourceNamesSubscribe_.get(i9);
    }

    public ByteString getResourceNamesSubscribeBytes(int i9) {
        return this.resourceNamesSubscribe_.j0(i9);
    }

    public int getResourceNamesSubscribeCount() {
        return this.resourceNamesSubscribe_.size();
    }

    public String getResourceNamesUnsubscribe(int i9) {
        return this.resourceNamesUnsubscribe_.get(i9);
    }

    public ByteString getResourceNamesUnsubscribeBytes(int i9) {
        return this.resourceNamesUnsubscribe_.j0(i9);
    }

    public int getResourceNamesUnsubscribeCount() {
        return this.resourceNamesUnsubscribe_.size();
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
        int G = this.node_ != null ? CodedOutputStream.G(1, getNode()) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.typeUrl_);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.resourceNamesSubscribe_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.resourceNamesSubscribe_.c1(i11));
        }
        int size = G + i10 + (m1641getResourceNamesSubscribeList().size() * 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.resourceNamesUnsubscribe_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.resourceNamesUnsubscribe_.c1(i13));
        }
        int size2 = size + i12 + (m1642getResourceNamesUnsubscribeList().size() * 1);
        for (Map.Entry<String, String> entry : internalGetInitialResourceVersions().i().entrySet()) {
            size2 += CodedOutputStream.G(5, c.f50074a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseNonce_)) {
            size2 += GeneratedMessageV3.computeStringSize(6, this.responseNonce_);
        }
        if (this.errorDetail_ != null) {
            size2 += CodedOutputStream.G(7, getErrorDetail());
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasNode()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getNode().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 2) * 53) + getTypeUrl().hashCode();
        if (getResourceNamesSubscribeCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + m1641getResourceNamesSubscribeList().hashCode();
        }
        if (getResourceNamesUnsubscribeCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + m1642getResourceNamesUnsubscribeList().hashCode();
        }
        if (!internalGetInitialResourceVersions().i().isEmpty()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + internalGetInitialResourceVersions().hashCode();
        }
        int hashCode3 = (((hashCode2 * 37) + 6) * 53) + getResponseNonce().hashCode();
        if (hasErrorDetail()) {
            hashCode3 = (((hashCode3 * 37) + 7) * 53) + getErrorDetail().hashCode();
        }
        int hashCode4 = (hashCode3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode4;
        return hashCode4;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.c.f50123f.d(DeltaDiscoveryRequest.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 5) {
            return internalGetInitialResourceVersions();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new DeltaDiscoveryRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.node_ != null) {
            codedOutputStream.L0(1, getNode());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.typeUrl_);
        }
        for (int i9 = 0; i9 < this.resourceNamesSubscribe_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.resourceNamesSubscribe_.c1(i9));
        }
        for (int i10 = 0; i10 < this.resourceNamesUnsubscribe_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.resourceNamesUnsubscribe_.c1(i10));
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetInitialResourceVersions(), c.f50074a, 5);
        if (!GeneratedMessageV3.isStringEmpty(this.responseNonce_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.responseNonce_);
        }
        if (this.errorDetail_ != null) {
            codedOutputStream.L0(7, getErrorDetail());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DeltaDiscoveryRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DeltaDiscoveryRequest deltaDiscoveryRequest) {
        return DEFAULT_INSTANCE.toBuilder().l0(deltaDiscoveryRequest);
    }

    public static DeltaDiscoveryRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getResourceNamesSubscribeList */
    public i2 m1641getResourceNamesSubscribeList() {
        return this.resourceNamesSubscribe_;
    }

    /* renamed from: getResourceNamesUnsubscribeList */
    public i2 m1642getResourceNamesUnsubscribeList() {
        return this.resourceNamesUnsubscribe_;
    }

    private DeltaDiscoveryRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DeltaDiscoveryRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DeltaDiscoveryRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DeltaDiscoveryRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DeltaDiscoveryRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static DeltaDiscoveryRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DeltaDiscoveryRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.typeUrl_ = "";
        z0 z0Var = y0.f15344d;
        this.resourceNamesSubscribe_ = z0Var;
        this.resourceNamesUnsubscribe_ = z0Var;
        this.responseNonce_ = "";
    }

    public static DeltaDiscoveryRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DeltaDiscoveryRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DeltaDiscoveryRequest parseFrom(InputStream inputStream) throws IOException {
        return (DeltaDiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DeltaDiscoveryRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DeltaDiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DeltaDiscoveryRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Node node = this.node_;
                            Node.c builder = node != null ? node.toBuilder() : null;
                            Node node2 = (Node) pVar.B(Node.parser(), f0Var);
                            this.node_ = node2;
                            if (builder != null) {
                                builder.q0(node2);
                                this.node_ = builder.I();
                            }
                        } else if (L == 18) {
                            this.typeUrl_ = pVar.K();
                        } else if (L == 26) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.resourceNamesSubscribe_ = new y0();
                                z11 |= true;
                            }
                            this.resourceNamesSubscribe_.add(K);
                        } else if (L == 34) {
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.resourceNamesUnsubscribe_ = new y0();
                                z11 |= true;
                            }
                            this.resourceNamesUnsubscribe_.add(K2);
                        } else if (L == 42) {
                            if (!(z11 & true)) {
                                this.initialResourceVersions_ = g1.p(c.f50074a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f50074a.getParserForType(), f0Var);
                            this.initialResourceVersions_.l().put((String) e1Var.f(), (String) e1Var.h());
                        } else if (L == 50) {
                            this.responseNonce_ = pVar.K();
                        } else if (L != 58) {
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
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.resourceNamesSubscribe_ = this.resourceNamesSubscribe_.V0();
                }
                if (z11 & true) {
                    this.resourceNamesUnsubscribe_ = this.resourceNamesUnsubscribe_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DeltaDiscoveryRequest parseFrom(p pVar) throws IOException {
        return (DeltaDiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DeltaDiscoveryRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DeltaDiscoveryRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
