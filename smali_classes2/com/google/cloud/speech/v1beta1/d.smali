.class public final Lcom/google/cloud/speech/v1beta1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static C:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 10

    const-string v0, "\n.google/cloud/speech/v1beta1/cloud_speech.proto\u0012\u001bgoogle.cloud.speech.v1beta1\u001a\u001cgoogle/api/annotations.proto\u001a#google/longrunning/operations.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u0017google/rpc/status.proto\"\u0094\u0001\n\u0014SyncRecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2..google.cloud.speech.v1beta1.RecognitionConfig\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2-.google.cloud.speech.v1beta1.RecognitionAudio\"\u0095\u0001\n\u0015AsyncRecognizeRequest\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2..google.cloud.speech.v1beta1.RecognitionConfig\u0012<\n\u0005audio\u0018\u0002 \u0001(\u000b2-.google.cloud.speech.v1beta1.RecognitionAudio\"\u009e\u0001\n\u0019StreamingRecognizeRequest\u0012S\n\u0010streaming_config\u0018\u0001 \u0001(\u000b27.google.cloud.speech.v1beta1.StreamingRecognitionConfigH\u0000\u0012\u0017\n\raudio_content\u0018\u0002 \u0001(\u000cH\u0000B\u0013\n\u0011streaming_request\"\u008f\u0001\n\u001aStreamingRecognitionConfig\u0012>\n\u0006config\u0018\u0001 \u0001(\u000b2..google.cloud.speech.v1beta1.RecognitionConfig\u0012\u0018\n\u0010single_utterance\u0018\u0002 \u0001(\u0008\u0012\u0017\n\u000finterim_results\u0018\u0003 \u0001(\u0008\"\u00ea\u0002\n\u0011RecognitionConfig\u0012N\n\u0008encoding\u0018\u0001 \u0001(\u000e2<.google.cloud.speech.v1beta1.RecognitionConfig.AudioEncoding\u0012\u0013\n\u000bsample_rate\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rlanguage_code\u0018\u0003 \u0001(\t\u0012\u0018\n\u0010max_alternatives\u0018\u0004 \u0001(\u0005\u0012\u0018\n\u0010profanity_filter\u0018\u0005 \u0001(\u0008\u0012B\n\u000espeech_context\u0018\u0006 \u0001(\u000b2*.google.cloud.speech.v1beta1.SpeechContext\"a\n\rAudioEncoding\u0012\u0018\n\u0014ENCODING_UNSPECIFIED\u0010\u0000\u0012\u000c\n\u0008LINEAR16\u0010\u0001\u0012\u0008\n\u0004FLAC\u0010\u0002\u0012\t\n\u0005MULAW\u0010\u0003\u0012\u0007\n\u0003AMR\u0010\u0004\u0012\n\n\u0006AMR_WB\u0010\u0005\" \n\rSpeechContext\u0012\u000f\n\u0007phrases\u0018\u0001 \u0003(\t\"D\n\u0010RecognitionAudio\u0012\u0011\n\u0007content\u0018\u0001 \u0001(\u000cH\u0000\u0012\r\n\u0003uri\u0018\u0002 \u0001(\tH\u0000B\u000e\n\u000caudio_source\"^\n\u0015SyncRecognizeResponse\u0012E\n\u0007results\u0018\u0002 \u0003(\u000b24.google.cloud.speech.v1beta1.SpeechRecognitionResult\"_\n\u0016AsyncRecognizeResponse\u0012E\n\u0007results\u0018\u0002 \u0003(\u000b24.google.cloud.speech.v1beta1.SpeechRecognitionResult\"\u0098\u0001\n\u0016AsyncRecognizeMetadata\u0012\u0018\n\u0010progress_percent\u0018\u0001 \u0001(\u0005\u0012.\n\nstart_time\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00124\n\u0010last_update_time\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\"\u0085\u0003\n\u001aStreamingRecognizeResponse\u0012!\n\u0005error\u0018\u0001 \u0001(\u000b2\u0012.google.rpc.Status\u0012H\n\u0007results\u0018\u0002 \u0003(\u000b27.google.cloud.speech.v1beta1.StreamingRecognitionResult\u0012\u0014\n\u000cresult_index\u0018\u0003 \u0001(\u0005\u0012_\n\u000fendpointer_type\u0018\u0004 \u0001(\u000e2F.google.cloud.speech.v1beta1.StreamingRecognizeResponse.EndpointerType\"\u0082\u0001\n\u000eEndpointerType\u0012 \n\u001cENDPOINTER_EVENT_UNSPECIFIED\u0010\u0000\u0012\u0013\n\u000fSTART_OF_SPEECH\u0010\u0001\u0012\u0011\n\rEND_OF_SPEECH\u0010\u0002\u0012\u0010\n\u000cEND_OF_AUDIO\u0010\u0003\u0012\u0014\n\u0010END_OF_UTTERANCE\u0010\u0004\"\u0092\u0001\n\u001aStreamingRecognitionResult\u0012O\n\u000calternatives\u0018\u0001 \u0003(\u000b29.google.cloud.speech.v1beta1.SpeechRecognitionAlternative\u0012\u0010\n\u0008is_final\u0018\u0002 \u0001(\u0008\u0012\u0011\n\tstability\u0018\u0003 \u0001(\u0002\"j\n\u0017SpeechRecognitionResult\u0012O\n\u000calternatives\u0018\u0001 \u0003(\u000b29.google.cloud.speech.v1beta1.SpeechRecognitionAlternative\"F\n\u001cSpeechRecognitionAlternative\u0012\u0012\n\ntranscript\u0018\u0001 \u0001(\t\u0012\u0012\n\nconfidence\u0018\u0002 \u0001(\u00022\u00c8\u0003\n\u0006Speech\u0012\u00a0\u0001\n\rSyncRecognize\u00121.google.cloud.speech.v1beta1.SyncRecognizeRequest\u001a2.google.cloud.speech.v1beta1.SyncRecognizeResponse\"(\u0082\u00d3\u00e4\u0093\u0002\"\"\u001d/v1beta1/speech:syncrecognize:\u0001*\u0012\u008e\u0001\n\u000eAsyncRecognize\u00122.google.cloud.speech.v1beta1.AsyncRecognizeRequest\u001a\u001d.google.longrunning.Operation\")\u0082\u00d3\u00e4\u0093\u0002#\"\u001e/v1beta1/speech:asyncrecognize:\u0001*\u0012\u0089\u0001\n\u0012StreamingRecognize\u00126.google.cloud.speech.v1beta1.StreamingRecognizeRequest\u001a7.google.cloud.speech.v1beta1.StreamingRecognizeResponse(\u00010\u0001Bs\n\u001fcom.google.cloud.speech.v1beta1B\u000bSpeechProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/cloud/speech/v1beta1;speechb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/cloud/speech/v1beta1/d$a;

    invoke-direct {v1}, Lcom/google/cloud/speech/v1beta1/d$a;-><init>()V

    const/4 v2, 0x5

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 5
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 6
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 7
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    .line 8
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 9
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->a:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Config"

    const-string v4, "Audio"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->c:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->e:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "StreamingConfig"

    const-string v5, "AudioContent"

    const-string v6, "StreamingRequest"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->g:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "SingleUtterance"

    const-string v5, "InterimResults"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->i:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Encoding"

    const-string v4, "SampleRate"

    const-string v5, "LanguageCode"

    const-string v6, "MaxAlternatives"

    const-string v7, "ProfanityFilter"

    const-string v8, "SpeechContext"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->k:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Phrases"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->m:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Content"

    const-string v3, "Uri"

    const-string v4, "AudioSource"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->o:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Results"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->q:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->s:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ProgressPercent"

    const-string v4, "StartTime"

    const-string v5, "LastUpdateTime"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->u:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Error"

    const-string v4, "ResultIndex"

    const-string v5, "EndpointerType"

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->w:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Alternatives"

    const-string v3, "IsFinal"

    const-string v4, "Stability"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->y:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/d;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1beta1/d;->A:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Transcript"

    const-string v3, "Confidence"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1beta1/d;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/google/api/b;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 39
    sget-object v1, Lcom/google/cloud/speech/v1beta1/d;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 40
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/google/cloud/speech/v1beta1/d;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1beta1/d;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
