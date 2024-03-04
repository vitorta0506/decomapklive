.class public final Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;,
        Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULTS_FIELD_NUMBER:I = 0x2

.field public static final SPEECH_EVENT_TYPE_FIELD_NUMBER:I = 0x4

.field public static final TOTAL_BILLED_TIME_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private error_:Lcom/google/rpc/Status;

.field private memoizedIsInitialized:B

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/StreamingRecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field private speechEventType_:I

.field private totalBilledTime_:Lcom/google/protobuf/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

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
    iput-byte p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;-><init>()V

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

    if-nez v1, :cond_a

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-eq v4, v5, :cond_4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 14
    :cond_1
    iget-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 16
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 17
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 18
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 20
    iput v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_5

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 22
    :cond_5
    iget-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    .line 23
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognitionResult;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    .line 24
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 25
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_6
    iget-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;

    if-eqz v4, :cond_7

    .line 27
    invoke-virtual {v4}, Lcom/google/rpc/Status;->toBuilder()Lcom/google/rpc/Status$b;

    move-result-object v6

    .line 28
    :cond_7
    invoke-static {}, Lcom/google/rpc/Status;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/Status;

    iput-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;

    if-eqz v6, :cond_0

    .line 29
    invoke-virtual {v6, v4}, Lcom/google/rpc/Status$b;->i0(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    .line 30
    invoke-virtual {v6}, Lcom/google/rpc/Status$b;->Y()Lcom/google/rpc/Status;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9

    .line 33
    iget-object p2, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    .line 34
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 36
    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_b

    .line 37
    iget-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    .line 38
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)I
    .locals 0

    iget p0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    return p0
.end method

.method static synthetic access$602(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/j;->A:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;->h0(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasError()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasError()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getError()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getError()Lcom/google/rpc/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 8
    :cond_4
    iget v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    iget v2, p1, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    if-eq v1, v2, :cond_5

    return v3

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasTotalBilledTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasTotalBilledTime()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasTotalBilledTime()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 12
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    :cond_8
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/rpc/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getErrorOrBuilder()Lcom/google/rpc/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getError()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResults(I)Lcom/google/cloud/speech/v1/StreamingRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognitionResult;

    return-object p1
.end method

.method public getResultsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/StreamingRecognitionResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getResultsOrBuilder(I)Lcom/google/cloud/speech/v1/p;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/p;

    return-object p1
.end method

.method public getResultsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/speech/v1/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getError()Lcom/google/rpc/Status;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    sget-object v2, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;->SPEECH_EVENT_UNSPECIFIED:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;

    .line 7
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    .line 8
    iget v2, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSpeechEventType()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    .line 2
    invoke-static {v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;->valueOf(I)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;->UNRECOGNIZED:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;

    :cond_0
    return-object v0
.end method

.method public getSpeechEventTypeValue()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    return v0
.end method

.method public getTotalBilledTime()Lcom/google/protobuf/Duration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTotalBilledTimeOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTotalBilledTime()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

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
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getError()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getResultsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    iget v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->hasTotalBilledTime()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/j;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    const-class v2, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->newBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->newBuilderForType()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->newBuilderForType()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    invoke-direct {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;-><init>(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;-><init>(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;->h0(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$b;

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

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->error_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getError()Lcom/google/rpc/Status;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    sget-object v1, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;->SPEECH_EVENT_UNSPECIFIED:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;

    .line 6
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse$SpeechEventType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    .line 7
    iget v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->speechEventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
