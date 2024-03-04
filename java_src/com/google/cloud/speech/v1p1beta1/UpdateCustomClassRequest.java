package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.CustomClass;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.FieldMask;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l0;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class UpdateCustomClassRequest extends GeneratedMessageV3 implements r1 {
    public static final int CUSTOM_CLASS_FIELD_NUMBER = 1;
    private static final UpdateCustomClassRequest DEFAULT_INSTANCE = new UpdateCustomClassRequest();
    private static final e2<UpdateCustomClassRequest> PARSER = new a();
    public static final int UPDATE_MASK_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private CustomClass customClass_;
    private byte memoizedIsInitialized;
    private FieldMask updateMask_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<UpdateCustomClassRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpdateCustomClassRequest m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpdateCustomClassRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private CustomClass f12246e;

        /* renamed from: f  reason: collision with root package name */
        private q2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> f12247f;

        /* renamed from: g  reason: collision with root package name */
        private FieldMask f12248g;

        /* renamed from: h  reason: collision with root package name */
        private q2<FieldMask, FieldMask.b, l0> f12249h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f12276p.d(UpdateCustomClassRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpdateCustomClassRequest build() {
            UpdateCustomClassRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpdateCustomClassRequest I() {
            UpdateCustomClassRequest updateCustomClassRequest = new UpdateCustomClassRequest(this, (a) null);
            q2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> q2Var = this.f12247f;
            if (q2Var == null) {
                updateCustomClassRequest.customClass_ = this.f12246e;
            } else {
                updateCustomClassRequest.customClass_ = q2Var.b();
            }
            q2<FieldMask, FieldMask.b, l0> q2Var2 = this.f12249h;
            if (q2Var2 == null) {
                updateCustomClassRequest.updateMask_ = this.f12248g;
            } else {
                updateCustomClassRequest.updateMask_ = q2Var2.b();
            }
            Q();
            return updateCustomClassRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UpdateCustomClassRequest getDefaultInstanceForType() {
            return UpdateCustomClassRequest.getDefaultInstance();
        }

        public b d0(CustomClass customClass) {
            q2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> q2Var = this.f12247f;
            if (q2Var == null) {
                CustomClass customClass2 = this.f12246e;
                if (customClass2 != null) {
                    this.f12246e = CustomClass.newBuilder(customClass2).g0(customClass).I();
                } else {
                    this.f12246e = customClass;
                }
                R();
            } else {
                q2Var.e(customClass);
            }
            return this;
        }

        public b e0(UpdateCustomClassRequest updateCustomClassRequest) {
            if (updateCustomClassRequest == UpdateCustomClassRequest.getDefaultInstance()) {
                return this;
            }
            if (updateCustomClassRequest.hasCustomClass()) {
                d0(updateCustomClassRequest.getCustomClass());
            }
            if (updateCustomClassRequest.hasUpdateMask()) {
                j0(updateCustomClassRequest.getUpdateMask());
            }
            z(((GeneratedMessageV3) updateCustomClassRequest).unknownFields);
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
        public com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest r3 = (com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest r4 = (com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f12275o;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpdateCustomClassRequest) {
                return e0((UpdateCustomClassRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(FieldMask fieldMask) {
            q2<FieldMask, FieldMask.b, l0> q2Var = this.f12249h;
            if (q2Var == null) {
                FieldMask fieldMask2 = this.f12248g;
                if (fieldMask2 != null) {
                    this.f12248g = FieldMask.newBuilder(fieldMask2).g0(fieldMask).I();
                } else {
                    this.f12248g = fieldMask;
                }
                R();
            } else {
                q2Var.e(fieldMask);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ UpdateCustomClassRequest(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpdateCustomClassRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f12275o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpdateCustomClassRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpdateCustomClassRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpdateCustomClassRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpdateCustomClassRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpdateCustomClassRequest)) {
            return super.equals(obj);
        }
        UpdateCustomClassRequest updateCustomClassRequest = (UpdateCustomClassRequest) obj;
        if (hasCustomClass() != updateCustomClassRequest.hasCustomClass()) {
            return false;
        }
        if ((!hasCustomClass() || getCustomClass().equals(updateCustomClassRequest.getCustomClass())) && hasUpdateMask() == updateCustomClassRequest.hasUpdateMask()) {
            return (!hasUpdateMask() || getUpdateMask().equals(updateCustomClassRequest.getUpdateMask())) && this.unknownFields.equals(updateCustomClassRequest.unknownFields);
        }
        return false;
    }

    public CustomClass getCustomClass() {
        CustomClass customClass = this.customClass_;
        return customClass == null ? CustomClass.getDefaultInstance() : customClass;
    }

    public com.google.cloud.speech.v1p1beta1.a getCustomClassOrBuilder() {
        return getCustomClass();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpdateCustomClassRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.customClass_ != null ? 0 + CodedOutputStream.G(1, getCustomClass()) : 0;
        if (this.updateMask_ != null) {
            G += CodedOutputStream.G(2, getUpdateMask());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public FieldMask getUpdateMask() {
        FieldMask fieldMask = this.updateMask_;
        return fieldMask == null ? FieldMask.getDefaultInstance() : fieldMask;
    }

    public l0 getUpdateMaskOrBuilder() {
        return getUpdateMask();
    }

    public boolean hasCustomClass() {
        return this.customClass_ != null;
    }

    public boolean hasUpdateMask() {
        return this.updateMask_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasCustomClass()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getCustomClass().hashCode();
        }
        if (hasUpdateMask()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getUpdateMask().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f12276p.d(UpdateCustomClassRequest.class, b.class);
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
        return new UpdateCustomClassRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.customClass_ != null) {
            codedOutputStream.L0(1, getCustomClass());
        }
        if (this.updateMask_ != null) {
            codedOutputStream.L0(2, getUpdateMask());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpdateCustomClassRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpdateCustomClassRequest updateCustomClassRequest) {
        return DEFAULT_INSTANCE.toBuilder().e0(updateCustomClassRequest);
    }

    public static UpdateCustomClassRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdateCustomClassRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdateCustomClassRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpdateCustomClassRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpdateCustomClassRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpdateCustomClassRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
    }

    public static UpdateCustomClassRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpdateCustomClassRequest() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpdateCustomClassRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpdateCustomClassRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private UpdateCustomClassRequest(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            CustomClass customClass = this.customClass_;
                            CustomClass.b builder = customClass != null ? customClass.toBuilder() : null;
                            CustomClass customClass2 = (CustomClass) pVar.B(CustomClass.parser(), f0Var);
                            this.customClass_ = customClass2;
                            if (builder != null) {
                                builder.g0(customClass2);
                                this.customClass_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            FieldMask fieldMask = this.updateMask_;
                            FieldMask.b builder2 = fieldMask != null ? fieldMask.toBuilder() : null;
                            FieldMask fieldMask2 = (FieldMask) pVar.B(FieldMask.parser(), f0Var);
                            this.updateMask_ = fieldMask2;
                            if (builder2 != null) {
                                builder2.g0(fieldMask2);
                                this.updateMask_ = builder2.I();
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

    public static UpdateCustomClassRequest parseFrom(InputStream inputStream) throws IOException {
        return (UpdateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static UpdateCustomClassRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdateCustomClassRequest parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (UpdateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpdateCustomClassRequest parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (UpdateCustomClassRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
