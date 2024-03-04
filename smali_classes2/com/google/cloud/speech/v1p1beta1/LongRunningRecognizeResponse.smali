.class public final Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

.field public static final OUTPUT_CONFIG_FIELD_NUMBER:I = 0x6

.field public static final OUTPUT_ERROR_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULTS_FIELD_NUMBER:I = 0x2

.field public static final TOTAL_BILLED_TIME_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

.field private outputError_:Lcom/google/rpc/Status;

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1p1beta1/SpeechRecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field private totalBilledTime_:Lcom/google/protobuf/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_b

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    const/16 v5, 0x32

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_1
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4}, Lcom/google/rpc/Status;->toBuilder()Lcom/google/rpc/Status$b;

    move-result-object v6

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/rpc/Status;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/Status;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

    if-eqz v6, :cond_0

    .line 16
    invoke-virtual {v6, v4}, Lcom/google/rpc/Status$b;->i0(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    .line 17
    invoke-virtual {v6}, Lcom/google/rpc/Status$b;->Y()Lcom/google/rpc/Status;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

    goto :goto_0

    .line 18
    :cond_3
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v4}, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig$c;

    move-result-object v6

    .line 20
    :cond_4
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 21
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    if-eqz v6, :cond_0

    .line 22
    invoke-virtual {v6, v4}, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig$c;->d0(Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;)Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig$c;

    .line 23
    invoke-virtual {v6}, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig$c;->Y()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    goto :goto_0

    .line 24
    :cond_5
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_6

    .line 25
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 26
    :cond_6
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 27
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 28
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 30
    :cond_8
    iget-object v4, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/SpeechRecognitionResult;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    .line 32
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 33
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 36
    iget-object p2, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    .line 37
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 39
    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c

    .line 40
    iget-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    .line 41
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;)Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/j;->w:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;->g0(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasTotalBilledTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasTotalBilledTime()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasTotalBilledTime()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputConfig()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputConfig()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputConfig()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputConfig()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputConfig()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputError()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputError()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 12
    :cond_7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputError()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputError()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputError()Lcom/google/rpc/Status;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/rpc/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 14
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getOutputConfig()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;->getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputConfigOrBuilder()Lcom/google/cloud/speech/v1p1beta1/q;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputConfig()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v0

    return-object v0
.end method

.method public getOutputError()Lcom/google/rpc/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputErrorOrBuilder()Lcom/google/rpc/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputError()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResults(I)Lcom/google/cloud/speech/v1p1beta1/SpeechRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1p1beta1/SpeechRecognitionResult;

    return-object p1
.end method

.method public getResultsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

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
            "Lcom/google/cloud/speech/v1p1beta1/SpeechRecognitionResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getResultsOrBuilder(I)Lcom/google/cloud/speech/v1p1beta1/l;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1p1beta1/l;

    return-object p1
.end method

.method public getResultsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/speech/v1p1beta1/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

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
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    .line 3
    iget-object v3, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v1, v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputConfig()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v1, v0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputError()Lcom/google/rpc/Status;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

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

.method public getTotalBilledTime()Lcom/google/protobuf/Duration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTotalBilledTimeOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasOutputConfig()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutputError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

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

    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

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
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getResultsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasTotalBilledTime()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputConfig()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputConfig()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->hasOutputError()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputError()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/j;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    const-class v2, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->newBuilder()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    invoke-direct {p1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;-><init>(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;-><init>(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;->g0(Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;)Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse$b;

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
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->results_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->totalBilledTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getTotalBilledTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputConfig_:Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputConfig()Lcom/google/cloud/speech/v1p1beta1/TranscriptOutputConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->outputError_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/LongRunningRecognizeResponse;->getOutputError()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
