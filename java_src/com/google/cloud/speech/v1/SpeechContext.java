package com.google.cloud.speech.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SpeechContext extends GeneratedMessageV3 implements i {
    public static final int BOOST_FIELD_NUMBER = 4;
    private static final SpeechContext DEFAULT_INSTANCE = new SpeechContext();
    private static final e2<SpeechContext> PARSER = new a();
    public static final int PHRASES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private float boost_;
    private byte memoizedIsInitialized;
    private z0 phrases_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SpeechContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SpeechContext m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SpeechContext(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f11910e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f11911f;

        /* renamed from: g  reason: collision with root package name */
        private float f11912g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11910e & 1) == 0) {
                this.f11911f = new y0(this.f11911f);
                this.f11910e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f11980r.d(SpeechContext.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SpeechContext build() {
            SpeechContext I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SpeechContext I() {
            SpeechContext speechContext = new SpeechContext(this, (a) null);
            if ((this.f11910e & 1) != 0) {
                this.f11911f = this.f11911f.V0();
                this.f11910e &= -2;
            }
            speechContext.phrases_ = this.f11911f;
            speechContext.boost_ = this.f11912g;
            Q();
            return speechContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public SpeechContext getDefaultInstanceForType() {
            return SpeechContext.getDefaultInstance();
        }

        public b e0(SpeechContext speechContext) {
            if (speechContext == SpeechContext.getDefaultInstance()) {
                return this;
            }
            if (!speechContext.phrases_.isEmpty()) {
                if (this.f11911f.isEmpty()) {
                    this.f11911f = speechContext.phrases_;
                    this.f11910e &= -2;
                } else {
                    a0();
                    this.f11911f.addAll(speechContext.phrases_);
                }
                R();
            }
            if (speechContext.getBoost() != 0.0f) {
                j0(speechContext.getBoost());
            }
            z(((GeneratedMessageV3) speechContext).unknownFields);
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
        public com.google.cloud.speech.v1.SpeechContext.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.SpeechContext.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1.SpeechContext r3 = (com.google.cloud.speech.v1.SpeechContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1.SpeechContext r4 = (com.google.cloud.speech.v1.SpeechContext) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.SpeechContext.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.SpeechContext$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f11979q;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SpeechContext) {
                return e0((SpeechContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(float f10) {
            this.f11912g = f10;
            R();
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
            this.f11911f = y0.f15344d;
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11911f = y0.f15344d;
            d0();
        }
    }

    /* synthetic */ SpeechContext(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SpeechContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f11979q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SpeechContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SpeechContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SpeechContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SpeechContext> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpeechContext)) {
            return super.equals(obj);
        }
        SpeechContext speechContext = (SpeechContext) obj;
        return m204getPhrasesList().equals(speechContext.m204getPhrasesList()) && Float.floatToIntBits(getBoost()) == Float.floatToIntBits(speechContext.getBoost()) && this.unknownFields.equals(speechContext.unknownFields);
    }

    public float getBoost() {
        return this.boost_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SpeechContext> getParserForType() {
        return PARSER;
    }

    public String getPhrases(int i9) {
        return this.phrases_.get(i9);
    }

    public ByteString getPhrasesBytes(int i9) {
        return this.phrases_.j0(i9);
    }

    public int getPhrasesCount() {
        return this.phrases_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.phrases_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.phrases_.c1(i11));
        }
        int size = 0 + i10 + (m204getPhrasesList().size() * 1);
        float f10 = this.boost_;
        if (f10 != 0.0f) {
            size += CodedOutputStream.r(4, f10);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getPhrasesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m204getPhrasesList().hashCode();
        }
        int floatToIntBits = (((((hashCode * 37) + 4) * 53) + Float.floatToIntBits(getBoost())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = floatToIntBits;
        return floatToIntBits;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f11980r.d(SpeechContext.class, b.class);
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
        return new SpeechContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.phrases_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.phrases_.c1(i9));
        }
        float f10 = this.boost_;
        if (f10 != 0.0f) {
            codedOutputStream.B0(4, f10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SpeechContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SpeechContext speechContext) {
        return DEFAULT_INSTANCE.toBuilder().e0(speechContext);
    }

    public static SpeechContext parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeechContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getPhrasesList */
    public i2 m204getPhrasesList() {
        return this.phrases_;
    }

    private SpeechContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SpeechContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SpeechContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
    }

    public static SpeechContext parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SpeechContext() {
        this.memoizedIsInitialized = (byte) -1;
        this.phrases_ = y0.f15344d;
    }

    public static SpeechContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SpeechContext parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SpeechContext parseFrom(InputStream inputStream) throws IOException {
        return (SpeechContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private SpeechContext(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.phrases_ = new y0();
                                    z11 |= true;
                                }
                                this.phrases_.add(K);
                            } else if (L != 37) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.boost_ = pVar.x();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.phrases_ = this.phrases_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SpeechContext parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeechContext parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SpeechContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SpeechContext parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SpeechContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
