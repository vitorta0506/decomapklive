package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.ListValue;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Value extends GeneratedMessageV3 implements o3 {
    public static final int BOOL_VALUE_FIELD_NUMBER = 4;
    public static final int LIST_VALUE_FIELD_NUMBER = 6;
    public static final int NULL_VALUE_FIELD_NUMBER = 1;
    public static final int NUMBER_VALUE_FIELD_NUMBER = 2;
    public static final int STRING_VALUE_FIELD_NUMBER = 3;
    public static final int STRUCT_VALUE_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private int kindCase_;
    private Object kind_;
    private byte memoizedIsInitialized;
    private static final Value DEFAULT_INSTANCE = new Value();
    private static final e2<Value> PARSER = new a();

    /* loaded from: classes3.dex */
    public enum KindCase implements u0.c {
        NULL_VALUE(1),
        NUMBER_VALUE(2),
        STRING_VALUE(3),
        BOOL_VALUE(4),
        STRUCT_VALUE(5),
        LIST_VALUE(6),
        KIND_NOT_SET(0);
        
        private final int value;

        KindCase(int i9) {
            this.value = i9;
        }

        public static KindCase forNumber(int i9) {
            switch (i9) {
                case 0:
                    return KIND_NOT_SET;
                case 1:
                    return NULL_VALUE;
                case 2:
                    return NUMBER_VALUE;
                case 3:
                    return STRING_VALUE;
                case 4:
                    return BOOL_VALUE;
                case 5:
                    return STRUCT_VALUE;
                case 6:
                    return LIST_VALUE;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static KindCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<Value> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Value m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Value(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14837a;

        static {
            int[] iArr = new int[KindCase.values().length];
            f14837a = iArr;
            try {
                iArr[KindCase.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14837a[KindCase.NUMBER_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14837a[KindCase.STRING_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14837a[KindCase.BOOL_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14837a[KindCase.STRUCT_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14837a[KindCase.LIST_VALUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14837a[KindCase.KIND_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements o3 {

        /* renamed from: e  reason: collision with root package name */
        private int f14838e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14839f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f14840g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ListValue, ListValue.b, b1> f14841h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return v2.f15305f.d(Value.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Value build() {
            Value I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Value I() {
            Value value = new Value(this, (a) null);
            if (this.f14838e == 1) {
                value.kind_ = this.f14839f;
            }
            if (this.f14838e == 2) {
                value.kind_ = this.f14839f;
            }
            if (this.f14838e == 3) {
                value.kind_ = this.f14839f;
            }
            if (this.f14838e == 4) {
                value.kind_ = this.f14839f;
            }
            if (this.f14838e == 5) {
                q2<Struct, Struct.b, u2> q2Var = this.f14840g;
                if (q2Var == null) {
                    value.kind_ = this.f14839f;
                } else {
                    value.kind_ = q2Var.b();
                }
            }
            if (this.f14838e == 6) {
                q2<ListValue, ListValue.b, b1> q2Var2 = this.f14841h;
                if (q2Var2 == null) {
                    value.kind_ = this.f14839f;
                } else {
                    value.kind_ = q2Var2.b();
                }
            }
            value.kindCase_ = this.f14838e;
            Q();
            return value;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Value getDefaultInstanceForType() {
            return Value.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.Value.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Value.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Value r3 = (com.google.protobuf.Value) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.protobuf.Value r4 = (com.google.protobuf.Value) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Value.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Value$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Value) {
                return g0((Value) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(Value value) {
            if (value == Value.getDefaultInstance()) {
                return this;
            }
            switch (b.f14837a[value.getKindCase().ordinal()]) {
                case 1:
                    o0(value.getNullValueValue());
                    break;
                case 2:
                    q0(value.getNumberValue());
                    break;
                case 3:
                    this.f14838e = 3;
                    this.f14839f = value.kind_;
                    R();
                    break;
                case 4:
                    k0(value.getBoolValue());
                    break;
                case 5:
                    i0(value.getStructValue());
                    break;
                case 6:
                    h0(value.getListValue());
                    break;
            }
            z(value.unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return v2.f15304e;
        }

        public c h0(ListValue listValue) {
            q2<ListValue, ListValue.b, b1> q2Var = this.f14841h;
            if (q2Var == null) {
                if (this.f14838e == 6 && this.f14839f != ListValue.getDefaultInstance()) {
                    this.f14839f = ListValue.newBuilder((ListValue) this.f14839f).i0(listValue).I();
                } else {
                    this.f14839f = listValue;
                }
                R();
            } else {
                if (this.f14838e == 6) {
                    q2Var.e(listValue);
                }
                this.f14841h.g(listValue);
            }
            this.f14838e = 6;
            return this;
        }

        public c i0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f14840g;
            if (q2Var == null) {
                if (this.f14838e == 5 && this.f14839f != Struct.getDefaultInstance()) {
                    this.f14839f = Struct.newBuilder((Struct) this.f14839f).i0(struct).I();
                } else {
                    this.f14839f = struct;
                }
                R();
            } else {
                if (this.f14838e == 5) {
                    q2Var.e(struct);
                }
                this.f14840g.g(struct);
            }
            this.f14838e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c k0(boolean z10) {
            this.f14838e = 4;
            this.f14839f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(ListValue.b bVar) {
            q2<ListValue, ListValue.b, b1> q2Var = this.f14841h;
            if (q2Var == null) {
                this.f14839f = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            this.f14838e = 6;
            return this;
        }

        public c n0(NullValue nullValue) {
            Objects.requireNonNull(nullValue);
            this.f14838e = 1;
            this.f14839f = Integer.valueOf(nullValue.getNumber());
            R();
            return this;
        }

        public c o0(int i9) {
            this.f14838e = 1;
            this.f14839f = Integer.valueOf(i9);
            R();
            return this;
        }

        public c q0(double d10) {
            this.f14838e = 2;
            this.f14839f = Double.valueOf(d10);
            R();
            return this;
        }

        public c r0(String str) {
            Objects.requireNonNull(str);
            this.f14838e = 3;
            this.f14839f = str;
            R();
            return this;
        }

        public c s0(Struct.b bVar) {
            q2<Struct, Struct.b, u2> q2Var = this.f14840g;
            if (q2Var == null) {
                this.f14839f = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            this.f14838e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f14838e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14838e = 0;
            b0();
        }
    }

    /* synthetic */ Value(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Value getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return v2.f15304e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Value parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Value parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Value> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Value)) {
            return super.equals(obj);
        }
        Value value = (Value) obj;
        if (getKindCase().equals(value.getKindCase())) {
            switch (this.kindCase_) {
                case 1:
                    if (getNullValueValue() != value.getNullValueValue()) {
                        return false;
                    }
                    break;
                case 2:
                    if (Double.doubleToLongBits(getNumberValue()) != Double.doubleToLongBits(value.getNumberValue())) {
                        return false;
                    }
                    break;
                case 3:
                    if (!getStringValue().equals(value.getStringValue())) {
                        return false;
                    }
                    break;
                case 4:
                    if (getBoolValue() != value.getBoolValue()) {
                        return false;
                    }
                    break;
                case 5:
                    if (!getStructValue().equals(value.getStructValue())) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getListValue().equals(value.getListValue())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(value.unknownFields);
        }
        return false;
    }

    public boolean getBoolValue() {
        if (this.kindCase_ == 4) {
            return ((Boolean) this.kind_).booleanValue();
        }
        return false;
    }

    public KindCase getKindCase() {
        return KindCase.forNumber(this.kindCase_);
    }

    public ListValue getListValue() {
        if (this.kindCase_ == 6) {
            return (ListValue) this.kind_;
        }
        return ListValue.getDefaultInstance();
    }

    public b1 getListValueOrBuilder() {
        if (this.kindCase_ == 6) {
            return (ListValue) this.kind_;
        }
        return ListValue.getDefaultInstance();
    }

    public NullValue getNullValue() {
        if (this.kindCase_ == 1) {
            NullValue valueOf = NullValue.valueOf(((Integer) this.kind_).intValue());
            return valueOf == null ? NullValue.UNRECOGNIZED : valueOf;
        }
        return NullValue.NULL_VALUE;
    }

    public int getNullValueValue() {
        if (this.kindCase_ == 1) {
            return ((Integer) this.kind_).intValue();
        }
        return 0;
    }

    public double getNumberValue() {
        if (this.kindCase_ == 2) {
            return ((Double) this.kind_).doubleValue();
        }
        return 0.0d;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Value> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.kindCase_ == 1 ? 0 + CodedOutputStream.l(1, ((Integer) this.kind_).intValue()) : 0;
        if (this.kindCase_ == 2) {
            l10 += CodedOutputStream.j(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            l10 += GeneratedMessageV3.computeStringSize(3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            l10 += CodedOutputStream.e(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            l10 += CodedOutputStream.G(5, (Struct) this.kind_);
        }
        if (this.kindCase_ == 6) {
            l10 += CodedOutputStream.G(6, (ListValue) this.kind_);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getStringValue() {
        String str = this.kindCase_ == 3 ? this.kind_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.kindCase_ == 3) {
            this.kind_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getStringValueBytes() {
        String str = this.kindCase_ == 3 ? this.kind_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.kindCase_ == 3) {
                this.kind_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public Struct getStructValue() {
        if (this.kindCase_ == 5) {
            return (Struct) this.kind_;
        }
        return Struct.getDefaultInstance();
    }

    public u2 getStructValueOrBuilder() {
        if (this.kindCase_ == 5) {
            return (Struct) this.kind_;
        }
        return Struct.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBoolValue() {
        return this.kindCase_ == 4;
    }

    public boolean hasListValue() {
        return this.kindCase_ == 6;
    }

    public boolean hasNullValue() {
        return this.kindCase_ == 1;
    }

    public boolean hasNumberValue() {
        return this.kindCase_ == 2;
    }

    public boolean hasStringValue() {
        return this.kindCase_ == 3;
    }

    public boolean hasStructValue() {
        return this.kindCase_ == 5;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int nullValueValue;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        switch (this.kindCase_) {
            case 1:
                i9 = ((hashCode * 37) + 1) * 53;
                nullValueValue = getNullValueValue();
                hashCode = i9 + nullValueValue;
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            case 2:
                i9 = ((hashCode * 37) + 2) * 53;
                nullValueValue = u0.i(Double.doubleToLongBits(getNumberValue()));
                hashCode = i9 + nullValueValue;
                int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode22;
                return hashCode22;
            case 3:
                i9 = ((hashCode * 37) + 3) * 53;
                nullValueValue = getStringValue().hashCode();
                hashCode = i9 + nullValueValue;
                int hashCode222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode222;
                return hashCode222;
            case 4:
                i9 = ((hashCode * 37) + 4) * 53;
                nullValueValue = u0.d(getBoolValue());
                hashCode = i9 + nullValueValue;
                int hashCode2222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2222;
                return hashCode2222;
            case 5:
                i9 = ((hashCode * 37) + 5) * 53;
                nullValueValue = getStructValue().hashCode();
                hashCode = i9 + nullValueValue;
                int hashCode22222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode22222;
                return hashCode22222;
            case 6:
                i9 = ((hashCode * 37) + 6) * 53;
                nullValueValue = getListValue().hashCode();
                hashCode = i9 + nullValueValue;
                int hashCode222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode222222;
                return hashCode222222;
            default:
                int hashCode2222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2222222;
                return hashCode2222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return v2.f15305f.d(Value.class, c.class);
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
        return new Value();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.kindCase_ == 1) {
            codedOutputStream.v0(1, ((Integer) this.kind_).intValue());
        }
        if (this.kindCase_ == 2) {
            codedOutputStream.t0(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            codedOutputStream.n0(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            codedOutputStream.L0(5, (Struct) this.kind_);
        }
        if (this.kindCase_ == 6) {
            codedOutputStream.L0(6, (ListValue) this.kind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Value(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Value value) {
        return DEFAULT_INSTANCE.toBuilder().g0(value);
    }

    public static Value parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Value(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Value parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Value parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Value getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Value parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Value parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Value() {
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Value parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Value parseFrom(InputStream inputStream) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Value(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            int u10 = pVar.u();
                            this.kindCase_ = 1;
                            this.kind_ = Integer.valueOf(u10);
                        } else if (L == 17) {
                            this.kind_ = Double.valueOf(pVar.t());
                            this.kindCase_ = 2;
                        } else if (L == 26) {
                            String K = pVar.K();
                            this.kindCase_ = 3;
                            this.kind_ = K;
                        } else if (L != 32) {
                            if (L == 42) {
                                Struct.b builder = this.kindCase_ == 5 ? ((Struct) this.kind_).toBuilder() : null;
                                o1 B = pVar.B(Struct.parser(), f0Var);
                                this.kind_ = B;
                                if (builder != null) {
                                    builder.i0((Struct) B);
                                    this.kind_ = builder.I();
                                }
                                this.kindCase_ = 5;
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ListValue.b builder2 = this.kindCase_ == 6 ? ((ListValue) this.kind_).toBuilder() : null;
                                o1 B2 = pVar.B(ListValue.parser(), f0Var);
                                this.kind_ = B2;
                                if (builder2 != null) {
                                    builder2.i0((ListValue) B2);
                                    this.kind_ = builder2.I();
                                }
                                this.kindCase_ = 6;
                            }
                        } else {
                            this.kind_ = Boolean.valueOf(pVar.r());
                            this.kindCase_ = 4;
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

    public static Value parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Value parseFrom(p pVar) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Value parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
