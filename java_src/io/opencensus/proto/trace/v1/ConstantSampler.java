package io.opencensus.proto.trace.v1;

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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class ConstantSampler extends GeneratedMessageV3 implements io.opencensus.proto.trace.v1.a {
    public static final int DECISION_FIELD_NUMBER = 1;
    private static final ConstantSampler DEFAULT_INSTANCE = new ConstantSampler();
    private static final e2<ConstantSampler> PARSER = new a();
    private static final long serialVersionUID = 0;
    private int decision_;
    private byte memoizedIsInitialized;

    /* loaded from: classes7.dex */
    public enum ConstantDecision implements h2 {
        ALWAYS_OFF(0),
        ALWAYS_ON(1),
        ALWAYS_PARENT(2),
        UNRECOGNIZED(-1);
        
        public static final int ALWAYS_OFF_VALUE = 0;
        public static final int ALWAYS_ON_VALUE = 1;
        public static final int ALWAYS_PARENT_VALUE = 2;
        private final int value;
        private static final u0.d<ConstantDecision> internalValueMap = new a();
        private static final ConstantDecision[] VALUES = values();

        /* loaded from: classes7.dex */
        static class a implements u0.d<ConstantDecision> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ConstantDecision a(int i9) {
                return ConstantDecision.forNumber(i9);
            }
        }

        ConstantDecision(int i9) {
            this.value = i9;
        }

        public static ConstantDecision forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return ALWAYS_PARENT;
                }
                return ALWAYS_ON;
            }
            return ALWAYS_OFF;
        }

        public static final Descriptors.d getDescriptor() {
            return ConstantSampler.getDescriptor().k().get(0);
        }

        public static u0.d<ConstantDecision> internalGetValueMap() {
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
            return getDescriptor().k().get(ordinal());
        }

        @Deprecated
        public static ConstantDecision valueOf(int i9) {
            return forNumber(i9);
        }

        public static ConstantDecision valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<ConstantSampler> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ConstantSampler m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ConstantSampler(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.opencensus.proto.trace.v1.a {

        /* renamed from: e  reason: collision with root package name */
        private int f51122e;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f51226f.d(ConstantSampler.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ConstantSampler build() {
            ConstantSampler I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ConstantSampler I() {
            ConstantSampler constantSampler = new ConstantSampler(this, (a) null);
            constantSampler.decision_ = this.f51122e;
            Q();
            return constantSampler;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ConstantSampler getDefaultInstanceForType() {
            return ConstantSampler.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.trace.v1.ConstantSampler.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.ConstantSampler.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.trace.v1.ConstantSampler r3 = (io.opencensus.proto.trace.v1.ConstantSampler) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.trace.v1.ConstantSampler r4 = (io.opencensus.proto.trace.v1.ConstantSampler) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.ConstantSampler.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.ConstantSampler$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ConstantSampler) {
                return g0((ConstantSampler) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ConstantSampler constantSampler) {
            if (constantSampler == ConstantSampler.getDefaultInstance()) {
                return this;
            }
            if (constantSampler.decision_ != 0) {
                i0(constantSampler.getDecisionValue());
            }
            z(((GeneratedMessageV3) constantSampler).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f51225e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(int i9) {
            this.f51122e = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f51122e = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51122e = 0;
            b0();
        }
    }

    /* synthetic */ ConstantSampler(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ConstantSampler getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f51225e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ConstantSampler parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ConstantSampler) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ConstantSampler parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ConstantSampler> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConstantSampler)) {
            return super.equals(obj);
        }
        ConstantSampler constantSampler = (ConstantSampler) obj;
        return (this.decision_ == constantSampler.decision_) && this.unknownFields.equals(constantSampler.unknownFields);
    }

    public ConstantDecision getDecision() {
        ConstantDecision valueOf = ConstantDecision.valueOf(this.decision_);
        return valueOf == null ? ConstantDecision.UNRECOGNIZED : valueOf;
    }

    public int getDecisionValue() {
        return this.decision_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ConstantSampler> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = (this.decision_ != ConstantDecision.ALWAYS_OFF.getNumber() ? 0 + CodedOutputStream.l(1, this.decision_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = l10;
        return l10;
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
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.decision_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f51226f.d(ConstantSampler.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.decision_ != ConstantDecision.ALWAYS_OFF.getNumber()) {
            codedOutputStream.v0(1, this.decision_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ConstantSampler(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ConstantSampler constantSampler) {
        return DEFAULT_INSTANCE.toBuilder().g0(constantSampler);
    }

    public static ConstantSampler parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ConstantSampler(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ConstantSampler parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ConstantSampler) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ConstantSampler parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ConstantSampler getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ConstantSampler parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ConstantSampler() {
        this.memoizedIsInitialized = (byte) -1;
        this.decision_ = 0;
    }

    public static ConstantSampler parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ConstantSampler parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ConstantSampler parseFrom(InputStream inputStream) throws IOException {
        return (ConstantSampler) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ConstantSampler(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 8) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.decision_ = pVar.u();
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

    public static ConstantSampler parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ConstantSampler) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ConstantSampler parseFrom(p pVar) throws IOException {
        return (ConstantSampler) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ConstantSampler parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ConstantSampler) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
