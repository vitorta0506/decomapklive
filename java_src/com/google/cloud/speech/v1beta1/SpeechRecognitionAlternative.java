package com.google.cloud.speech.v1beta1;

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
import com.google.protobuf.p;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SpeechRecognitionAlternative extends GeneratedMessageV3 implements e {
    public static final int CONFIDENCE_FIELD_NUMBER = 2;
    private static final SpeechRecognitionAlternative DEFAULT_INSTANCE = new SpeechRecognitionAlternative();
    private static final e2<SpeechRecognitionAlternative> PARSER = new a();
    public static final int TRANSCRIPT_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private float confidence_;
    private byte memoizedIsInitialized;
    private volatile Object transcript_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SpeechRecognitionAlternative> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SpeechRecognitionAlternative m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SpeechRecognitionAlternative(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private Object f12024e;

        /* renamed from: f  reason: collision with root package name */
        private float f12025f;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.B.d(SpeechRecognitionAlternative.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SpeechRecognitionAlternative build() {
            SpeechRecognitionAlternative I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SpeechRecognitionAlternative I() {
            SpeechRecognitionAlternative speechRecognitionAlternative = new SpeechRecognitionAlternative(this, (a) null);
            speechRecognitionAlternative.transcript_ = this.f12024e;
            speechRecognitionAlternative.confidence_ = this.f12025f;
            Q();
            return speechRecognitionAlternative;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SpeechRecognitionAlternative getDefaultInstanceForType() {
            return SpeechRecognitionAlternative.getDefaultInstance();
        }

        public b d0(SpeechRecognitionAlternative speechRecognitionAlternative) {
            if (speechRecognitionAlternative == SpeechRecognitionAlternative.getDefaultInstance()) {
                return this;
            }
            if (!speechRecognitionAlternative.getTranscript().isEmpty()) {
                this.f12024e = speechRecognitionAlternative.transcript_;
                R();
            }
            if (speechRecognitionAlternative.getConfidence() != 0.0f) {
                i0(speechRecognitionAlternative.getConfidence());
            }
            z(((GeneratedMessageV3) speechRecognitionAlternative).unknownFields);
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
        public com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative r3 = (com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative r4 = (com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SpeechRecognitionAlternative) {
                return d0((SpeechRecognitionAlternative) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.A;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(float f10) {
            this.f12025f = f10;
            R();
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
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12024e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12024e = "";
            b0();
        }
    }

    /* synthetic */ SpeechRecognitionAlternative(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SpeechRecognitionAlternative getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SpeechRecognitionAlternative parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SpeechRecognitionAlternative) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SpeechRecognitionAlternative parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SpeechRecognitionAlternative> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpeechRecognitionAlternative)) {
            return super.equals(obj);
        }
        SpeechRecognitionAlternative speechRecognitionAlternative = (SpeechRecognitionAlternative) obj;
        return ((getTranscript().equals(speechRecognitionAlternative.getTranscript())) && Float.floatToIntBits(getConfidence()) == Float.floatToIntBits(speechRecognitionAlternative.getConfidence())) && this.unknownFields.equals(speechRecognitionAlternative.unknownFields);
    }

    public float getConfidence() {
        return this.confidence_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SpeechRecognitionAlternative> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = getTranscriptBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.transcript_);
        float f10 = this.confidence_;
        if (f10 != 0.0f) {
            computeStringSize += CodedOutputStream.r(2, f10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTranscript() {
        Object obj = this.transcript_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.transcript_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTranscriptBytes() {
        Object obj = this.transcript_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.transcript_ = copyFromUtf8;
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTranscript().hashCode()) * 37) + 2) * 53) + Float.floatToIntBits(getConfidence())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.B.d(SpeechRecognitionAlternative.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getTranscriptBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.transcript_);
        }
        float f10 = this.confidence_;
        if (f10 != 0.0f) {
            codedOutputStream.B0(2, f10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SpeechRecognitionAlternative(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SpeechRecognitionAlternative speechRecognitionAlternative) {
        return DEFAULT_INSTANCE.toBuilder().d0(speechRecognitionAlternative);
    }

    public static SpeechRecognitionAlternative parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechRecognitionAlternative) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeechRecognitionAlternative parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SpeechRecognitionAlternative(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SpeechRecognitionAlternative parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SpeechRecognitionAlternative getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static SpeechRecognitionAlternative parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SpeechRecognitionAlternative() {
        this.memoizedIsInitialized = (byte) -1;
        this.transcript_ = "";
        this.confidence_ = 0.0f;
    }

    public static SpeechRecognitionAlternative parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SpeechRecognitionAlternative parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SpeechRecognitionAlternative parseFrom(InputStream inputStream) throws IOException {
        return (SpeechRecognitionAlternative) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SpeechRecognitionAlternative parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechRecognitionAlternative) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private SpeechRecognitionAlternative(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.transcript_ = pVar.K();
                            } else if (L != 21) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.confidence_ = pVar.x();
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

    public static SpeechRecognitionAlternative parseFrom(p pVar) throws IOException {
        return (SpeechRecognitionAlternative) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SpeechRecognitionAlternative parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SpeechRecognitionAlternative) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
