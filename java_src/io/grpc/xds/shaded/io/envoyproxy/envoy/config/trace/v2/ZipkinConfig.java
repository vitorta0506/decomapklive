package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ZipkinConfig extends GeneratedMessageV3 implements r1 {
    public static final int COLLECTOR_CLUSTER_FIELD_NUMBER = 1;
    public static final int COLLECTOR_ENDPOINT_FIELD_NUMBER = 2;
    public static final int COLLECTOR_ENDPOINT_VERSION_FIELD_NUMBER = 5;
    private static final ZipkinConfig DEFAULT_INSTANCE = new ZipkinConfig();
    private static final e2<ZipkinConfig> PARSER = new a();
    public static final int SHARED_SPAN_CONTEXT_FIELD_NUMBER = 4;
    public static final int TRACE_ID_128BIT_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object collectorCluster_;
    private int collectorEndpointVersion_;
    private volatile Object collectorEndpoint_;
    private byte memoizedIsInitialized;
    private BoolValue sharedSpanContext_;
    private boolean traceId128Bit_;

    /* loaded from: classes6.dex */
    public enum CollectorEndpointVersion implements h2 {
        HTTP_JSON_V1(0),
        HTTP_JSON(1),
        HTTP_PROTO(2),
        GRPC(3),
        UNRECOGNIZED(-1);
        
        public static final int GRPC_VALUE = 3;
        @Deprecated
        public static final int HTTP_JSON_V1_VALUE = 0;
        public static final int HTTP_JSON_VALUE = 1;
        public static final int HTTP_PROTO_VALUE = 2;
        private final int value;
        private static final u0.d<CollectorEndpointVersion> internalValueMap = new a();
        private static final CollectorEndpointVersion[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<CollectorEndpointVersion> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public CollectorEndpointVersion a(int i9) {
                return CollectorEndpointVersion.forNumber(i9);
            }
        }

        CollectorEndpointVersion(int i9) {
            this.value = i9;
        }

        public static CollectorEndpointVersion forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return GRPC;
                    }
                    return HTTP_PROTO;
                }
                return HTTP_JSON;
            }
            return HTTP_JSON_V1;
        }

        public static final Descriptors.d getDescriptor() {
            return ZipkinConfig.getDescriptor().k().get(0);
        }

        public static u0.d<CollectorEndpointVersion> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static CollectorEndpointVersion valueOf(int i9) {
            return forNumber(i9);
        }

        public static CollectorEndpointVersion valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ZipkinConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ZipkinConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ZipkinConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f49567e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49568f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f49569g;

        /* renamed from: h  reason: collision with root package name */
        private BoolValue f49570h;

        /* renamed from: i  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, l> f49571i;

        /* renamed from: j  reason: collision with root package name */
        private int f49572j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f49594b.d(ZipkinConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ZipkinConfig build() {
            ZipkinConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ZipkinConfig I() {
            ZipkinConfig zipkinConfig = new ZipkinConfig(this, (a) null);
            zipkinConfig.collectorCluster_ = this.f49567e;
            zipkinConfig.collectorEndpoint_ = this.f49568f;
            zipkinConfig.traceId128Bit_ = this.f49569g;
            q2<BoolValue, BoolValue.b, l> q2Var = this.f49571i;
            if (q2Var == null) {
                zipkinConfig.sharedSpanContext_ = this.f49570h;
            } else {
                zipkinConfig.sharedSpanContext_ = q2Var.b();
            }
            zipkinConfig.collectorEndpointVersion_ = this.f49572j;
            Q();
            return zipkinConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ZipkinConfig getDefaultInstanceForType() {
            return ZipkinConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.g0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.g0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.ZipkinConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ZipkinConfig) {
                return g0((ZipkinConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ZipkinConfig zipkinConfig) {
            if (zipkinConfig == ZipkinConfig.getDefaultInstance()) {
                return this;
            }
            if (!zipkinConfig.getCollectorCluster().isEmpty()) {
                this.f49567e = zipkinConfig.collectorCluster_;
                R();
            }
            if (!zipkinConfig.getCollectorEndpoint().isEmpty()) {
                this.f49568f = zipkinConfig.collectorEndpoint_;
                R();
            }
            if (zipkinConfig.getTraceId128Bit()) {
                l0(zipkinConfig.getTraceId128Bit());
            }
            if (zipkinConfig.hasSharedSpanContext()) {
                h0(zipkinConfig.getSharedSpanContext());
            }
            if (zipkinConfig.collectorEndpointVersion_ != 0) {
                j0(zipkinConfig.getCollectorEndpointVersionValue());
            }
            z(((GeneratedMessageV3) zipkinConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f49593a;
        }

        public b h0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.f49571i;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49570h;
                if (boolValue2 != null) {
                    this.f49570h = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49570h = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(int i9) {
            this.f49572j = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b l0(boolean z10) {
            this.f49569g = z10;
            R();
            return this;
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
            this.f49567e = "";
            this.f49568f = "";
            this.f49572j = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49567e = "";
            this.f49568f = "";
            this.f49572j = 0;
            b0();
        }
    }

    /* synthetic */ ZipkinConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ZipkinConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f49593a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ZipkinConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ZipkinConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ZipkinConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ZipkinConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ZipkinConfig)) {
            return super.equals(obj);
        }
        ZipkinConfig zipkinConfig = (ZipkinConfig) obj;
        if (getCollectorCluster().equals(zipkinConfig.getCollectorCluster()) && getCollectorEndpoint().equals(zipkinConfig.getCollectorEndpoint()) && getTraceId128Bit() == zipkinConfig.getTraceId128Bit() && hasSharedSpanContext() == zipkinConfig.hasSharedSpanContext()) {
            return (!hasSharedSpanContext() || getSharedSpanContext().equals(zipkinConfig.getSharedSpanContext())) && this.collectorEndpointVersion_ == zipkinConfig.collectorEndpointVersion_ && this.unknownFields.equals(zipkinConfig.unknownFields);
        }
        return false;
    }

    public String getCollectorCluster() {
        Object obj = this.collectorCluster_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.collectorCluster_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCollectorClusterBytes() {
        Object obj = this.collectorCluster_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.collectorCluster_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getCollectorEndpoint() {
        Object obj = this.collectorEndpoint_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.collectorEndpoint_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCollectorEndpointBytes() {
        Object obj = this.collectorEndpoint_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.collectorEndpoint_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public CollectorEndpointVersion getCollectorEndpointVersion() {
        CollectorEndpointVersion valueOf = CollectorEndpointVersion.valueOf(this.collectorEndpointVersion_);
        return valueOf == null ? CollectorEndpointVersion.UNRECOGNIZED : valueOf;
    }

    public int getCollectorEndpointVersionValue() {
        return this.collectorEndpointVersion_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ZipkinConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.collectorCluster_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.collectorCluster_);
        if (!GeneratedMessageV3.isStringEmpty(this.collectorEndpoint_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.collectorEndpoint_);
        }
        boolean z10 = this.traceId128Bit_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(3, z10);
        }
        if (this.sharedSpanContext_ != null) {
            computeStringSize += CodedOutputStream.G(4, getSharedSpanContext());
        }
        if (this.collectorEndpointVersion_ != CollectorEndpointVersion.HTTP_JSON_V1.getNumber()) {
            computeStringSize += CodedOutputStream.l(5, this.collectorEndpointVersion_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public BoolValue getSharedSpanContext() {
        BoolValue boolValue = this.sharedSpanContext_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getSharedSpanContextOrBuilder() {
        return getSharedSpanContext();
    }

    public boolean getTraceId128Bit() {
        return this.traceId128Bit_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasSharedSpanContext() {
        return this.sharedSpanContext_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCollectorCluster().hashCode()) * 37) + 2) * 53) + getCollectorEndpoint().hashCode()) * 37) + 3) * 53) + u0.d(getTraceId128Bit());
        if (hasSharedSpanContext()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getSharedSpanContext().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 5) * 53) + this.collectorEndpointVersion_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f49594b.d(ZipkinConfig.class, b.class);
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
        return new ZipkinConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.collectorCluster_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.collectorCluster_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.collectorEndpoint_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.collectorEndpoint_);
        }
        boolean z10 = this.traceId128Bit_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        if (this.sharedSpanContext_ != null) {
            codedOutputStream.L0(4, getSharedSpanContext());
        }
        if (this.collectorEndpointVersion_ != CollectorEndpointVersion.HTTP_JSON_V1.getNumber()) {
            codedOutputStream.v0(5, this.collectorEndpointVersion_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ZipkinConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ZipkinConfig zipkinConfig) {
        return DEFAULT_INSTANCE.toBuilder().g0(zipkinConfig);
    }

    public static ZipkinConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ZipkinConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ZipkinConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ZipkinConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ZipkinConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ZipkinConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ZipkinConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ZipkinConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.collectorCluster_ = "";
        this.collectorEndpoint_ = "";
        this.collectorEndpointVersion_ = 0;
    }

    public static ZipkinConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ZipkinConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ZipkinConfig parseFrom(InputStream inputStream) throws IOException {
        return (ZipkinConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ZipkinConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ZipkinConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ZipkinConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            this.collectorCluster_ = pVar.K();
                        } else if (L == 18) {
                            this.collectorEndpoint_ = pVar.K();
                        } else if (L == 24) {
                            this.traceId128Bit_ = pVar.r();
                        } else if (L == 34) {
                            BoolValue boolValue = this.sharedSpanContext_;
                            BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.sharedSpanContext_ = boolValue2;
                            if (builder != null) {
                                builder.d0(boolValue2);
                                this.sharedSpanContext_ = builder.I();
                            }
                        } else if (L != 40) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.collectorEndpointVersion_ = pVar.u();
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ZipkinConfig parseFrom(p pVar) throws IOException {
        return (ZipkinConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ZipkinConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ZipkinConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
