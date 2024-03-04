.class public final Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/speech/v1/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;
    }
.end annotation


# static fields
.field public static final ALTERNATIVES_FIELD_NUMBER:I = 0x1

.field public static final CHANNEL_TAG_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/SpeechRecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_END_TIME_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private alternatives_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/SpeechRecognitionAlternative;",
            ">;"
        }
    .end annotation
.end field

.field private channelTag_:I

.field private volatile languageCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private resultEndTime_:Lcom/google/protobuf/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1/SpeechRecognitionResult$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_9

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    const/16 v5, 0x10

    if-eq v4, v5, :cond_4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 15
    iput-object v4, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 16
    iget-object v5, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {v5}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 18
    :cond_3
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Duration;

    iput-object v5, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 20
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->channelTag_:I

    goto :goto_0

    :cond_5
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_6

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 23
    :cond_6
    iget-object v4, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    .line 24
    invoke-static {}, Lcom/google/cloud/speech/v1/SpeechRecognitionAlternative;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    .line 25
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 26
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 27
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 29
    iget-object p2, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    .line 30
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 32
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_a

    .line 33
    iget-object p1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    .line 34
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1/SpeechRecognitionResult$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

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

.method static synthetic access$400(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->channelTag_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/j;->E:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->toBuilder()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->toBuilder()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;->g0(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/SpeechRecognitionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getAlternativesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getAlternativesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getChannelTag()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getChannelTag()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->hasResultEndTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->hasResultEndTime()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->hasResultEndTime()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getResultEndTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getResultEndTime()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 10
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getAlternatives(I)Lcom/google/cloud/speech/v1/SpeechRecognitionAlternative;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/SpeechRecognitionAlternative;

    return-object p1
.end method

.method public getAlternativesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternativesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/SpeechRecognitionAlternative;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    return-object v0
.end method

.method public getAlternativesOrBuilder(I)Lcom/google/cloud/speech/v1/k;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/k;

    return-object p1
.end method

.method public getAlternativesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/speech/v1/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    return-object v0
.end method

.method public getChannelTag()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->channelTag_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1/SpeechRecognitionResult;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

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
            "Lcom/google/cloud/speech/v1/SpeechRecognitionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResultEndTime()Lcom/google/protobuf/Duration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResultEndTimeOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getResultEndTime()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->channelTag_:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getResultEndTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v1, v0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 9
    iget-object v2, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasResultEndTime()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

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
    invoke-static {}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getAlternativesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getAlternativesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getChannelTag()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->hasResultEndTime()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getResultEndTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

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
    sget-object v0, Lcom/google/cloud/speech/v1/j;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    const-class v2, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->newBuilder()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1/SpeechRecognitionResult$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->newBuilderForType()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->newBuilderForType()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    invoke-direct {p1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/SpeechRecognitionResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;-><init>(Lcom/google/cloud/speech/v1/SpeechRecognitionResult$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;-><init>(Lcom/google/cloud/speech/v1/SpeechRecognitionResult$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;->g0(Lcom/google/cloud/speech/v1/SpeechRecognitionResult;)Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->toBuilder()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->toBuilder()Lcom/google/cloud/speech/v1/SpeechRecognitionResult$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->alternatives_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/o1;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->channelTag_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->resultEndTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->getResultEndTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    .line 8
    iget-object v1, p0, Lcom/google/cloud/speech/v1/SpeechRecognitionResult;->languageCode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
