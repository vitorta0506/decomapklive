package io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3;

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
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RuntimeFilter extends GeneratedMessageV3 implements n {
    private static final RuntimeFilter DEFAULT_INSTANCE = new RuntimeFilter();
    private static final e2<RuntimeFilter> PARSER = new a();
    public static final int PERCENT_SAMPLED_FIELD_NUMBER = 2;
    public static final int RUNTIME_KEY_FIELD_NUMBER = 1;
    public static final int USE_INDEPENDENT_RANDOMNESS_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private FractionalPercent percentSampled_;
    private volatile Object runtimeKey_;
    private boolean useIndependentRandomness_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RuntimeFilter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RuntimeFilter m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RuntimeFilter(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements n {

        /* renamed from: e  reason: collision with root package name */
        private Object f47384e;

        /* renamed from: f  reason: collision with root package name */
        private FractionalPercent f47385f;

        /* renamed from: g  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b> f47386g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f47387h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f47405p.d(RuntimeFilter.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RuntimeFilter build() {
            RuntimeFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RuntimeFilter I() {
            RuntimeFilter runtimeFilter = new RuntimeFilter(this, (a) null);
            runtimeFilter.runtimeKey_ = this.f47384e;
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b> q2Var = this.f47386g;
            if (q2Var == null) {
                runtimeFilter.percentSampled_ = this.f47385f;
            } else {
                runtimeFilter.percentSampled_ = q2Var.b();
            }
            runtimeFilter.useIndependentRandomness_ = this.f47387h;
            Q();
            return runtimeFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RuntimeFilter getDefaultInstanceForType() {
            return RuntimeFilter.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RuntimeFilter) {
                return g0((RuntimeFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RuntimeFilter runtimeFilter) {
            if (runtimeFilter == RuntimeFilter.getDefaultInstance()) {
                return this;
            }
            if (!runtimeFilter.getRuntimeKey().isEmpty()) {
                this.f47384e = runtimeFilter.runtimeKey_;
                R();
            }
            if (runtimeFilter.hasPercentSampled()) {
                h0(runtimeFilter.getPercentSampled());
            }
            if (runtimeFilter.getUseIndependentRandomness()) {
                l0(runtimeFilter.getUseIndependentRandomness());
            }
            z(((GeneratedMessageV3) runtimeFilter).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f47404o;
        }

        public b h0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b> q2Var = this.f47386g;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f47385f;
                if (fractionalPercent2 != null) {
                    this.f47385f = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f47385f = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        public b l0(boolean z10) {
            this.f47387h = z10;
            R();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47384e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47384e = "";
            b0();
        }
    }

    /* synthetic */ RuntimeFilter(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RuntimeFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f47404o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RuntimeFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RuntimeFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RuntimeFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RuntimeFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RuntimeFilter)) {
            return super.equals(obj);
        }
        RuntimeFilter runtimeFilter = (RuntimeFilter) obj;
        if (getRuntimeKey().equals(runtimeFilter.getRuntimeKey()) && hasPercentSampled() == runtimeFilter.hasPercentSampled()) {
            return (!hasPercentSampled() || getPercentSampled().equals(runtimeFilter.getPercentSampled())) && getUseIndependentRandomness() == runtimeFilter.getUseIndependentRandomness() && this.unknownFields.equals(runtimeFilter.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RuntimeFilter> getParserForType() {
        return PARSER;
    }

    public FractionalPercent getPercentSampled() {
        FractionalPercent fractionalPercent = this.percentSampled_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b getPercentSampledOrBuilder() {
        return getPercentSampled();
    }

    public String getRuntimeKey() {
        Object obj = this.runtimeKey_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.runtimeKey_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRuntimeKeyBytes() {
        Object obj = this.runtimeKey_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.runtimeKey_ = copyFromUtf8;
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
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.runtimeKey_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.runtimeKey_);
        if (this.percentSampled_ != null) {
            computeStringSize += CodedOutputStream.G(2, getPercentSampled());
        }
        boolean z10 = this.useIndependentRandomness_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(3, z10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean getUseIndependentRandomness() {
        return this.useIndependentRandomness_;
    }

    public boolean hasPercentSampled() {
        return this.percentSampled_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRuntimeKey().hashCode();
        if (hasPercentSampled()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getPercentSampled().hashCode();
        }
        int d10 = (((((hashCode * 37) + 3) * 53) + u0.d(getUseIndependentRandomness())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f47405p.d(RuntimeFilter.class, b.class);
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
        return new RuntimeFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.runtimeKey_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.runtimeKey_);
        }
        if (this.percentSampled_ != null) {
            codedOutputStream.L0(2, getPercentSampled());
        }
        boolean z10 = this.useIndependentRandomness_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RuntimeFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RuntimeFilter runtimeFilter) {
        return DEFAULT_INSTANCE.toBuilder().g0(runtimeFilter);
    }

    public static RuntimeFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RuntimeFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RuntimeFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RuntimeFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RuntimeFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RuntimeFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RuntimeFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RuntimeFilter() {
        this.memoizedIsInitialized = (byte) -1;
        this.runtimeKey_ = "";
    }

    public static RuntimeFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RuntimeFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RuntimeFilter parseFrom(InputStream inputStream) throws IOException {
        return (RuntimeFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RuntimeFilter(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.runtimeKey_ = pVar.K();
                        } else if (L == 18) {
                            FractionalPercent fractionalPercent = this.percentSampled_;
                            FractionalPercent.b builder = fractionalPercent != null ? fractionalPercent.toBuilder() : null;
                            FractionalPercent fractionalPercent2 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                            this.percentSampled_ = fractionalPercent2;
                            if (builder != null) {
                                builder.g0(fractionalPercent2);
                                this.percentSampled_ = builder.I();
                            }
                        } else if (L != 24) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.useIndependentRandomness_ = pVar.r();
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

    public static RuntimeFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RuntimeFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RuntimeFilter parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RuntimeFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RuntimeFilter parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RuntimeFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
