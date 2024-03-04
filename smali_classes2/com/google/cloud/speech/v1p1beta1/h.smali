.class public final Lcom/google/cloud/speech/v1p1beta1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
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

.field private static y:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "\n;google/cloud/speech/v1p1beta1/cloud_speech_adaptation.proto\u0012\u001dgoogle.cloud.speech.v1p1beta1\u001a\u001cgoogle/api/annotations.proto\u001a\u0017google/api/client.proto\u001a\u001fgoogle/api/field_behavior.proto\u001a\u0019google/api/resource.proto\u001a,google/cloud/speech/v1p1beta1/resource.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a google/protobuf/field_mask.proto\"\u00b0\u0001\n\u0016CreatePhraseSetRequest\u00127\n\u0006parent\u0018\u0001 \u0001(\tB\'\u00e0A\u0002\u00faA!\u0012\u001fspeech.googleapis.com/PhraseSet\u0012\u001a\n\rphrase_set_id\u0018\u0002 \u0001(\tB\u0003\u00e0A\u0002\u0012A\n\nphrase_set\u0018\u0003 \u0001(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSetB\u0003\u00e0A\u0002\"\u008c\u0001\n\u0016UpdatePhraseSetRequest\u0012A\n\nphrase_set\u0018\u0001 \u0001(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSetB\u0003\u00e0A\u0002\u0012/\n\u000bupdate_mask\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.FieldMask\"L\n\u0013GetPhraseSetRequest\u00125\n\u0004name\u0018\u0001 \u0001(\tB\'\u00e0A\u0002\u00faA!\n\u001fspeech.googleapis.com/PhraseSet\"v\n\u0014ListPhraseSetRequest\u00127\n\u0006parent\u0018\u0001 \u0001(\tB\'\u00e0A\u0002\u00faA!\u0012\u001fspeech.googleapis.com/PhraseSet\u0012\u0011\n\tpage_size\u0018\u0002 \u0001(\u0005\u0012\u0012\n\npage_token\u0018\u0003 \u0001(\t\"o\n\u0015ListPhraseSetResponse\u0012=\n\u000bphrase_sets\u0018\u0001 \u0003(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSet\u0012\u0017\n\u000fnext_page_token\u0018\u0002 \u0001(\t\"O\n\u0016DeletePhraseSetRequest\u00125\n\u0004name\u0018\u0001 \u0001(\tB\'\u00e0A\u0002\u00faA!\n\u001fspeech.googleapis.com/PhraseSet\"\u00ba\u0001\n\u0018CreateCustomClassRequest\u00129\n\u0006parent\u0018\u0001 \u0001(\tB)\u00e0A\u0002\u00faA#\u0012!speech.googleapis.com/CustomClass\u0012\u001c\n\u000fcustom_class_id\u0018\u0002 \u0001(\tB\u0003\u00e0A\u0002\u0012E\n\u000ccustom_class\u0018\u0003 \u0001(\u000b2*.google.cloud.speech.v1p1beta1.CustomClassB\u0003\u00e0A\u0002\"\u0092\u0001\n\u0018UpdateCustomClassRequest\u0012E\n\u000ccustom_class\u0018\u0001 \u0001(\u000b2*.google.cloud.speech.v1p1beta1.CustomClassB\u0003\u00e0A\u0002\u0012/\n\u000bupdate_mask\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.FieldMask\"P\n\u0015GetCustomClassRequest\u00127\n\u0004name\u0018\u0001 \u0001(\tB)\u00e0A\u0002\u00faA#\n!speech.googleapis.com/CustomClass\"|\n\u0018ListCustomClassesRequest\u00129\n\u0006parent\u0018\u0001 \u0001(\tB)\u00e0A\u0002\u00faA#\u0012!speech.googleapis.com/CustomClass\u0012\u0011\n\tpage_size\u0018\u0002 \u0001(\u0005\u0012\u0012\n\npage_token\u0018\u0003 \u0001(\t\"x\n\u0019ListCustomClassesResponse\u0012B\n\u000ecustom_classes\u0018\u0001 \u0003(\u000b2*.google.cloud.speech.v1p1beta1.CustomClass\u0012\u0017\n\u000fnext_page_token\u0018\u0002 \u0001(\t\"S\n\u0018DeleteCustomClassRequest\u00127\n\u0004name\u0018\u0001 \u0001(\tB)\u00e0A\u0002\u00faA#\n!speech.googleapis.com/CustomClass2\u00d2\u0010\n\nAdaptation\u0012\u00d6\u0001\n\u000fCreatePhraseSet\u00125.google.cloud.speech.v1p1beta1.CreatePhraseSetRequest\u001a(.google.cloud.speech.v1p1beta1.PhraseSet\"b\u0082\u00d3\u00e4\u0093\u0002:\"5/v1p1beta1/{parent=projects/*/locations/*}/phraseSets:\u0001*\u00daA\u001fparent,phrase_set,phrase_set_id\u0012\u00b2\u0001\n\u000cGetPhraseSet\u00122.google.cloud.speech.v1p1beta1.GetPhraseSetRequest\u001a(.google.cloud.speech.v1p1beta1.PhraseSet\"D\u0082\u00d3\u00e4\u0093\u00027\u00125/v1p1beta1/{name=projects/*/locations/*/phraseSets/*}\u00daA\u0004name\u0012\u00c2\u0001\n\rListPhraseSet\u00123.google.cloud.speech.v1p1beta1.ListPhraseSetRequest\u001a4.google.cloud.speech.v1p1beta1.ListPhraseSetResponse\"F\u0082\u00d3\u00e4\u0093\u00027\u00125/v1p1beta1/{parent=projects/*/locations/*}/phraseSets\u00daA\u0006parent\u0012\u00e1\u0001\n\u000fUpdatePhraseSet\u00125.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest\u001a(.google.cloud.speech.v1p1beta1.PhraseSet\"m\u0082\u00d3\u00e4\u0093\u0002N2@/v1p1beta1/{phrase_set.name=projects/*/locations/*/phraseSets/*}:\nphrase_set\u00daA\u0016phrase_set,update_mask\u0012\u00a6\u0001\n\u000fDeletePhraseSet\u00125.google.cloud.speech.v1p1beta1.DeletePhraseSetRequest\u001a\u0016.google.protobuf.Empty\"D\u0082\u00d3\u00e4\u0093\u00027*5/v1p1beta1/{name=projects/*/locations/*/phraseSets/*}\u00daA\u0004name\u0012\u00e3\u0001\n\u0011CreateCustomClass\u00127.google.cloud.speech.v1p1beta1.CreateCustomClassRequest\u001a*.google.cloud.speech.v1p1beta1.CustomClass\"i\u0082\u00d3\u00e4\u0093\u0002=\"8/v1p1beta1/{parent=projects/*/locations/*}/customClasses:\u0001*\u00daA#parent,custom_class,custom_class_id\u0012\u00bb\u0001\n\u000eGetCustomClass\u00124.google.cloud.speech.v1p1beta1.GetCustomClassRequest\u001a*.google.cloud.speech.v1p1beta1.CustomClass\"G\u0082\u00d3\u00e4\u0093\u0002:\u00128/v1p1beta1/{name=projects/*/locations/*/customClasses/*}\u00daA\u0004name\u0012\u00d1\u0001\n\u0011ListCustomClasses\u00127.google.cloud.speech.v1p1beta1.ListCustomClassesRequest\u001a8.google.cloud.speech.v1p1beta1.ListCustomClassesResponse\"I\u0082\u00d3\u00e4\u0093\u0002:\u00128/v1p1beta1/{parent=projects/*/locations/*}/customClasses\u00daA\u0006parent\u0012\u00f0\u0001\n\u0011UpdateCustomClass\u00127.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest\u001a*.google.cloud.speech.v1p1beta1.CustomClass\"v\u0082\u00d3\u00e4\u0093\u0002U2E/v1p1beta1/{custom_class.name=projects/*/locations/*/customClasses/*}:\u000ccustom_class\u00daA\u0018custom_class,update_mask\u0012\u00ad\u0001\n\u0011DeleteCustomClass\u00127.google.cloud.speech.v1p1beta1.DeleteCustomClassRequest\u001a\u0016.google.protobuf.Empty\"G\u0082\u00d3\u00e4\u0093\u0002:*8/v1p1beta1/{name=projects/*/locations/*/customClasses/*}\u00daA\u0004name\u001aI\u00caA\u0015speech.googleapis.com\u00d2A.https://www.googleapis.com/auth/cloud-platformB\u008a\u0001\n!com.google.cloud.speech.v1p1beta1B\u0015SpeechAdaptationProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/cloud/speech/v1p1beta1;speech\u00f8\u0001\u0001\u00a2\u0002\u0003GCSb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

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
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {}, Lcom/google/protobuf/m0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 9
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->a:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Parent"

    const-string v4, "PhraseSetId"

    const-string v11, "PhraseSet"

    filled-new-array {v3, v4, v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/h;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->c:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "UpdateMask"

    filled-new-array {v11, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/h;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->e:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Name"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/h;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->g:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "PageSize"

    const-string v7, "PageToken"

    filled-new-array {v3, v6, v7}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v0, v11}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/h;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->i:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "PhraseSets"

    const-string v11, "NextPageToken"

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/h;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->k:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/h;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->m:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "CustomClassId"

    const-string v9, "CustomClass"

    filled-new-array {v3, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/h;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->o:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v9, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/h;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->q:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/h;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->s:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/h;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->u:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "CustomClasses"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/h;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->w:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/h;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/google/api/m;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 36
    sget-object v1, Lcom/google/api/c0;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 37
    sget-object v1, Lcom/google/api/b;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 38
    sget-object v1, Lcom/google/api/m;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 39
    sget-object v1, Lcom/google/api/m;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 40
    sget-object v1, Lcom/google/api/c1;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 41
    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/h;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 42
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lcom/google/api/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lcom/google/api/c0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lcom/google/protobuf/m0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/h;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
