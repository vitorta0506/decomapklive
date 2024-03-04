.class public final Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/speech/v1p1beta1/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;,
        Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
    }
.end annotation


# static fields
.field public static final ADAPTATION_FIELD_NUMBER:I = 0x14

.field public static final ALTERNATIVE_LANGUAGE_CODES_FIELD_NUMBER:I = 0x12

.field public static final AUDIO_CHANNEL_COUNT_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

.field public static final DIARIZATION_CONFIG_FIELD_NUMBER:I = 0x13

.field public static final DIARIZATION_SPEAKER_COUNT_FIELD_NUMBER:I = 0x11

.field public static final ENABLE_AUTOMATIC_PUNCTUATION_FIELD_NUMBER:I = 0xb

.field public static final ENABLE_SEPARATE_RECOGNITION_PER_CHANNEL_FIELD_NUMBER:I = 0xc

.field public static final ENABLE_SPEAKER_DIARIZATION_FIELD_NUMBER:I = 0x10

.field public static final ENABLE_SPOKEN_EMOJIS_FIELD_NUMBER:I = 0x17

.field public static final ENABLE_SPOKEN_PUNCTUATION_FIELD_NUMBER:I = 0x16

.field public static final ENABLE_WORD_CONFIDENCE_FIELD_NUMBER:I = 0xf

.field public static final ENABLE_WORD_TIME_OFFSETS_FIELD_NUMBER:I = 0x8

.field public static final ENCODING_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x3

.field public static final MAX_ALTERNATIVES_FIELD_NUMBER:I = 0x4

.field public static final METADATA_FIELD_NUMBER:I = 0x9

.field public static final MODEL_FIELD_NUMBER:I = 0xd

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFANITY_FILTER_FIELD_NUMBER:I = 0x5

.field public static final SAMPLE_RATE_HERTZ_FIELD_NUMBER:I = 0x2

.field public static final SPEECH_CONTEXTS_FIELD_NUMBER:I = 0x6

.field public static final TRANSCRIPT_NORMALIZATION_FIELD_NUMBER:I = 0x18

.field public static final USE_ENHANCED_FIELD_NUMBER:I = 0xe

.field private static final serialVersionUID:J


# instance fields
.field private adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

.field private alternativeLanguageCodes_:Lcom/google/protobuf/z0;

.field private audioChannelCount_:I

.field private diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

.field private diarizationSpeakerCount_:I

.field private enableAutomaticPunctuation_:Z

.field private enableSeparateRecognitionPerChannel_:Z

.field private enableSpeakerDiarization_:Z

.field private enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

.field private enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

.field private enableWordConfidence_:Z

.field private enableWordTimeOffsets_:Z

.field private encoding_:I

.field private volatile languageCode_:Ljava/lang/Object;

.field private maxAlternatives_:I

.field private memoizedIsInitialized:B

.field private metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

.field private volatile model_:Ljava/lang/Object;

.field private profanityFilter_:Z

.field private sampleRateHertz_:I

.field private speechContexts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1p1beta1/SpeechContext;",
            ">;"
        }
    .end annotation
.end field

.field private transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

.field private useEnhanced_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;-><init>()V

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_b

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 16
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    goto/16 :goto_2

    .line 17
    :sswitch_0
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    if-eqz v4, :cond_1

    .line 18
    invoke-virtual {v4}, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization$b;

    move-result-object v5

    .line 19
    :cond_1
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 20
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {v5, v4}, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization$b;->g0(Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;)Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization$b;

    .line 22
    invoke-virtual {v5}, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization$b;->Y()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    goto :goto_0

    .line 23
    :sswitch_1
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_2

    .line 24
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 25
    :cond_2
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {v5, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 27
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 28
    :sswitch_2
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_3

    .line 29
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 30
    :cond_3
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {v5, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 32
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 33
    :sswitch_3
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    if-eqz v4, :cond_4

    .line 34
    invoke-virtual {v4}, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation$b;

    move-result-object v5

    .line 35
    :cond_4
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 36
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v5, v4}, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation$b;->j0(Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;)Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation$b;

    .line 38
    invoke-virtual {v5}, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation$b;->Y()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    goto/16 :goto_0

    .line 39
    :sswitch_4
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    if-eqz v4, :cond_5

    .line 40
    invoke-virtual {v4}, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig$b;

    move-result-object v5

    .line 41
    :cond_5
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 42
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v5, v4}, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig$b;->d0(Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig$b;

    .line 44
    invoke-virtual {v5}, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig$b;->Y()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    goto/16 :goto_0

    .line 45
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_6

    .line 46
    new-instance v5, Lcom/google/protobuf/y0;

    invoke-direct {v5}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v5, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 47
    :cond_6
    iget-object v5, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 48
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationSpeakerCount_:I

    goto/16 :goto_0

    .line 49
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpeakerDiarization_:Z

    goto/16 :goto_0

    .line 50
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordConfidence_:Z

    goto/16 :goto_0

    .line 51
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->useEnhanced_:Z

    goto/16 :goto_0

    .line 52
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 53
    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 54
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSeparateRecognitionPerChannel_:Z

    goto/16 :goto_0

    .line 55
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableAutomaticPunctuation_:Z

    goto/16 :goto_0

    .line 56
    :sswitch_d
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    if-eqz v4, :cond_7

    .line 57
    invoke-virtual {v4}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v5

    .line 58
    :cond_7
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 59
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v5, v4}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;->d0(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    .line 61
    invoke-virtual {v5}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;->Y()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    goto/16 :goto_0

    .line 62
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordTimeOffsets_:Z

    goto/16 :goto_0

    .line 63
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->audioChannelCount_:I

    goto/16 :goto_0

    :sswitch_10
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_8

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 65
    :cond_8
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/SpeechContext;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    .line 67
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 68
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 69
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->profanityFilter_:Z

    goto/16 :goto_0

    .line 70
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->maxAlternatives_:I

    goto/16 :goto_0

    .line 71
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 72
    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 73
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->sampleRateHertz_:I

    goto/16 :goto_0

    .line 74
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 75
    iput v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_16
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 76
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_9

    .line 78
    iget-object p2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 79
    iget-object p2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    .line 80
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 81
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 82
    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_c

    .line 83
    iget-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_d

    .line 84
    iget-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    .line 85
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 86
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_16
        0x8 -> :sswitch_15
        0x10 -> :sswitch_14
        0x1a -> :sswitch_13
        0x20 -> :sswitch_12
        0x28 -> :sswitch_11
        0x32 -> :sswitch_10
        0x38 -> :sswitch_f
        0x40 -> :sswitch_e
        0x4a -> :sswitch_d
        0x58 -> :sswitch_c
        0x60 -> :sswitch_b
        0x6a -> :sswitch_a
        0x70 -> :sswitch_9
        0x78 -> :sswitch_8
        0x80 -> :sswitch_7
        0x88 -> :sswitch_6
        0x92 -> :sswitch_5
        0x9a -> :sswitch_4
        0xa2 -> :sswitch_3
        0xb2 -> :sswitch_2
        0xba -> :sswitch_1
        0xc2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->maxAlternatives_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->profanityFilter_:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;)Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;)Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordTimeOffsets_:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordConfidence_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableAutomaticPunctuation_:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpeakerDiarization_:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationSpeakerCount_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->useEnhanced_:Z

    return p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)I
    .locals 0

    iget p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    return p0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->sampleRateHertz_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->audioChannelCount_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSeparateRecognitionPerChannel_:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/j;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;->l0(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    .line 4
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    iget v2, p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getSampleRateHertz()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getSampleRateHertz()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAudioChannelCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAudioChannelCount()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSeparateRecognitionPerChannel()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSeparateRecognitionPerChannel()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAlternativeLanguageCodesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAlternativeLanguageCodesList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMaxAlternatives()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMaxAlternatives()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getProfanityFilter()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getProfanityFilter()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasAdaptation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasAdaptation()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasAdaptation()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 14
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAdaptation()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAdaptation()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasTranscriptNormalization()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasTranscriptNormalization()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasTranscriptNormalization()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 17
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getTranscriptNormalization()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getTranscriptNormalization()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 18
    :cond_d
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getSpeechContextsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getSpeechContextsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 19
    :cond_e
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableWordTimeOffsets()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableWordTimeOffsets()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 20
    :cond_f
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableWordConfidence()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableWordConfidence()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 21
    :cond_10
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableAutomaticPunctuation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableAutomaticPunctuation()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 22
    :cond_11
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenPunctuation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenPunctuation()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 23
    :cond_12
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenPunctuation()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 24
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 25
    :cond_13
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenEmojis()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenEmojis()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 26
    :cond_14
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenEmojis()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 27
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 28
    :cond_15
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpeakerDiarization()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpeakerDiarization()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 29
    :cond_16
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationSpeakerCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationSpeakerCount()I

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 30
    :cond_17
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasDiarizationConfig()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasDiarizationConfig()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 31
    :cond_18
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasDiarizationConfig()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 32
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationConfig()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationConfig()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    .line 33
    :cond_19
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasMetadata()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 34
    :cond_1a
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 35
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMetadata()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMetadata()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    .line 36
    :cond_1b
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 37
    :cond_1c
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getUseEnhanced()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getUseEnhanced()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 38
    :cond_1d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v3

    :cond_1e
    return v0
.end method

.method public getAdaptation()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;->getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdaptationOrBuilder()Lcom/google/cloud/speech/v1p1beta1/g;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAdaptation()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v0

    return-object v0
.end method

.method public getAlternativeLanguageCodes(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAlternativeLanguageCodesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAlternativeLanguageCodesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternativeLanguageCodesList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getAlternativeLanguageCodesList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAlternativeLanguageCodesList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getAudioChannelCount()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->audioChannelCount_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDiarizationConfig()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;->getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDiarizationConfigOrBuilder()Lcom/google/cloud/speech/v1p1beta1/f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationConfig()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDiarizationSpeakerCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationSpeakerCount_:I

    return v0
.end method

.method public getEnableAutomaticPunctuation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableAutomaticPunctuation_:Z

    return v0
.end method

.method public getEnableSeparateRecognitionPerChannel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSeparateRecognitionPerChannel_:Z

    return v0
.end method

.method public getEnableSpeakerDiarization()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpeakerDiarization_:Z

    return v0
.end method

.method public getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnableSpokenEmojisOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnableSpokenPunctuationOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getEnableWordConfidence()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordConfidence_:Z

    return v0
.end method

.method public getEnableWordTimeOffsets()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordTimeOffsets_:Z

    return v0
.end method

.method public getEncoding()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    .line 2
    invoke-static {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->valueOf(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    :cond_0
    return-object v0
.end method

.method public getEncodingValue()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMaxAlternatives()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->maxAlternatives_:I

    return v0
.end method

.method public getMetadata()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataOrBuilder()Lcom/google/cloud/speech/v1p1beta1/e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMetadata()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getProfanityFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->profanityFilter_:Z

    return v0
.end method

.method public getSampleRateHertz()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->sampleRateHertz_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->ENCODING_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 3
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->sampleRateHertz_:I

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 8
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->maxAlternatives_:I

    if-eqz v1, :cond_4

    const/4 v4, 0x4

    .line 10
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->profanityFilter_:Z

    if-eqz v1, :cond_5

    const/4 v4, 0x5

    .line 12
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    .line 13
    :goto_1
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    const/4 v4, 0x6

    .line 14
    iget-object v5, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_6
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->audioChannelCount_:I

    if-eqz v1, :cond_7

    const/4 v4, 0x7

    .line 16
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordTimeOffsets_:Z

    if-eqz v1, :cond_8

    const/16 v4, 0x8

    .line 18
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 20
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMetadata()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_9
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableAutomaticPunctuation_:Z

    if-eqz v1, :cond_a

    const/16 v4, 0xb

    .line 22
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_a
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSeparateRecognitionPerChannel_:Z

    if-eqz v1, :cond_b

    const/16 v4, 0xc

    .line 24
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_b
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    .line 26
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_c
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->useEnhanced_:Z

    if-eqz v1, :cond_d

    const/16 v4, 0xe

    .line 28
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_d
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordConfidence_:Z

    if-eqz v1, :cond_e

    const/16 v4, 0xf

    .line 30
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_e
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpeakerDiarization_:Z

    if-eqz v1, :cond_f

    const/16 v4, 0x10

    .line 32
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_f
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationSpeakerCount_:I

    if-eqz v1, :cond_10

    const/16 v4, 0x11

    .line 34
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    const/4 v1, 0x0

    .line 35
    :goto_2
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 36
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_11
    add-int/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAlternativeLanguageCodesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 38
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    if-eqz v1, :cond_12

    const/16 v1, 0x13

    .line 39
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationConfig()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_12
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    if-eqz v1, :cond_13

    const/16 v1, 0x14

    .line 41
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAdaptation()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_13
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_14

    const/16 v1, 0x16

    .line 43
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_14
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_15

    const/16 v1, 0x17

    .line 46
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_15
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    if-eqz v1, :cond_16

    const/16 v1, 0x18

    .line 48
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getTranscriptNormalization()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSpeechContexts(I)Lcom/google/cloud/speech/v1p1beta1/SpeechContext;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1p1beta1/SpeechContext;

    return-object p1
.end method

.method public getSpeechContextsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpeechContextsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1p1beta1/SpeechContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    return-object v0
.end method

.method public getSpeechContextsOrBuilder(I)Lcom/google/cloud/speech/v1p1beta1/i;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1p1beta1/i;

    return-object p1
.end method

.method public getSpeechContextsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/speech/v1p1beta1/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    return-object v0
.end method

.method public getTranscriptNormalization()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;->getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTranscriptNormalizationOrBuilder()Lcom/google/cloud/speech/v1p1beta1/p;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getTranscriptNormalization()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUseEnhanced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->useEnhanced_:Z

    return v0
.end method

.method public hasAdaptation()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDiarizationConfig()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnableSpokenEmojis()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnableSpokenPunctuation()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTranscriptNormalization()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getSampleRateHertz()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAudioChannelCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSeparateRecognitionPerChannel()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAlternativeLanguageCodesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAlternativeLanguageCodesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMaxAlternatives()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getProfanityFilter()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasAdaptation()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAdaptation()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasTranscriptNormalization()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getTranscriptNormalization()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getSpeechContextsCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getSpeechContextsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableWordTimeOffsets()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableWordConfidence()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableAutomaticPunctuation()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenPunctuation()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasEnableSpokenEmojis()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpeakerDiarization()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationSpeakerCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasDiarizationConfig()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationConfig()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMetadata()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 31
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 32
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getUseEnhanced()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 33
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/j;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    const-class v2, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->newBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    invoke-direct {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;-><init>(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;-><init>(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;->l0(Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->ENCODING_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 2
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->encoding_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->sampleRateHertz_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->maxAlternatives_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->profanityFilter_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 13
    iget-object v3, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->speechContexts_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_5
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->audioChannelCount_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 15
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 16
    :cond_6
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordTimeOffsets_:Z

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 17
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->metadata_:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 19
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getMetadata()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 20
    :cond_8
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableAutomaticPunctuation_:Z

    if-eqz v1, :cond_9

    const/16 v2, 0xb

    .line 21
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 22
    :cond_9
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSeparateRecognitionPerChannel_:Z

    if-eqz v1, :cond_a

    const/16 v2, 0xc

    .line 23
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 24
    :cond_a
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xd

    .line 25
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->model_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26
    :cond_b
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->useEnhanced_:Z

    if-eqz v1, :cond_c

    const/16 v2, 0xe

    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 28
    :cond_c
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableWordConfidence_:Z

    if-eqz v1, :cond_d

    const/16 v2, 0xf

    .line 29
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 30
    :cond_d
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpeakerDiarization_:Z

    if-eqz v1, :cond_e

    const/16 v2, 0x10

    .line 31
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 32
    :cond_e
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationSpeakerCount_:I

    if-eqz v1, :cond_f

    const/16 v2, 0x11

    .line 33
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 34
    :cond_f
    :goto_1
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/16 v1, 0x12

    .line 35
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->alternativeLanguageCodes_:Lcom/google/protobuf/z0;

    .line 36
    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    .line 37
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_10
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->diarizationConfig_:Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    .line 39
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDiarizationConfig()Lcom/google/cloud/speech/v1p1beta1/SpeakerDiarizationConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 40
    :cond_11
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->adaptation_:Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    .line 41
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getAdaptation()Lcom/google/cloud/speech/v1p1beta1/SpeechAdaptation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 42
    :cond_12
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenPunctuation_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_13

    const/16 v0, 0x16

    .line 43
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 44
    :cond_13
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->enableSpokenEmojis_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_14

    const/16 v0, 0x17

    .line 45
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 46
    :cond_14
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->transcriptNormalization_:Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    if-eqz v0, :cond_15

    const/16 v0, 0x18

    .line 47
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getTranscriptNormalization()Lcom/google/cloud/speech/v1p1beta1/TranscriptNormalization;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 48
    :cond_15
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
