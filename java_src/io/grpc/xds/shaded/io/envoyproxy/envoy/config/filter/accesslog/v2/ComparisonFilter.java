package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2;

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
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ComparisonFilter extends GeneratedMessageV3 implements e {
    public static final int OP_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int op_;
    private RuntimeUInt32 value_;
    private static final ComparisonFilter DEFAULT_INSTANCE = new ComparisonFilter();
    private static final e2<ComparisonFilter> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum Op implements h2 {
        EQ(0),
        GE(1),
        LE(2),
        UNRECOGNIZED(-1);
        
        public static final int EQ_VALUE = 0;
        public static final int GE_VALUE = 1;
        public static final int LE_VALUE = 2;
        private final int value;
        private static final u0.d<Op> internalValueMap = new a();
        private static final Op[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<Op> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Op a(int i9) {
                return Op.forNumber(i9);
            }
        }

        Op(int i9) {
            this.value = i9;
        }

        public static Op forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return LE;
                }
                return GE;
            }
            return EQ;
        }

        public static final Descriptors.d getDescriptor() {
            return ComparisonFilter.getDescriptor().k().get(0);
        }

        public static u0.d<Op> internalGetValueMap() {
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
        public static Op valueOf(int i9) {
            return forNumber(i9);
        }

        public static Op valueOf(Descriptors.e eVar) {
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
    public class a extends com.google.protobuf.c<ComparisonFilter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ComparisonFilter m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ComparisonFilter(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f48472e;

        /* renamed from: f  reason: collision with root package name */
        private RuntimeUInt32 f48473f;

        /* renamed from: g  reason: collision with root package name */
        private q2<RuntimeUInt32, RuntimeUInt32.b, l0> f48474g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f48504f.d(ComparisonFilter.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ComparisonFilter build() {
            ComparisonFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ComparisonFilter I() {
            ComparisonFilter comparisonFilter = new ComparisonFilter(this, (a) null);
            comparisonFilter.op_ = this.f48472e;
            q2<RuntimeUInt32, RuntimeUInt32.b, l0> q2Var = this.f48474g;
            if (q2Var == null) {
                comparisonFilter.value_ = this.f48473f;
            } else {
                comparisonFilter.value_ = q2Var.b();
            }
            Q();
            return comparisonFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ComparisonFilter getDefaultInstanceForType() {
            return ComparisonFilter.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ComparisonFilter) {
                return g0((ComparisonFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ComparisonFilter comparisonFilter) {
            if (comparisonFilter == ComparisonFilter.getDefaultInstance()) {
                return this;
            }
            if (comparisonFilter.op_ != 0) {
                k0(comparisonFilter.getOpValue());
            }
            if (comparisonFilter.hasValue()) {
                i0(comparisonFilter.getValue());
            }
            z(((GeneratedMessageV3) comparisonFilter).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f48503e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(RuntimeUInt32 runtimeUInt32) {
            q2<RuntimeUInt32, RuntimeUInt32.b, l0> q2Var = this.f48474g;
            if (q2Var == null) {
                RuntimeUInt32 runtimeUInt322 = this.f48473f;
                if (runtimeUInt322 != null) {
                    this.f48473f = RuntimeUInt32.newBuilder(runtimeUInt322).g0(runtimeUInt32).I();
                } else {
                    this.f48473f = runtimeUInt32;
                }
                R();
            } else {
                q2Var.e(runtimeUInt32);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b k0(int i9) {
            this.f48472e = i9;
            R();
            return this;
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
            this.f48472e = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48472e = 0;
            b0();
        }
    }

    /* synthetic */ ComparisonFilter(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ComparisonFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f48503e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ComparisonFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ComparisonFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ComparisonFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ComparisonFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ComparisonFilter)) {
            return super.equals(obj);
        }
        ComparisonFilter comparisonFilter = (ComparisonFilter) obj;
        if (this.op_ == comparisonFilter.op_ && hasValue() == comparisonFilter.hasValue()) {
            return (!hasValue() || getValue().equals(comparisonFilter.getValue())) && this.unknownFields.equals(comparisonFilter.unknownFields);
        }
        return false;
    }

    public Op getOp() {
        Op valueOf = Op.valueOf(this.op_);
        return valueOf == null ? Op.UNRECOGNIZED : valueOf;
    }

    public int getOpValue() {
        return this.op_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ComparisonFilter> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.op_ != Op.EQ.getNumber() ? 0 + CodedOutputStream.l(1, this.op_) : 0;
        if (this.value_ != null) {
            l10 += CodedOutputStream.G(2, getValue());
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public RuntimeUInt32 getValue() {
        RuntimeUInt32 runtimeUInt32 = this.value_;
        return runtimeUInt32 == null ? RuntimeUInt32.getDefaultInstance() : runtimeUInt32;
    }

    public l0 getValueOrBuilder() {
        return getValue();
    }

    public boolean hasValue() {
        return this.value_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.op_;
        if (hasValue()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getValue().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f48504f.d(ComparisonFilter.class, b.class);
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
        return new ComparisonFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.op_ != Op.EQ.getNumber()) {
            codedOutputStream.v0(1, this.op_);
        }
        if (this.value_ != null) {
            codedOutputStream.L0(2, getValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ComparisonFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ComparisonFilter comparisonFilter) {
        return DEFAULT_INSTANCE.toBuilder().g0(comparisonFilter);
    }

    public static ComparisonFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ComparisonFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ComparisonFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ComparisonFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ComparisonFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ComparisonFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ComparisonFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ComparisonFilter() {
        this.memoizedIsInitialized = (byte) -1;
        this.op_ = 0;
    }

    public static ComparisonFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ComparisonFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ComparisonFilter parseFrom(InputStream inputStream) throws IOException {
        return (ComparisonFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ComparisonFilter(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.op_ = pVar.u();
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            RuntimeUInt32 runtimeUInt32 = this.value_;
                            RuntimeUInt32.b builder = runtimeUInt32 != null ? runtimeUInt32.toBuilder() : null;
                            RuntimeUInt32 runtimeUInt322 = (RuntimeUInt32) pVar.B(RuntimeUInt32.parser(), f0Var);
                            this.value_ = runtimeUInt322;
                            if (builder != null) {
                                builder.g0(runtimeUInt322);
                                this.value_ = builder.I();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ComparisonFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ComparisonFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ComparisonFilter parseFrom(p pVar) throws IOException {
        return (ComparisonFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ComparisonFilter parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ComparisonFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
