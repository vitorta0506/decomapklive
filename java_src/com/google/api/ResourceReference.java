package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ResourceReference extends GeneratedMessageV3 implements r1 {
    public static final int CHILD_TYPE_FIELD_NUMBER = 2;
    private static final ResourceReference DEFAULT_INSTANCE = new ResourceReference();
    private static final e2<ResourceReference> PARSER = new a();
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object childType_;
    private byte memoizedIsInitialized;
    private volatile Object type_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ResourceReference> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ResourceReference m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ResourceReference(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f10881e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10882f;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c1.f10976g.d(ResourceReference.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ResourceReference build() {
            ResourceReference I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ResourceReference I() {
            ResourceReference resourceReference = new ResourceReference(this, (a) null);
            resourceReference.type_ = this.f10881e;
            resourceReference.childType_ = this.f10882f;
            Q();
            return resourceReference;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ResourceReference getDefaultInstanceForType() {
            return ResourceReference.getDefaultInstance();
        }

        public b d0(ResourceReference resourceReference) {
            if (resourceReference == ResourceReference.getDefaultInstance()) {
                return this;
            }
            if (!resourceReference.getType().isEmpty()) {
                this.f10881e = resourceReference.type_;
                R();
            }
            if (!resourceReference.getChildType().isEmpty()) {
                this.f10882f = resourceReference.childType_;
                R();
            }
            z(((GeneratedMessageV3) resourceReference).unknownFields);
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
        public com.google.api.ResourceReference.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.ResourceReference.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.ResourceReference r3 = (com.google.api.ResourceReference) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.ResourceReference r4 = (com.google.api.ResourceReference) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.ResourceReference.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.ResourceReference$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof ResourceReference) {
                return d0((ResourceReference) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c1.f10975f;
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

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10881e = "";
            this.f10882f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10881e = "";
            this.f10882f = "";
            b0();
        }
    }

    /* synthetic */ ResourceReference(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ResourceReference getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c1.f10975f;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResourceReference parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ResourceReference) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ResourceReference parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ResourceReference> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResourceReference)) {
            return super.equals(obj);
        }
        ResourceReference resourceReference = (ResourceReference) obj;
        return getType().equals(resourceReference.getType()) && getChildType().equals(resourceReference.getChildType()) && this.unknownFields.equals(resourceReference.unknownFields);
    }

    public String getChildType() {
        Object obj = this.childType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.childType_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getChildTypeBytes() {
        Object obj = this.childType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.childType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ResourceReference> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.type_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.type_);
        if (!GeneratedMessageV3.isStringEmpty(this.childType_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.childType_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getType() {
        Object obj = this.type_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.type_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeBytes() {
        Object obj = this.type_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + getChildType().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c1.f10976g.d(ResourceReference.class, b.class);
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
        return new ResourceReference();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.childType_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.childType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ResourceReference(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ResourceReference resourceReference) {
        return DEFAULT_INSTANCE.toBuilder().d0(resourceReference);
    }

    public static ResourceReference parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ResourceReference) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResourceReference parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ResourceReference(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResourceReference parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ResourceReference getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static ResourceReference parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ResourceReference() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = "";
        this.childType_ = "";
    }

    public static ResourceReference parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ResourceReference parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ResourceReference parseFrom(InputStream inputStream) throws IOException {
        return (ResourceReference) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ResourceReference parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ResourceReference) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ResourceReference(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.type_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.childType_ = pVar.K();
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

    public static ResourceReference parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ResourceReference) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ResourceReference parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ResourceReference) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
