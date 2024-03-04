package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public final class Any extends GeneratedMessageV3 implements f {
    private static final Any DEFAULT_INSTANCE = new Any();
    private static final e2<Any> PARSER = new a();
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile l1 cachedUnpackValue;
    private byte memoizedIsInitialized;
    private volatile Object typeUrl_;
    private ByteString value_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends c<Any> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Any m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Any(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private Object f14273e;

        /* renamed from: f  reason: collision with root package name */
        private ByteString f14274f;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f14962b.d(Any.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Any build() {
            Any I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Any I() {
            Any any = new Any(this, (a) null);
            any.typeUrl_ = this.f14273e;
            any.value_ = this.f14274f;
            Q();
            return any;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Any getDefaultInstanceForType() {
            return Any.getDefaultInstance();
        }

        public b d0(Any any) {
            if (any == Any.getDefaultInstance()) {
                return this;
            }
            if (!any.getTypeUrl().isEmpty()) {
                this.f14273e = any.typeUrl_;
                R();
            }
            if (any.getValue() != ByteString.EMPTY) {
                l0(any.getValue());
            }
            z(any.unknownFields);
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
        public com.google.protobuf.Any.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Any.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Any r3 = (com.google.protobuf.Any) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.protobuf.Any r4 = (com.google.protobuf.Any) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Any.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Any$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Any) {
                return d0((Any) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f14961a;
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

        public b j0(String str) {
            Objects.requireNonNull(str);
            this.f14273e = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        public b l0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f14274f = byteString;
            R();
            return this;
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f14273e = "";
            this.f14274f = ByteString.EMPTY;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14273e = "";
            this.f14274f = ByteString.EMPTY;
            b0();
        }
    }

    /* synthetic */ Any(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Any getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f14961a;
    }

    private static String getTypeNameFromTypeUrl(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        return lastIndexOf == -1 ? "" : str.substring(lastIndexOf + 1);
    }

    private static String getTypeUrl(String str, Descriptors.b bVar) {
        if (str.endsWith(FileUtils.RES_PREFIX_STORAGE)) {
            return str + bVar.c();
        }
        return str + FileUtils.RES_PREFIX_STORAGE + bVar.c();
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static <T extends l1> Any pack(T t10) {
        return newBuilder().j0(getTypeUrl("type.googleapis.com", t10.getDescriptorForType())).l0(t10.toByteString()).build();
    }

    public static Any parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Any) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Any parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Any> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Any)) {
            return super.equals(obj);
        }
        Any any = (Any) obj;
        return getTypeUrl().equals(any.getTypeUrl()) && getValue().equals(any.getValue()) && this.unknownFields.equals(any.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Any> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.typeUrl_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.typeUrl_);
        if (!this.value_.isEmpty()) {
            computeStringSize += CodedOutputStream.h(2, this.value_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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

    public ByteString getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTypeUrl().hashCode()) * 37) + 2) * 53) + getValue().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f14962b.d(Any.class, b.class);
    }

    public <T extends l1> boolean is(Class<T> cls) {
        return getTypeNameFromTypeUrl(getTypeUrl()).equals(((l1) u0.c(cls)).getDescriptorForType().c());
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
        return new Any();
    }

    public <T extends l1> T unpack(Class<T> cls) throws InvalidProtocolBufferException {
        boolean z10;
        if (this.cachedUnpackValue == null) {
            z10 = false;
        } else if (this.cachedUnpackValue.getClass() == cls) {
            return (T) this.cachedUnpackValue;
        } else {
            z10 = true;
        }
        if (!z10 && is(cls)) {
            T t10 = (T) ((l1) u0.c(cls)).getParserForType().c(getValue());
            this.cachedUnpackValue = t10;
            return t10;
        }
        throw new InvalidProtocolBufferException("Type of the Any message does not match the given class.");
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.typeUrl_);
        }
        if (!this.value_.isEmpty()) {
            codedOutputStream.r0(2, this.value_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Any(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Any any) {
        return DEFAULT_INSTANCE.toBuilder().d0(any);
    }

    public static Any parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Any(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Any parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Any) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Any parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Any getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static Any parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Any() {
        this.memoizedIsInitialized = (byte) -1;
        this.typeUrl_ = "";
        this.value_ = ByteString.EMPTY;
    }

    public static Any parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static <T extends l1> Any pack(T t10, String str) {
        return newBuilder().j0(getTypeUrl(str, t10.getDescriptorForType())).l0(t10.toByteString()).build();
    }

    public static Any parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Any parseFrom(InputStream inputStream) throws IOException {
        return (Any) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Any(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.typeUrl_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.value_ = pVar.s();
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

    public static Any parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Any) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Any parseFrom(p pVar) throws IOException {
        return (Any) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Any parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Any) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
