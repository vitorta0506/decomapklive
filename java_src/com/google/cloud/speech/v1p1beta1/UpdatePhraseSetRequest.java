package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.PhraseSet;
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
public final class UpdatePhraseSetRequest extends GeneratedMessageV3 implements r1 {
    private static final UpdatePhraseSetRequest DEFAULT_INSTANCE = new UpdatePhraseSetRequest();
    private static final e2<UpdatePhraseSetRequest> PARSER = new a();
    public static final int PHRASE_SET_FIELD_NUMBER = 1;
    public static final int UPDATE_MASK_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private PhraseSet phraseSet_;
    private FieldMask updateMask_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<UpdatePhraseSetRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpdatePhraseSetRequest m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpdatePhraseSetRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private PhraseSet f12250e;

        /* renamed from: f  reason: collision with root package name */
        private q2<PhraseSet, PhraseSet.b, com.google.cloud.speech.v1p1beta1.b> f12251f;

        /* renamed from: g  reason: collision with root package name */
        private FieldMask f12252g;

        /* renamed from: h  reason: collision with root package name */
        private q2<FieldMask, FieldMask.b, l0> f12253h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f12264d.d(UpdatePhraseSetRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpdatePhraseSetRequest build() {
            UpdatePhraseSetRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpdatePhraseSetRequest I() {
            UpdatePhraseSetRequest updatePhraseSetRequest = new UpdatePhraseSetRequest(this, (a) null);
            q2<PhraseSet, PhraseSet.b, com.google.cloud.speech.v1p1beta1.b> q2Var = this.f12251f;
            if (q2Var == null) {
                updatePhraseSetRequest.phraseSet_ = this.f12250e;
            } else {
                updatePhraseSetRequest.phraseSet_ = q2Var.b();
            }
            q2<FieldMask, FieldMask.b, l0> q2Var2 = this.f12253h;
            if (q2Var2 == null) {
                updatePhraseSetRequest.updateMask_ = this.f12252g;
            } else {
                updatePhraseSetRequest.updateMask_ = q2Var2.b();
            }
            Q();
            return updatePhraseSetRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UpdatePhraseSetRequest getDefaultInstanceForType() {
            return UpdatePhraseSetRequest.getDefaultInstance();
        }

        public b d0(UpdatePhraseSetRequest updatePhraseSetRequest) {
            if (updatePhraseSetRequest == UpdatePhraseSetRequest.getDefaultInstance()) {
                return this;
            }
            if (updatePhraseSetRequest.hasPhraseSet()) {
                h0(updatePhraseSetRequest.getPhraseSet());
            }
            if (updatePhraseSetRequest.hasUpdateMask()) {
                j0(updatePhraseSetRequest.getUpdateMask());
            }
            z(((GeneratedMessageV3) updatePhraseSetRequest).unknownFields);
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
        public com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest r3 = (com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest r4 = (com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpdatePhraseSetRequest) {
                return d0((UpdatePhraseSetRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f12263c;
        }

        public b h0(PhraseSet phraseSet) {
            q2<PhraseSet, PhraseSet.b, com.google.cloud.speech.v1p1beta1.b> q2Var = this.f12251f;
            if (q2Var == null) {
                PhraseSet phraseSet2 = this.f12250e;
                if (phraseSet2 != null) {
                    this.f12250e = PhraseSet.newBuilder(phraseSet2).g0(phraseSet).I();
                } else {
                    this.f12250e = phraseSet;
                }
                R();
            } else {
                q2Var.e(phraseSet);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(FieldMask fieldMask) {
            q2<FieldMask, FieldMask.b, l0> q2Var = this.f12253h;
            if (q2Var == null) {
                FieldMask fieldMask2 = this.f12252g;
                if (fieldMask2 != null) {
                    this.f12252g = FieldMask.newBuilder(fieldMask2).g0(fieldMask).I();
                } else {
                    this.f12252g = fieldMask;
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

    /* synthetic */ UpdatePhraseSetRequest(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpdatePhraseSetRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f12263c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpdatePhraseSetRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpdatePhraseSetRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpdatePhraseSetRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpdatePhraseSetRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpdatePhraseSetRequest)) {
            return super.equals(obj);
        }
        UpdatePhraseSetRequest updatePhraseSetRequest = (UpdatePhraseSetRequest) obj;
        if (hasPhraseSet() != updatePhraseSetRequest.hasPhraseSet()) {
            return false;
        }
        if ((!hasPhraseSet() || getPhraseSet().equals(updatePhraseSetRequest.getPhraseSet())) && hasUpdateMask() == updatePhraseSetRequest.hasUpdateMask()) {
            return (!hasUpdateMask() || getUpdateMask().equals(updatePhraseSetRequest.getUpdateMask())) && this.unknownFields.equals(updatePhraseSetRequest.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpdatePhraseSetRequest> getParserForType() {
        return PARSER;
    }

    public PhraseSet getPhraseSet() {
        PhraseSet phraseSet = this.phraseSet_;
        return phraseSet == null ? PhraseSet.getDefaultInstance() : phraseSet;
    }

    public com.google.cloud.speech.v1p1beta1.b getPhraseSetOrBuilder() {
        return getPhraseSet();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.phraseSet_ != null ? 0 + CodedOutputStream.G(1, getPhraseSet()) : 0;
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

    public boolean hasPhraseSet() {
        return this.phraseSet_ != null;
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
        if (hasPhraseSet()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPhraseSet().hashCode();
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
        return h.f12264d.d(UpdatePhraseSetRequest.class, b.class);
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
        return new UpdatePhraseSetRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.phraseSet_ != null) {
            codedOutputStream.L0(1, getPhraseSet());
        }
        if (this.updateMask_ != null) {
            codedOutputStream.L0(2, getUpdateMask());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpdatePhraseSetRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpdatePhraseSetRequest updatePhraseSetRequest) {
        return DEFAULT_INSTANCE.toBuilder().d0(updatePhraseSetRequest);
    }

    public static UpdatePhraseSetRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdatePhraseSetRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdatePhraseSetRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpdatePhraseSetRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpdatePhraseSetRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpdatePhraseSetRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static UpdatePhraseSetRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpdatePhraseSetRequest() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpdatePhraseSetRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpdatePhraseSetRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private UpdatePhraseSetRequest(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            PhraseSet phraseSet = this.phraseSet_;
                            PhraseSet.b builder = phraseSet != null ? phraseSet.toBuilder() : null;
                            PhraseSet phraseSet2 = (PhraseSet) pVar.B(PhraseSet.parser(), f0Var);
                            this.phraseSet_ = phraseSet2;
                            if (builder != null) {
                                builder.g0(phraseSet2);
                                this.phraseSet_ = builder.I();
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

    public static UpdatePhraseSetRequest parseFrom(InputStream inputStream) throws IOException {
        return (UpdatePhraseSetRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static UpdatePhraseSetRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdatePhraseSetRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdatePhraseSetRequest parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (UpdatePhraseSetRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpdatePhraseSetRequest parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (UpdatePhraseSetRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
