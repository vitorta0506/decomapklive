package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.RecognitionMetadata;
import com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig;
import com.google.cloud.speech.v1p1beta1.SpeechAdaptation;
import com.google.cloud.speech.v1p1beta1.SpeechContext;
import com.google.cloud.speech.v1p1beta1.TranscriptNormalization;
import com.google.protobuf.BoolValue;
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
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RecognitionConfig extends GeneratedMessageV3 implements d {
    public static final int ADAPTATION_FIELD_NUMBER = 20;
    public static final int ALTERNATIVE_LANGUAGE_CODES_FIELD_NUMBER = 18;
    public static final int AUDIO_CHANNEL_COUNT_FIELD_NUMBER = 7;
    public static final int DIARIZATION_CONFIG_FIELD_NUMBER = 19;
    public static final int DIARIZATION_SPEAKER_COUNT_FIELD_NUMBER = 17;
    public static final int ENABLE_AUTOMATIC_PUNCTUATION_FIELD_NUMBER = 11;
    public static final int ENABLE_SEPARATE_RECOGNITION_PER_CHANNEL_FIELD_NUMBER = 12;
    public static final int ENABLE_SPEAKER_DIARIZATION_FIELD_NUMBER = 16;
    public static final int ENABLE_SPOKEN_EMOJIS_FIELD_NUMBER = 23;
    public static final int ENABLE_SPOKEN_PUNCTUATION_FIELD_NUMBER = 22;
    public static final int ENABLE_WORD_CONFIDENCE_FIELD_NUMBER = 15;
    public static final int ENABLE_WORD_TIME_OFFSETS_FIELD_NUMBER = 8;
    public static final int ENCODING_FIELD_NUMBER = 1;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    public static final int MAX_ALTERNATIVES_FIELD_NUMBER = 4;
    public static final int METADATA_FIELD_NUMBER = 9;
    public static final int MODEL_FIELD_NUMBER = 13;
    public static final int PROFANITY_FILTER_FIELD_NUMBER = 5;
    public static final int SAMPLE_RATE_HERTZ_FIELD_NUMBER = 2;
    public static final int SPEECH_CONTEXTS_FIELD_NUMBER = 6;
    public static final int TRANSCRIPT_NORMALIZATION_FIELD_NUMBER = 24;
    public static final int USE_ENHANCED_FIELD_NUMBER = 14;
    private static final long serialVersionUID = 0;
    private SpeechAdaptation adaptation_;
    private z0 alternativeLanguageCodes_;
    private int audioChannelCount_;
    private SpeakerDiarizationConfig diarizationConfig_;
    private int diarizationSpeakerCount_;
    private boolean enableAutomaticPunctuation_;
    private boolean enableSeparateRecognitionPerChannel_;
    private boolean enableSpeakerDiarization_;
    private BoolValue enableSpokenEmojis_;
    private BoolValue enableSpokenPunctuation_;
    private boolean enableWordConfidence_;
    private boolean enableWordTimeOffsets_;
    private int encoding_;
    private volatile Object languageCode_;
    private int maxAlternatives_;
    private byte memoizedIsInitialized;
    private RecognitionMetadata metadata_;
    private volatile Object model_;
    private boolean profanityFilter_;
    private int sampleRateHertz_;
    private List<SpeechContext> speechContexts_;
    private TranscriptNormalization transcriptNormalization_;
    private boolean useEnhanced_;
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
        OGG_OPUS(6),
        SPEEX_WITH_HEADER_BYTE(7),
        MP3(8),
        WEBM_OPUS(9),
        UNRECOGNIZED(-1);
        
        public static final int AMR_VALUE = 4;
        public static final int AMR_WB_VALUE = 5;
        public static final int ENCODING_UNSPECIFIED_VALUE = 0;
        public static final int FLAC_VALUE = 2;
        public static final int LINEAR16_VALUE = 1;
        public static final int MP3_VALUE = 8;
        public static final int MULAW_VALUE = 3;
        public static final int OGG_OPUS_VALUE = 6;
        public static final int SPEEX_WITH_HEADER_BYTE_VALUE = 7;
        public static final int WEBM_OPUS_VALUE = 9;
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
            switch (i9) {
                case 0:
                    return ENCODING_UNSPECIFIED;
                case 1:
                    return LINEAR16;
                case 2:
                    return FLAC;
                case 3:
                    return MULAW;
                case 4:
                    return AMR;
                case 5:
                    return AMR_WB;
                case 6:
                    return OGG_OPUS;
                case 7:
                    return SPEEX_WITH_HEADER_BYTE;
                case 8:
                    return MP3;
                case 9:
                    return WEBM_OPUS;
                default:
                    return null;
            }
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
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
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
        public RecognitionConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RecognitionConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {
        private boolean A;
        private int B;
        private SpeakerDiarizationConfig C;
        private q2<SpeakerDiarizationConfig, SpeakerDiarizationConfig.b, f> D;
        private RecognitionMetadata E;
        private q2<RecognitionMetadata, RecognitionMetadata.b, e> F;
        private Object G;
        private boolean H;

        /* renamed from: e  reason: collision with root package name */
        private int f12147e;

        /* renamed from: f  reason: collision with root package name */
        private int f12148f;

        /* renamed from: g  reason: collision with root package name */
        private int f12149g;

        /* renamed from: h  reason: collision with root package name */
        private int f12150h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f12151i;

        /* renamed from: j  reason: collision with root package name */
        private Object f12152j;

        /* renamed from: k  reason: collision with root package name */
        private z0 f12153k;

        /* renamed from: l  reason: collision with root package name */
        private int f12154l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f12155m;

        /* renamed from: n  reason: collision with root package name */
        private SpeechAdaptation f12156n;

        /* renamed from: o  reason: collision with root package name */
        private q2<SpeechAdaptation, SpeechAdaptation.b, g> f12157o;

        /* renamed from: p  reason: collision with root package name */
        private TranscriptNormalization f12158p;

        /* renamed from: q  reason: collision with root package name */
        private q2<TranscriptNormalization, TranscriptNormalization.b, p> f12159q;

        /* renamed from: r  reason: collision with root package name */
        private List<SpeechContext> f12160r;

        /* renamed from: s  reason: collision with root package name */
        private l2<SpeechContext, SpeechContext.b, i> f12161s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f12162t;

        /* renamed from: u  reason: collision with root package name */
        private boolean f12163u;

        /* renamed from: v  reason: collision with root package name */
        private boolean f12164v;

        /* renamed from: w  reason: collision with root package name */
        private BoolValue f12165w;

        /* renamed from: x  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f12166x;

        /* renamed from: y  reason: collision with root package name */
        private BoolValue f12167y;

        /* renamed from: z  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f12168z;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12147e & 1) == 0) {
                this.f12153k = new y0(this.f12153k);
                this.f12147e |= 1;
            }
        }

        private void b0() {
            if ((this.f12147e & 2) == 0) {
                this.f12160r = new ArrayList(this.f12160r);
                this.f12147e |= 2;
            }
        }

        private l2<SpeechContext, SpeechContext.b, i> e0() {
            if (this.f12161s == null) {
                this.f12161s = new l2<>(this.f12160r, (this.f12147e & 2) != 0, H(), O());
                this.f12160r = null;
            }
            return this.f12161s;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        public b B0(int i9) {
            this.f12148f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: D0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b H0(int i9) {
            this.f12154l = i9;
            R();
            return this;
        }

        public b I0(boolean z10) {
            this.f12155m = z10;
            R();
            return this;
        }

        public b J0(int i9) {
            this.f12149g = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f12297l.d(RecognitionConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: K0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        public b L0(boolean z10) {
            this.H = z10;
            R();
            return this;
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
            recognitionConfig.encoding_ = this.f12148f;
            recognitionConfig.sampleRateHertz_ = this.f12149g;
            recognitionConfig.audioChannelCount_ = this.f12150h;
            recognitionConfig.enableSeparateRecognitionPerChannel_ = this.f12151i;
            recognitionConfig.languageCode_ = this.f12152j;
            if ((this.f12147e & 1) != 0) {
                this.f12153k = this.f12153k.V0();
                this.f12147e &= -2;
            }
            recognitionConfig.alternativeLanguageCodes_ = this.f12153k;
            recognitionConfig.maxAlternatives_ = this.f12154l;
            recognitionConfig.profanityFilter_ = this.f12155m;
            q2<SpeechAdaptation, SpeechAdaptation.b, g> q2Var = this.f12157o;
            if (q2Var == null) {
                recognitionConfig.adaptation_ = this.f12156n;
            } else {
                recognitionConfig.adaptation_ = q2Var.b();
            }
            q2<TranscriptNormalization, TranscriptNormalization.b, p> q2Var2 = this.f12159q;
            if (q2Var2 == null) {
                recognitionConfig.transcriptNormalization_ = this.f12158p;
            } else {
                recognitionConfig.transcriptNormalization_ = q2Var2.b();
            }
            l2<SpeechContext, SpeechContext.b, i> l2Var = this.f12161s;
            if (l2Var == null) {
                if ((this.f12147e & 2) != 0) {
                    this.f12160r = Collections.unmodifiableList(this.f12160r);
                    this.f12147e &= -3;
                }
                recognitionConfig.speechContexts_ = this.f12160r;
            } else {
                recognitionConfig.speechContexts_ = l2Var.e();
            }
            recognitionConfig.enableWordTimeOffsets_ = this.f12162t;
            recognitionConfig.enableWordConfidence_ = this.f12163u;
            recognitionConfig.enableAutomaticPunctuation_ = this.f12164v;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var3 = this.f12166x;
            if (q2Var3 == null) {
                recognitionConfig.enableSpokenPunctuation_ = this.f12165w;
            } else {
                recognitionConfig.enableSpokenPunctuation_ = q2Var3.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var4 = this.f12168z;
            if (q2Var4 == null) {
                recognitionConfig.enableSpokenEmojis_ = this.f12167y;
            } else {
                recognitionConfig.enableSpokenEmojis_ = q2Var4.b();
            }
            recognitionConfig.enableSpeakerDiarization_ = this.A;
            recognitionConfig.diarizationSpeakerCount_ = this.B;
            q2<SpeakerDiarizationConfig, SpeakerDiarizationConfig.b, f> q2Var5 = this.D;
            if (q2Var5 == null) {
                recognitionConfig.diarizationConfig_ = this.C;
            } else {
                recognitionConfig.diarizationConfig_ = q2Var5.b();
            }
            q2<RecognitionMetadata, RecognitionMetadata.b, e> q2Var6 = this.F;
            if (q2Var6 == null) {
                recognitionConfig.metadata_ = this.E;
            } else {
                recognitionConfig.metadata_ = q2Var6.b();
            }
            recognitionConfig.model_ = this.G;
            recognitionConfig.useEnhanced_ = this.H;
            Q();
            return recognitionConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public RecognitionConfig getDefaultInstanceForType() {
            return RecognitionConfig.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f12296k;
        }

        public b h0(SpeechAdaptation speechAdaptation) {
            q2<SpeechAdaptation, SpeechAdaptation.b, g> q2Var = this.f12157o;
            if (q2Var == null) {
                SpeechAdaptation speechAdaptation2 = this.f12156n;
                if (speechAdaptation2 != null) {
                    this.f12156n = SpeechAdaptation.newBuilder(speechAdaptation2).j0(speechAdaptation).I();
                } else {
                    this.f12156n = speechAdaptation;
                }
                R();
            } else {
                q2Var.e(speechAdaptation);
            }
            return this;
        }

        public b i0(SpeakerDiarizationConfig speakerDiarizationConfig) {
            q2<SpeakerDiarizationConfig, SpeakerDiarizationConfig.b, f> q2Var = this.D;
            if (q2Var == null) {
                SpeakerDiarizationConfig speakerDiarizationConfig2 = this.C;
                if (speakerDiarizationConfig2 != null) {
                    this.C = SpeakerDiarizationConfig.newBuilder(speakerDiarizationConfig2).d0(speakerDiarizationConfig).I();
                } else {
                    this.C = speakerDiarizationConfig;
                }
                R();
            } else {
                q2Var.e(speakerDiarizationConfig);
            }
            return this;
        }

        public b j0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f12168z;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f12167y;
                if (boolValue2 != null) {
                    this.f12167y = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f12167y = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b k0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f12166x;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f12165w;
                if (boolValue2 != null) {
                    this.f12165w = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f12165w = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b l0(RecognitionConfig recognitionConfig) {
            if (recognitionConfig == RecognitionConfig.getDefaultInstance()) {
                return this;
            }
            if (recognitionConfig.encoding_ != 0) {
                B0(recognitionConfig.getEncodingValue());
            }
            if (recognitionConfig.getSampleRateHertz() != 0) {
                J0(recognitionConfig.getSampleRateHertz());
            }
            if (recognitionConfig.getAudioChannelCount() != 0) {
                s0(recognitionConfig.getAudioChannelCount());
            }
            if (recognitionConfig.getEnableSeparateRecognitionPerChannel()) {
                v0(recognitionConfig.getEnableSeparateRecognitionPerChannel());
            }
            if (!recognitionConfig.getLanguageCode().isEmpty()) {
                this.f12152j = recognitionConfig.languageCode_;
                R();
            }
            if (!recognitionConfig.alternativeLanguageCodes_.isEmpty()) {
                if (this.f12153k.isEmpty()) {
                    this.f12153k = recognitionConfig.alternativeLanguageCodes_;
                    this.f12147e &= -2;
                } else {
                    a0();
                    this.f12153k.addAll(recognitionConfig.alternativeLanguageCodes_);
                }
                R();
            }
            if (recognitionConfig.getMaxAlternatives() != 0) {
                H0(recognitionConfig.getMaxAlternatives());
            }
            if (recognitionConfig.getProfanityFilter()) {
                I0(recognitionConfig.getProfanityFilter());
            }
            if (recognitionConfig.hasAdaptation()) {
                h0(recognitionConfig.getAdaptation());
            }
            if (recognitionConfig.hasTranscriptNormalization()) {
                q0(recognitionConfig.getTranscriptNormalization());
            }
            if (this.f12161s == null) {
                if (!recognitionConfig.speechContexts_.isEmpty()) {
                    if (this.f12160r.isEmpty()) {
                        this.f12160r = recognitionConfig.speechContexts_;
                        this.f12147e &= -3;
                    } else {
                        b0();
                        this.f12160r.addAll(recognitionConfig.speechContexts_);
                    }
                    R();
                }
            } else if (!recognitionConfig.speechContexts_.isEmpty()) {
                if (this.f12161s.k()) {
                    this.f12161s.f();
                    this.f12161s = null;
                    this.f12160r = recognitionConfig.speechContexts_;
                    this.f12147e &= -3;
                    this.f12161s = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f12161s.b(recognitionConfig.speechContexts_);
                }
            }
            if (recognitionConfig.getEnableWordTimeOffsets()) {
                z0(recognitionConfig.getEnableWordTimeOffsets());
            }
            if (recognitionConfig.getEnableWordConfidence()) {
                y0(recognitionConfig.getEnableWordConfidence());
            }
            if (recognitionConfig.getEnableAutomaticPunctuation()) {
                u0(recognitionConfig.getEnableAutomaticPunctuation());
            }
            if (recognitionConfig.hasEnableSpokenPunctuation()) {
                k0(recognitionConfig.getEnableSpokenPunctuation());
            }
            if (recognitionConfig.hasEnableSpokenEmojis()) {
                j0(recognitionConfig.getEnableSpokenEmojis());
            }
            if (recognitionConfig.getEnableSpeakerDiarization()) {
                x0(recognitionConfig.getEnableSpeakerDiarization());
            }
            if (recognitionConfig.getDiarizationSpeakerCount() != 0) {
                t0(recognitionConfig.getDiarizationSpeakerCount());
            }
            if (recognitionConfig.hasDiarizationConfig()) {
                i0(recognitionConfig.getDiarizationConfig());
            }
            if (recognitionConfig.hasMetadata()) {
                o0(recognitionConfig.getMetadata());
            }
            if (!recognitionConfig.getModel().isEmpty()) {
                this.G = recognitionConfig.model_;
                R();
            }
            if (recognitionConfig.getUseEnhanced()) {
                L0(recognitionConfig.getUseEnhanced());
            }
            z(((GeneratedMessageV3) recognitionConfig).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.RecognitionConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.RecognitionConfig.access$2800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.RecognitionConfig r3 = (com.google.cloud.speech.v1p1beta1.RecognitionConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.l0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1p1beta1.RecognitionConfig r4 = (com.google.cloud.speech.v1p1beta1.RecognitionConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.l0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.RecognitionConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.RecognitionConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RecognitionConfig) {
                return l0((RecognitionConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b o0(RecognitionMetadata recognitionMetadata) {
            q2<RecognitionMetadata, RecognitionMetadata.b, e> q2Var = this.F;
            if (q2Var == null) {
                RecognitionMetadata recognitionMetadata2 = this.E;
                if (recognitionMetadata2 != null) {
                    this.E = RecognitionMetadata.newBuilder(recognitionMetadata2).d0(recognitionMetadata).I();
                } else {
                    this.E = recognitionMetadata;
                }
                R();
            } else {
                q2Var.e(recognitionMetadata);
            }
            return this;
        }

        public b q0(TranscriptNormalization transcriptNormalization) {
            q2<TranscriptNormalization, TranscriptNormalization.b, p> q2Var = this.f12159q;
            if (q2Var == null) {
                TranscriptNormalization transcriptNormalization2 = this.f12158p;
                if (transcriptNormalization2 != null) {
                    this.f12158p = TranscriptNormalization.newBuilder(transcriptNormalization2).g0(transcriptNormalization).I();
                } else {
                    this.f12158p = transcriptNormalization;
                }
                R();
            } else {
                q2Var.e(transcriptNormalization);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b s0(int i9) {
            this.f12150h = i9;
            R();
            return this;
        }

        @Deprecated
        public b t0(int i9) {
            this.B = i9;
            R();
            return this;
        }

        public b u0(boolean z10) {
            this.f12164v = z10;
            R();
            return this;
        }

        public b v0(boolean z10) {
            this.f12151i = z10;
            R();
            return this;
        }

        @Deprecated
        public b x0(boolean z10) {
            this.A = z10;
            R();
            return this;
        }

        public b y0(boolean z10) {
            this.f12163u = z10;
            R();
            return this;
        }

        public b z0(boolean z10) {
            this.f12162t = z10;
            R();
            return this;
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12148f = 0;
            this.f12152j = "";
            this.f12153k = y0.f15344d;
            this.f12160r = Collections.emptyList();
            this.G = "";
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12148f = 0;
            this.f12152j = "";
            this.f12153k = y0.f15344d;
            this.f12160r = Collections.emptyList();
            this.G = "";
            g0();
        }
    }

    /* synthetic */ RecognitionConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RecognitionConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f12296k;
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
        if (this.encoding_ == recognitionConfig.encoding_ && getSampleRateHertz() == recognitionConfig.getSampleRateHertz() && getAudioChannelCount() == recognitionConfig.getAudioChannelCount() && getEnableSeparateRecognitionPerChannel() == recognitionConfig.getEnableSeparateRecognitionPerChannel() && getLanguageCode().equals(recognitionConfig.getLanguageCode()) && m206getAlternativeLanguageCodesList().equals(recognitionConfig.m206getAlternativeLanguageCodesList()) && getMaxAlternatives() == recognitionConfig.getMaxAlternatives() && getProfanityFilter() == recognitionConfig.getProfanityFilter() && hasAdaptation() == recognitionConfig.hasAdaptation()) {
            if ((!hasAdaptation() || getAdaptation().equals(recognitionConfig.getAdaptation())) && hasTranscriptNormalization() == recognitionConfig.hasTranscriptNormalization()) {
                if ((!hasTranscriptNormalization() || getTranscriptNormalization().equals(recognitionConfig.getTranscriptNormalization())) && getSpeechContextsList().equals(recognitionConfig.getSpeechContextsList()) && getEnableWordTimeOffsets() == recognitionConfig.getEnableWordTimeOffsets() && getEnableWordConfidence() == recognitionConfig.getEnableWordConfidence() && getEnableAutomaticPunctuation() == recognitionConfig.getEnableAutomaticPunctuation() && hasEnableSpokenPunctuation() == recognitionConfig.hasEnableSpokenPunctuation()) {
                    if ((!hasEnableSpokenPunctuation() || getEnableSpokenPunctuation().equals(recognitionConfig.getEnableSpokenPunctuation())) && hasEnableSpokenEmojis() == recognitionConfig.hasEnableSpokenEmojis()) {
                        if ((!hasEnableSpokenEmojis() || getEnableSpokenEmojis().equals(recognitionConfig.getEnableSpokenEmojis())) && getEnableSpeakerDiarization() == recognitionConfig.getEnableSpeakerDiarization() && getDiarizationSpeakerCount() == recognitionConfig.getDiarizationSpeakerCount() && hasDiarizationConfig() == recognitionConfig.hasDiarizationConfig()) {
                            if ((!hasDiarizationConfig() || getDiarizationConfig().equals(recognitionConfig.getDiarizationConfig())) && hasMetadata() == recognitionConfig.hasMetadata()) {
                                return (!hasMetadata() || getMetadata().equals(recognitionConfig.getMetadata())) && getModel().equals(recognitionConfig.getModel()) && getUseEnhanced() == recognitionConfig.getUseEnhanced() && this.unknownFields.equals(recognitionConfig.unknownFields);
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public SpeechAdaptation getAdaptation() {
        SpeechAdaptation speechAdaptation = this.adaptation_;
        return speechAdaptation == null ? SpeechAdaptation.getDefaultInstance() : speechAdaptation;
    }

    public g getAdaptationOrBuilder() {
        return getAdaptation();
    }

    public String getAlternativeLanguageCodes(int i9) {
        return this.alternativeLanguageCodes_.get(i9);
    }

    public ByteString getAlternativeLanguageCodesBytes(int i9) {
        return this.alternativeLanguageCodes_.j0(i9);
    }

    public int getAlternativeLanguageCodesCount() {
        return this.alternativeLanguageCodes_.size();
    }

    public int getAudioChannelCount() {
        return this.audioChannelCount_;
    }

    public SpeakerDiarizationConfig getDiarizationConfig() {
        SpeakerDiarizationConfig speakerDiarizationConfig = this.diarizationConfig_;
        return speakerDiarizationConfig == null ? SpeakerDiarizationConfig.getDefaultInstance() : speakerDiarizationConfig;
    }

    public f getDiarizationConfigOrBuilder() {
        return getDiarizationConfig();
    }

    @Deprecated
    public int getDiarizationSpeakerCount() {
        return this.diarizationSpeakerCount_;
    }

    public boolean getEnableAutomaticPunctuation() {
        return this.enableAutomaticPunctuation_;
    }

    public boolean getEnableSeparateRecognitionPerChannel() {
        return this.enableSeparateRecognitionPerChannel_;
    }

    @Deprecated
    public boolean getEnableSpeakerDiarization() {
        return this.enableSpeakerDiarization_;
    }

    public BoolValue getEnableSpokenEmojis() {
        BoolValue boolValue = this.enableSpokenEmojis_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getEnableSpokenEmojisOrBuilder() {
        return getEnableSpokenEmojis();
    }

    public BoolValue getEnableSpokenPunctuation() {
        BoolValue boolValue = this.enableSpokenPunctuation_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getEnableSpokenPunctuationOrBuilder() {
        return getEnableSpokenPunctuation();
    }

    public boolean getEnableWordConfidence() {
        return this.enableWordConfidence_;
    }

    public boolean getEnableWordTimeOffsets() {
        return this.enableWordTimeOffsets_;
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

    public RecognitionMetadata getMetadata() {
        RecognitionMetadata recognitionMetadata = this.metadata_;
        return recognitionMetadata == null ? RecognitionMetadata.getDefaultInstance() : recognitionMetadata;
    }

    public e getMetadataOrBuilder() {
        return getMetadata();
    }

    public String getModel() {
        Object obj = this.model_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.model_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getModelBytes() {
        Object obj = this.model_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.model_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RecognitionConfig> getParserForType() {
        return PARSER;
    }

    public boolean getProfanityFilter() {
        return this.profanityFilter_;
    }

    public int getSampleRateHertz() {
        return this.sampleRateHertz_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.encoding_ != AudioEncoding.ENCODING_UNSPECIFIED.getNumber() ? CodedOutputStream.l(1, this.encoding_) + 0 : 0;
        int i10 = this.sampleRateHertz_;
        if (i10 != 0) {
            l10 += CodedOutputStream.x(2, i10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.languageCode_)) {
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
        for (int i12 = 0; i12 < this.speechContexts_.size(); i12++) {
            l10 += CodedOutputStream.G(6, this.speechContexts_.get(i12));
        }
        int i13 = this.audioChannelCount_;
        if (i13 != 0) {
            l10 += CodedOutputStream.x(7, i13);
        }
        boolean z11 = this.enableWordTimeOffsets_;
        if (z11) {
            l10 += CodedOutputStream.e(8, z11);
        }
        if (this.metadata_ != null) {
            l10 += CodedOutputStream.G(9, getMetadata());
        }
        boolean z12 = this.enableAutomaticPunctuation_;
        if (z12) {
            l10 += CodedOutputStream.e(11, z12);
        }
        boolean z13 = this.enableSeparateRecognitionPerChannel_;
        if (z13) {
            l10 += CodedOutputStream.e(12, z13);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.model_)) {
            l10 += GeneratedMessageV3.computeStringSize(13, this.model_);
        }
        boolean z14 = this.useEnhanced_;
        if (z14) {
            l10 += CodedOutputStream.e(14, z14);
        }
        boolean z15 = this.enableWordConfidence_;
        if (z15) {
            l10 += CodedOutputStream.e(15, z15);
        }
        boolean z16 = this.enableSpeakerDiarization_;
        if (z16) {
            l10 += CodedOutputStream.e(16, z16);
        }
        int i14 = this.diarizationSpeakerCount_;
        if (i14 != 0) {
            l10 += CodedOutputStream.x(17, i14);
        }
        int i15 = 0;
        for (int i16 = 0; i16 < this.alternativeLanguageCodes_.size(); i16++) {
            i15 += GeneratedMessageV3.computeStringSizeNoTag(this.alternativeLanguageCodes_.c1(i16));
        }
        int size = l10 + i15 + (m206getAlternativeLanguageCodesList().size() * 2);
        if (this.diarizationConfig_ != null) {
            size += CodedOutputStream.G(19, getDiarizationConfig());
        }
        if (this.adaptation_ != null) {
            size += CodedOutputStream.G(20, getAdaptation());
        }
        if (this.enableSpokenPunctuation_ != null) {
            size += CodedOutputStream.G(22, getEnableSpokenPunctuation());
        }
        if (this.enableSpokenEmojis_ != null) {
            size += CodedOutputStream.G(23, getEnableSpokenEmojis());
        }
        if (this.transcriptNormalization_ != null) {
            size += CodedOutputStream.G(24, getTranscriptNormalization());
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SpeechContext getSpeechContexts(int i9) {
        return this.speechContexts_.get(i9);
    }

    public int getSpeechContextsCount() {
        return this.speechContexts_.size();
    }

    public List<SpeechContext> getSpeechContextsList() {
        return this.speechContexts_;
    }

    public i getSpeechContextsOrBuilder(int i9) {
        return this.speechContexts_.get(i9);
    }

    public List<? extends i> getSpeechContextsOrBuilderList() {
        return this.speechContexts_;
    }

    public TranscriptNormalization getTranscriptNormalization() {
        TranscriptNormalization transcriptNormalization = this.transcriptNormalization_;
        return transcriptNormalization == null ? TranscriptNormalization.getDefaultInstance() : transcriptNormalization;
    }

    public p getTranscriptNormalizationOrBuilder() {
        return getTranscriptNormalization();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean getUseEnhanced() {
        return this.useEnhanced_;
    }

    public boolean hasAdaptation() {
        return this.adaptation_ != null;
    }

    public boolean hasDiarizationConfig() {
        return this.diarizationConfig_ != null;
    }

    public boolean hasEnableSpokenEmojis() {
        return this.enableSpokenEmojis_ != null;
    }

    public boolean hasEnableSpokenPunctuation() {
        return this.enableSpokenPunctuation_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasTranscriptNormalization() {
        return this.transcriptNormalization_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.encoding_) * 37) + 2) * 53) + getSampleRateHertz()) * 37) + 7) * 53) + getAudioChannelCount()) * 37) + 12) * 53) + u0.d(getEnableSeparateRecognitionPerChannel())) * 37) + 3) * 53) + getLanguageCode().hashCode();
        if (getAlternativeLanguageCodesCount() > 0) {
            hashCode = (((hashCode * 37) + 18) * 53) + m206getAlternativeLanguageCodesList().hashCode();
        }
        int maxAlternatives = (((((((hashCode * 37) + 4) * 53) + getMaxAlternatives()) * 37) + 5) * 53) + u0.d(getProfanityFilter());
        if (hasAdaptation()) {
            maxAlternatives = (((maxAlternatives * 37) + 20) * 53) + getAdaptation().hashCode();
        }
        if (hasTranscriptNormalization()) {
            maxAlternatives = (((maxAlternatives * 37) + 24) * 53) + getTranscriptNormalization().hashCode();
        }
        if (getSpeechContextsCount() > 0) {
            maxAlternatives = (((maxAlternatives * 37) + 6) * 53) + getSpeechContextsList().hashCode();
        }
        int d10 = (((((((((((maxAlternatives * 37) + 8) * 53) + u0.d(getEnableWordTimeOffsets())) * 37) + 15) * 53) + u0.d(getEnableWordConfidence())) * 37) + 11) * 53) + u0.d(getEnableAutomaticPunctuation());
        if (hasEnableSpokenPunctuation()) {
            d10 = (((d10 * 37) + 22) * 53) + getEnableSpokenPunctuation().hashCode();
        }
        if (hasEnableSpokenEmojis()) {
            d10 = (((d10 * 37) + 23) * 53) + getEnableSpokenEmojis().hashCode();
        }
        int d11 = (((((((d10 * 37) + 16) * 53) + u0.d(getEnableSpeakerDiarization())) * 37) + 17) * 53) + getDiarizationSpeakerCount();
        if (hasDiarizationConfig()) {
            d11 = (((d11 * 37) + 19) * 53) + getDiarizationConfig().hashCode();
        }
        if (hasMetadata()) {
            d11 = (((d11 * 37) + 9) * 53) + getMetadata().hashCode();
        }
        int hashCode2 = (((((((((d11 * 37) + 13) * 53) + getModel().hashCode()) * 37) + 14) * 53) + u0.d(getUseEnhanced())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f12297l.d(RecognitionConfig.class, b.class);
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
        return new RecognitionConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.encoding_ != AudioEncoding.ENCODING_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(1, this.encoding_);
        }
        int i9 = this.sampleRateHertz_;
        if (i9 != 0) {
            codedOutputStream.H0(2, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.languageCode_)) {
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
        for (int i11 = 0; i11 < this.speechContexts_.size(); i11++) {
            codedOutputStream.L0(6, this.speechContexts_.get(i11));
        }
        int i12 = this.audioChannelCount_;
        if (i12 != 0) {
            codedOutputStream.H0(7, i12);
        }
        boolean z11 = this.enableWordTimeOffsets_;
        if (z11) {
            codedOutputStream.n0(8, z11);
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(9, getMetadata());
        }
        boolean z12 = this.enableAutomaticPunctuation_;
        if (z12) {
            codedOutputStream.n0(11, z12);
        }
        boolean z13 = this.enableSeparateRecognitionPerChannel_;
        if (z13) {
            codedOutputStream.n0(12, z13);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.model_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.model_);
        }
        boolean z14 = this.useEnhanced_;
        if (z14) {
            codedOutputStream.n0(14, z14);
        }
        boolean z15 = this.enableWordConfidence_;
        if (z15) {
            codedOutputStream.n0(15, z15);
        }
        boolean z16 = this.enableSpeakerDiarization_;
        if (z16) {
            codedOutputStream.n0(16, z16);
        }
        int i13 = this.diarizationSpeakerCount_;
        if (i13 != 0) {
            codedOutputStream.H0(17, i13);
        }
        for (int i14 = 0; i14 < this.alternativeLanguageCodes_.size(); i14++) {
            GeneratedMessageV3.writeString(codedOutputStream, 18, this.alternativeLanguageCodes_.c1(i14));
        }
        if (this.diarizationConfig_ != null) {
            codedOutputStream.L0(19, getDiarizationConfig());
        }
        if (this.adaptation_ != null) {
            codedOutputStream.L0(20, getAdaptation());
        }
        if (this.enableSpokenPunctuation_ != null) {
            codedOutputStream.L0(22, getEnableSpokenPunctuation());
        }
        if (this.enableSpokenEmojis_ != null) {
            codedOutputStream.L0(23, getEnableSpokenEmojis());
        }
        if (this.transcriptNormalization_ != null) {
            codedOutputStream.L0(24, getTranscriptNormalization());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RecognitionConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RecognitionConfig recognitionConfig) {
        return DEFAULT_INSTANCE.toBuilder().l0(recognitionConfig);
    }

    public static RecognitionConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognitionConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getAlternativeLanguageCodesList */
    public i2 m206getAlternativeLanguageCodesList() {
        return this.alternativeLanguageCodes_;
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
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
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
        this.languageCode_ = "";
        this.alternativeLanguageCodes_ = y0.f15344d;
        this.speechContexts_ = Collections.emptyList();
        this.model_ = "";
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

    public static RecognitionConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RecognitionConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private RecognitionConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 8:
                            this.encoding_ = pVar.u();
                            continue;
                        case 16:
                            this.sampleRateHertz_ = pVar.z();
                            continue;
                        case 26:
                            this.languageCode_ = pVar.K();
                            continue;
                        case 32:
                            this.maxAlternatives_ = pVar.z();
                            continue;
                        case 40:
                            this.profanityFilter_ = pVar.r();
                            continue;
                        case 50:
                            if (!(z11 & true)) {
                                this.speechContexts_ = new ArrayList();
                                z11 |= true;
                            }
                            this.speechContexts_.add(pVar.B(SpeechContext.parser(), f0Var));
                            continue;
                        case 56:
                            this.audioChannelCount_ = pVar.z();
                            continue;
                        case 64:
                            this.enableWordTimeOffsets_ = pVar.r();
                            continue;
                        case 74:
                            RecognitionMetadata recognitionMetadata = this.metadata_;
                            RecognitionMetadata.b builder = recognitionMetadata != null ? recognitionMetadata.toBuilder() : null;
                            RecognitionMetadata recognitionMetadata2 = (RecognitionMetadata) pVar.B(RecognitionMetadata.parser(), f0Var);
                            this.metadata_ = recognitionMetadata2;
                            if (builder != null) {
                                builder.d0(recognitionMetadata2);
                                this.metadata_ = builder.I();
                            } else {
                                continue;
                            }
                        case 88:
                            this.enableAutomaticPunctuation_ = pVar.r();
                            continue;
                        case 96:
                            this.enableSeparateRecognitionPerChannel_ = pVar.r();
                            continue;
                        case 106:
                            this.model_ = pVar.K();
                            continue;
                        case 112:
                            this.useEnhanced_ = pVar.r();
                            continue;
                        case 120:
                            this.enableWordConfidence_ = pVar.r();
                            continue;
                        case 128:
                            this.enableSpeakerDiarization_ = pVar.r();
                            continue;
                        case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
                            this.diarizationSpeakerCount_ = pVar.z();
                            continue;
                        case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.alternativeLanguageCodes_ = new y0();
                                z11 |= true;
                            }
                            this.alternativeLanguageCodes_.add(K);
                            continue;
                        case 154:
                            SpeakerDiarizationConfig speakerDiarizationConfig = this.diarizationConfig_;
                            SpeakerDiarizationConfig.b builder2 = speakerDiarizationConfig != null ? speakerDiarizationConfig.toBuilder() : null;
                            SpeakerDiarizationConfig speakerDiarizationConfig2 = (SpeakerDiarizationConfig) pVar.B(SpeakerDiarizationConfig.parser(), f0Var);
                            this.diarizationConfig_ = speakerDiarizationConfig2;
                            if (builder2 != null) {
                                builder2.d0(speakerDiarizationConfig2);
                                this.diarizationConfig_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 162:
                            SpeechAdaptation speechAdaptation = this.adaptation_;
                            SpeechAdaptation.b builder3 = speechAdaptation != null ? speechAdaptation.toBuilder() : null;
                            SpeechAdaptation speechAdaptation2 = (SpeechAdaptation) pVar.B(SpeechAdaptation.parser(), f0Var);
                            this.adaptation_ = speechAdaptation2;
                            if (builder3 != null) {
                                builder3.j0(speechAdaptation2);
                                this.adaptation_ = builder3.I();
                            } else {
                                continue;
                            }
                        case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                            BoolValue boolValue = this.enableSpokenPunctuation_;
                            BoolValue.b builder4 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.enableSpokenPunctuation_ = boolValue2;
                            if (builder4 != null) {
                                builder4.d0(boolValue2);
                                this.enableSpokenPunctuation_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 186:
                            BoolValue boolValue3 = this.enableSpokenEmojis_;
                            BoolValue.b builder5 = boolValue3 != null ? boolValue3.toBuilder() : null;
                            BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.enableSpokenEmojis_ = boolValue4;
                            if (builder5 != null) {
                                builder5.d0(boolValue4);
                                this.enableSpokenEmojis_ = builder5.I();
                            } else {
                                continue;
                            }
                        case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                            TranscriptNormalization transcriptNormalization = this.transcriptNormalization_;
                            TranscriptNormalization.b builder6 = transcriptNormalization != null ? transcriptNormalization.toBuilder() : null;
                            TranscriptNormalization transcriptNormalization2 = (TranscriptNormalization) pVar.B(TranscriptNormalization.parser(), f0Var);
                            this.transcriptNormalization_ = transcriptNormalization2;
                            if (builder6 != null) {
                                builder6.g0(transcriptNormalization2);
                                this.transcriptNormalization_ = builder6.I();
                            } else {
                                continue;
                            }
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.speechContexts_ = Collections.unmodifiableList(this.speechContexts_);
                }
                if (z11 & true) {
                    this.alternativeLanguageCodes_ = this.alternativeLanguageCodes_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
