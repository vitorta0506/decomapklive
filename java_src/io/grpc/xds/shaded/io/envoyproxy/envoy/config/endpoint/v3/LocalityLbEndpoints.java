package io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Locality;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LbEndpoint;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LedsClusterLocalityConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LocalityLbEndpoints extends GeneratedMessageV3 implements j {
    public static final int LB_ENDPOINTS_FIELD_NUMBER = 2;
    public static final int LEDS_CLUSTER_LOCALITY_CONFIG_FIELD_NUMBER = 8;
    public static final int LOAD_BALANCER_ENDPOINTS_FIELD_NUMBER = 7;
    public static final int LOAD_BALANCING_WEIGHT_FIELD_NUMBER = 3;
    public static final int LOCALITY_FIELD_NUMBER = 1;
    public static final int PRIORITY_FIELD_NUMBER = 5;
    public static final int PROXIMITY_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int lbConfigCase_;
    private Object lbConfig_;
    private List<LbEndpoint> lbEndpoints_;
    private UInt32Value loadBalancingWeight_;
    private Locality locality_;
    private byte memoizedIsInitialized;
    private int priority_;
    private UInt32Value proximity_;
    private static final LocalityLbEndpoints DEFAULT_INSTANCE = new LocalityLbEndpoints();
    private static final e2<LocalityLbEndpoints> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum LbConfigCase implements u0.c {
        LOAD_BALANCER_ENDPOINTS(7),
        LEDS_CLUSTER_LOCALITY_CONFIG(8),
        LBCONFIG_NOT_SET(0);
        
        private final int value;

        LbConfigCase(int i9) {
            this.value = i9;
        }

        public static LbConfigCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 7) {
                    if (i9 != 8) {
                        return null;
                    }
                    return LEDS_CLUSTER_LOCALITY_CONFIG;
                }
                return LOAD_BALANCER_ENDPOINTS;
            }
            return LBCONFIG_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static LbConfigCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class LbEndpointList extends GeneratedMessageV3 implements d {
        public static final int LB_ENDPOINTS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<LbEndpoint> lbEndpoints_;
        private byte memoizedIsInitialized;
        private static final LbEndpointList DEFAULT_INSTANCE = new LbEndpointList();
        private static final e2<LbEndpointList> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<LbEndpointList> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public LbEndpointList m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new LbEndpointList(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f48373e;

            /* renamed from: f  reason: collision with root package name */
            private List<LbEndpoint> f48374f;

            /* renamed from: g  reason: collision with root package name */
            private l2<LbEndpoint, LbEndpoint.c, g> f48375g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f48373e & 1) == 0) {
                    this.f48374f = new ArrayList(this.f48374f);
                    this.f48373e |= 1;
                }
            }

            private l2<LbEndpoint, LbEndpoint.c, g> d0() {
                if (this.f48375g == null) {
                    this.f48375g = new l2<>(this.f48374f, (this.f48373e & 1) != 0, H(), O());
                    this.f48374f = null;
                }
                return this.f48375g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48425l.d(LbEndpointList.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public LbEndpointList build() {
                LbEndpointList I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public LbEndpointList I() {
                LbEndpointList lbEndpointList = new LbEndpointList(this, (a) null);
                int i9 = this.f48373e;
                l2<LbEndpoint, LbEndpoint.c, g> l2Var = this.f48375g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f48374f = Collections.unmodifiableList(this.f48374f);
                        this.f48373e &= -2;
                    }
                    lbEndpointList.lbEndpoints_ = this.f48374f;
                } else {
                    lbEndpointList.lbEndpoints_ = l2Var.e();
                }
                Q();
                return lbEndpointList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public LbEndpointList getDefaultInstanceForType() {
                return LbEndpointList.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointList.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointList.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints$LbEndpointList r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints$LbEndpointList r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointList.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints$LbEndpointList$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48424k;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof LbEndpointList) {
                    return i0((LbEndpointList) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(LbEndpointList lbEndpointList) {
                if (lbEndpointList == LbEndpointList.getDefaultInstance()) {
                    return this;
                }
                if (this.f48375g == null) {
                    if (!lbEndpointList.lbEndpoints_.isEmpty()) {
                        if (this.f48374f.isEmpty()) {
                            this.f48374f = lbEndpointList.lbEndpoints_;
                            this.f48373e &= -2;
                        } else {
                            a0();
                            this.f48374f.addAll(lbEndpointList.lbEndpoints_);
                        }
                        R();
                    }
                } else if (!lbEndpointList.lbEndpoints_.isEmpty()) {
                    if (this.f48375g.k()) {
                        this.f48375g.f();
                        this.f48375g = null;
                        this.f48374f = lbEndpointList.lbEndpoints_;
                        this.f48373e &= -2;
                        this.f48375g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f48375g.b(lbEndpointList.lbEndpoints_);
                    }
                }
                z(((GeneratedMessageV3) lbEndpointList).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f48374f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f48374f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ LbEndpointList(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static LbEndpointList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48424k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LbEndpointList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LbEndpointList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LbEndpointList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<LbEndpointList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LbEndpointList)) {
                return super.equals(obj);
            }
            LbEndpointList lbEndpointList = (LbEndpointList) obj;
            return getLbEndpointsList().equals(lbEndpointList.getLbEndpointsList()) && this.unknownFields.equals(lbEndpointList.unknownFields);
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

        public g getLbEndpointsOrBuilder(int i9) {
            return this.lbEndpoints_.get(i9);
        }

        public List<? extends g> getLbEndpointsOrBuilderList() {
            return this.lbEndpoints_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<LbEndpointList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.lbEndpoints_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.lbEndpoints_.get(i11));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
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
            int hashCode = 779 + getDescriptor().hashCode();
            if (getLbEndpointsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getLbEndpointsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48425l.d(LbEndpointList.class, b.class);
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
            return new LbEndpointList();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.lbEndpoints_.size(); i9++) {
                codedOutputStream.L0(1, this.lbEndpoints_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ LbEndpointList(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(LbEndpointList lbEndpointList) {
            return DEFAULT_INSTANCE.toBuilder().i0(lbEndpointList);
        }

        public static LbEndpointList parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private LbEndpointList(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LbEndpointList parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (LbEndpointList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static LbEndpointList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public LbEndpointList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static LbEndpointList parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private LbEndpointList() {
            this.memoizedIsInitialized = (byte) -1;
            this.lbEndpoints_ = Collections.emptyList();
        }

        public static LbEndpointList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static LbEndpointList parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static LbEndpointList parseFrom(InputStream inputStream) throws IOException {
            return (LbEndpointList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private LbEndpointList(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.lbEndpoints_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.lbEndpoints_.add((LbEndpoint) pVar.B(LbEndpoint.parser(), f0Var));
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

        public static LbEndpointList parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (LbEndpointList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static LbEndpointList parseFrom(p pVar) throws IOException {
            return (LbEndpointList) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static LbEndpointList parseFrom(p pVar, f0 f0Var) throws IOException {
            return (LbEndpointList) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48376a;

        static {
            int[] iArr = new int[LbConfigCase.values().length];
            f48376a = iArr;
            try {
                iArr[LbConfigCase.LOAD_BALANCER_ENDPOINTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48376a[LbConfigCase.LEDS_CLUSTER_LOCALITY_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48376a[LbConfigCase.LBCONFIG_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements j {

        /* renamed from: e  reason: collision with root package name */
        private int f48377e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48378f;

        /* renamed from: g  reason: collision with root package name */
        private int f48379g;

        /* renamed from: h  reason: collision with root package name */
        private Locality f48380h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Locality, Locality.b, j0> f48381i;

        /* renamed from: j  reason: collision with root package name */
        private List<LbEndpoint> f48382j;

        /* renamed from: k  reason: collision with root package name */
        private l2<LbEndpoint, LbEndpoint.c, g> f48383k;

        /* renamed from: l  reason: collision with root package name */
        private q2<LbEndpointList, LbEndpointList.b, d> f48384l;

        /* renamed from: m  reason: collision with root package name */
        private q2<LedsClusterLocalityConfig, LedsClusterLocalityConfig.b, h> f48385m;

        /* renamed from: n  reason: collision with root package name */
        private UInt32Value f48386n;

        /* renamed from: o  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48387o;

        /* renamed from: p  reason: collision with root package name */
        private int f48388p;

        /* renamed from: q  reason: collision with root package name */
        private UInt32Value f48389q;

        /* renamed from: r  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48390r;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48379g & 1) == 0) {
                this.f48382j = new ArrayList(this.f48382j);
                this.f48379g |= 1;
            }
        }

        private l2<LbEndpoint, LbEndpoint.c, g> d0() {
            if (this.f48383k == null) {
                this.f48383k = new l2<>(this.f48382j, (this.f48379g & 1) != 0, H(), O());
                this.f48382j = null;
            }
            return this.f48383k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48423j.d(LocalityLbEndpoints.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
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
            q2<Locality, Locality.b, j0> q2Var = this.f48381i;
            if (q2Var == null) {
                localityLbEndpoints.locality_ = this.f48380h;
            } else {
                localityLbEndpoints.locality_ = q2Var.b();
            }
            l2<LbEndpoint, LbEndpoint.c, g> l2Var = this.f48383k;
            if (l2Var == null) {
                if ((this.f48379g & 1) != 0) {
                    this.f48382j = Collections.unmodifiableList(this.f48382j);
                    this.f48379g &= -2;
                }
                localityLbEndpoints.lbEndpoints_ = this.f48382j;
            } else {
                localityLbEndpoints.lbEndpoints_ = l2Var.e();
            }
            if (this.f48377e == 7) {
                q2<LbEndpointList, LbEndpointList.b, d> q2Var2 = this.f48384l;
                if (q2Var2 == null) {
                    localityLbEndpoints.lbConfig_ = this.f48378f;
                } else {
                    localityLbEndpoints.lbConfig_ = q2Var2.b();
                }
            }
            if (this.f48377e == 8) {
                q2<LedsClusterLocalityConfig, LedsClusterLocalityConfig.b, h> q2Var3 = this.f48385m;
                if (q2Var3 == null) {
                    localityLbEndpoints.lbConfig_ = this.f48378f;
                } else {
                    localityLbEndpoints.lbConfig_ = q2Var3.b();
                }
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f48387o;
            if (q2Var4 == null) {
                localityLbEndpoints.loadBalancingWeight_ = this.f48386n;
            } else {
                localityLbEndpoints.loadBalancingWeight_ = q2Var4.b();
            }
            localityLbEndpoints.priority_ = this.f48388p;
            q2<UInt32Value, UInt32Value.b, e3> q2Var5 = this.f48390r;
            if (q2Var5 == null) {
                localityLbEndpoints.proximity_ = this.f48389q;
            } else {
                localityLbEndpoints.proximity_ = q2Var5.b();
            }
            localityLbEndpoints.lbConfigCase_ = this.f48377e;
            Q();
            return localityLbEndpoints;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.LocalityLbEndpoints$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48422i;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof LocalityLbEndpoints) {
                return i0((LocalityLbEndpoints) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(LocalityLbEndpoints localityLbEndpoints) {
            if (localityLbEndpoints == LocalityLbEndpoints.getDefaultInstance()) {
                return this;
            }
            if (localityLbEndpoints.hasLocality()) {
                m0(localityLbEndpoints.getLocality());
            }
            if (this.f48383k == null) {
                if (!localityLbEndpoints.lbEndpoints_.isEmpty()) {
                    if (this.f48382j.isEmpty()) {
                        this.f48382j = localityLbEndpoints.lbEndpoints_;
                        this.f48379g &= -2;
                    } else {
                        a0();
                        this.f48382j.addAll(localityLbEndpoints.lbEndpoints_);
                    }
                    R();
                }
            } else if (!localityLbEndpoints.lbEndpoints_.isEmpty()) {
                if (this.f48383k.k()) {
                    this.f48383k.f();
                    this.f48383k = null;
                    this.f48382j = localityLbEndpoints.lbEndpoints_;
                    this.f48379g &= -2;
                    this.f48383k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f48383k.b(localityLbEndpoints.lbEndpoints_);
                }
            }
            if (localityLbEndpoints.hasLoadBalancingWeight()) {
                l0(localityLbEndpoints.getLoadBalancingWeight());
            }
            if (localityLbEndpoints.getPriority() != 0) {
                r0(localityLbEndpoints.getPriority());
            }
            if (localityLbEndpoints.hasProximity()) {
                n0(localityLbEndpoints.getProximity());
            }
            int i9 = b.f48376a[localityLbEndpoints.getLbConfigCase().ordinal()];
            if (i9 == 1) {
                k0(localityLbEndpoints.getLoadBalancerEndpoints());
            } else if (i9 == 2) {
                j0(localityLbEndpoints.getLedsClusterLocalityConfig());
            }
            z(((GeneratedMessageV3) localityLbEndpoints).unknownFields);
            R();
            return this;
        }

        public c j0(LedsClusterLocalityConfig ledsClusterLocalityConfig) {
            q2<LedsClusterLocalityConfig, LedsClusterLocalityConfig.b, h> q2Var = this.f48385m;
            if (q2Var == null) {
                if (this.f48377e == 8 && this.f48378f != LedsClusterLocalityConfig.getDefaultInstance()) {
                    this.f48378f = LedsClusterLocalityConfig.newBuilder((LedsClusterLocalityConfig) this.f48378f).g0(ledsClusterLocalityConfig).I();
                } else {
                    this.f48378f = ledsClusterLocalityConfig;
                }
                R();
            } else {
                if (this.f48377e == 8) {
                    q2Var.e(ledsClusterLocalityConfig);
                }
                this.f48385m.g(ledsClusterLocalityConfig);
            }
            this.f48377e = 8;
            return this;
        }

        public c k0(LbEndpointList lbEndpointList) {
            q2<LbEndpointList, LbEndpointList.b, d> q2Var = this.f48384l;
            if (q2Var == null) {
                if (this.f48377e == 7 && this.f48378f != LbEndpointList.getDefaultInstance()) {
                    this.f48378f = LbEndpointList.newBuilder((LbEndpointList) this.f48378f).i0(lbEndpointList).I();
                } else {
                    this.f48378f = lbEndpointList;
                }
                R();
            } else {
                if (this.f48377e == 7) {
                    q2Var.e(lbEndpointList);
                }
                this.f48384l.g(lbEndpointList);
            }
            this.f48377e = 7;
            return this;
        }

        public c l0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48387o;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48386n;
                if (uInt32Value2 != null) {
                    this.f48386n = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48386n = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c m0(Locality locality) {
            q2<Locality, Locality.b, j0> q2Var = this.f48381i;
            if (q2Var == null) {
                Locality locality2 = this.f48380h;
                if (locality2 != null) {
                    this.f48380h = Locality.newBuilder(locality2).g0(locality).I();
                } else {
                    this.f48380h = locality;
                }
                R();
            } else {
                q2Var.e(locality);
            }
            return this;
        }

        public c n0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48390r;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48389q;
                if (uInt32Value2 != null) {
                    this.f48389q = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48389q = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c r0(int i9) {
            this.f48388p = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48377e = 0;
            this.f48382j = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48377e = 0;
            this.f48382j = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ LocalityLbEndpoints(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LocalityLbEndpoints getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48422i;
    }

    public static c newBuilder() {
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
                if ((!hasProximity() || getProximity().equals(localityLbEndpoints.getProximity())) && getLbConfigCase().equals(localityLbEndpoints.getLbConfigCase())) {
                    int i9 = this.lbConfigCase_;
                    if (i9 != 7) {
                        if (i9 == 8 && !getLedsClusterLocalityConfig().equals(localityLbEndpoints.getLedsClusterLocalityConfig())) {
                            return false;
                        }
                    } else if (!getLoadBalancerEndpoints().equals(localityLbEndpoints.getLoadBalancerEndpoints())) {
                        return false;
                    }
                    return this.unknownFields.equals(localityLbEndpoints.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public LbConfigCase getLbConfigCase() {
        return LbConfigCase.forNumber(this.lbConfigCase_);
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

    public g getLbEndpointsOrBuilder(int i9) {
        return this.lbEndpoints_.get(i9);
    }

    public List<? extends g> getLbEndpointsOrBuilderList() {
        return this.lbEndpoints_;
    }

    public LedsClusterLocalityConfig getLedsClusterLocalityConfig() {
        if (this.lbConfigCase_ == 8) {
            return (LedsClusterLocalityConfig) this.lbConfig_;
        }
        return LedsClusterLocalityConfig.getDefaultInstance();
    }

    public h getLedsClusterLocalityConfigOrBuilder() {
        if (this.lbConfigCase_ == 8) {
            return (LedsClusterLocalityConfig) this.lbConfig_;
        }
        return LedsClusterLocalityConfig.getDefaultInstance();
    }

    public LbEndpointList getLoadBalancerEndpoints() {
        if (this.lbConfigCase_ == 7) {
            return (LbEndpointList) this.lbConfig_;
        }
        return LbEndpointList.getDefaultInstance();
    }

    public d getLoadBalancerEndpointsOrBuilder() {
        if (this.lbConfigCase_ == 7) {
            return (LbEndpointList) this.lbConfig_;
        }
        return LbEndpointList.getDefaultInstance();
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

    public j0 getLocalityOrBuilder() {
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
        if (this.lbConfigCase_ == 7) {
            G += CodedOutputStream.G(7, (LbEndpointList) this.lbConfig_);
        }
        if (this.lbConfigCase_ == 8) {
            G += CodedOutputStream.G(8, (LedsClusterLocalityConfig) this.lbConfig_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLedsClusterLocalityConfig() {
        return this.lbConfigCase_ == 8;
    }

    public boolean hasLoadBalancerEndpoints() {
        return this.lbConfigCase_ == 7;
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
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        if (hasLocality()) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + getLocality().hashCode();
        }
        if (getLbEndpointsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getLbEndpointsList().hashCode();
        }
        if (hasLoadBalancingWeight()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getLoadBalancingWeight().hashCode();
        }
        int priority = (((hashCode2 * 37) + 5) * 53) + getPriority();
        if (hasProximity()) {
            priority = (((priority * 37) + 6) * 53) + getProximity().hashCode();
        }
        int i11 = this.lbConfigCase_;
        if (i11 == 7) {
            i9 = ((priority * 37) + 7) * 53;
            hashCode = getLoadBalancerEndpoints().hashCode();
        } else {
            if (i11 == 8) {
                i9 = ((priority * 37) + 8) * 53;
                hashCode = getLedsClusterLocalityConfig().hashCode();
            }
            int hashCode3 = (priority * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        priority = i9 + hashCode;
        int hashCode32 = (priority * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.c.f48423j.d(LocalityLbEndpoints.class, c.class);
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
        if (this.lbConfigCase_ == 7) {
            codedOutputStream.L0(7, (LbEndpointList) this.lbConfig_);
        }
        if (this.lbConfigCase_ == 8) {
            codedOutputStream.L0(8, (LedsClusterLocalityConfig) this.lbConfig_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LocalityLbEndpoints(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(LocalityLbEndpoints localityLbEndpoints) {
        return DEFAULT_INSTANCE.toBuilder().i0(localityLbEndpoints);
    }

    public static LocalityLbEndpoints parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LocalityLbEndpoints(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.lbConfigCase_ = 0;
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
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static LocalityLbEndpoints parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static LocalityLbEndpoints parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private LocalityLbEndpoints() {
        this.lbConfigCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.lbEndpoints_ = Collections.emptyList();
    }

    public static LocalityLbEndpoints parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LocalityLbEndpoints parseFrom(InputStream inputStream) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LocalityLbEndpoints parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
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
                        } else if (L == 50) {
                            UInt32Value uInt32Value3 = this.proximity_;
                            UInt32Value.b builder3 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.proximity_ = uInt32Value4;
                            if (builder3 != null) {
                                builder3.g0(uInt32Value4);
                                this.proximity_ = builder3.I();
                            }
                        } else if (L == 58) {
                            LbEndpointList.b builder4 = this.lbConfigCase_ == 7 ? ((LbEndpointList) this.lbConfig_).toBuilder() : null;
                            o1 B = pVar.B(LbEndpointList.parser(), f0Var);
                            this.lbConfig_ = B;
                            if (builder4 != null) {
                                builder4.i0((LbEndpointList) B);
                                this.lbConfig_ = builder4.I();
                            }
                            this.lbConfigCase_ = 7;
                        } else if (L != 66) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            LedsClusterLocalityConfig.b builder5 = this.lbConfigCase_ == 8 ? ((LedsClusterLocalityConfig) this.lbConfig_).toBuilder() : null;
                            o1 B2 = pVar.B(LedsClusterLocalityConfig.parser(), f0Var);
                            this.lbConfig_ = B2;
                            if (builder5 != null) {
                                builder5.g0((LedsClusterLocalityConfig) B2);
                                this.lbConfig_ = builder5.I();
                            }
                            this.lbConfigCase_ = 8;
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

    public static LocalityLbEndpoints parseFrom(p pVar) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LocalityLbEndpoints parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LocalityLbEndpoints) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
