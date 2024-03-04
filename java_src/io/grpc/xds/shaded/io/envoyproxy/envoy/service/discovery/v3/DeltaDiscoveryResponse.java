package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ControlPlane;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.m;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DeltaDiscoveryResponse extends GeneratedMessageV3 implements r1 {
    public static final int CONTROL_PLANE_FIELD_NUMBER = 7;
    public static final int NONCE_FIELD_NUMBER = 5;
    public static final int REMOVED_RESOURCES_FIELD_NUMBER = 6;
    public static final int RESOURCES_FIELD_NUMBER = 2;
    public static final int SYSTEM_VERSION_INFO_FIELD_NUMBER = 1;
    public static final int TYPE_URL_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private ControlPlane controlPlane_;
    private byte memoizedIsInitialized;
    private volatile Object nonce_;
    private z0 removedResources_;
    private List<Resource> resources_;
    private volatile Object systemVersionInfo_;
    private volatile Object typeUrl_;
    private static final DeltaDiscoveryResponse DEFAULT_INSTANCE = new DeltaDiscoveryResponse();
    private static final e2<DeltaDiscoveryResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DeltaDiscoveryResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DeltaDiscoveryResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DeltaDiscoveryResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50075e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50076f;

        /* renamed from: g  reason: collision with root package name */
        private List<Resource> f50077g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Resource, Resource.b, d> f50078h;

        /* renamed from: i  reason: collision with root package name */
        private Object f50079i;

        /* renamed from: j  reason: collision with root package name */
        private z0 f50080j;

        /* renamed from: k  reason: collision with root package name */
        private Object f50081k;

        /* renamed from: l  reason: collision with root package name */
        private ControlPlane f50082l;

        /* renamed from: m  reason: collision with root package name */
        private q2<ControlPlane, ControlPlane.b, m> f50083m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50075e & 2) == 0) {
                this.f50080j = new y0(this.f50080j);
                this.f50075e |= 2;
            }
        }

        private void b0() {
            if ((this.f50075e & 1) == 0) {
                this.f50077g = new ArrayList(this.f50077g);
                this.f50075e |= 1;
            }
        }

        private l2<Resource, Resource.b, d> e0() {
            if (this.f50078h == null) {
                this.f50078h = new l2<>(this.f50077g, (this.f50075e & 1) != 0, H(), O());
                this.f50077g = null;
            }
            return this.f50078h;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f50127j.d(DeltaDiscoveryResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DeltaDiscoveryResponse build() {
            DeltaDiscoveryResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DeltaDiscoveryResponse I() {
            DeltaDiscoveryResponse deltaDiscoveryResponse = new DeltaDiscoveryResponse(this, (a) null);
            deltaDiscoveryResponse.systemVersionInfo_ = this.f50076f;
            l2<Resource, Resource.b, d> l2Var = this.f50078h;
            if (l2Var == null) {
                if ((this.f50075e & 1) != 0) {
                    this.f50077g = Collections.unmodifiableList(this.f50077g);
                    this.f50075e &= -2;
                }
                deltaDiscoveryResponse.resources_ = this.f50077g;
            } else {
                deltaDiscoveryResponse.resources_ = l2Var.e();
            }
            deltaDiscoveryResponse.typeUrl_ = this.f50079i;
            if ((this.f50075e & 2) != 0) {
                this.f50080j = this.f50080j.V0();
                this.f50075e &= -3;
            }
            deltaDiscoveryResponse.removedResources_ = this.f50080j;
            deltaDiscoveryResponse.nonce_ = this.f50081k;
            q2<ControlPlane, ControlPlane.b, m> q2Var = this.f50083m;
            if (q2Var == null) {
                deltaDiscoveryResponse.controlPlane_ = this.f50082l;
            } else {
                deltaDiscoveryResponse.controlPlane_ = q2Var.b();
            }
            Q();
            return deltaDiscoveryResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public DeltaDiscoveryResponse getDefaultInstanceForType() {
            return DeltaDiscoveryResponse.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f50126i;
        }

        public b h0(ControlPlane controlPlane) {
            q2<ControlPlane, ControlPlane.b, m> q2Var = this.f50083m;
            if (q2Var == null) {
                ControlPlane controlPlane2 = this.f50082l;
                if (controlPlane2 != null) {
                    this.f50082l = ControlPlane.newBuilder(controlPlane2).g0(controlPlane).I();
                } else {
                    this.f50082l = controlPlane;
                }
                R();
            } else {
                q2Var.e(controlPlane);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.DeltaDiscoveryResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DeltaDiscoveryResponse) {
                return k0((DeltaDiscoveryResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(DeltaDiscoveryResponse deltaDiscoveryResponse) {
            if (deltaDiscoveryResponse == DeltaDiscoveryResponse.getDefaultInstance()) {
                return this;
            }
            if (!deltaDiscoveryResponse.getSystemVersionInfo().isEmpty()) {
                this.f50076f = deltaDiscoveryResponse.systemVersionInfo_;
                R();
            }
            if (this.f50078h == null) {
                if (!deltaDiscoveryResponse.resources_.isEmpty()) {
                    if (this.f50077g.isEmpty()) {
                        this.f50077g = deltaDiscoveryResponse.resources_;
                        this.f50075e &= -2;
                    } else {
                        b0();
                        this.f50077g.addAll(deltaDiscoveryResponse.resources_);
                    }
                    R();
                }
            } else if (!deltaDiscoveryResponse.resources_.isEmpty()) {
                if (this.f50078h.k()) {
                    this.f50078h.f();
                    this.f50078h = null;
                    this.f50077g = deltaDiscoveryResponse.resources_;
                    this.f50075e &= -2;
                    this.f50078h = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f50078h.b(deltaDiscoveryResponse.resources_);
                }
            }
            if (!deltaDiscoveryResponse.getTypeUrl().isEmpty()) {
                this.f50079i = deltaDiscoveryResponse.typeUrl_;
                R();
            }
            if (!deltaDiscoveryResponse.removedResources_.isEmpty()) {
                if (this.f50080j.isEmpty()) {
                    this.f50080j = deltaDiscoveryResponse.removedResources_;
                    this.f50075e &= -3;
                } else {
                    a0();
                    this.f50080j.addAll(deltaDiscoveryResponse.removedResources_);
                }
                R();
            }
            if (!deltaDiscoveryResponse.getNonce().isEmpty()) {
                this.f50081k = deltaDiscoveryResponse.nonce_;
                R();
            }
            if (deltaDiscoveryResponse.hasControlPlane()) {
                h0(deltaDiscoveryResponse.getControlPlane());
            }
            z(((GeneratedMessageV3) deltaDiscoveryResponse).unknownFields);
            R();
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
            this.f50076f = "";
            this.f50077g = Collections.emptyList();
            this.f50079i = "";
            this.f50080j = y0.f15344d;
            this.f50081k = "";
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50076f = "";
            this.f50077g = Collections.emptyList();
            this.f50079i = "";
            this.f50080j = y0.f15344d;
            this.f50081k = "";
            g0();
        }
    }

    /* synthetic */ DeltaDiscoveryResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DeltaDiscoveryResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f50126i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DeltaDiscoveryResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DeltaDiscoveryResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DeltaDiscoveryResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DeltaDiscoveryResponse)) {
            return super.equals(obj);
        }
        DeltaDiscoveryResponse deltaDiscoveryResponse = (DeltaDiscoveryResponse) obj;
        if (getSystemVersionInfo().equals(deltaDiscoveryResponse.getSystemVersionInfo()) && getResourcesList().equals(deltaDiscoveryResponse.getResourcesList()) && getTypeUrl().equals(deltaDiscoveryResponse.getTypeUrl()) && m1643getRemovedResourcesList().equals(deltaDiscoveryResponse.m1643getRemovedResourcesList()) && getNonce().equals(deltaDiscoveryResponse.getNonce()) && hasControlPlane() == deltaDiscoveryResponse.hasControlPlane()) {
            return (!hasControlPlane() || getControlPlane().equals(deltaDiscoveryResponse.getControlPlane())) && this.unknownFields.equals(deltaDiscoveryResponse.unknownFields);
        }
        return false;
    }

    public ControlPlane getControlPlane() {
        ControlPlane controlPlane = this.controlPlane_;
        return controlPlane == null ? ControlPlane.getDefaultInstance() : controlPlane;
    }

    public m getControlPlaneOrBuilder() {
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
    public e2<DeltaDiscoveryResponse> getParserForType() {
        return PARSER;
    }

    public String getRemovedResources(int i9) {
        return this.removedResources_.get(i9);
    }

    public ByteString getRemovedResourcesBytes(int i9) {
        return this.removedResources_.j0(i9);
    }

    public int getRemovedResourcesCount() {
        return this.removedResources_.size();
    }

    public Resource getResources(int i9) {
        return this.resources_.get(i9);
    }

    public int getResourcesCount() {
        return this.resources_.size();
    }

    public List<Resource> getResourcesList() {
        return this.resources_;
    }

    public d getResourcesOrBuilder(int i9) {
        return this.resources_.get(i9);
    }

    public List<? extends d> getResourcesOrBuilderList() {
        return this.resources_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.systemVersionInfo_) ? GeneratedMessageV3.computeStringSize(1, this.systemVersionInfo_) + 0 : 0;
        for (int i10 = 0; i10 < this.resources_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.resources_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.typeUrl_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nonce_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.nonce_);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.removedResources_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.removedResources_.c1(i12));
        }
        int size = computeStringSize + i11 + (m1643getRemovedResourcesList().size() * 1);
        if (this.controlPlane_ != null) {
            size += CodedOutputStream.G(7, getControlPlane());
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSystemVersionInfo() {
        Object obj = this.systemVersionInfo_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.systemVersionInfo_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSystemVersionInfoBytes() {
        Object obj = this.systemVersionInfo_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.systemVersionInfo_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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

    public boolean hasControlPlane() {
        return this.controlPlane_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSystemVersionInfo().hashCode();
        if (getResourcesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getResourcesList().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 4) * 53) + getTypeUrl().hashCode();
        if (getRemovedResourcesCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + m1643getRemovedResourcesList().hashCode();
        }
        int hashCode3 = (((hashCode2 * 37) + 5) * 53) + getNonce().hashCode();
        if (hasControlPlane()) {
            hashCode3 = (((hashCode3 * 37) + 7) * 53) + getControlPlane().hashCode();
        }
        int hashCode4 = (hashCode3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode4;
        return hashCode4;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f50127j.d(DeltaDiscoveryResponse.class, b.class);
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
        return new DeltaDiscoveryResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.systemVersionInfo_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.systemVersionInfo_);
        }
        for (int i9 = 0; i9 < this.resources_.size(); i9++) {
            codedOutputStream.L0(2, this.resources_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.typeUrl_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nonce_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.nonce_);
        }
        for (int i10 = 0; i10 < this.removedResources_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.removedResources_.c1(i10));
        }
        if (this.controlPlane_ != null) {
            codedOutputStream.L0(7, getControlPlane());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DeltaDiscoveryResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DeltaDiscoveryResponse deltaDiscoveryResponse) {
        return DEFAULT_INSTANCE.toBuilder().k0(deltaDiscoveryResponse);
    }

    public static DeltaDiscoveryResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getRemovedResourcesList */
    public i2 m1643getRemovedResourcesList() {
        return this.removedResources_;
    }

    private DeltaDiscoveryResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DeltaDiscoveryResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DeltaDiscoveryResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DeltaDiscoveryResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static DeltaDiscoveryResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DeltaDiscoveryResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.systemVersionInfo_ = "";
        this.resources_ = Collections.emptyList();
        this.typeUrl_ = "";
        this.removedResources_ = y0.f15344d;
        this.nonce_ = "";
    }

    public static DeltaDiscoveryResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DeltaDiscoveryResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DeltaDiscoveryResponse parseFrom(InputStream inputStream) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DeltaDiscoveryResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static DeltaDiscoveryResponse parseFrom(p pVar) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private DeltaDiscoveryResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.systemVersionInfo_ = pVar.K();
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.resources_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.resources_.add((Resource) pVar.B(Resource.parser(), f0Var));
                            } else if (L == 34) {
                                this.typeUrl_ = pVar.K();
                            } else if (L == 42) {
                                this.nonce_ = pVar.K();
                            } else if (L == 50) {
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.removedResources_ = new y0();
                                    z11 |= true;
                                }
                                this.removedResources_.add(K);
                            } else if (L != 58) {
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
                if (z11 & true) {
                    this.removedResources_ = this.removedResources_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DeltaDiscoveryResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
