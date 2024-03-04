package io.opencensus.proto.trace.v1;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.opencensus.proto.trace.v1.TruncatableString;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class AttributeValue extends GeneratedMessageV3 implements r1 {
    public static final int BOOL_VALUE_FIELD_NUMBER = 3;
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 4;
    public static final int INT_VALUE_FIELD_NUMBER = 2;
    public static final int STRING_VALUE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int valueCase_;
    private Object value_;
    private static final AttributeValue DEFAULT_INSTANCE = new AttributeValue();
    private static final e2<AttributeValue> PARSER = new a();

    /* loaded from: classes7.dex */
    public enum ValueCase implements u0.c {
        STRING_VALUE(1),
        INT_VALUE(2),
        BOOL_VALUE(3),
        DOUBLE_VALUE(4),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i9) {
            this.value = i9;
        }

        public static ValueCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return DOUBLE_VALUE;
                        }
                        return BOOL_VALUE;
                    }
                    return INT_VALUE;
                }
                return STRING_VALUE;
            }
            return VALUE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ValueCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<AttributeValue> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AttributeValue m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AttributeValue(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51118a;

        static {
            int[] iArr = new int[ValueCase.values().length];
            f51118a = iArr;
            try {
                iArr[ValueCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51118a[ValueCase.INT_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51118a[ValueCase.BOOL_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51118a[ValueCase.DOUBLE_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51118a[ValueCase.VALUE_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f51119e;

        /* renamed from: f  reason: collision with root package name */
        private Object f51120f;

        /* renamed from: g  reason: collision with root package name */
        private q2<TruncatableString, TruncatableString.b, k> f51121g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f51255z.d(AttributeValue.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AttributeValue build() {
            AttributeValue I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AttributeValue I() {
            AttributeValue attributeValue = new AttributeValue(this, (a) null);
            if (this.f51119e == 1) {
                q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51121g;
                if (q2Var == null) {
                    attributeValue.value_ = this.f51120f;
                } else {
                    attributeValue.value_ = q2Var.b();
                }
            }
            if (this.f51119e == 2) {
                attributeValue.value_ = this.f51120f;
            }
            if (this.f51119e == 3) {
                attributeValue.value_ = this.f51120f;
            }
            if (this.f51119e == 4) {
                attributeValue.value_ = this.f51120f;
            }
            attributeValue.valueCase_ = this.f51119e;
            Q();
            return attributeValue;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public AttributeValue getDefaultInstanceForType() {
            return AttributeValue.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.trace.v1.AttributeValue.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.AttributeValue.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.trace.v1.AttributeValue r3 = (io.opencensus.proto.trace.v1.AttributeValue) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.trace.v1.AttributeValue r4 = (io.opencensus.proto.trace.v1.AttributeValue) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.AttributeValue.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.AttributeValue$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof AttributeValue) {
                return g0((AttributeValue) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(AttributeValue attributeValue) {
            if (attributeValue == AttributeValue.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f51118a[attributeValue.getValueCase().ordinal()];
            if (i9 == 1) {
                h0(attributeValue.getStringValue());
            } else if (i9 == 2) {
                m0(attributeValue.getIntValue());
            } else if (i9 == 3) {
                j0(attributeValue.getBoolValue());
            } else if (i9 == 4) {
                k0(attributeValue.getDoubleValue());
            }
            z(((GeneratedMessageV3) attributeValue).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f51254y;
        }

        public c h0(TruncatableString truncatableString) {
            q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51121g;
            if (q2Var == null) {
                if (this.f51119e == 1 && this.f51120f != TruncatableString.getDefaultInstance()) {
                    this.f51120f = TruncatableString.newBuilder((TruncatableString) this.f51120f).g0(truncatableString).I();
                } else {
                    this.f51120f = truncatableString;
                }
                R();
            } else {
                if (this.f51119e == 1) {
                    q2Var.e(truncatableString);
                }
                this.f51121g.g(truncatableString);
            }
            this.f51119e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c j0(boolean z10) {
            this.f51119e = 3;
            this.f51120f = Boolean.valueOf(z10);
            R();
            return this;
        }

        public c k0(double d10) {
            this.f51119e = 4;
            this.f51120f = Double.valueOf(d10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(long j10) {
            this.f51119e = 2;
            this.f51120f = Long.valueOf(j10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.V(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f51119e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51119e = 0;
            b0();
        }
    }

    /* synthetic */ AttributeValue(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AttributeValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f51254y;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AttributeValue parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AttributeValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AttributeValue parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AttributeValue> parser() {
        return PARSER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0046, code lost:
        if (java.lang.Double.doubleToLongBits(getDoubleValue()) == java.lang.Double.doubleToLongBits(r8.getDoubleValue())) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0048, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
        if (getBoolValue() == r8.getBoolValue()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0065, code lost:
        if (getIntValue() == r8.getIntValue()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0076, code lost:
        if (getStringValue().equals(r8.getStringValue()) != false) goto L25;
     */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 != r7) goto L4
            return r0
        L4:
            boolean r1 = r8 instanceof io.opencensus.proto.trace.v1.AttributeValue
            if (r1 != 0) goto Ld
            boolean r8 = super.equals(r8)
            return r8
        Ld:
            io.opencensus.proto.trace.v1.AttributeValue r8 = (io.opencensus.proto.trace.v1.AttributeValue) r8
            io.opencensus.proto.trace.v1.AttributeValue$ValueCase r1 = r7.getValueCase()
            io.opencensus.proto.trace.v1.AttributeValue$ValueCase r2 = r8.getValueCase()
            boolean r1 = r1.equals(r2)
            r2 = 0
            if (r1 == 0) goto L20
            r1 = 1
            goto L21
        L20:
            r1 = 0
        L21:
            if (r1 != 0) goto L24
            return r2
        L24:
            int r3 = r7.valueCase_
            if (r3 == r0) goto L68
            r4 = 2
            if (r3 == r4) goto L59
            r4 = 3
            if (r3 == r4) goto L4c
            r4 = 4
            if (r3 == r4) goto L32
            goto L79
        L32:
            if (r1 == 0) goto L4a
            double r3 = r7.getDoubleValue()
            long r3 = java.lang.Double.doubleToLongBits(r3)
            double r5 = r8.getDoubleValue()
            long r5 = java.lang.Double.doubleToLongBits(r5)
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L4a
        L48:
            r1 = 1
            goto L79
        L4a:
            r1 = 0
            goto L79
        L4c:
            if (r1 == 0) goto L4a
            boolean r1 = r7.getBoolValue()
            boolean r3 = r8.getBoolValue()
            if (r1 != r3) goto L4a
            goto L48
        L59:
            if (r1 == 0) goto L4a
            long r3 = r7.getIntValue()
            long r5 = r8.getIntValue()
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L4a
            goto L48
        L68:
            if (r1 == 0) goto L4a
            io.opencensus.proto.trace.v1.TruncatableString r1 = r7.getStringValue()
            io.opencensus.proto.trace.v1.TruncatableString r3 = r8.getStringValue()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L4a
            goto L48
        L79:
            if (r1 == 0) goto L86
            com.google.protobuf.h3 r1 = r7.unknownFields
            com.google.protobuf.h3 r8 = r8.unknownFields
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L86
            goto L87
        L86:
            r0 = 0
        L87:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.AttributeValue.equals(java.lang.Object):boolean");
    }

    public boolean getBoolValue() {
        if (this.valueCase_ == 3) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    public double getDoubleValue() {
        if (this.valueCase_ == 4) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public long getIntValue() {
        if (this.valueCase_ == 2) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AttributeValue> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.valueCase_ == 1 ? 0 + CodedOutputStream.G(1, (TruncatableString) this.value_) : 0;
        if (this.valueCase_ == 2) {
            G += CodedOutputStream.z(2, ((Long) this.value_).longValue());
        }
        if (this.valueCase_ == 3) {
            G += CodedOutputStream.e(3, ((Boolean) this.value_).booleanValue());
        }
        if (this.valueCase_ == 4) {
            G += CodedOutputStream.j(4, ((Double) this.value_).doubleValue());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TruncatableString getStringValue() {
        if (this.valueCase_ == 1) {
            return (TruncatableString) this.value_;
        }
        return TruncatableString.getDefaultInstance();
    }

    public k getStringValueOrBuilder() {
        if (this.valueCase_ == 1) {
            return (TruncatableString) this.value_;
        }
        return TruncatableString.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasStringValue() {
        return this.valueCase_ == 1;
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
        int i11 = this.valueCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getStringValue().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = u0.i(getIntValue());
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = u0.d(getBoolValue());
        } else {
            if (i11 == 4) {
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = u0.i(Double.doubleToLongBits(getDoubleValue()));
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
        return j.f51255z.d(AttributeValue.class, c.class);
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
        if (this.valueCase_ == 1) {
            codedOutputStream.L0(1, (TruncatableString) this.value_);
        }
        if (this.valueCase_ == 2) {
            codedOutputStream.J0(2, ((Long) this.value_).longValue());
        }
        if (this.valueCase_ == 3) {
            codedOutputStream.n0(3, ((Boolean) this.value_).booleanValue());
        }
        if (this.valueCase_ == 4) {
            codedOutputStream.t0(4, ((Double) this.value_).doubleValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AttributeValue(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(AttributeValue attributeValue) {
        return DEFAULT_INSTANCE.toBuilder().g0(attributeValue);
    }

    public static AttributeValue parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AttributeValue(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AttributeValue parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AttributeValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AttributeValue parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AttributeValue getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static AttributeValue parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static AttributeValue parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private AttributeValue() {
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AttributeValue parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AttributeValue parseFrom(InputStream inputStream) throws IOException {
        return (AttributeValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private AttributeValue(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            TruncatableString.b builder = this.valueCase_ == 1 ? ((TruncatableString) this.value_).toBuilder() : null;
                            o1 B = pVar.B(TruncatableString.parser(), f0Var);
                            this.value_ = B;
                            if (builder != null) {
                                builder.g0((TruncatableString) B);
                                this.value_ = builder.I();
                            }
                            this.valueCase_ = 1;
                        } else if (L == 16) {
                            this.valueCase_ = 2;
                            this.value_ = Long.valueOf(pVar.A());
                        } else if (L == 24) {
                            this.valueCase_ = 3;
                            this.value_ = Boolean.valueOf(pVar.r());
                        } else if (L != 33) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.valueCase_ = 4;
                            this.value_ = Double.valueOf(pVar.t());
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

    public static AttributeValue parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AttributeValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AttributeValue parseFrom(p pVar) throws IOException {
        return (AttributeValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AttributeValue parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AttributeValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
