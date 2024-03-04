package io.grpc.xds.shaded.com.github.udpa.udpa.type.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class TypedStruct extends GeneratedMessageV3 implements r1 {
    private static final TypedStruct DEFAULT_INSTANCE = new TypedStruct();
    private static final e2<TypedStruct> PARSER = new a();
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object typeUrl_;
    private Struct value_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends c<TypedStruct> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TypedStruct m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TypedStruct(pVar, f0Var, null);
        }
    }

    /* loaded from: classes4.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f45473e;

        /* renamed from: f  reason: collision with root package name */
        private Struct f45474f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f45475g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.a.f45477b.d(TypedStruct.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TypedStruct build() {
            TypedStruct I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TypedStruct I() {
            TypedStruct typedStruct = new TypedStruct(this, (a) null);
            typedStruct.typeUrl_ = this.f45473e;
            q2<Struct, Struct.b, u2> q2Var = this.f45475g;
            if (q2Var == null) {
                typedStruct.value_ = this.f45474f;
            } else {
                typedStruct.value_ = q2Var.b();
            }
            Q();
            return typedStruct;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TypedStruct getDefaultInstanceForType() {
            return TypedStruct.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct r3 = (io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct r4 = (io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.TypedStruct$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TypedStruct) {
                return g0((TypedStruct) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(TypedStruct typedStruct) {
            if (typedStruct == TypedStruct.getDefaultInstance()) {
                return this;
            }
            if (!typedStruct.getTypeUrl().isEmpty()) {
                this.f45473e = typedStruct.typeUrl_;
                R();
            }
            if (typedStruct.hasValue()) {
                i0(typedStruct.getValue());
            }
            z(((GeneratedMessageV3) typedStruct).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.a.f45476a;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f45475g;
            if (q2Var == null) {
                Struct struct2 = this.f45474f;
                if (struct2 != null) {
                    this.f45474f = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f45474f = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
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
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f45473e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45473e = "";
            b0();
        }
    }

    /* synthetic */ TypedStruct(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TypedStruct getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.a.f45476a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TypedStruct parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TypedStruct) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TypedStruct parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TypedStruct> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TypedStruct)) {
            return super.equals(obj);
        }
        TypedStruct typedStruct = (TypedStruct) obj;
        if (getTypeUrl().equals(typedStruct.getTypeUrl()) && hasValue() == typedStruct.hasValue()) {
            return (!hasValue() || getValue().equals(typedStruct.getValue())) && this.unknownFields.equals(typedStruct.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TypedStruct> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.typeUrl_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.typeUrl_);
        if (this.value_ != null) {
            computeStringSize += CodedOutputStream.G(2, getValue());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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

    public Struct getValue() {
        Struct struct = this.value_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getValueOrBuilder() {
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTypeUrl().hashCode();
        if (hasValue()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getValue().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.github.udpa.udpa.type.v1.a.f45477b.d(TypedStruct.class, b.class);
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
        return new TypedStruct();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.typeUrl_);
        }
        if (this.value_ != null) {
            codedOutputStream.L0(2, getValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TypedStruct(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TypedStruct typedStruct) {
        return DEFAULT_INSTANCE.toBuilder().g0(typedStruct);
    }

    public static TypedStruct parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TypedStruct(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TypedStruct parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TypedStruct) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TypedStruct parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TypedStruct getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static TypedStruct parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TypedStruct() {
        this.memoizedIsInitialized = (byte) -1;
        this.typeUrl_ = "";
    }

    public static TypedStruct parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TypedStruct parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TypedStruct parseFrom(InputStream inputStream) throws IOException {
        return (TypedStruct) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private TypedStruct(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.typeUrl_ = pVar.K();
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Struct struct = this.value_;
                            Struct.b builder = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.value_ = struct2;
                            if (builder != null) {
                                builder.i0(struct2);
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

    public static TypedStruct parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TypedStruct) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TypedStruct parseFrom(p pVar) throws IOException {
        return (TypedStruct) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TypedStruct parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TypedStruct) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
