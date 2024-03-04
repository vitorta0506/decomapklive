.class public final Lcom/google/cloud/speech/v1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final C:Lcom/google/protobuf/Descriptors$b;

.field static final D:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final E:Lcom/google/protobuf/Descriptors$b;

.field static final F:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final G:Lcom/google/protobuf/Descriptors$b;

.field static final H:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final I:Lcom/google/protobuf/Descriptors$b;

.field static final J:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static K:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/google/protobuf/Descriptors$b;

.field static final t:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final u:Lcom/google/protobuf/Descriptors$b;

.field static final v:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final w:Lcom/google/protobuf/Descriptors$b;

.field static final x:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final y:Lcom/google/protobuf/Descriptors$b;

.field static final z:Lcom/google/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const-string v0, "\n)google/cloud/speech/v1/cloud_speech.proto\u0012\u0016google.cloud.speech.v1\u001a\u001cgoogle/api/annotations.proto\u001a\u0017google/api/client.proto\u001a\u001fgoogle/api/field_behavior.proto\u001a%google/cloud/speech/v1/resource.proto\u001a#google/longrunning/operations.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u0017google/rpc/status.proto\"\u0090\u0001\n\u0010RecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2).google.cloud.speech.v1.RecognitionConfigB\u0003\u00e0A\u0002\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2(.google.cloud.speech.v1.RecognitionAudioB\u0003\u00e0A\u0002\"\u00e7\u0001\n\u001bLongRunningRecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2).google.cloud.speech.v1.RecognitionConfigB\u0003\u00e0A\u0002\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2(.google.cloud.speech.v1.RecognitionAudioB\u0003\u00e0A\u0002\u0012J\n\routput_config\u0018\u0004 \u0001(\u000b2..google.cloud.speech.v1.TranscriptOutputConfigB\u0003\u00e0A\u0001\":\n\u0016TranscriptOutputConfig\u0012\u0011\n\u0007gcs_uri\u0018\u0001 \u0001(\tH\u0000B\r\n\u000boutput_type\"\u0099\u0001\n\u0019StreamingRecognizeRequest\u0012N\n\u0010streaming_config\u0018\u0001 \u0001(\u000b22.google.cloud.speech.v1.StreamingRecognitionConfigH\u0000\u0012\u0017\n\raudio_content\u0018\u0002 \u0001(\u000cH\u0000B\u0013\n\u0011streaming_request\"\u008f\u0001\n\u001aStreamingRecognitionConfig\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2).google.cloud.speech.v1.RecognitionConfigB\u0003\u00e0A\u0002\u0012\u0018\n\u0010single_utterance\u0018\u0002 \u0001(\u0008\u0012\u0017\n\u000finterim_results\u0018\u0003 \u0001(\u0008\"\u00e9\u0007\n\u0011RecognitionConfig\u0012I\n\u0008encoding\u0018\u0001 \u0001(\u000e27.google.cloud.speech.v1.RecognitionConfig.AudioEncoding\u0012\u0019\n\u0011sample_rate_hertz\u0018\u0002 \u0001(\u0005\u0012\u001b\n\u0013audio_channel_count\u0018\u0007 \u0001(\u0005\u0012/\n\'enable_separate_recognition_per_channel\u0018\u000c \u0001(\u0008\u0012\u001a\n\rlanguage_code\u0018\u0003 \u0001(\tB\u0003\u00e0A\u0002\u0012\"\n\u001aalternative_language_codes\u0018\u0012 \u0003(\t\u0012\u0018\n\u0010max_alternatives\u0018\u0004 \u0001(\u0005\u0012\u0018\n\u0010profanity_filter\u0018\u0005 \u0001(\u0008\u0012<\n\nadaptation\u0018\u0014 \u0001(\u000b2(.google.cloud.speech.v1.SpeechAdaptation\u0012>\n\u000fspeech_contexts\u0018\u0006 \u0003(\u000b2%.google.cloud.speech.v1.SpeechContext\u0012 \n\u0018enable_word_time_offsets\u0018\u0008 \u0001(\u0008\u0012\u001e\n\u0016enable_word_confidence\u0018\u000f \u0001(\u0008\u0012$\n\u001cenable_automatic_punctuation\u0018\u000b \u0001(\u0008\u0012=\n\u0019enable_spoken_punctuation\u0018\u0016 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00128\n\u0014enable_spoken_emojis\u0018\u0017 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012L\n\u0012diarization_config\u0018\u0013 \u0001(\u000b20.google.cloud.speech.v1.SpeakerDiarizationConfig\u0012=\n\u0008metadata\u0018\t \u0001(\u000b2+.google.cloud.speech.v1.RecognitionMetadata\u0012\r\n\u0005model\u0018\r \u0001(\t\u0012\u0014\n\u000cuse_enhanced\u0018\u000e \u0001(\u0008\"\u009a\u0001\n\rAudioEncoding\u0012\u0018\n\u0014ENCODING_UNSPECIFIED\u0010\u0000\u0012\u000c\n\u0008LINEAR16\u0010\u0001\u0012\u0008\n\u0004FLAC\u0010\u0002\u0012\t\n\u0005MULAW\u0010\u0003\u0012\u0007\n\u0003AMR\u0010\u0004\u0012\n\n\u0006AMR_WB\u0010\u0005\u0012\u000c\n\u0008OGG_OPUS\u0010\u0006\u0012\u001a\n\u0016SPEEX_WITH_HEADER_BYTE\u0010\u0007\u0012\r\n\tWEBM_OPUS\u0010\t\"\u0090\u0001\n\u0018SpeakerDiarizationConfig\u0012\"\n\u001aenable_speaker_diarization\u0018\u0001 \u0001(\u0008\u0012\u0019\n\u0011min_speaker_count\u0018\u0002 \u0001(\u0005\u0012\u0019\n\u0011max_speaker_count\u0018\u0003 \u0001(\u0005\u0012\u001a\n\u000bspeaker_tag\u0018\u0005 \u0001(\u0005B\u0005\u0018\u0001\u00e0A\u0003\"\u00a0\u0008\n\u0013RecognitionMetadata\u0012U\n\u0010interaction_type\u0018\u0001 \u0001(\u000e2;.google.cloud.speech.v1.RecognitionMetadata.InteractionType\u0012$\n\u001cindustry_naics_code_of_audio\u0018\u0003 \u0001(\r\u0012[\n\u0013microphone_distance\u0018\u0004 \u0001(\u000e2>.google.cloud.speech.v1.RecognitionMetadata.MicrophoneDistance\u0012Z\n\u0013original_media_type\u0018\u0005 \u0001(\u000e2=.google.cloud.speech.v1.RecognitionMetadata.OriginalMediaType\u0012^\n\u0015recording_device_type\u0018\u0006 \u0001(\u000e2?.google.cloud.speech.v1.RecognitionMetadata.RecordingDeviceType\u0012\u001d\n\u0015recording_device_name\u0018\u0007 \u0001(\t\u0012\u001a\n\u0012original_mime_type\u0018\u0008 \u0001(\t\u0012\u0013\n\u000baudio_topic\u0018\n \u0001(\t\"\u00c5\u0001\n\u000fInteractionType\u0012 \n\u001cINTERACTION_TYPE_UNSPECIFIED\u0010\u0000\u0012\u000e\n\nDISCUSSION\u0010\u0001\u0012\u0010\n\u000cPRESENTATION\u0010\u0002\u0012\u000e\n\nPHONE_CALL\u0010\u0003\u0012\r\n\tVOICEMAIL\u0010\u0004\u0012\u001b\n\u0017PROFESSIONALLY_PRODUCED\u0010\u0005\u0012\u0010\n\u000cVOICE_SEARCH\u0010\u0006\u0012\u0011\n\rVOICE_COMMAND\u0010\u0007\u0012\r\n\tDICTATION\u0010\u0008\"d\n\u0012MicrophoneDistance\u0012#\n\u001fMICROPHONE_DISTANCE_UNSPECIFIED\u0010\u0000\u0012\r\n\tNEARFIELD\u0010\u0001\u0012\u000c\n\u0008MIDFIELD\u0010\u0002\u0012\u000c\n\u0008FARFIELD\u0010\u0003\"N\n\u0011OriginalMediaType\u0012#\n\u001fORIGINAL_MEDIA_TYPE_UNSPECIFIED\u0010\u0000\u0012\t\n\u0005AUDIO\u0010\u0001\u0012\t\n\u0005VIDEO\u0010\u0002\"\u00a4\u0001\n\u0013RecordingDeviceType\u0012%\n!RECORDING_DEVICE_TYPE_UNSPECIFIED\u0010\u0000\u0012\u000e\n\nSMARTPHONE\u0010\u0001\u0012\u0006\n\u0002PC\u0010\u0002\u0012\u000e\n\nPHONE_LINE\u0010\u0003\u0012\u000b\n\u0007VEHICLE\u0010\u0004\u0012\u0018\n\u0014OTHER_OUTDOOR_DEVICE\u0010\u0005\u0012\u0017\n\u0013OTHER_INDOOR_DEVICE\u0010\u0006\"/\n\rSpeechContext\u0012\u000f\n\u0007phrases\u0018\u0001 \u0003(\t\u0012\r\n\u0005boost\u0018\u0004 \u0001(\u0002\"D\n\u0010RecognitionAudio\u0012\u0011\n\u0007content\u0018\u0001 \u0001(\u000cH\u0000\u0012\r\n\u0003uri\u0018\u0002 \u0001(\tH\u0000B\u000e\n\u000caudio_source\"\u008b\u0001\n\u0011RecognizeResponse\u0012@\n\u0007results\u0018\u0002 \u0003(\u000b2/.google.cloud.speech.v1.SpeechRecognitionResult\u00124\n\u0011total_billed_time\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\"\u0087\u0002\n\u001cLongRunningRecognizeResponse\u0012@\n\u0007results\u0018\u0002 \u0003(\u000b2/.google.cloud.speech.v1.SpeechRecognitionResult\u00124\n\u0011total_billed_time\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012E\n\routput_config\u0018\u0006 \u0001(\u000b2..google.cloud.speech.v1.TranscriptOutputConfig\u0012(\n\u000coutput_error\u0018\u0007 \u0001(\u000b2\u0012.google.rpc.Status\"\u00b0\u0001\n\u001cLongRunningRecognizeMetadata\u0012\u0018\n\u0010progress_percent\u0018\u0001 \u0001(\u0005\u0012.\n\nstart_time\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00124\n\u0010last_update_time\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0010\n\u0003uri\u0018\u0004 \u0001(\tB\u0003\u00e0A\u0003\"\u00e7\u0002\n\u001aStreamingRecognizeResponse\u0012!\n\u0005error\u0018\u0001 \u0001(\u000b2\u0012.google.rpc.Status\u0012C\n\u0007results\u0018\u0002 \u0003(\u000b22.google.cloud.speech.v1.StreamingRecognitionResult\u0012]\n\u0011speech_event_type\u0018\u0004 \u0001(\u000e2B.google.cloud.speech.v1.StreamingRecognizeResponse.SpeechEventType\u00124\n\u0011total_billed_time\u0018\u0005 \u0001(\u000b2\u0019.google.protobuf.Duration\"L\n\u000fSpeechEventType\u0012\u001c\n\u0018SPEECH_EVENT_UNSPECIFIED\u0010\u0000\u0012\u001b\n\u0017END_OF_SINGLE_UTTERANCE\u0010\u0001\"\u00f2\u0001\n\u001aStreamingRecognitionResult\u0012J\n\u000calternatives\u0018\u0001 \u0003(\u000b24.google.cloud.speech.v1.SpeechRecognitionAlternative\u0012\u0010\n\u0008is_final\u0018\u0002 \u0001(\u0008\u0012\u0011\n\tstability\u0018\u0003 \u0001(\u0002\u00122\n\u000fresult_end_time\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u0013\n\u000bchannel_tag\u0018\u0005 \u0001(\u0005\u0012\u001a\n\rlanguage_code\u0018\u0006 \u0001(\tB\u0003\u00e0A\u0003\"\u00ca\u0001\n\u0017SpeechRecognitionResult\u0012J\n\u000calternatives\u0018\u0001 \u0003(\u000b24.google.cloud.speech.v1.SpeechRecognitionAlternative\u0012\u0013\n\u000bchannel_tag\u0018\u0002 \u0001(\u0005\u00122\n\u000fresult_end_time\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001a\n\rlanguage_code\u0018\u0005 \u0001(\tB\u0003\u00e0A\u0003\"w\n\u001cSpeechRecognitionAlternative\u0012\u0012\n\ntranscript\u0018\u0001 \u0001(\t\u0012\u0012\n\nconfidence\u0018\u0002 \u0001(\u0002\u0012/\n\u0005words\u0018\u0003 \u0003(\u000b2 .google.cloud.speech.v1.WordInfo\"\u00a2\u0001\n\u0008WordInfo\u0012-\n\nstart_time\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012+\n\u0008end_time\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u000c\n\u0004word\u0018\u0003 \u0001(\t\u0012\u0012\n\nconfidence\u0018\u0004 \u0001(\u0002\u0012\u0018\n\u000bspeaker_tag\u0018\u0005 \u0001(\u0005B\u0003\u00e0A\u00032\u00d1\u0004\n\u0006Speech\u0012\u0090\u0001\n\tRecognize\u0012(.google.cloud.speech.v1.RecognizeRequest\u001a).google.cloud.speech.v1.RecognizeResponse\".\u0082\u00d3\u00e4\u0093\u0002\u0019\"\u0014/v1/speech:recognize:\u0001*\u00daA\u000cconfig,audio\u0012\u00e4\u0001\n\u0014LongRunningRecognize\u00123.google.cloud.speech.v1.LongRunningRecognizeRequest\u001a\u001d.google.longrunning.Operation\"x\u0082\u00d3\u00e4\u0093\u0002$\"\u001f/v1/speech:longrunningrecognize:\u0001*\u00daA\u000cconfig,audio\u00caA<\n\u001cLongRunningRecognizeResponse\u0012\u001cLongRunningRecognizeMetadata\u0012\u0081\u0001\n\u0012StreamingRecognize\u00121.google.cloud.speech.v1.StreamingRecognizeRequest\u001a2.google.cloud.speech.v1.StreamingRecognizeResponse\"\u0000(\u00010\u0001\u001aI\u00caA\u0015speech.googleapis.com\u00d2A.https://www.googleapis.com/auth/cloud-platformBr\n\u001acom.google.cloud.speech.v1B\u000bSpeechProtoP\u0001Z<google.golang.org/genproto/googleapis/cloud/speech/v1;speech\u00f8\u0001\u0001\u00a2\u0002\u0003GCSb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/api/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/api/c0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lcom/google/cloud/speech/v1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 9
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    .line 10
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    .line 11
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/cloud/speech/v1/j;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->a:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Config"

    const-string v4, "Audio"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v0, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->c:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "OutputConfig"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->e:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "GcsUri"

    const-string v6, "OutputType"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->g:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "StreamingConfig"

    const-string v6, "AudioContent"

    const-string v7, "StreamingRequest"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "SingleUtterance"

    const-string v6, "InterimResults"

    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->k:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "Encoding"

    const-string v14, "SampleRateHertz"

    const-string v15, "AudioChannelCount"

    const-string v16, "EnableSeparateRecognitionPerChannel"

    const-string v17, "LanguageCode"

    const-string v18, "AlternativeLanguageCodes"

    const-string v19, "MaxAlternatives"

    const-string v20, "ProfanityFilter"

    const-string v21, "Adaptation"

    const-string v22, "SpeechContexts"

    const-string v23, "EnableWordTimeOffsets"

    const-string v24, "EnableWordConfidence"

    const-string v25, "EnableAutomaticPunctuation"

    const-string v26, "EnableSpokenPunctuation"

    const-string v27, "EnableSpokenEmojis"

    const-string v28, "DiarizationConfig"

    const-string v29, "Metadata"

    const-string v30, "Model"

    const-string v31, "UseEnhanced"

    filled-new-array/range {v13 .. v31}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->m:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "EnableSpeakerDiarization"

    const-string v4, "MinSpeakerCount"

    const-string v6, "MaxSpeakerCount"

    const-string v7, "SpeakerTag"

    filled-new-array {v3, v4, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->o:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "InteractionType"

    const-string v14, "IndustryNaicsCodeOfAudio"

    const-string v15, "MicrophoneDistance"

    const-string v16, "OriginalMediaType"

    const-string v17, "RecordingDeviceType"

    const-string v18, "RecordingDeviceName"

    const-string v19, "OriginalMimeType"

    const-string v20, "AudioTopic"

    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->q:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Phrases"

    const-string v4, "Boost"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1/j;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->s:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Content"

    const-string v3, "Uri"

    const-string v4, "AudioSource"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->u:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Results"

    const-string v4, "TotalBilledTime"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->w:Lcom/google/protobuf/Descriptors$b;

    .line 35
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "OutputError"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 36
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->y:Lcom/google/protobuf/Descriptors$b;

    .line 37
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "ProgressPercent"

    const-string v6, "StartTime"

    const-string v8, "LastUpdateTime"

    filled-new-array {v5, v6, v8, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 38
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->A:Lcom/google/protobuf/Descriptors$b;

    .line 39
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Error"

    const-string v5, "SpeechEventType"

    filled-new-array {v3, v2, v5, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 40
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->C:Lcom/google/protobuf/Descriptors$b;

    .line 41
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Alternatives"

    const-string v9, "IsFinal"

    const-string v10, "Stability"

    const-string v11, "ResultEndTime"

    const-string v12, "ChannelTag"

    const-string v13, "LanguageCode"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 42
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->E:Lcom/google/protobuf/Descriptors$b;

    .line 43
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Alternatives"

    const-string v3, "ChannelTag"

    const-string v4, "ResultEndTime"

    const-string v5, "LanguageCode"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 44
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->G:Lcom/google/protobuf/Descriptors$b;

    .line 45
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Transcript"

    const-string v3, "Confidence"

    const-string v4, "Words"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 46
    invoke-static {}, Lcom/google/cloud/speech/v1/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1/j;->I:Lcom/google/protobuf/Descriptors$b;

    .line 47
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "EndTime"

    const-string v4, "Word"

    filled-new-array {v6, v2, v4, v3, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1/j;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 48
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/google/api/m;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 50
    sget-object v1, Lcom/google/api/c0;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 51
    sget-object v1, Lcom/google/api/b;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 52
    sget-object v1, Lcom/google/api/m;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 53
    sget-object v1, Lcom/google/api/m;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 54
    sget-object v1, Lcom/google/longrunning/c;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 55
    sget-object v1, Lcom/google/cloud/speech/v1/j;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 56
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 57
    invoke-static {}, Lcom/google/api/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 58
    invoke-static {}, Lcom/google/api/c0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 59
    invoke-static {}, Lcom/google/cloud/speech/v1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 60
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 61
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 62
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 63
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 64
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/j;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
