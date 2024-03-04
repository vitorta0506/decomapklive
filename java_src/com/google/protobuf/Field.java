package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Option;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Field extends GeneratedMessageV3 implements n0 {
    public static final int CARDINALITY_FIELD_NUMBER = 2;
    public static final int DEFAULT_VALUE_FIELD_NUMBER = 11;
    public static final int JSON_NAME_FIELD_NUMBER = 10;
    public static final int KIND_FIELD_NUMBER = 1;
    public static final int NAME_FIELD_NUMBER = 4;
    public static final int NUMBER_FIELD_NUMBER = 3;
    public static final int ONEOF_INDEX_FIELD_NUMBER = 7;
    public static final int OPTIONS_FIELD_NUMBER = 9;
    public static final int PACKED_FIELD_NUMBER = 8;
    public static final int TYPE_URL_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int cardinality_;
    private volatile Object defaultValue_;
    private volatile Object jsonName_;
    private int kind_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int number_;
    private int oneofIndex_;
    private List<Option> options_;
    private boolean packed_;
    private volatile Object typeUrl_;
    private static final Field DEFAULT_INSTANCE = new Field();
    private static final e2<Field> PARSER = new a();

    /* loaded from: classes3.dex */
    public enum Cardinality implements h2 {
        CARDINALITY_UNKNOWN(0),
        CARDINALITY_OPTIONAL(1),
        CARDINALITY_REQUIRED(2),
        CARDINALITY_REPEATED(3),
        UNRECOGNIZED(-1);
        
        public static final int CARDINALITY_OPTIONAL_VALUE = 1;
        public static final int CARDINALITY_REPEATED_VALUE = 3;
        public static final int CARDINALITY_REQUIRED_VALUE = 2;
        public static final int CARDINALITY_UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<Cardinality> internalValueMap = new a();
        private static final Cardinality[] VALUES = values();

        /* loaded from: classes3.dex */
        static class a implements u0.d<Cardinality> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Cardinality a(int i9) {
                return Cardinality.forNumber(i9);
            }
        }

        Cardinality(int i9) {
            this.value = i9;
        }

        public static Cardinality forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return CARDINALITY_REPEATED;
                    }
                    return CARDINALITY_REQUIRED;
                }
                return CARDINALITY_OPTIONAL;
            }
            return CARDINALITY_UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return Field.getDescriptor().k().get(1);
        }

        public static u0.d<Cardinality> internalGetValueMap() {
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
        public static Cardinality valueOf(int i9) {
            return forNumber(i9);
        }

        public static Cardinality valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes3.dex */
    public enum Kind implements h2 {
        TYPE_UNKNOWN(0),
        TYPE_DOUBLE(1),
        TYPE_FLOAT(2),
        TYPE_INT64(3),
        TYPE_UINT64(4),
        TYPE_INT32(5),
        TYPE_FIXED64(6),
        TYPE_FIXED32(7),
        TYPE_BOOL(8),
        TYPE_STRING(9),
        TYPE_GROUP(10),
        TYPE_MESSAGE(11),
        TYPE_BYTES(12),
        TYPE_UINT32(13),
        TYPE_ENUM(14),
        TYPE_SFIXED32(15),
        TYPE_SFIXED64(16),
        TYPE_SINT32(17),
        TYPE_SINT64(18),
        UNRECOGNIZED(-1);
        
        public static final int TYPE_BOOL_VALUE = 8;
        public static final int TYPE_BYTES_VALUE = 12;
        public static final int TYPE_DOUBLE_VALUE = 1;
        public static final int TYPE_ENUM_VALUE = 14;
        public static final int TYPE_FIXED32_VALUE = 7;
        public static final int TYPE_FIXED64_VALUE = 6;
        public static final int TYPE_FLOAT_VALUE = 2;
        public static final int TYPE_GROUP_VALUE = 10;
        public static final int TYPE_INT32_VALUE = 5;
        public static final int TYPE_INT64_VALUE = 3;
        public static final int TYPE_MESSAGE_VALUE = 11;
        public static final int TYPE_SFIXED32_VALUE = 15;
        public static final int TYPE_SFIXED64_VALUE = 16;
        public static final int TYPE_SINT32_VALUE = 17;
        public static final int TYPE_SINT64_VALUE = 18;
        public static final int TYPE_STRING_VALUE = 9;
        public static final int TYPE_UINT32_VALUE = 13;
        public static final int TYPE_UINT64_VALUE = 4;
        public static final int TYPE_UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<Kind> internalValueMap = new a();
        private static final Kind[] VALUES = values();

        /* loaded from: classes3.dex */
        static class a implements u0.d<Kind> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Kind a(int i9) {
                return Kind.forNumber(i9);
            }
        }

        Kind(int i9) {
            this.value = i9;
        }

        public static Kind forNumber(int i9) {
            switch (i9) {
                case 0:
                    return TYPE_UNKNOWN;
                case 1:
                    return TYPE_DOUBLE;
                case 2:
                    return TYPE_FLOAT;
                case 3:
                    return TYPE_INT64;
                case 4:
                    return TYPE_UINT64;
                case 5:
                    return TYPE_INT32;
                case 6:
                    return TYPE_FIXED64;
                case 7:
                    return TYPE_FIXED32;
                case 8:
                    return TYPE_BOOL;
                case 9:
                    return TYPE_STRING;
                case 10:
                    return TYPE_GROUP;
                case 11:
                    return TYPE_MESSAGE;
                case 12:
                    return TYPE_BYTES;
                case 13:
                    return TYPE_UINT32;
                case 14:
                    return TYPE_ENUM;
                case 15:
                    return TYPE_SFIXED32;
                case 16:
                    return TYPE_SFIXED64;
                case 17:
                    return TYPE_SINT32;
                case 18:
                    return TYPE_SINT64;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return Field.getDescriptor().k().get(0);
        }

        public static u0.d<Kind> internalGetValueMap() {
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
        public static Kind valueOf(int i9) {
            return forNumber(i9);
        }

        public static Kind valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes3.dex */
    public static class a extends c<Field> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Field m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Field(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements n0 {

        /* renamed from: e  reason: collision with root package name */
        private int f14641e;

        /* renamed from: f  reason: collision with root package name */
        private int f14642f;

        /* renamed from: g  reason: collision with root package name */
        private int f14643g;

        /* renamed from: h  reason: collision with root package name */
        private int f14644h;

        /* renamed from: i  reason: collision with root package name */
        private Object f14645i;

        /* renamed from: j  reason: collision with root package name */
        private Object f14646j;

        /* renamed from: k  reason: collision with root package name */
        private int f14647k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f14648l;

        /* renamed from: m  reason: collision with root package name */
        private List<Option> f14649m;

        /* renamed from: n  reason: collision with root package name */
        private l2<Option, Option.b, d2> f14650n;

        /* renamed from: o  reason: collision with root package name */
        private Object f14651o;

        /* renamed from: p  reason: collision with root package name */
        private Object f14652p;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f14641e & 1) == 0) {
                this.f14649m = new ArrayList(this.f14649m);
                this.f14641e |= 1;
            }
        }

        private l2<Option, Option.b, d2> d0() {
            if (this.f14650n == null) {
                this.f14650n = new l2<>(this.f14649m, (this.f14641e & 1) != 0, H(), O());
                this.f14649m = null;
            }
            return this.f14650n;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c3.f14873d.d(Field.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Field build() {
            Field I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Field I() {
            Field field = new Field(this, (a) null);
            field.kind_ = this.f14642f;
            field.cardinality_ = this.f14643g;
            field.number_ = this.f14644h;
            field.name_ = this.f14645i;
            field.typeUrl_ = this.f14646j;
            field.oneofIndex_ = this.f14647k;
            field.packed_ = this.f14648l;
            l2<Option, Option.b, d2> l2Var = this.f14650n;
            if (l2Var == null) {
                if ((this.f14641e & 1) != 0) {
                    this.f14649m = Collections.unmodifiableList(this.f14649m);
                    this.f14641e &= -2;
                }
                field.options_ = this.f14649m;
            } else {
                field.options_ = l2Var.e();
            }
            field.jsonName_ = this.f14651o;
            field.defaultValue_ = this.f14652p;
            Q();
            return field;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Field getDefaultInstanceForType() {
            return Field.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.Field.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Field.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Field r3 = (com.google.protobuf.Field) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.protobuf.Field r4 = (com.google.protobuf.Field) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Field.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Field$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c3.f14872c;
        }

        public b h0(Field field) {
            if (field == Field.getDefaultInstance()) {
                return this;
            }
            if (field.kind_ != 0) {
                m0(field.getKindValue());
            }
            if (field.cardinality_ != 0) {
                k0(field.getCardinalityValue());
            }
            if (field.getNumber() != 0) {
                n0(field.getNumber());
            }
            if (!field.getName().isEmpty()) {
                this.f14645i = field.name_;
                R();
            }
            if (!field.getTypeUrl().isEmpty()) {
                this.f14646j = field.typeUrl_;
                R();
            }
            if (field.getOneofIndex() != 0) {
                o0(field.getOneofIndex());
            }
            if (field.getPacked()) {
                q0(field.getPacked());
            }
            if (this.f14650n == null) {
                if (!field.options_.isEmpty()) {
                    if (this.f14649m.isEmpty()) {
                        this.f14649m = field.options_;
                        this.f14641e &= -2;
                    } else {
                        a0();
                        this.f14649m.addAll(field.options_);
                    }
                    R();
                }
            } else if (!field.options_.isEmpty()) {
                if (this.f14650n.k()) {
                    this.f14650n.f();
                    this.f14650n = null;
                    this.f14649m = field.options_;
                    this.f14641e &= -2;
                    this.f14650n = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f14650n.b(field.options_);
                }
            }
            if (!field.getJsonName().isEmpty()) {
                this.f14651o = field.jsonName_;
                R();
            }
            if (!field.getDefaultValue().isEmpty()) {
                this.f14652p = field.defaultValue_;
                R();
            }
            z(field.unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Field) {
                return h0((Field) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(int i9) {
            this.f14643g = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b m0(int i9) {
            this.f14642f = i9;
            R();
            return this;
        }

        public b n0(int i9) {
            this.f14644h = i9;
            R();
            return this;
        }

        public b o0(int i9) {
            this.f14647k = i9;
            R();
            return this;
        }

        public b q0(boolean z10) {
            this.f14648l = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f14642f = 0;
            this.f14643g = 0;
            this.f14645i = "";
            this.f14646j = "";
            this.f14649m = Collections.emptyList();
            this.f14651o = "";
            this.f14652p = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14642f = 0;
            this.f14643g = 0;
            this.f14645i = "";
            this.f14646j = "";
            this.f14649m = Collections.emptyList();
            this.f14651o = "";
            this.f14652p = "";
            e0();
        }
    }

    /* synthetic */ Field(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Field getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c3.f14872c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Field parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Field) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Field parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Field> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Field)) {
            return super.equals(obj);
        }
        Field field = (Field) obj;
        return this.kind_ == field.kind_ && this.cardinality_ == field.cardinality_ && getNumber() == field.getNumber() && getName().equals(field.getName()) && getTypeUrl().equals(field.getTypeUrl()) && getOneofIndex() == field.getOneofIndex() && getPacked() == field.getPacked() && getOptionsList().equals(field.getOptionsList()) && getJsonName().equals(field.getJsonName()) && getDefaultValue().equals(field.getDefaultValue()) && this.unknownFields.equals(field.unknownFields);
    }

    public Cardinality getCardinality() {
        Cardinality valueOf = Cardinality.valueOf(this.cardinality_);
        return valueOf == null ? Cardinality.UNRECOGNIZED : valueOf;
    }

    public int getCardinalityValue() {
        return this.cardinality_;
    }

    public String getDefaultValue() {
        Object obj = this.defaultValue_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.defaultValue_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDefaultValueBytes() {
        Object obj = this.defaultValue_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.defaultValue_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getJsonName() {
        Object obj = this.jsonName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.jsonName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getJsonNameBytes() {
        Object obj = this.jsonName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jsonName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Kind getKind() {
        Kind valueOf = Kind.valueOf(this.kind_);
        return valueOf == null ? Kind.UNRECOGNIZED : valueOf;
    }

    public int getKindValue() {
        return this.kind_;
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int getNumber() {
        return this.number_;
    }

    public int getOneofIndex() {
        return this.oneofIndex_;
    }

    public Option getOptions(int i9) {
        return this.options_.get(i9);
    }

    public int getOptionsCount() {
        return this.options_.size();
    }

    public List<Option> getOptionsList() {
        return this.options_;
    }

    public d2 getOptionsOrBuilder(int i9) {
        return this.options_.get(i9);
    }

    public List<? extends d2> getOptionsOrBuilderList() {
        return this.options_;
    }

    public boolean getPacked() {
        return this.packed_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Field> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.kind_ != Kind.TYPE_UNKNOWN.getNumber() ? CodedOutputStream.l(1, this.kind_) + 0 : 0;
        if (this.cardinality_ != Cardinality.CARDINALITY_UNKNOWN.getNumber()) {
            l10 += CodedOutputStream.l(2, this.cardinality_);
        }
        int i10 = this.number_;
        if (i10 != 0) {
            l10 += CodedOutputStream.x(3, i10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            l10 += GeneratedMessageV3.computeStringSize(4, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            l10 += GeneratedMessageV3.computeStringSize(6, this.typeUrl_);
        }
        int i11 = this.oneofIndex_;
        if (i11 != 0) {
            l10 += CodedOutputStream.x(7, i11);
        }
        boolean z10 = this.packed_;
        if (z10) {
            l10 += CodedOutputStream.e(8, z10);
        }
        for (int i12 = 0; i12 < this.options_.size(); i12++) {
            l10 += CodedOutputStream.G(9, this.options_.get(i12));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.jsonName_)) {
            l10 += GeneratedMessageV3.computeStringSize(10, this.jsonName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
            l10 += GeneratedMessageV3.computeStringSize(11, this.defaultValue_);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTypeUrl() {
        Object obj = this.typeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.typeUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeUrlBytes() {
        Object obj = this.typeUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.typeUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        int hashCode = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.kind_) * 37) + 2) * 53) + this.cardinality_) * 37) + 3) * 53) + getNumber()) * 37) + 4) * 53) + getName().hashCode()) * 37) + 6) * 53) + getTypeUrl().hashCode()) * 37) + 7) * 53) + getOneofIndex()) * 37) + 8) * 53) + u0.d(getPacked());
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 9) * 53) + getOptionsList().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 10) * 53) + getJsonName().hashCode()) * 37) + 11) * 53) + getDefaultValue().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c3.f14873d.d(Field.class, b.class);
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
        return new Field();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.kind_ != Kind.TYPE_UNKNOWN.getNumber()) {
            codedOutputStream.v0(1, this.kind_);
        }
        if (this.cardinality_ != Cardinality.CARDINALITY_UNKNOWN.getNumber()) {
            codedOutputStream.v0(2, this.cardinality_);
        }
        int i9 = this.number_;
        if (i9 != 0) {
            codedOutputStream.H0(3, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.typeUrl_);
        }
        int i10 = this.oneofIndex_;
        if (i10 != 0) {
            codedOutputStream.H0(7, i10);
        }
        boolean z10 = this.packed_;
        if (z10) {
            codedOutputStream.n0(8, z10);
        }
        for (int i11 = 0; i11 < this.options_.size(); i11++) {
            codedOutputStream.L0(9, this.options_.get(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.jsonName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.jsonName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.defaultValue_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Field(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Field field) {
        return DEFAULT_INSTANCE.toBuilder().h0(field);
    }

    public static Field parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Field(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Field parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Field) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Field parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Field getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Field parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Field() {
        this.memoizedIsInitialized = (byte) -1;
        this.kind_ = 0;
        this.cardinality_ = 0;
        this.name_ = "";
        this.typeUrl_ = "";
        this.options_ = Collections.emptyList();
        this.jsonName_ = "";
        this.defaultValue_ = "";
    }

    public static Field parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Field parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Field parseFrom(InputStream inputStream) throws IOException {
        return (Field) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Field parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Field) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Field parseFrom(p pVar) throws IOException {
        return (Field) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Field parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Field) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Field(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 8:
                            this.kind_ = pVar.u();
                            continue;
                        case 16:
                            this.cardinality_ = pVar.u();
                            continue;
                        case 24:
                            this.number_ = pVar.z();
                            continue;
                        case 34:
                            this.name_ = pVar.K();
                            continue;
                        case 50:
                            this.typeUrl_ = pVar.K();
                            continue;
                        case 56:
                            this.oneofIndex_ = pVar.z();
                            continue;
                        case 64:
                            this.packed_ = pVar.r();
                            continue;
                        case 74:
                            if (!(z11 & true)) {
                                this.options_ = new ArrayList();
                                z11 |= true;
                            }
                            this.options_.add(pVar.B(Option.parser(), f0Var));
                            continue;
                        case 82:
                            this.jsonName_ = pVar.K();
                            continue;
                        case 90:
                            this.defaultValue_ = pVar.K();
                            continue;
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
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
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
