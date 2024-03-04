package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.RecognitionAudio;
import com.google.cloud.speech.v1p1beta1.RecognitionConfig;
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
public final class RecognizeRequest extends GeneratedMessageV3 implements r1 {
    public static final int AUDIO_FIELD_NUMBER = 2;
    public static final int CONFIG_FIELD_NUMBER = 1;
    private static final RecognizeRequest DEFAULT_INSTANCE = new RecognizeRequest();
    private static final e2<RecognizeRequest> PARSER = new a();
    private static final long serialVersionUID = 0;
    private RecognitionAudio audio_;
    private RecognitionConfig config_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<RecognizeRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RecognizeRequest m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RecognizeRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private RecognitionConfig f12178e;

        /* renamed from: f  reason: collision with root package name */
        private q2<RecognitionConfig, RecognitionConfig.b, d> f12179f;

        /* renamed from: g  reason: collision with root package name */
        private RecognitionAudio f12180g;

        /* renamed from: h  reason: collision with root package name */
        private q2<RecognitionAudio, RecognitionAudio.c, c> f12181h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f12287b.d(RecognizeRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RecognizeRequest build() {
            RecognizeRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RecognizeRequest I() {
            RecognizeRequest recognizeRequest = new RecognizeRequest(this, (a) null);
            q2<RecognitionConfig, RecognitionConfig.b, d> q2Var = this.f12179f;
            if (q2Var == null) {
                recognizeRequest.config_ = this.f12178e;
            } else {
                recognizeRequest.config_ = q2Var.b();
            }
            q2<RecognitionAudio, RecognitionAudio.c, c> q2Var2 = this.f12181h;
            if (q2Var2 == null) {
                recognizeRequest.audio_ = this.f12180g;
            } else {
                recognizeRequest.audio_ = q2Var2.b();
            }
            Q();
            return recognizeRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RecognizeRequest getDefaultInstanceForType() {
            return RecognizeRequest.getDefaultInstance();
        }

        public b d0(RecognitionAudio recognitionAudio) {
            q2<RecognitionAudio, RecognitionAudio.c, c> q2Var = this.f12181h;
            if (q2Var == null) {
                RecognitionAudio recognitionAudio2 = this.f12180g;
                if (recognitionAudio2 != null) {
                    this.f12180g = RecognitionAudio.newBuilder(recognitionAudio2).d0(recognitionAudio).I();
                } else {
                    this.f12180g = recognitionAudio;
                }
                R();
            } else {
                q2Var.e(recognitionAudio);
            }
            return this;
        }

        public b e0(RecognitionConfig recognitionConfig) {
            q2<RecognitionConfig, RecognitionConfig.b, d> q2Var = this.f12179f;
            if (q2Var == null) {
                RecognitionConfig recognitionConfig2 = this.f12178e;
                if (recognitionConfig2 != null) {
                    this.f12178e = RecognitionConfig.newBuilder(recognitionConfig2).l0(recognitionConfig).I();
                } else {
                    this.f12178e = recognitionConfig;
                }
                R();
            } else {
                q2Var.e(recognitionConfig);
            }
            return this;
        }

        public b g0(RecognizeRequest recognizeRequest) {
            if (recognizeRequest == RecognizeRequest.getDefaultInstance()) {
                return this;
            }
            if (recognizeRequest.hasConfig()) {
                e0(recognizeRequest.getConfig());
            }
            if (recognizeRequest.hasAudio()) {
                d0(recognizeRequest.getAudio());
            }
            z(((GeneratedMessageV3) recognizeRequest).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f12286a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.RecognizeRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.RecognizeRequest.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.RecognizeRequest r3 = (com.google.cloud.speech.v1p1beta1.RecognizeRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.RecognizeRequest r4 = (com.google.cloud.speech.v1p1beta1.RecognizeRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.RecognizeRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.RecognizeRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RecognizeRequest) {
                return g0((RecognizeRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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

    /* synthetic */ RecognizeRequest(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RecognizeRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f12286a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecognizeRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RecognizeRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RecognizeRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RecognizeRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecognizeRequest)) {
            return super.equals(obj);
        }
        RecognizeRequest recognizeRequest = (RecognizeRequest) obj;
        if (hasConfig() != recognizeRequest.hasConfig()) {
            return false;
        }
        if ((!hasConfig() || getConfig().equals(recognizeRequest.getConfig())) && hasAudio() == recognizeRequest.hasAudio()) {
            return (!hasAudio() || getAudio().equals(recognizeRequest.getAudio())) && this.unknownFields.equals(recognizeRequest.unknownFields);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RecognizeRequest> getParserForType() {
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
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f12287b.d(RecognizeRequest.class, b.class);
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
        return new RecognizeRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.config_ != null) {
            codedOutputStream.L0(1, getConfig());
        }
        if (this.audio_ != null) {
            codedOutputStream.L0(2, getAudio());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RecognizeRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RecognizeRequest recognizeRequest) {
        return DEFAULT_INSTANCE.toBuilder().g0(recognizeRequest);
    }

    public static RecognizeRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognizeRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognizeRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RecognizeRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecognizeRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RecognizeRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RecognizeRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RecognizeRequest() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecognizeRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RecognizeRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private RecognizeRequest(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            RecognitionAudio recognitionAudio = this.audio_;
                            RecognitionAudio.c builder2 = recognitionAudio != null ? recognitionAudio.toBuilder() : null;
                            RecognitionAudio recognitionAudio2 = (RecognitionAudio) pVar.B(RecognitionAudio.parser(), f0Var);
                            this.audio_ = recognitionAudio2;
                            if (builder2 != null) {
                                builder2.d0(recognitionAudio2);
                                this.audio_ = builder2.I();
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

    public static RecognizeRequest parseFrom(InputStream inputStream) throws IOException {
        return (RecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RecognizeRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognizeRequest parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RecognizeRequest parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
