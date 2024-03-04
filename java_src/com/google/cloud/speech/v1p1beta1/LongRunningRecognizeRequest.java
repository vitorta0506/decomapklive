package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.RecognitionAudio;
import com.google.cloud.speech.v1p1beta1.RecognitionConfig;
import com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig;
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
public final class LongRunningRecognizeRequest extends GeneratedMessageV3 implements r1 {
    public static final int AUDIO_FIELD_NUMBER = 2;
    public static final int CONFIG_FIELD_NUMBER = 1;
    public static final int OUTPUT_CONFIG_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private RecognitionAudio audio_;
    private RecognitionConfig config_;
    private byte memoizedIsInitialized;
    private TranscriptOutputConfig outputConfig_;
    private static final LongRunningRecognizeRequest DEFAULT_INSTANCE = new LongRunningRecognizeRequest();
    private static final e2<LongRunningRecognizeRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<LongRunningRecognizeRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LongRunningRecognizeRequest m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LongRunningRecognizeRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private RecognitionConfig f12122e;

        /* renamed from: f  reason: collision with root package name */
        private q2<RecognitionConfig, RecognitionConfig.b, d> f12123f;

        /* renamed from: g  reason: collision with root package name */
        private RecognitionAudio f12124g;

        /* renamed from: h  reason: collision with root package name */
        private q2<RecognitionAudio, RecognitionAudio.c, c> f12125h;

        /* renamed from: i  reason: collision with root package name */
        private TranscriptOutputConfig f12126i;

        /* renamed from: j  reason: collision with root package name */
        private q2<TranscriptOutputConfig, TranscriptOutputConfig.c, q> f12127j;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f12289d.d(LongRunningRecognizeRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LongRunningRecognizeRequest build() {
            LongRunningRecognizeRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LongRunningRecognizeRequest I() {
            LongRunningRecognizeRequest longRunningRecognizeRequest = new LongRunningRecognizeRequest(this, (a) null);
            q2<RecognitionConfig, RecognitionConfig.b, d> q2Var = this.f12123f;
            if (q2Var == null) {
                longRunningRecognizeRequest.config_ = this.f12122e;
            } else {
                longRunningRecognizeRequest.config_ = q2Var.b();
            }
            q2<RecognitionAudio, RecognitionAudio.c, c> q2Var2 = this.f12125h;
            if (q2Var2 == null) {
                longRunningRecognizeRequest.audio_ = this.f12124g;
            } else {
                longRunningRecognizeRequest.audio_ = q2Var2.b();
            }
            q2<TranscriptOutputConfig, TranscriptOutputConfig.c, q> q2Var3 = this.f12127j;
            if (q2Var3 == null) {
                longRunningRecognizeRequest.outputConfig_ = this.f12126i;
            } else {
                longRunningRecognizeRequest.outputConfig_ = q2Var3.b();
            }
            Q();
            return longRunningRecognizeRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LongRunningRecognizeRequest getDefaultInstanceForType() {
            return LongRunningRecognizeRequest.getDefaultInstance();
        }

        public b d0(RecognitionAudio recognitionAudio) {
            q2<RecognitionAudio, RecognitionAudio.c, c> q2Var = this.f12125h;
            if (q2Var == null) {
                RecognitionAudio recognitionAudio2 = this.f12124g;
                if (recognitionAudio2 != null) {
                    this.f12124g = RecognitionAudio.newBuilder(recognitionAudio2).d0(recognitionAudio).I();
                } else {
                    this.f12124g = recognitionAudio;
                }
                R();
            } else {
                q2Var.e(recognitionAudio);
            }
            return this;
        }

        public b e0(RecognitionConfig recognitionConfig) {
            q2<RecognitionConfig, RecognitionConfig.b, d> q2Var = this.f12123f;
            if (q2Var == null) {
                RecognitionConfig recognitionConfig2 = this.f12122e;
                if (recognitionConfig2 != null) {
                    this.f12122e = RecognitionConfig.newBuilder(recognitionConfig2).l0(recognitionConfig).I();
                } else {
                    this.f12122e = recognitionConfig;
                }
                R();
            } else {
                q2Var.e(recognitionConfig);
            }
            return this;
        }

        public b g0(LongRunningRecognizeRequest longRunningRecognizeRequest) {
            if (longRunningRecognizeRequest == LongRunningRecognizeRequest.getDefaultInstance()) {
                return this;
            }
            if (longRunningRecognizeRequest.hasConfig()) {
                e0(longRunningRecognizeRequest.getConfig());
            }
            if (longRunningRecognizeRequest.hasAudio()) {
                d0(longRunningRecognizeRequest.getAudio());
            }
            if (longRunningRecognizeRequest.hasOutputConfig()) {
                j0(longRunningRecognizeRequest.getOutputConfig());
            }
            z(((GeneratedMessageV3) longRunningRecognizeRequest).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f12288c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest r3 = (com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest r4 = (com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.LongRunningRecognizeRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LongRunningRecognizeRequest) {
                return g0((LongRunningRecognizeRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(TranscriptOutputConfig transcriptOutputConfig) {
            q2<TranscriptOutputConfig, TranscriptOutputConfig.c, q> q2Var = this.f12127j;
            if (q2Var == null) {
                TranscriptOutputConfig transcriptOutputConfig2 = this.f12126i;
                if (transcriptOutputConfig2 != null) {
                    this.f12126i = TranscriptOutputConfig.newBuilder(transcriptOutputConfig2).d0(transcriptOutputConfig).I();
                } else {
                    this.f12126i = transcriptOutputConfig;
                }
                R();
            } else {
                q2Var.e(transcriptOutputConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
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

    /* synthetic */ LongRunningRecognizeRequest(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LongRunningRecognizeRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f12288c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LongRunningRecognizeRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LongRunningRecognizeRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LongRunningRecognizeRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LongRunningRecognizeRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongRunningRecognizeRequest)) {
            return super.equals(obj);
        }
        LongRunningRecognizeRequest longRunningRecognizeRequest = (LongRunningRecognizeRequest) obj;
        if (hasConfig() != longRunningRecognizeRequest.hasConfig()) {
            return false;
        }
        if ((!hasConfig() || getConfig().equals(longRunningRecognizeRequest.getConfig())) && hasAudio() == longRunningRecognizeRequest.hasAudio()) {
            if ((!hasAudio() || getAudio().equals(longRunningRecognizeRequest.getAudio())) && hasOutputConfig() == longRunningRecognizeRequest.hasOutputConfig()) {
                return (!hasOutputConfig() || getOutputConfig().equals(longRunningRecognizeRequest.getOutputConfig())) && this.unknownFields.equals(longRunningRecognizeRequest.unknownFields);
            }
            return false;
        }
        return false;
    }

    public RecognitionAudio getAudio() {
        RecognitionAudio recognitionAudio = this.audio_;
        return recognitionAudio == null ? RecognitionAudio.getDefaultInstance() : recognitionAudio;
    }

    public c getAudioOrBuilder() {
        return getAudio();
    }

    public RecognitionConfig getConfig() {
        RecognitionConfig recognitionConfig = this.config_;
        return recognitionConfig == null ? RecognitionConfig.getDefaultInstance() : recognitionConfig;
    }

    public d getConfigOrBuilder() {
        return getConfig();
    }

    public TranscriptOutputConfig getOutputConfig() {
        TranscriptOutputConfig transcriptOutputConfig = this.outputConfig_;
        return transcriptOutputConfig == null ? TranscriptOutputConfig.getDefaultInstance() : transcriptOutputConfig;
    }

    public q getOutputConfigOrBuilder() {
        return getOutputConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LongRunningRecognizeRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.config_ != null ? 0 + CodedOutputStream.G(1, getConfig()) : 0;
        if (this.audio_ != null) {
            G += CodedOutputStream.G(2, getAudio());
        }
        if (this.outputConfig_ != null) {
            G += CodedOutputStream.G(4, getOutputConfig());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAudio() {
        return this.audio_ != null;
    }

    public boolean hasConfig() {
        return this.config_ != null;
    }

    public boolean hasOutputConfig() {
        return this.outputConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasConfig()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getConfig().hashCode();
        }
        if (hasAudio()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getAudio().hashCode();
        }
        if (hasOutputConfig()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getOutputConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f12289d.d(LongRunningRecognizeRequest.class, b.class);
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
        return new LongRunningRecognizeRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.config_ != null) {
            codedOutputStream.L0(1, getConfig());
        }
        if (this.audio_ != null) {
            codedOutputStream.L0(2, getAudio());
        }
        if (this.outputConfig_ != null) {
            codedOutputStream.L0(4, getOutputConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LongRunningRecognizeRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LongRunningRecognizeRequest longRunningRecognizeRequest) {
        return DEFAULT_INSTANCE.toBuilder().g0(longRunningRecognizeRequest);
    }

    public static LongRunningRecognizeRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LongRunningRecognizeRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LongRunningRecognizeRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LongRunningRecognizeRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LongRunningRecognizeRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LongRunningRecognizeRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static LongRunningRecognizeRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LongRunningRecognizeRequest() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LongRunningRecognizeRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LongRunningRecognizeRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private LongRunningRecognizeRequest(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            RecognitionConfig recognitionConfig = this.config_;
                            RecognitionConfig.b builder = recognitionConfig != null ? recognitionConfig.toBuilder() : null;
                            RecognitionConfig recognitionConfig2 = (RecognitionConfig) pVar.B(RecognitionConfig.parser(), f0Var);
                            this.config_ = recognitionConfig2;
                            if (builder != null) {
                                builder.l0(recognitionConfig2);
                                this.config_ = builder.I();
                            }
                        } else if (L == 18) {
                            RecognitionAudio recognitionAudio = this.audio_;
                            RecognitionAudio.c builder2 = recognitionAudio != null ? recognitionAudio.toBuilder() : null;
                            RecognitionAudio recognitionAudio2 = (RecognitionAudio) pVar.B(RecognitionAudio.parser(), f0Var);
                            this.audio_ = recognitionAudio2;
                            if (builder2 != null) {
                                builder2.d0(recognitionAudio2);
                                this.audio_ = builder2.I();
                            }
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            TranscriptOutputConfig transcriptOutputConfig = this.outputConfig_;
                            TranscriptOutputConfig.c builder3 = transcriptOutputConfig != null ? transcriptOutputConfig.toBuilder() : null;
                            TranscriptOutputConfig transcriptOutputConfig2 = (TranscriptOutputConfig) pVar.B(TranscriptOutputConfig.parser(), f0Var);
                            this.outputConfig_ = transcriptOutputConfig2;
                            if (builder3 != null) {
                                builder3.d0(transcriptOutputConfig2);
                                this.outputConfig_ = builder3.I();
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

    public static LongRunningRecognizeRequest parseFrom(InputStream inputStream) throws IOException {
        return (LongRunningRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LongRunningRecognizeRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LongRunningRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LongRunningRecognizeRequest parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (LongRunningRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LongRunningRecognizeRequest parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (LongRunningRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
