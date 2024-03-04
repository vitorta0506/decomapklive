package com.google.cloud.speech.v1beta1;

import com.google.cloud.speech.v1beta1.SpeechContext;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RecognitionConfig extends GeneratedMessageV3 implements com.google.cloud.speech.v1beta1.b {
    public static final int ENCODING_FIELD_NUMBER = 1;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    public static final int MAX_ALTERNATIVES_FIELD_NUMBER = 4;
    public static final int PROFANITY_FILTER_FIELD_NUMBER = 5;
    public static final int SAMPLE_RATE_FIELD_NUMBER = 2;
    public static final int SPEECH_CONTEXT_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int encoding_;
    private volatile Object languageCode_;
    private int maxAlternatives_;
    private byte memoizedIsInitialized;
    private boolean profanityFilter_;
    private int sampleRate_;
    private SpeechContext speechContext_;
    private static final RecognitionConfig DEFAULT_INSTANCE = new RecognitionConfig();
    private static final e2<RecognitionConfig> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum AudioEncoding implements h2 {
        ENCODING_UNSPECIFIED(0),
        LINEAR16(1),
        FLAC(2),
        MULAW(3),
        AMR(4),
        AMR_WB(5),
        UNRECOGNIZED(-1);
        
        public static final int AMR_VALUE = 4;
        public static final int AMR_WB_VALUE = 5;
        public static final int ENCODING_UNSPECIFIED_VALUE = 0;
        public static final int FLAC_VALUE = 2;
        public static final int LINEAR16_VALUE = 1;
        public static final int MULAW_VALUE = 3;
        private final int value;
        private static final u0.d<AudioEncoding> internalValueMap = new a();
        private static final AudioEncoding[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<AudioEncoding> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public AudioEncoding a(int i9) {
                return AudioEncoding.forNumber(i9);
            }
        }

        AudioEncoding(int i9) {
            this.value = i9;
        }

        public static AudioEncoding forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                if (i9 != 5) {
                                    return null;
                                }
                                return AMR_WB;
                            }
                            return AMR;
                        }
                        return MULAW;
                    }
                    return FLAC;
                }
                return LINEAR16;
            }
            return ENCODING_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return RecognitionConfig.getDescriptor().k().get(0);
        }

        public static u0.d<AudioEncoding> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            return getDescriptor().k().get(ordinal());
        }

        @Deprecated
        public static AudioEncoding valueOf(int i9) {
            return forNumber(i9);
        }

        public static AudioEncoding valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<RecognitionConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RecognitionConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RecognitionConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements com.google.cloud.speech.v1beta1.b {

        /* renamed from: e  reason: collision with root package name */
        private int f12015e;

        /* renamed from: f  reason: collision with root package name */
        private int f12016f;

        /* renamed from: g  reason: collision with root package name */
        private Object f12017g;

        /* renamed from: h  reason: collision with root package name */
        private int f12018h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f12019i;

        /* renamed from: j  reason: collision with root package name */
        private SpeechContext f12020j;

        /* renamed from: k  reason: collision with root package name */
        private q2<SpeechContext, SpeechContext.b, c> f12021k;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12065j.d(RecognitionConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RecognitionConfig build() {
            RecognitionConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RecognitionConfig I() {
            RecognitionConfig recognitionConfig = new RecognitionConfig(this, (a) null);
            recognitionConfig.encoding_ = this.f12015e;
            recognitionConfig.sampleRate_ = this.f12016f;
            recognitionConfig.languageCode_ = this.f12017g;
            recognitionConfig.maxAlternatives_ = this.f12018h;
            recognitionConfig.profanityFilter_ = this.f12019i;
            q2<SpeechContext, SpeechContext.b, c> q2Var = this.f12021k;
            if (q2Var == null) {
                recognitionConfig.speechContext_ = this.f12020j;
            } else {
                recognitionConfig.speechContext_ = q2Var.b();
            }
            Q();
            return recognitionConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RecognitionConfig getDefaultInstanceForType() {
            return RecognitionConfig.getDefaultInstance();
        }

        public b d0(RecognitionConfig recognitionConfig) {
            if (recognitionConfig == RecognitionConfig.getDefaultInstance()) {
                return this;
            }
            if (recognitionConfig.encoding_ != 0) {
                j0(recognitionConfig.getEncodingValue());
            }
            if (recognitionConfig.getSampleRate() != 0) {
                n0(recognitionConfig.getSampleRate());
            }
            if (!recognitionConfig.getLanguageCode().isEmpty()) {
                this.f12017g = recognitionConfig.languageCode_;
                R();
            }
            if (recognitionConfig.getMaxAlternatives() != 0) {
                l0(recognitionConfig.getMaxAlternatives());
            }
            if (recognitionConfig.getProfanityFilter()) {
                m0(recognitionConfig.getProfanityFilter());
            }
            if (recognitionConfig.hasSpeechContext()) {
                h0(recognitionConfig.getSpeechContext());
            }
            z(((GeneratedMessageV3) recognitionConfig).unknownFields);
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
        public com.google.cloud.speech.v1beta1.RecognitionConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.RecognitionConfig.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.RecognitionConfig r3 = (com.google.cloud.speech.v1beta1.RecognitionConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.RecognitionConfig r4 = (com.google.cloud.speech.v1beta1.RecognitionConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.RecognitionConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.RecognitionConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RecognitionConfig) {
                return d0((RecognitionConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12064i;
        }

        public b h0(SpeechContext speechContext) {
            q2<SpeechContext, SpeechContext.b, c> q2Var = this.f12021k;
            if (q2Var == null) {
                SpeechContext speechContext2 = this.f12020j;
                if (speechContext2 != null) {
                    this.f12020j = SpeechContext.newBuilder(speechContext2).e0(speechContext).I();
                } else {
                    this.f12020j = speechContext;
                }
                R();
            } else {
                q2Var.e(speechContext);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(int i9) {
            this.f12015e = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b l0(int i9) {
            this.f12018h = i9;
            R();
            return this;
        }

        public b m0(boolean z10) {
            this.f12019i = z10;
            R();
            return this;
        }

        public b n0(int i9) {
            this.f12016f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12015e = 0;
            this.f12017g = "";
            this.f12020j = null;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12015e = 0;
            this.f12017g = "";
            this.f12020j = null;
            b0();
        }
    }

    /* synthetic */ RecognitionConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RecognitionConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12064i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecognitionConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RecognitionConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RecognitionConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecognitionConfig)) {
            return super.equals(obj);
        }
        RecognitionConfig recognitionConfig = (RecognitionConfig) obj;
        boolean z10 = (((((this.encoding_ == recognitionConfig.encoding_) && getSampleRate() == recognitionConfig.getSampleRate()) && getLanguageCode().equals(recognitionConfig.getLanguageCode())) && getMaxAlternatives() == recognitionConfig.getMaxAlternatives()) && getProfanityFilter() == recognitionConfig.getProfanityFilter()) && hasSpeechContext() == recognitionConfig.hasSpeechContext();
        if (hasSpeechContext()) {
            z10 = z10 && getSpeechContext().equals(recognitionConfig.getSpeechContext());
        }
        return z10 && this.unknownFields.equals(recognitionConfig.unknownFields);
    }

    public AudioEncoding getEncoding() {
        AudioEncoding valueOf = AudioEncoding.valueOf(this.encoding_);
        return valueOf == null ? AudioEncoding.UNRECOGNIZED : valueOf;
    }

    public int getEncodingValue() {
        return this.encoding_;
    }

    public String getLanguageCode() {
        Object obj = this.languageCode_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.languageCode_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLanguageCodeBytes() {
        Object obj = this.languageCode_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.languageCode_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int getMaxAlternatives() {
        return this.maxAlternatives_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RecognitionConfig> getParserForType() {
        return PARSER;
    }

    public boolean getProfanityFilter() {
        return this.profanityFilter_;
    }

    public int getSampleRate() {
        return this.sampleRate_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.encoding_ != AudioEncoding.ENCODING_UNSPECIFIED.getNumber() ? 0 + CodedOutputStream.l(1, this.encoding_) : 0;
        int i10 = this.sampleRate_;
        if (i10 != 0) {
            l10 += CodedOutputStream.x(2, i10);
        }
        if (!getLanguageCodeBytes().isEmpty()) {
            l10 += GeneratedMessageV3.computeStringSize(3, this.languageCode_);
        }
        int i11 = this.maxAlternatives_;
        if (i11 != 0) {
            l10 += CodedOutputStream.x(4, i11);
        }
        boolean z10 = this.profanityFilter_;
        if (z10) {
            l10 += CodedOutputStream.e(5, z10);
        }
        if (this.speechContext_ != null) {
            l10 += CodedOutputStream.G(6, getSpeechContext());
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SpeechContext getSpeechContext() {
        SpeechContext speechContext = this.speechContext_;
        return speechContext == null ? SpeechContext.getDefaultInstance() : speechContext;
    }

    public c getSpeechContextOrBuilder() {
        return getSpeechContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasSpeechContext() {
        return this.speechContext_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.encoding_) * 37) + 2) * 53) + getSampleRate()) * 37) + 3) * 53) + getLanguageCode().hashCode()) * 37) + 4) * 53) + getMaxAlternatives()) * 37) + 5) * 53) + u0.d(getProfanityFilter());
        if (hasSpeechContext()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getSpeechContext().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f12065j.d(RecognitionConfig.class, b.class);
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
        if (this.encoding_ != AudioEncoding.ENCODING_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(1, this.encoding_);
        }
        int i9 = this.sampleRate_;
        if (i9 != 0) {
            codedOutputStream.H0(2, i9);
        }
        if (!getLanguageCodeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.languageCode_);
        }
        int i10 = this.maxAlternatives_;
        if (i10 != 0) {
            codedOutputStream.H0(4, i10);
        }
        boolean z10 = this.profanityFilter_;
        if (z10) {
            codedOutputStream.n0(5, z10);
        }
        if (this.speechContext_ != null) {
            codedOutputStream.L0(6, getSpeechContext());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RecognitionConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RecognitionConfig recognitionConfig) {
        return DEFAULT_INSTANCE.toBuilder().d0(recognitionConfig);
    }

    public static RecognitionConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognitionConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RecognitionConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecognitionConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RecognitionConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static RecognitionConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RecognitionConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.encoding_ = 0;
        this.sampleRate_ = 0;
        this.languageCode_ = "";
        this.maxAlternatives_ = 0;
        this.profanityFilter_ = false;
    }

    public static RecognitionConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RecognitionConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RecognitionConfig parseFrom(InputStream inputStream) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RecognitionConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognitionConfig parseFrom(p pVar) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RecognitionConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private RecognitionConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.encoding_ = pVar.u();
                        } else if (L == 16) {
                            this.sampleRate_ = pVar.z();
                        } else if (L == 26) {
                            this.languageCode_ = pVar.K();
                        } else if (L == 32) {
                            this.maxAlternatives_ = pVar.z();
                        } else if (L == 40) {
                            this.profanityFilter_ = pVar.r();
                        } else if (L != 50) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            SpeechContext speechContext = this.speechContext_;
                            SpeechContext.b builder = speechContext != null ? speechContext.toBuilder() : null;
                            SpeechContext speechContext2 = (SpeechContext) pVar.B(SpeechContext.parser(), f0Var);
                            this.speechContext_ = speechContext2;
                            if (builder != null) {
                                builder.e0(speechContext2);
                                this.speechContext_ = builder.I();
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
}
