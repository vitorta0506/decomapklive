package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

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
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.FractionalPercent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HedgePolicy extends GeneratedMessageV3 implements f {
    public static final int ADDITIONAL_REQUEST_CHANCE_FIELD_NUMBER = 2;
    public static final int HEDGE_ON_PER_TRY_TIMEOUT_FIELD_NUMBER = 3;
    public static final int INITIAL_REQUESTS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private FractionalPercent additionalRequestChance_;
    private boolean hedgeOnPerTryTimeout_;
    private UInt32Value initialRequests_;
    private byte memoizedIsInitialized;
    private static final HedgePolicy DEFAULT_INSTANCE = new HedgePolicy();
    private static final e2<HedgePolicy> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HedgePolicy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HedgePolicy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HedgePolicy(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private UInt32Value f47043e;

        /* renamed from: f  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47044f;

        /* renamed from: g  reason: collision with root package name */
        private FractionalPercent f47045g;

        /* renamed from: h  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> f47046h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f47047i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f47294f0.d(HedgePolicy.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HedgePolicy build() {
            HedgePolicy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HedgePolicy I() {
            HedgePolicy hedgePolicy = new HedgePolicy(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47044f;
            if (q2Var == null) {
                hedgePolicy.initialRequests_ = this.f47043e;
            } else {
                hedgePolicy.initialRequests_ = q2Var.b();
            }
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var2 = this.f47046h;
            if (q2Var2 == null) {
                hedgePolicy.additionalRequestChance_ = this.f47045g;
            } else {
                hedgePolicy.additionalRequestChance_ = q2Var2.b();
            }
            hedgePolicy.hedgeOnPerTryTimeout_ = this.f47047i;
            Q();
            return hedgePolicy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HedgePolicy getDefaultInstanceForType() {
            return HedgePolicy.getDefaultInstance();
        }

        public b d0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f47046h;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f47045g;
                if (fractionalPercent2 != null) {
                    this.f47045g = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f47045g = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HedgePolicy$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HedgePolicy) {
                return h0((HedgePolicy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f47292e0;
        }

        public b h0(HedgePolicy hedgePolicy) {
            if (hedgePolicy == HedgePolicy.getDefaultInstance()) {
                return this;
            }
            if (hedgePolicy.hasInitialRequests()) {
                i0(hedgePolicy.getInitialRequests());
            }
            if (hedgePolicy.hasAdditionalRequestChance()) {
                d0(hedgePolicy.getAdditionalRequestChance());
            }
            if (hedgePolicy.getHedgeOnPerTryTimeout()) {
                l0(hedgePolicy.getHedgeOnPerTryTimeout());
            }
            z(((GeneratedMessageV3) hedgePolicy).unknownFields);
            R();
            return this;
        }

        public b i0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47044f;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47043e;
                if (uInt32Value2 != null) {
                    this.f47043e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47043e = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
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

        public b l0(boolean z10) {
            this.f47047i = z10;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ HedgePolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HedgePolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f47292e0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HedgePolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HedgePolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HedgePolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HedgePolicy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HedgePolicy)) {
            return super.equals(obj);
        }
        HedgePolicy hedgePolicy = (HedgePolicy) obj;
        if (hasInitialRequests() != hedgePolicy.hasInitialRequests()) {
            return false;
        }
        if ((!hasInitialRequests() || getInitialRequests().equals(hedgePolicy.getInitialRequests())) && hasAdditionalRequestChance() == hedgePolicy.hasAdditionalRequestChance()) {
            return (!hasAdditionalRequestChance() || getAdditionalRequestChance().equals(hedgePolicy.getAdditionalRequestChance())) && getHedgeOnPerTryTimeout() == hedgePolicy.getHedgeOnPerTryTimeout() && this.unknownFields.equals(hedgePolicy.unknownFields);
        }
        return false;
    }

    public FractionalPercent getAdditionalRequestChance() {
        FractionalPercent fractionalPercent = this.additionalRequestChance_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.b getAdditionalRequestChanceOrBuilder() {
        return getAdditionalRequestChance();
    }

    public boolean getHedgeOnPerTryTimeout() {
        return this.hedgeOnPerTryTimeout_;
    }

    public UInt32Value getInitialRequests() {
        UInt32Value uInt32Value = this.initialRequests_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getInitialRequestsOrBuilder() {
        return getInitialRequests();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HedgePolicy> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.initialRequests_ != null ? 0 + CodedOutputStream.G(1, getInitialRequests()) : 0;
        if (this.additionalRequestChance_ != null) {
            G += CodedOutputStream.G(2, getAdditionalRequestChance());
        }
        boolean z10 = this.hedgeOnPerTryTimeout_;
        if (z10) {
            G += CodedOutputStream.e(3, z10);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAdditionalRequestChance() {
        return this.additionalRequestChance_ != null;
    }

    public boolean hasInitialRequests() {
        return this.initialRequests_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasInitialRequests()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getInitialRequests().hashCode();
        }
        if (hasAdditionalRequestChance()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getAdditionalRequestChance().hashCode();
        }
        int d10 = (((((hashCode * 37) + 3) * 53) + u0.d(getHedgeOnPerTryTimeout())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f47294f0.d(HedgePolicy.class, b.class);
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
        return new HedgePolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.initialRequests_ != null) {
            codedOutputStream.L0(1, getInitialRequests());
        }
        if (this.additionalRequestChance_ != null) {
            codedOutputStream.L0(2, getAdditionalRequestChance());
        }
        boolean z10 = this.hedgeOnPerTryTimeout_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HedgePolicy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HedgePolicy hedgePolicy) {
        return DEFAULT_INSTANCE.toBuilder().h0(hedgePolicy);
    }

    public static HedgePolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HedgePolicy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HedgePolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HedgePolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HedgePolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HedgePolicy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static HedgePolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HedgePolicy() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HedgePolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HedgePolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private HedgePolicy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                UInt32Value uInt32Value = this.initialRequests_;
                                UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.initialRequests_ = uInt32Value2;
                                if (builder != null) {
                                    builder.g0(uInt32Value2);
                                    this.initialRequests_ = builder.I();
                                }
                            } else if (L == 18) {
                                FractionalPercent fractionalPercent = this.additionalRequestChance_;
                                FractionalPercent.b builder2 = fractionalPercent != null ? fractionalPercent.toBuilder() : null;
                                FractionalPercent fractionalPercent2 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                                this.additionalRequestChance_ = fractionalPercent2;
                                if (builder2 != null) {
                                    builder2.g0(fractionalPercent2);
                                    this.additionalRequestChance_ = builder2.I();
                                }
                            } else if (L != 24) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.hedgeOnPerTryTimeout_ = pVar.r();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static HedgePolicy parseFrom(InputStream inputStream) throws IOException {
        return (HedgePolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HedgePolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HedgePolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HedgePolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HedgePolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HedgePolicy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (HedgePolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
