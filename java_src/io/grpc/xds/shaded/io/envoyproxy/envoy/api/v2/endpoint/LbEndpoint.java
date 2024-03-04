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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HealthStatus;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LbEndpoint extends GeneratedMessageV3 implements e {
    public static final int ENDPOINT_FIELD_NUMBER = 1;
    public static final int ENDPOINT_NAME_FIELD_NUMBER = 5;
    public static final int HEALTH_STATUS_FIELD_NUMBER = 2;
    public static final int LOAD_BALANCING_WEIGHT_FIELD_NUMBER = 4;
    public static final int METADATA_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int healthStatus_;
    private int hostIdentifierCase_;
    private Object hostIdentifier_;
    private UInt32Value loadBalancingWeight_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private static final LbEndpoint DEFAULT_INSTANCE = new LbEndpoint();
    private static final e2<LbEndpoint> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum HostIdentifierCase implements u0.c {
        ENDPOINT(1),
        ENDPOINT_NAME(5),
        HOSTIDENTIFIER_NOT_SET(0);
        
        private final int value;

        HostIdentifierCase(int i9) {
            this.value = i9;
        }

        public static HostIdentifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 5) {
                        return null;
                    }
                    return ENDPOINT_NAME;
                }
                return ENDPOINT;
            }
            return HOSTIDENTIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static HostIdentifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<LbEndpoint> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LbEndpoint m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LbEndpoint(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46832a;

        static {
            int[] iArr = new int[HostIdentifierCase.values().length];
            f46832a = iArr;
            try {
                iArr[HostIdentifierCase.ENDPOINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46832a[HostIdentifierCase.ENDPOINT_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46832a[HostIdentifierCase.HOSTIDENTIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f46833e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46834f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Endpoint, Endpoint.b, d> f46835g;

        /* renamed from: h  reason: collision with root package name */
        private int f46836h;

        /* renamed from: i  reason: collision with root package name */
        private Metadata f46837i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Metadata, Metadata.b, d0> f46838j;

        /* renamed from: k  reason: collision with root package name */
        private UInt32Value f46839k;

        /* renamed from: l  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46840l;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46879f.d(LbEndpoint.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LbEndpoint build() {
            LbEndpoint I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LbEndpoint I() {
            LbEndpoint lbEndpoint = new LbEndpoint(this, (a) null);
            if (this.f46833e == 1) {
                q2<Endpoint, Endpoint.b, d> q2Var = this.f46835g;
                if (q2Var == null) {
                    lbEndpoint.hostIdentifier_ = this.f46834f;
                } else {
                    lbEndpoint.hostIdentifier_ = q2Var.b();
                }
            }
            if (this.f46833e == 5) {
                lbEndpoint.hostIdentifier_ = this.f46834f;
            }
            lbEndpoint.healthStatus_ = this.f46836h;
            q2<Metadata, Metadata.b, d0> q2Var2 = this.f46838j;
            if (q2Var2 == null) {
                lbEndpoint.metadata_ = this.f46837i;
            } else {
                lbEndpoint.metadata_ = q2Var2.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f46840l;
            if (q2Var3 == null) {
                lbEndpoint.loadBalancingWeight_ = this.f46839k;
            } else {
                lbEndpoint.loadBalancingWeight_ = q2Var3.b();
            }
            lbEndpoint.hostIdentifierCase_ = this.f46833e;
            Q();
            return lbEndpoint;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LbEndpoint getDefaultInstanceForType() {
            return LbEndpoint.getDefaultInstance();
        }

        public c d0(Endpoint endpoint) {
            q2<Endpoint, Endpoint.b, d> q2Var = this.f46835g;
            if (q2Var == null) {
                if (this.f46833e == 1 && this.f46834f != Endpoint.getDefaultInstance()) {
                    this.f46834f = Endpoint.newBuilder((Endpoint) this.f46834f).h0(endpoint).I();
                } else {
                    this.f46834f = endpoint;
                }
                R();
            } else {
                if (this.f46833e == 1) {
                    q2Var.e(endpoint);
                }
                this.f46835g.g(endpoint);
            }
            this.f46833e = 1;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.h0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.h0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LbEndpoint$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof LbEndpoint) {
                return h0((LbEndpoint) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46878e;
        }

        public c h0(LbEndpoint lbEndpoint) {
            if (lbEndpoint == LbEndpoint.getDefaultInstance()) {
                return this;
            }
            if (lbEndpoint.healthStatus_ != 0) {
                m0(lbEndpoint.getHealthStatusValue());
            }
            if (lbEndpoint.hasMetadata()) {
                j0(lbEndpoint.getMetadata());
            }
            if (lbEndpoint.hasLoadBalancingWeight()) {
                i0(lbEndpoint.getLoadBalancingWeight());
            }
            int i9 = b.f46832a[lbEndpoint.getHostIdentifierCase().ordinal()];
            if (i9 == 1) {
                d0(lbEndpoint.getEndpoint());
            } else if (i9 == 2) {
                this.f46833e = 5;
                this.f46834f = lbEndpoint.hostIdentifier_;
                R();
            }
            z(((GeneratedMessageV3) lbEndpoint).unknownFields);
            R();
            return this;
        }

        public c i0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46840l;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46839k;
                if (uInt32Value2 != null) {
                    this.f46839k = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46839k = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c j0(Metadata metadata) {
            q2<Metadata, Metadata.b, d0> q2Var = this.f46838j;
            if (q2Var == null) {
                Metadata metadata2 = this.f46837i;
                if (metadata2 != null) {
                    this.f46837i = Metadata.newBuilder(metadata2).i0(metadata).I();
                } else {
                    this.f46837i = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(int i9) {
            this.f46836h = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f46833e = 0;
            this.f46836h = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46833e = 0;
            this.f46836h = 0;
            b0();
        }
    }

    /* synthetic */ LbEndpoint(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LbEndpoint getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46878e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LbEndpoint parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LbEndpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LbEndpoint parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LbEndpoint> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LbEndpoint)) {
            return super.equals(obj);
        }
        LbEndpoint lbEndpoint = (LbEndpoint) obj;
        if (this.healthStatus_ == lbEndpoint.healthStatus_ && hasMetadata() == lbEndpoint.hasMetadata()) {
            if ((!hasMetadata() || getMetadata().equals(lbEndpoint.getMetadata())) && hasLoadBalancingWeight() == lbEndpoint.hasLoadBalancingWeight()) {
                if ((!hasLoadBalancingWeight() || getLoadBalancingWeight().equals(lbEndpoint.getLoadBalancingWeight())) && getHostIdentifierCase().equals(lbEndpoint.getHostIdentifierCase())) {
                    int i9 = this.hostIdentifierCase_;
                    if (i9 != 1) {
                        if (i9 == 5 && !getEndpointName().equals(lbEndpoint.getEndpointName())) {
                            return false;
                        }
                    } else if (!getEndpoint().equals(lbEndpoint.getEndpoint())) {
                        return false;
                    }
                    return this.unknownFields.equals(lbEndpoint.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public Endpoint getEndpoint() {
        if (this.hostIdentifierCase_ == 1) {
            return (Endpoint) this.hostIdentifier_;
        }
        return Endpoint.getDefaultInstance();
    }

    public String getEndpointName() {
        String str = this.hostIdentifierCase_ == 5 ? this.hostIdentifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.hostIdentifierCase_ == 5) {
            this.hostIdentifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getEndpointNameBytes() {
        String str = this.hostIdentifierCase_ == 5 ? this.hostIdentifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.hostIdentifierCase_ == 5) {
                this.hostIdentifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public d getEndpointOrBuilder() {
        if (this.hostIdentifierCase_ == 1) {
            return (Endpoint) this.hostIdentifier_;
        }
        return Endpoint.getDefaultInstance();
    }

    public HealthStatus getHealthStatus() {
        HealthStatus valueOf = HealthStatus.valueOf(this.healthStatus_);
        return valueOf == null ? HealthStatus.UNRECOGNIZED : valueOf;
    }

    public int getHealthStatusValue() {
        return this.healthStatus_;
    }

    public HostIdentifierCase getHostIdentifierCase() {
        return HostIdentifierCase.forNumber(this.hostIdentifierCase_);
    }

    public UInt32Value getLoadBalancingWeight() {
        UInt32Value uInt32Value = this.loadBalancingWeight_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getLoadBalancingWeightOrBuilder() {
        return getLoadBalancingWeight();
    }

    public Metadata getMetadata() {
        Metadata metadata = this.metadata_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public d0 getMetadataOrBuilder() {
        return getMetadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LbEndpoint> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.hostIdentifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (Endpoint) this.hostIdentifier_) : 0;
        if (this.healthStatus_ != HealthStatus.UNKNOWN.getNumber()) {
            G += CodedOutputStream.l(2, this.healthStatus_);
        }
        if (this.metadata_ != null) {
            G += CodedOutputStream.G(3, getMetadata());
        }
        if (this.loadBalancingWeight_ != null) {
            G += CodedOutputStream.G(4, getLoadBalancingWeight());
        }
        if (this.hostIdentifierCase_ == 5) {
            G += GeneratedMessageV3.computeStringSize(5, this.hostIdentifier_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasEndpoint() {
        return this.hostIdentifierCase_ == 1;
    }

    public boolean hasEndpointName() {
        return this.hostIdentifierCase_ == 5;
    }

    public boolean hasLoadBalancingWeight() {
        return this.loadBalancingWeight_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 2) * 53) + this.healthStatus_;
        if (hasMetadata()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getMetadata().hashCode();
        }
        if (hasLoadBalancingWeight()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getLoadBalancingWeight().hashCode();
        }
        int i11 = this.hostIdentifierCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getEndpoint().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getEndpointName().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46879f.d(LbEndpoint.class, c.class);
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
        return new LbEndpoint();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.hostIdentifierCase_ == 1) {
            codedOutputStream.L0(1, (Endpoint) this.hostIdentifier_);
        }
        if (this.healthStatus_ != HealthStatus.UNKNOWN.getNumber()) {
            codedOutputStream.v0(2, this.healthStatus_);
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(3, getMetadata());
        }
        if (this.loadBalancingWeight_ != null) {
            codedOutputStream.L0(4, getLoadBalancingWeight());
        }
        if (this.hostIdentifierCase_ == 5) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.hostIdentifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LbEndpoint(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(LbEndpoint lbEndpoint) {
        return DEFAULT_INSTANCE.toBuilder().h0(lbEndpoint);
    }

    public static LbEndpoint parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LbEndpoint(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.hostIdentifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LbEndpoint parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LbEndpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LbEndpoint parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LbEndpoint getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static LbEndpoint parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static LbEndpoint parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private LbEndpoint() {
        this.hostIdentifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.healthStatus_ = 0;
    }

    public static LbEndpoint parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LbEndpoint parseFrom(InputStream inputStream) throws IOException {
        return (LbEndpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LbEndpoint parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LbEndpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private LbEndpoint(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                Endpoint.b builder = this.hostIdentifierCase_ == 1 ? ((Endpoint) this.hostIdentifier_).toBuilder() : null;
                                o1 B = pVar.B(Endpoint.parser(), f0Var);
                                this.hostIdentifier_ = B;
                                if (builder != null) {
                                    builder.h0((Endpoint) B);
                                    this.hostIdentifier_ = builder.I();
                                }
                                this.hostIdentifierCase_ = 1;
                            } else if (L == 16) {
                                this.healthStatus_ = pVar.u();
                            } else if (L == 26) {
                                Metadata metadata = this.metadata_;
                                Metadata.b builder2 = metadata != null ? metadata.toBuilder() : null;
                                Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                                this.metadata_ = metadata2;
                                if (builder2 != null) {
                                    builder2.i0(metadata2);
                                    this.metadata_ = builder2.I();
                                }
                            } else if (L == 34) {
                                UInt32Value uInt32Value = this.loadBalancingWeight_;
                                UInt32Value.b builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.loadBalancingWeight_ = uInt32Value2;
                                if (builder3 != null) {
                                    builder3.g0(uInt32Value2);
                                    this.loadBalancingWeight_ = builder3.I();
                                }
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                String K = pVar.K();
                                this.hostIdentifierCase_ = 5;
                                this.hostIdentifier_ = K;
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LbEndpoint parseFrom(p pVar) throws IOException {
        return (LbEndpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LbEndpoint parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LbEndpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
