package io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3;

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
/* loaded from: classes6.dex */
public final class FractionalPercent extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b {
    public static final int DENOMINATOR_FIELD_NUMBER = 2;
    public static final int NUMERATOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int denominator_;
    private byte memoizedIsInitialized;
    private int numerator_;
    private static final FractionalPercent DEFAULT_INSTANCE = new FractionalPercent();
    private static final e2<FractionalPercent> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum DenominatorType implements h2 {
        HUNDRED(0),
        TEN_THOUSAND(1),
        MILLION(2),
        UNRECOGNIZED(-1);
        
        public static final int HUNDRED_VALUE = 0;
        public static final int MILLION_VALUE = 2;
        public static final int TEN_THOUSAND_VALUE = 1;
        private final int value;
        private static final u0.d<DenominatorType> internalValueMap = new a();
        private static final DenominatorType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<DenominatorType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public DenominatorType a(int i9) {
                return DenominatorType.forNumber(i9);
            }
        }

        DenominatorType(int i9) {
            this.value = i9;
        }

        public static DenominatorType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return MILLION;
                }
                return TEN_THOUSAND;
            }
            return HUNDRED;
        }

        public static final Descriptors.d getDescriptor() {
            return FractionalPercent.getDescriptor().k().get(0);
        }

        public static u0.d<DenominatorType> internalGetValueMap() {
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
        public static DenominatorType valueOf(int i9) {
            return forNumber(i9);
        }

        public static DenominatorType valueOf(Descriptors.e eVar) {
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
    public class a extends com.google.protobuf.c<FractionalPercent> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FractionalPercent m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FractionalPercent(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b {

        /* renamed from: e  reason: collision with root package name */
        private int f50553e;

        /* renamed from: f  reason: collision with root package name */
        private int f50554f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f50567d.d(FractionalPercent.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FractionalPercent build() {
            FractionalPercent I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FractionalPercent I() {
            FractionalPercent fractionalPercent = new FractionalPercent(this, (a) null);
            fractionalPercent.numerator_ = this.f50553e;
            fractionalPercent.denominator_ = this.f50554f;
            Q();
            return fractionalPercent;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public FractionalPercent getDefaultInstanceForType() {
            return FractionalPercent.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof FractionalPercent) {
                return g0((FractionalPercent) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(FractionalPercent fractionalPercent) {
            if (fractionalPercent == FractionalPercent.getDefaultInstance()) {
                return this;
            }
            if (fractionalPercent.getNumerator() != 0) {
                k0(fractionalPercent.getNumerator());
            }
            if (fractionalPercent.denominator_ != 0) {
                i0(fractionalPercent.getDenominatorValue());
            }
            z(((GeneratedMessageV3) fractionalPercent).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f50566c;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(int i9) {
            this.f50554f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b k0(int i9) {
            this.f50553e = i9;
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
            this.f50554f = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50554f = 0;
            b0();
        }
    }

    /* synthetic */ FractionalPercent(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static FractionalPercent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f50566c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FractionalPercent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FractionalPercent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FractionalPercent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FractionalPercent> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FractionalPercent)) {
            return super.equals(obj);
        }
        FractionalPercent fractionalPercent = (FractionalPercent) obj;
        return getNumerator() == fractionalPercent.getNumerator() && this.denominator_ == fractionalPercent.denominator_ && this.unknownFields.equals(fractionalPercent.unknownFields);
    }

    public DenominatorType getDenominator() {
        DenominatorType valueOf = DenominatorType.valueOf(this.denominator_);
        return valueOf == null ? DenominatorType.UNRECOGNIZED : valueOf;
    }

    public int getDenominatorValue() {
        return this.denominator_;
    }

    public int getNumerator() {
        return this.numerator_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<FractionalPercent> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.numerator_;
        int Y = i10 != 0 ? 0 + CodedOutputStream.Y(1, i10) : 0;
        if (this.denominator_ != DenominatorType.HUNDRED.getNumber()) {
            Y += CodedOutputStream.l(2, this.denominator_);
        }
        int serializedSize = Y + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getNumerator()) * 37) + 2) * 53) + this.denominator_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f50567d.d(FractionalPercent.class, b.class);
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
        return new FractionalPercent();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.numerator_;
        if (i9 != 0) {
            codedOutputStream.c1(1, i9);
        }
        if (this.denominator_ != DenominatorType.HUNDRED.getNumber()) {
            codedOutputStream.v0(2, this.denominator_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FractionalPercent(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(FractionalPercent fractionalPercent) {
        return DEFAULT_INSTANCE.toBuilder().g0(fractionalPercent);
    }

    public static FractionalPercent parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private FractionalPercent(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FractionalPercent parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FractionalPercent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FractionalPercent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FractionalPercent getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static FractionalPercent parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private FractionalPercent() {
        this.memoizedIsInitialized = (byte) -1;
        this.denominator_ = 0;
    }

    public static FractionalPercent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static FractionalPercent parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FractionalPercent parseFrom(InputStream inputStream) throws IOException {
        return (FractionalPercent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private FractionalPercent(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 8) {
                                this.numerator_ = pVar.M();
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.denominator_ = pVar.u();
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

    public static FractionalPercent parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FractionalPercent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static FractionalPercent parseFrom(p pVar) throws IOException {
        return (FractionalPercent) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FractionalPercent parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FractionalPercent) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
