.class public final Lcom/google/cloud/speech/v1p1beta1/m;
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

.field private static o:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "\n,google/cloud/speech/v1p1beta1/resource.proto\u0012\u001dgoogle.cloud.speech.v1p1beta1\u001a\u0019google/api/resource.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001cgoogle/api/annotations.proto\"\u0083\u0002\n\u000bCustomClass\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000fcustom_class_id\u0018\u0002 \u0001(\t\u0012C\n\u0005items\u0018\u0003 \u0003(\u000b24.google.cloud.speech.v1p1beta1.CustomClass.ClassItem\u001a\u001a\n\tClassItem\u0012\r\n\u0005value\u0018\u0001 \u0001(\t:l\u00eaAi\n!speech.googleapis.com/CustomClass\u0012Dprojects/{project}/locations/{location}/customClasses/{custom_class}\"\u00f9\u0001\n\tPhraseSet\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012@\n\u0007phrases\u0018\u0002 \u0003(\u000b2/.google.cloud.speech.v1p1beta1.PhraseSet.Phrase\u0012\r\n\u0005boost\u0018\u0004 \u0001(\u0002\u001a&\n\u0006Phrase\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\u0012\r\n\u0005boost\u0018\u0002 \u0001(\u0002:e\u00eaAb\n\u001fspeech.googleapis.com/PhraseSet\u0012?projects/{project}/locations/{location}/phraseSets/{phrase_set}\"\u00da\u0001\n\u0010SpeechAdaptation\u0012=\n\u000bphrase_sets\u0018\u0001 \u0003(\u000b2(.google.cloud.speech.v1p1beta1.PhraseSet\u0012C\n\u0015phrase_set_references\u0018\u0002 \u0003(\tB$\u00faA!\n\u001fspeech.googleapis.com/PhraseSet\u0012B\n\u000ecustom_classes\u0018\u0003 \u0003(\u000b2*.google.cloud.speech.v1p1beta1.CustomClass\"\u00aa\u0001\n\u0017TranscriptNormalization\u0012M\n\u0007entries\u0018\u0001 \u0003(\u000b2<.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry\u001a@\n\u0005Entry\u0012\u000e\n\u0006search\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007replace\u0018\u0002 \u0001(\t\u0012\u0016\n\u000ecase_sensitive\u0018\u0003 \u0001(\u0008B\u0088\u0001\n!com.google.cloud.speech.v1p1beta1B\u0013SpeechResourceProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/cloud/speech/v1p1beta1;speech\u00f8\u0001\u0001\u00a2\u0002\u0003GCSb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v7, "CustomClassId"

    const-string v8, "Items"

    filled-new-array {v3, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/m;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->c:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Value"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/m;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->e:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Phrases"

    const-string v8, "Boost"

    filled-new-array {v3, v5, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/m;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->g:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/m;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->i:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "PhraseSets"

    const-string v5, "PhraseSetReferences"

    const-string v6, "CustomClasses"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/speech/v1p1beta1/m;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->k:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Entries"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/m;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->m:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Search"

    const-string v3, "Replace"

    const-string v4, "CaseSensitive"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/m;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/google/api/c1;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 24
    sget-object v1, Lcom/google/api/c1;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 25
    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/m;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 26
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/m;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
