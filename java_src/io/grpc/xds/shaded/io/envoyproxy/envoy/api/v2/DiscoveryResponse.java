package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Any;
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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ControlPlane;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class DiscoveryResponse extends GeneratedMessageV3 implements r1 {
    public static final int CANARY_FIELD_NUMBER = 3;
    public static final int CONTROL_PLANE_FIELD_NUMBER = 6;
    public static final int NONCE_FIELD_NUMBER = 5;
    public static final int RESOURCES_FIELD_NUMBER = 2;
    public static final int TYPE_URL_FIELD_NUMBER = 4;
    public static final int VERSION_INFO_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean canary_;
    private ControlPlane controlPlane_;
    private byte memoizedIsInitialized;
    private volatile Object nonce_;
    private List<Any> resources_;
    private volatile Object typeUrl_;
    private volatile Object versionInfo_;
    private static final DiscoveryResponse DEFAULT_INSTANCE = new DiscoveryResponse();
    private static final e2<DiscoveryResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<DiscoveryResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DiscoveryResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DiscoveryResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f46059e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46060f;

        /* renamed from: g  reason: collision with root package name */
        private List<Any> f46061g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Any, Any.b, com.google.protobuf.f> f46062h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f46063i;

        /* renamed from: j  reason: collision with root package name */
        private Object f46064j;

        /* renamed from: k  reason: collision with root package name */
        private Object f46065k;

        /* renamed from: l  reason: collision with root package name */
        private ControlPlane f46066l;

        /* renamed from: m  reason: collision with root package name */
        private q2<ControlPlane, ControlPlane.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.m> f46067m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46059e & 1) == 0) {
                this.f46061g = new ArrayList(this.f46061g);
                this.f46059e |= 1;
            }
        }

        private l2<Any, Any.b, com.google.protobuf.f> d0() {
            if (this.f46062h == null) {
                this.f46062h = new l2<>(this.f46061g, (this.f46059e & 1) != 0, H(), O());
                this.f46061g = null;
            }
            return this.f46062h;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f46797d.d(DiscoveryResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DiscoveryResponse build() {
            DiscoveryResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DiscoveryResponse I() {
            DiscoveryResponse discoveryResponse = new DiscoveryResponse(this, (a) null);
            discoveryResponse.versionInfo_ = this.f46060f;
            l2<Any, Any.b, com.google.protobuf.f> l2Var = this.f46062h;
            if (l2Var == null) {
                if ((this.f46059e & 1) != 0) {
                    this.f46061g = Collections.unmodifiableList(this.f46061g);
                    this.f46059e &= -2;
                }
                discoveryResponse.resources_ = this.f46061g;
            } else {
                discoveryResponse.resources_ = l2Var.e();
            }
            discoveryResponse.canary_ = this.f46063i;
            discoveryResponse.typeUrl_ = this.f46064j;
            discoveryResponse.nonce_ = this.f46065k;
            q2<ControlPlane, ControlPlane.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.m> q2Var = this.f46067m;
            if (q2Var == null) {
                discoveryResponse.controlPlane_ = this.f46066l;
            } else {
                discoveryResponse.controlPlane_ = q2Var.b();
            }
            Q();
            return discoveryResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public DiscoveryResponse getDefaultInstanceForType() {
            return DiscoveryResponse.getDefaultInstance();
        }

        public b g0(ControlPlane controlPlane) {
            q2<ControlPlane, ControlPlane.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.m> q2Var = this.f46067m;
            if (q2Var == null) {
                ControlPlane controlPlane2 = this.f46066l;
                if (controlPlane2 != null) {
                    this.f46066l = ControlPlane.newBuilder(controlPlane2).g0(controlPlane).I();
                } else {
                    this.f46066l = controlPlane;
                }
                R();
            } else {
                q2Var.e(controlPlane);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f46796c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DiscoveryResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DiscoveryResponse) {
                return j0((DiscoveryResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(DiscoveryResponse discoveryResponse) {
            if (discoveryResponse == DiscoveryResponse.getDefaultInstance()) {
                return this;
            }
            if (!discoveryResponse.getVersionInfo().isEmpty()) {
                this.f46060f = discoveryResponse.versionInfo_;
                R();
            }
            if (this.f46062h == null) {
                if (!discoveryResponse.resources_.isEmpty()) {
                    if (this.f46061g.isEmpty()) {
                        this.f46061g = discoveryResponse.resources_;
                        this.f46059e &= -2;
                    } else {
                        a0();
                        this.f46061g.addAll(discoveryResponse.resources_);
                    }
                    R();
                }
            } else if (!discoveryResponse.resources_.isEmpty()) {
                if (this.f46062h.k()) {
                    this.f46062h.f();
                    this.f46062h = null;
                    this.f46061g = discoveryResponse.resources_;
                    this.f46059e &= -2;
                    this.f46062h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46062h.b(discoveryResponse.resources_);
                }
            }
            if (discoveryResponse.getCanary()) {
                l0(discoveryResponse.getCanary());
            }
            if (!discoveryResponse.getTypeUrl().isEmpty()) {
                this.f46064j = discoveryResponse.typeUrl_;
                R();
            }
            if (!discoveryResponse.getNonce().isEmpty()) {
                this.f46065k = discoveryResponse.nonce_;
                R();
            }
            if (discoveryResponse.hasControlPlane()) {
                g0(discoveryResponse.getControlPlane());
            }
            z(((GeneratedMessageV3) discoveryResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b l0(boolean z10) {
            this.f46063i = z10;
            R();
            return this;
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
            this.f46060f = "";
            this.f46061g = Collections.emptyList();
            this.f46064j = "";
            this.f46065k = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46060f = "";
            this.f46061g = Collections.emptyList();
            this.f46064j = "";
            this.f46065k = "";
            e0();
        }
    }

    /* synthetic */ DiscoveryResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DiscoveryResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f46796c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DiscoveryResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DiscoveryResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DiscoveryResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DiscoveryResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DiscoveryResponse)) {
            return super.equals(obj);
        }
        DiscoveryResponse discoveryResponse = (DiscoveryResponse) obj;
        if (getVersionInfo().equals(discoveryResponse.getVersionInfo()) && getResourcesList().equals(discoveryResponse.getResourcesList()) && getCanary() == discoveryResponse.getCanary() && getTypeUrl().equals(discoveryResponse.getTypeUrl()) && getNonce().equals(discoveryResponse.getNonce()) && hasControlPlane() == discoveryResponse.hasControlPlane()) {
            return (!hasControlPlane() || getControlPlane().equals(discoveryResponse.getControlPlane())) && this.unknownFields.equals(discoveryResponse.unknownFields);
        }
        return false;
    }

    public boolean getCanary() {
        return this.canary_;
    }

    public ControlPlane getControlPlane() {
        ControlPlane controlPlane = this.controlPlane_;
        return controlPlane == null ? ControlPlane.getDefaultInstance() : controlPlane;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.m getControlPlaneOrBuilder() {
        return getControlPlane();
    }

    public String getNonce() {
        Object obj = this.nonce_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nonce_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNonceBytes() {
        Object obj = this.nonce_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nonce_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DiscoveryResponse> getParserForType() {
        return PARSER;
    }

    public Any getResources(int i9) {
        return this.resources_.get(i9);
    }

    public int getResourcesCount() {
        return this.resources_.size();
    }

    public List<Any> getResourcesList() {
        return this.resources_;
    }

    public com.google.protobuf.f getResourcesOrBuilder(int i9) {
        return this.resources_.get(i9);
    }

    public List<? extends com.google.protobuf.f> getResourcesOrBuilderList() {
        return this.resources_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? GeneratedMessageV3.computeStringSize(1, this.versionInfo_) + 0 : 0;
        for (int i10 = 0; i10 < this.resources_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.resources_.get(i10));
        }
        boolean z10 = this.canary_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(3, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.typeUrl_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nonce_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.nonce_);
        }
        if (this.controlPlane_ != null) {
            computeStringSize += CodedOutputStream.G(6, getControlPlane());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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

    public boolean hasControlPlane() {
        return this.controlPlane_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVersionInfo().hashCode();
        if (getResourcesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getResourcesList().hashCode();
        }
        int d10 = (((((((((((hashCode * 37) + 3) * 53) + u0.d(getCanary())) * 37) + 4) * 53) + getTypeUrl().hashCode()) * 37) + 5) * 53) + getNonce().hashCode();
        if (hasControlPlane()) {
            d10 = (((d10 * 37) + 6) * 53) + getControlPlane().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f46797d.d(DiscoveryResponse.class, b.class);
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
        return new DiscoveryResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
        }
        for (int i9 = 0; i9 < this.resources_.size(); i9++) {
            codedOutputStream.L0(2, this.resources_.get(i9));
        }
        boolean z10 = this.canary_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.typeUrl_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nonce_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.nonce_);
        }
        if (this.controlPlane_ != null) {
            codedOutputStream.L0(6, getControlPlane());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DiscoveryResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DiscoveryResponse discoveryResponse) {
        return DEFAULT_INSTANCE.toBuilder().j0(discoveryResponse);
    }

    public static DiscoveryResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DiscoveryResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DiscoveryResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DiscoveryResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DiscoveryResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DiscoveryResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static DiscoveryResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DiscoveryResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.versionInfo_ = "";
        this.resources_ = Collections.emptyList();
        this.typeUrl_ = "";
        this.nonce_ = "";
    }

    public static DiscoveryResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DiscoveryResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DiscoveryResponse parseFrom(InputStream inputStream) throws IOException {
        return (DiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DiscoveryResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DiscoveryResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.versionInfo_ = pVar.K();
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.resources_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.resources_.add((Any) pVar.B(Any.parser(), f0Var));
                            } else if (L == 24) {
                                this.canary_ = pVar.r();
                            } else if (L == 34) {
                                this.typeUrl_ = pVar.K();
                            } else if (L == 42) {
                                this.nonce_ = pVar.K();
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ControlPlane controlPlane = this.controlPlane_;
                                ControlPlane.b builder = controlPlane != null ? controlPlane.toBuilder() : null;
                                ControlPlane controlPlane2 = (ControlPlane) pVar.B(ControlPlane.parser(), f0Var);
                                this.controlPlane_ = controlPlane2;
                                if (builder != null) {
                                    builder.g0(controlPlane2);
                                    this.controlPlane_ = builder.I();
                                }
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
                if (z11 & true) {
                    this.resources_ = Collections.unmodifiableList(this.resources_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DiscoveryResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (DiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DiscoveryResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (DiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
