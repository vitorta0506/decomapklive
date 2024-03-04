.class public final Lcom/google/cloud/speech/v1/SpeechAdaptation;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/speech/v1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1/SpeechAdaptation$b;
    }
.end annotation


# static fields
.field public static final CUSTOM_CLASSES_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechAdaptation;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/SpeechAdaptation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHRASE_SETS_FIELD_NUMBER:I = 0x1

.field public static final PHRASE_SET_REFERENCES_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private customClasses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/CustomClass;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private phraseSetReferences_:Lcom/google/protobuf/z0;

.field private phraseSets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/PhraseSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechAdaptation$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1/SpeechAdaptation$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1/SpeechAdaptation$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5

    const/16 v5, 0x12

    if-eq v3, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    .line 17
    invoke-static {}, Lcom/google/cloud/speech/v1/CustomClass;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 18
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 19
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_4

    .line 21
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 22
    :cond_4
    iget-object v4, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 24
    :cond_6
    iget-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    .line 25
    invoke-static {}, Lcom/google/cloud/speech/v1/PhraseSet;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 26
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 27
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 29
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 30
    iget-object p2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    :cond_8
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_9

    .line 31
    iget-object p2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    :cond_9
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_a

    .line 32
    iget-object p2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    .line 33
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 35
    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c

    .line 36
    iget-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_d

    .line 37
    iget-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    :cond_d
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_e

    .line 38
    iget-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    .line 39
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1/SpeechAdaptation$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1/SpeechAdaptation;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1/SpeechAdaptation;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1/SpeechAdaptation;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/cloud/speech/v1/SpeechAdaptation;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/m;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->toBuilder()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/SpeechAdaptation$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->toBuilder()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;->j0(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/SpeechAdaptation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetReferencesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetReferencesList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getCustomClassesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getCustomClassesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getCustomClasses(I)Lcom/google/cloud/speech/v1/CustomClass;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/CustomClass;

    return-object p1
.end method

.method public getCustomClassesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCustomClassesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/CustomClass;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    return-object v0
.end method

.method public getCustomClassesOrBuilder(I)Lcom/google/cloud/speech/v1/a;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/a;

    return-object p1
.end method

.method public getCustomClassesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/speech/v1/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1/SpeechAdaptation;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1/SpeechAdaptation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1/SpeechAdaptation;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/SpeechAdaptation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPhraseSetReferences(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPhraseSetReferencesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPhraseSetReferencesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhraseSetReferencesList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getPhraseSetReferencesList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetReferencesList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getPhraseSets(I)Lcom/google/cloud/speech/v1/PhraseSet;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/PhraseSet;

    return-object p1
.end method

.method public getPhraseSetsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhraseSetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/PhraseSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    return-object v0
.end method

.method public getPhraseSetsOrBuilder(I)Lcom/google/cloud/speech/v1/b;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/b;

    return-object p1
.end method

.method public getPhraseSetsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/speech/v1/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v5, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 5
    iget-object v5, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetReferencesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 7
    :goto_2
    iget-object v1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 10
    iput v2, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
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
    invoke-static {}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetReferencesCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getPhraseSetReferencesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getCustomClassesCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->getCustomClassesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/m;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    const-class v2, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->newBuilder()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1/SpeechAdaptation$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1/SpeechAdaptation$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->newBuilderForType()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->newBuilderForType()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    invoke-direct {p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;-><init>(Lcom/google/cloud/speech/v1/SpeechAdaptation$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;-><init>(Lcom/google/cloud/speech/v1/SpeechAdaptation$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;->j0(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->toBuilder()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->toBuilder()Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSets_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->phraseSetReferences_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, Lcom/google/cloud/speech/v1/SpeechAdaptation;->customClasses_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
