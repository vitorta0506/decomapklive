package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Locality;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.c0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LocalityLbEndpoints extends GeneratedMessageV3 implements g {
    public static final int LB_ENDPOINTS_FIELD_NUMBER = 2;
    public static final int LOAD_BALANCING_WEIGHT_FIELD_NUMBER = 3;
    public static final int LOCALITY_FIELD_NUMBER = 1;
    public static final int PRIORITY_FIELD_NUMBER = 5;
    public static final int PROXIMITY_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private List<LbEndpoint> lbEndpoints_;
    private UInt32Value loadBalancingWeight_;
    private Locality locality_;
    private byte memoizedIsInitialized;
    private int priority_;
    private UInt32Value proximity_;
    private static final LocalityLbEndpoints DEFAULT_INSTANCE = new LocalityLbEndpoints();
    private static final e2<LocalityLbEndpoints> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<LocalityLbEndpoints> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LocalityLbEndpoints m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LocalityLbEndpoints(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f46841e;

        /* renamed from: f  reason: collision with root package name */
        private Locality f46842f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Locality, Locality.b, c0> f46843g;

        /* renamed from: h  reason: collision with root package name */
        private List<LbEndpoint> f46844h;

        /* renamed from: i  reason: collision with root package name */
        private l2<LbEndpoint, LbEndpoint.c, e> f46845i;

        /* renamed from: j  reason: collision with root package name */
        private UInt32Value f46846j;

        /* renamed from: k  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46847k;

        /* renamed from: l  reason: collision with root package name */
        private int f46848l;

        /* renamed from: m  reason: collision with root package name */
        private UInt32Value f46849m;

        /* renamed from: n  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46850n;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46841e & 1) == 0) {
                this.f46844h = new ArrayList(this.f46844h);
                this.f46841e |= 1;
            }
        }

        private l2<LbEndpoint, LbEndpoint.c, e> d0() {
            if (this.f46845i == null) {
                this.f46845i = new l2<>(this.f46844h, (this.f46841e & 1) != 0, H(), O());
                this.f46844h = null;
            }
            return this.f46845i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46881h.d(LocalityLbEndpoints.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LocalityLbEndpoints build() {
            LocalityLbEndpoints I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LocalityLbEndpoints I() {
            LocalityLbEndpoints localityLbEndpoints = new LocalityLbEndpoints(this, (a) null);
            q2<Locality, Locality.b, c0> q2Var = this.f46843g;
            if (q2Var == null) {
                localityLbEndpoints.locality_ = this.f46842f;
            } else {
                localityLbEndpoints.locality_ = q2Var.b();
            }
            l2<LbEndpoint, LbEndpoint.c, e> l2Var = this.f46845i;
            if (l2Var == null) {
                if ((this.f46841e & 1) != 0) {
                    this.f46844h = Collections.unmodifiableList(this.f46844h);
                    this.f46841e &= -2;
                }
                localityLbEndpoints.lbEndpoints_ = this.f46844h;
            } else {
                localityLbEndpoints.lbEndpoints_ = l2Var.e();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f46847k;
            if (q2Var2 == null) {
                localityLbEndpoints.loadBalancingWeight_ = this.f46846j;
            } else {
                localityLbEndpoints.loadBalancingWeight_ = q2Var2.b();
            }
            localityLbEndpoints.priority_ = this.f46848l;
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f46850n;
            if (q2Var3 == null) {
                localityLbEndpoints.proximity_ = this.f46849m;
            } else {
                localityLbEndpoints.proximity_ = q2Var3.b();
            }
            Q();
            return localityLbEndpoints;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LocalityLbEndpoints getDefaultInstanceForType() {
            return LocalityLbEndpoints.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46880g;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LocalityLbEndpoints) {
                return i0((LocalityLbEndpoints) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(LocalityLbEndpoints localityLbEndpoints) {
            if (localityLbEndpoints == LocalityLbEndpoints.getDefaultInstance()) {
                return this;
            }
            if (localityLbEndpoints.hasLocality()) {
                k0(localityLbEndpoints.getLocality());
            }
            if (this.f46845i == null) {
                if (!localityLbEndpoints.lbEndpoints_.isEmpty()) {
                    if (this.f46844h.isEmpty()) {
                        this.f46844h = localityLbEndpoints.lbEndpoints_;
                        this.f46841e &= -2;
                    } else {
                        a0();
                        this.f46844h.addAll(localityLbEndpoints.lbEndpoints_);
                    }
                    R();
                }
            } else if (!localityLbEndpoints.lbEndpoints_.isEmpty()) {
                if (this.f46845i.k()) {
                    this.f46845i.f();
                    this.f46845i = null;
                    this.f46844h = localityLbEndpoints.lbEndpoints_;
                    this.f46841e &= -2;
                    this.f46845i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46845i.b(localityLbEndpoints.lbEndpoints_);
                }
            }
            if (localityLbEndpoints.hasLoadBalancingWeight()) {
                j0(localityLbEndpoints.getLoadBalancingWeight());
            }
            if (localityLbEndpoints.getPriority() != 0) {
                o0(localityLbEndpoints.getPriority());
            }
            if (localityLbEndpoints.hasProximity()) {
                l0(localityLbEndpoints.getProximity());
            }
            z(((GeneratedMessageV3) localityLbEndpoints).unknownFields);
            R();
            return this;
        }

        public b j0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46847k;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46846j;
                if (uInt32Value2 != null) {
                    this.f46846j = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46846j = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b k0(Locality locality) {
            q2<Locality, Locality.b, c0> q2Var = this.f46843g;
            if (q2Var == null) {
                Locality locality2 = this.f46842f;
                if (locality2 != null) {
                    this.f46842f = Locality.newBuilder(locality2).g0(locality).I();
                } else {
                    this.f46842f = locality;
                }
                R();
            } else {
                q2Var.e(locality);
            }
            return this;
        }

        public b l0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46850n;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46849m;
                if (uInt32Value2 != null) {
                    this.f46849m = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46849m = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b o0(int i9) {
            this.f46848l = i9;
            R();
            return this;
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
            this.f46844h = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46844h = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ LocalityLbEndpoints(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LocalityLbEndpoints getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46880g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LocalityLbEndpoints parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LocalityLbEndpoints parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LocalityLbEndpoints> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocalityLbEndpoints)) {
            return super.equals(obj);
        }
        LocalityLbEndpoints localityLbEndpoints = (LocalityLbEndpoints) obj;
        if (hasLocality() != localityLbEndpoints.hasLocality()) {
            return false;
        }
        if ((!hasLocality() || getLocality().equals(localityLbEndpoints.getLocality())) && getLbEndpointsList().equals(localityLbEndpoints.getLbEndpointsList()) && hasLoadBalancingWeight() == localityLbEndpoints.hasLoadBalancingWeight()) {
            if ((!hasLoadBalancingWeight() || getLoadBalancingWeight().equals(localityLbEndpoints.getLoadBalancingWeight())) && getPriority() == localityLbEndpoints.getPriority() && hasProximity() == localityLbEndpoints.hasProximity()) {
                return (!hasProximity() || getProximity().equals(localityLbEndpoints.getProximity())) && this.unknownFields.equals(localityLbEndpoints.unknownFields);
            }
            return false;
        }
        return false;
    }

    public LbEndpoint getLbEndpoints(int i9) {
        return this.lbEndpoints_.get(i9);
    }

    public int getLbEndpointsCount() {
        return this.lbEndpoints_.size();
    }

    public List<LbEndpoint> getLbEndpointsList() {
        return this.lbEndpoints_;
    }

    public e getLbEndpointsOrBuilder(int i9) {
        return this.lbEndpoints_.get(i9);
    }

    public List<? extends e> getLbEndpointsOrBuilderList() {
        return this.lbEndpoints_;
    }

    public UInt32Value getLoadBalancingWeight() {
        UInt32Value uInt32Value = this.loadBalancingWeight_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getLoadBalancingWeightOrBuilder() {
        return getLoadBalancingWeight();
    }

    public Locality getLocality() {
        Locality locality = this.locality_;
        return locality == null ? Locality.getDefaultInstance() : locality;
    }

    public c0 getLocalityOrBuilder() {
        return getLocality();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LocalityLbEndpoints> getParserForType() {
        return PARSER;
    }

    public int getPriority() {
        return this.priority_;
    }

    public UInt32Value getProximity() {
        UInt32Value uInt32Value = this.proximity_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getProximityOrBuilder() {
        return getProximity();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.locality_ != null ? CodedOutputStream.G(1, getLocality()) + 0 : 0;
        for (int i10 = 0; i10 < this.lbEndpoints_.size(); i10++) {
            G += CodedOutputStream.G(2, this.lbEndpoints_.get(i10));
        }
        if (this.loadBalancingWeight_ != null) {
            G += CodedOutputStream.G(3, getLoadBalancingWeight());
        }
        int i11 = this.priority_;
        if (i11 != 0) {
            G += CodedOutputStream.Y(5, i11);
        }
        if (this.proximity_ != null) {
            G += CodedOutputStream.G(6, getProximity());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLoadBalancingWeight() {
        return this.loadBalancingWeight_ != null;
    }

    public boolean hasLocality() {
        return this.locality_ != null;
    }

    public boolean hasProximity() {
        return this.proximity_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasLocality()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getLocality().hashCode();
        }
        if (getLbEndpointsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLbEndpointsList().hashCode();
        }
        if (hasLoadBalancingWeight()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getLoadBalancingWeight().hashCode();
        }
        int priority = (((hashCode * 37) + 5) * 53) + getPriority();
        if (hasProximity()) {
            priority = (((priority * 37) + 6) * 53) + getProximity().hashCode();
        }
        int hashCode2 = (priority * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46881h.d(LocalityLbEndpoints.class, b.class);
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
        return new LocalityLbEndpoints();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.locality_ != null) {
            codedOutputStream.L0(1, getLocality());
        }
        for (int i9 = 0; i9 < this.lbEndpoints_.size(); i9++) {
            codedOutputStream.L0(2, this.lbEndpoints_.get(i9));
        }
        if (this.loadBalancingWeight_ != null) {
            codedOutputStream.L0(3, getLoadBalancingWeight());
        }
        int i10 = this.priority_;
        if (i10 != 0) {
            codedOutputStream.c1(5, i10);
        }
        if (this.proximity_ != null) {
            codedOutputStream.L0(6, getProximity());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LocalityLbEndpoints(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LocalityLbEndpoints localityLbEndpoints) {
        return DEFAULT_INSTANCE.toBuilder().i0(localityLbEndpoints);
    }

    public static LocalityLbEndpoints parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LocalityLbEndpoints(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LocalityLbEndpoints parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LocalityLbEndpoints parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LocalityLbEndpoints getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static LocalityLbEndpoints parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LocalityLbEndpoints() {
        this.memoizedIsInitialized = (byte) -1;
        this.lbEndpoints_ = Collections.emptyList();
    }

    public static LocalityLbEndpoints parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LocalityLbEndpoints parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LocalityLbEndpoints parseFrom(InputStream inputStream) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LocalityLbEndpoints(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Locality locality = this.locality_;
                            Locality.b builder = locality != null ? locality.toBuilder() : null;
                            Locality locality2 = (Locality) pVar.B(Locality.parser(), f0Var);
                            this.locality_ = locality2;
                            if (builder != null) {
                                builder.g0(locality2);
                                this.locality_ = builder.I();
                            }
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.lbEndpoints_ = new ArrayList();
                                z11 |= true;
                            }
                            this.lbEndpoints_.add((LbEndpoint) pVar.B(LbEndpoint.parser(), f0Var));
                        } else if (L == 26) {
                            UInt32Value uInt32Value = this.loadBalancingWeight_;
                            UInt32Value.b builder2 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.loadBalancingWeight_ = uInt32Value2;
                            if (builder2 != null) {
                                builder2.g0(uInt32Value2);
                                this.loadBalancingWeight_ = builder2.I();
                            }
                        } else if (L == 40) {
                            this.priority_ = pVar.M();
                        } else if (L != 50) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            UInt32Value uInt32Value3 = this.proximity_;
                            UInt32Value.b builder3 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.proximity_ = uInt32Value4;
                            if (builder3 != null) {
                                builder3.g0(uInt32Value4);
                                this.proximity_ = builder3.I();
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
                    this.lbEndpoints_ = Collections.unmodifiableList(this.lbEndpoints_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LocalityLbEndpoints parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LocalityLbEndpoints parseFrom(p pVar) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LocalityLbEndpoints parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
