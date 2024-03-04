package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LabelDescriptor extends GeneratedMessageV3 implements i0 {
    public static final int DESCRIPTION_FIELD_NUMBER = 3;
    public static final int KEY_FIELD_NUMBER = 1;
    public static final int VALUE_TYPE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object description_;
    private volatile Object key_;
    private byte memoizedIsInitialized;
    private int valueType_;
    private static final LabelDescriptor DEFAULT_INSTANCE = new LabelDescriptor();
    private static final e2<LabelDescriptor> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum ValueType implements h2 {
        STRING(0),
        BOOL(1),
        INT64(2),
        UNRECOGNIZED(-1);
        
        public static final int BOOL_VALUE = 1;
        public static final int INT64_VALUE = 2;
        public static final int STRING_VALUE = 0;
        private final int value;
        private static final u0.d<ValueType> internalValueMap = new a();
        private static final ValueType[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<ValueType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ValueType a(int i9) {
                return ValueType.forNumber(i9);
            }
        }

        ValueType(int i9) {
            this.value = i9;
        }

        public static ValueType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return INT64;
                }
                return BOOL;
            }
            return STRING;
        }

        public static final Descriptors.d getDescriptor() {
            return LabelDescriptor.getDescriptor().k().get(0);
        }

        public static u0.d<ValueType> internalGetValueMap() {
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
        public static ValueType valueOf(int i9) {
            return forNumber(i9);
        }

        public static ValueType valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<LabelDescriptor> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LabelDescriptor m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new LabelDescriptor(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i0 {

        /* renamed from: e  reason: collision with root package name */
        private Object f10780e;

        /* renamed from: f  reason: collision with root package name */
        private int f10781f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10782g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j0.f11398b.d(LabelDescriptor.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LabelDescriptor build() {
            LabelDescriptor I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LabelDescriptor I() {
            LabelDescriptor labelDescriptor = new LabelDescriptor(this, (a) null);
            labelDescriptor.key_ = this.f10780e;
            labelDescriptor.valueType_ = this.f10781f;
            labelDescriptor.description_ = this.f10782g;
            Q();
            return labelDescriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LabelDescriptor getDefaultInstanceForType() {
            return LabelDescriptor.getDefaultInstance();
        }

        public b d0(LabelDescriptor labelDescriptor) {
            if (labelDescriptor == LabelDescriptor.getDefaultInstance()) {
                return this;
            }
            if (!labelDescriptor.getKey().isEmpty()) {
                this.f10780e = labelDescriptor.key_;
                R();
            }
            if (labelDescriptor.valueType_ != 0) {
                k0(labelDescriptor.getValueTypeValue());
            }
            if (!labelDescriptor.getDescription().isEmpty()) {
                this.f10782g = labelDescriptor.description_;
                R();
            }
            z(((GeneratedMessageV3) labelDescriptor).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.LabelDescriptor.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.LabelDescriptor.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.LabelDescriptor r3 = (com.google.api.LabelDescriptor) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.api.LabelDescriptor r4 = (com.google.api.LabelDescriptor) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.LabelDescriptor.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.LabelDescriptor$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof LabelDescriptor) {
                return d0((LabelDescriptor) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j0.f11397a;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        public b k0(int i9) {
            this.f10781f = i9;
            R();
            return this;
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10780e = "";
            this.f10781f = 0;
            this.f10782g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10780e = "";
            this.f10781f = 0;
            this.f10782g = "";
            b0();
        }
    }

    /* synthetic */ LabelDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LabelDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j0.f11397a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LabelDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LabelDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LabelDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LabelDescriptor> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LabelDescriptor)) {
            return super.equals(obj);
        }
        LabelDescriptor labelDescriptor = (LabelDescriptor) obj;
        return getKey().equals(labelDescriptor.getKey()) && this.valueType_ == labelDescriptor.valueType_ && getDescription().equals(labelDescriptor.getDescription()) && this.unknownFields.equals(labelDescriptor.unknownFields);
    }

    public String getDescription() {
        Object obj = this.description_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.description_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDescriptionBytes() {
        Object obj = this.description_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.description_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getKey() {
        Object obj = this.key_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.key_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getKeyBytes() {
        Object obj = this.key_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.key_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LabelDescriptor> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.key_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.key_);
        if (this.valueType_ != ValueType.STRING.getNumber()) {
            computeStringSize += CodedOutputStream.l(2, this.valueType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.description_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public ValueType getValueType() {
        ValueType valueOf = ValueType.valueOf(this.valueType_);
        return valueOf == null ? ValueType.UNRECOGNIZED : valueOf;
    }

    public int getValueTypeValue() {
        return this.valueType_;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getKey().hashCode()) * 37) + 2) * 53) + this.valueType_) * 37) + 3) * 53) + getDescription().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j0.f11398b.d(LabelDescriptor.class, b.class);
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
        return new LabelDescriptor();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.key_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.key_);
        }
        if (this.valueType_ != ValueType.STRING.getNumber()) {
            codedOutputStream.v0(2, this.valueType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.description_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LabelDescriptor(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LabelDescriptor labelDescriptor) {
        return DEFAULT_INSTANCE.toBuilder().d0(labelDescriptor);
    }

    public static LabelDescriptor parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (LabelDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LabelDescriptor parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LabelDescriptor(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LabelDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LabelDescriptor getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static LabelDescriptor parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LabelDescriptor() {
        this.memoizedIsInitialized = (byte) -1;
        this.key_ = "";
        this.valueType_ = 0;
        this.description_ = "";
    }

    public static LabelDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LabelDescriptor parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LabelDescriptor parseFrom(InputStream inputStream) throws IOException {
        return (LabelDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LabelDescriptor parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (LabelDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LabelDescriptor parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (LabelDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private LabelDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.key_ = pVar.K();
                        } else if (L == 16) {
                            this.valueType_ = pVar.u();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.description_ = pVar.K();
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

    public static LabelDescriptor parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (LabelDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
