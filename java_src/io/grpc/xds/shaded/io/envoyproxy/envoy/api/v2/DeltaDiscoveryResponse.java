package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

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
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class DeltaDiscoveryResponse extends GeneratedMessageV3 implements r1 {
    public static final int NONCE_FIELD_NUMBER = 5;
    public static final int REMOVED_RESOURCES_FIELD_NUMBER = 6;
    public static final int RESOURCES_FIELD_NUMBER = 2;
    public static final int SYSTEM_VERSION_INFO_FIELD_NUMBER = 1;
    public static final int TYPE_URL_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object nonce_;
    private z0 removedResources_;
    private List<Resource> resources_;
    private volatile Object systemVersionInfo_;
    private volatile Object typeUrl_;
    private static final DeltaDiscoveryResponse DEFAULT_INSTANCE = new DeltaDiscoveryResponse();
    private static final e2<DeltaDiscoveryResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<DeltaDiscoveryResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DeltaDiscoveryResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DeltaDiscoveryResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f46043e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46044f;

        /* renamed from: g  reason: collision with root package name */
        private List<Resource> f46045g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Resource, Resource.b, k> f46046h;

        /* renamed from: i  reason: collision with root package name */
        private Object f46047i;

        /* renamed from: j  reason: collision with root package name */
        private z0 f46048j;

        /* renamed from: k  reason: collision with root package name */
        private Object f46049k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46043e & 2) == 0) {
                this.f46048j = new y0(this.f46048j);
                this.f46043e |= 2;
            }
        }

        private void b0() {
            if ((this.f46043e & 1) == 0) {
                this.f46045g = new ArrayList(this.f46045g);
                this.f46043e |= 1;
            }
        }

        private l2<Resource, Resource.b, k> e0() {
            if (this.f46046h == null) {
                this.f46046h = new l2<>(this.f46045g, (this.f46043e & 1) != 0, H(), O());
                this.f46045g = null;
            }
            return this.f46046h;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f46803j.d(DeltaDiscoveryResponse.class, b.class);
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
            deltaDiscoveryResponse.systemVersionInfo_ = this.f46044f;
            l2<Resource, Resource.b, k> l2Var = this.f46046h;
            if (l2Var == null) {
                if ((this.f46043e & 1) != 0) {
                    this.f46045g = Collections.unmodifiableList(this.f46045g);
                    this.f46043e &= -2;
                }
                deltaDiscoveryResponse.resources_ = this.f46045g;
            } else {
                deltaDiscoveryResponse.resources_ = l2Var.e();
            }
            deltaDiscoveryResponse.typeUrl_ = this.f46047i;
            if ((this.f46043e & 2) != 0) {
                this.f46048j = this.f46048j.V0();
                this.f46043e &= -3;
            }
            deltaDiscoveryResponse.removedResources_ = this.f46048j;
            deltaDiscoveryResponse.nonce_ = this.f46049k;
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
            return d.f46802i;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.DeltaDiscoveryResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DeltaDiscoveryResponse) {
                return j0((DeltaDiscoveryResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(DeltaDiscoveryResponse deltaDiscoveryResponse) {
            if (deltaDiscoveryResponse == DeltaDiscoveryResponse.getDefaultInstance()) {
                return this;
            }
            if (!deltaDiscoveryResponse.getSystemVersionInfo().isEmpty()) {
                this.f46044f = deltaDiscoveryResponse.systemVersionInfo_;
                R();
            }
            if (this.f46046h == null) {
                if (!deltaDiscoveryResponse.resources_.isEmpty()) {
                    if (this.f46045g.isEmpty()) {
                        this.f46045g = deltaDiscoveryResponse.resources_;
                        this.f46043e &= -2;
                    } else {
                        b0();
                        this.f46045g.addAll(deltaDiscoveryResponse.resources_);
                    }
                    R();
                }
            } else if (!deltaDiscoveryResponse.resources_.isEmpty()) {
                if (this.f46046h.k()) {
                    this.f46046h.f();
                    this.f46046h = null;
                    this.f46045g = deltaDiscoveryResponse.resources_;
                    this.f46043e &= -2;
                    this.f46046h = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f46046h.b(deltaDiscoveryResponse.resources_);
                }
            }
            if (!deltaDiscoveryResponse.getTypeUrl().isEmpty()) {
                this.f46047i = deltaDiscoveryResponse.typeUrl_;
                R();
            }
            if (!deltaDiscoveryResponse.removedResources_.isEmpty()) {
                if (this.f46048j.isEmpty()) {
                    this.f46048j = deltaDiscoveryResponse.removedResources_;
                    this.f46043e &= -3;
                } else {
                    a0();
                    this.f46048j.addAll(deltaDiscoveryResponse.removedResources_);
                }
                R();
            }
            if (!deltaDiscoveryResponse.getNonce().isEmpty()) {
                this.f46049k = deltaDiscoveryResponse.nonce_;
                R();
            }
            z(((GeneratedMessageV3) deltaDiscoveryResponse).unknownFields);
            R();
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
            this.f46044f = "";
            this.f46045g = Collections.emptyList();
            this.f46047i = "";
            this.f46048j = y0.f15344d;
            this.f46049k = "";
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46044f = "";
            this.f46045g = Collections.emptyList();
            this.f46047i = "";
            this.f46048j = y0.f15344d;
            this.f46049k = "";
            g0();
        }
    }

    /* synthetic */ DeltaDiscoveryResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DeltaDiscoveryResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f46802i;
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
        return getSystemVersionInfo().equals(deltaDiscoveryResponse.getSystemVersionInfo()) && getResourcesList().equals(deltaDiscoveryResponse.getResourcesList()) && getTypeUrl().equals(deltaDiscoveryResponse.getTypeUrl()) && m1580getRemovedResourcesList().equals(deltaDiscoveryResponse.m1580getRemovedResourcesList()) && getNonce().equals(deltaDiscoveryResponse.getNonce()) && this.unknownFields.equals(deltaDiscoveryResponse.unknownFields);
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

    public k getResourcesOrBuilder(int i9) {
        return this.resources_.get(i9);
    }

    public List<? extends k> getResourcesOrBuilderList() {
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
        int size = computeStringSize + i11 + (m1580getRemovedResourcesList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
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
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + m1580getRemovedResourcesList().hashCode();
        }
        int hashCode3 = (((((hashCode2 * 37) + 5) * 53) + getNonce().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f46803j.d(DeltaDiscoveryResponse.class, b.class);
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
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DeltaDiscoveryResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DeltaDiscoveryResponse deltaDiscoveryResponse) {
        return DEFAULT_INSTANCE.toBuilder().j0(deltaDiscoveryResponse);
    }

    public static DeltaDiscoveryResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getRemovedResourcesList */
    public i2 m1580getRemovedResourcesList() {
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
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
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

    public static DeltaDiscoveryResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private DeltaDiscoveryResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        } else if (L != 50) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.removedResources_ = new y0();
                                z11 |= true;
                            }
                            this.removedResources_.add(K);
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

    public static DeltaDiscoveryResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (DeltaDiscoveryResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
