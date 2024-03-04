package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.CustomClass;
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
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class CreateCustomClassRequest extends GeneratedMessageV3 implements r1 {
    public static final int CUSTOM_CLASS_FIELD_NUMBER = 3;
    public static final int CUSTOM_CLASS_ID_FIELD_NUMBER = 2;
    public static final int PARENT_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object customClassId_;
    private CustomClass customClass_;
    private byte memoizedIsInitialized;
    private volatile Object parent_;
    private static final CreateCustomClassRequest DEFAULT_INSTANCE = new CreateCustomClassRequest();
    private static final e2<CreateCustomClassRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<CreateCustomClassRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CreateCustomClassRequest m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CreateCustomClassRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f12082e;

        /* renamed from: f  reason: collision with root package name */
        private Object f12083f;

        /* renamed from: g  reason: collision with root package name */
        private CustomClass f12084g;

        /* renamed from: h  reason: collision with root package name */
        private q2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> f12085h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f12274n.d(CreateCustomClassRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CreateCustomClassRequest build() {
            CreateCustomClassRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CreateCustomClassRequest I() {
            CreateCustomClassRequest createCustomClassRequest = new CreateCustomClassRequest(this, (a) null);
            createCustomClassRequest.parent_ = this.f12082e;
            createCustomClassRequest.customClassId_ = this.f12083f;
            q2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> q2Var = this.f12085h;
            if (q2Var == null) {
                createCustomClassRequest.customClass_ = this.f12084g;
            } else {
                createCustomClassRequest.customClass_ = q2Var.b();
            }
            Q();
            return createCustomClassRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public CreateCustomClassRequest getDefaultInstanceForType() {
            return CreateCustomClassRequest.getDefaultInstance();
        }

        public b d0(CustomClass customClass) {
            q2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> q2Var = this.f12085h;
            if (q2Var == null) {
                CustomClass customClass2 = this.f12084g;
                if (customClass2 != null) {
                    this.f12084g = CustomClass.newBuilder(customClass2).g0(customClass).I();
                } else {
                    this.f12084g = customClass;
                }
                R();
            } else {
                q2Var.e(customClass);
            }
            return this;
        }

        public b e0(CreateCustomClassRequest createCustomClassRequest) {
            if (createCustomClassRequest == CreateCustomClassRequest.getDefaultInstance()) {
                return this;
            }
            if (!createCustomClassRequest.getParent().isEmpty()) {
                this.f12082e = createCustomClassRequest.parent_;
                R();
            }
            if (!createCustomClassRequest.getCustomClassId().isEmpty()) {
                this.f12083f = createCustomClassRequest.customClassId_;
                R();
            }
            if (createCustomClassRequest.hasCustomClass()) {
                d0(createCustomClassRequest.getCustomClass());
            }
            z(((GeneratedMessageV3) createCustomClassRequest).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest r3 = (com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.e0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest r4 = (com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.e0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.CreateCustomClassRequest$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f12273m;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof CreateCustomClassRequest) {
                return e0((CreateCustomClassRequest) l1Var);
            }
            super.P0(l1Var);
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

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12082e = "";
            this.f12083f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12082e = "";
            this.f12083f = "";
            b0();
        }
    }

    /* synthetic */ CreateCustomClassRequest(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CreateCustomClassRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f12273m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CreateCustomClassRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CreateCustomClassRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CreateCustomClassRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CreateCustomClassRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CreateCustomClassRequest)) {
            return super.equals(obj);
        }
        CreateCustomClassRequest createCustomClassRequest = (CreateCustomClassRequest) obj;
        if (getParent().equals(createCustomClassRequest.getParent()) && getCustomClassId().equals(createCustomClassRequest.getCustomClassId()) && hasCustomClass() == createCustomClassRequest.hasCustomClass()) {
            return (!hasCustomClass() || getCustomClass().equals(createCustomClassRequest.getCustomClass())) && this.unknownFields.equals(createCustomClassRequest.unknownFields);
        }
        return false;
    }

    public CustomClass getCustomClass() {
        CustomClass customClass = this.customClass_;
        return customClass == null ? CustomClass.getDefaultInstance() : customClass;
    }

    public String getCustomClassId() {
        Object obj = this.customClassId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.customClassId_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCustomClassIdBytes() {
        Object obj = this.customClassId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.customClassId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public com.google.cloud.speech.v1p1beta1.a getCustomClassOrBuilder() {
        return getCustomClass();
    }

    public String getParent() {
        Object obj = this.parent_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.parent_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getParentBytes() {
        Object obj = this.parent_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.parent_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CreateCustomClassRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.parent_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.parent_);
        if (!GeneratedMessageV3.isStringEmpty(this.customClassId_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.customClassId_);
        }
        if (this.customClass_ != null) {
            computeStringSize += CodedOutputStream.G(3, getCustomClass());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCustomClass() {
        return this.customClass_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getParent().hashCode()) * 37) + 2) * 53) + getCustomClassId().hashCode();
        if (hasCustomClass()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getCustomClass().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f12274n.d(CreateCustomClassRequest.class, b.class);
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
        return new CreateCustomClassRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.parent_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.parent_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.customClassId_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.customClassId_);
        }
        if (this.customClass_ != null) {
            codedOutputStream.L0(3, getCustomClass());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CreateCustomClassRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CreateCustomClassRequest createCustomClassRequest) {
        return DEFAULT_INSTANCE.toBuilder().e0(createCustomClassRequest);
    }

    public static CreateCustomClassRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CreateCustomClassRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CreateCustomClassRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CreateCustomClassRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CreateCustomClassRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CreateCustomClassRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
    }

    public static CreateCustomClassRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private CreateCustomClassRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.parent_ = "";
        this.customClassId_ = "";
    }

    public static CreateCustomClassRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static CreateCustomClassRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CreateCustomClassRequest parseFrom(InputStream inputStream) throws IOException {
        return (CreateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static CreateCustomClassRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CreateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private CreateCustomClassRequest(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.parent_ = pVar.K();
                        } else if (L == 18) {
                            this.customClassId_ = pVar.K();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            CustomClass customClass = this.customClass_;
                            CustomClass.b builder = customClass != null ? customClass.toBuilder() : null;
                            CustomClass customClass2 = (CustomClass) pVar.B(CustomClass.parser(), f0Var);
                            this.customClass_ = customClass2;
                            if (builder != null) {
                                builder.g0(customClass2);
                                this.customClass_ = builder.I();
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

    public static CreateCustomClassRequest parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (CreateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CreateCustomClassRequest parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (CreateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
