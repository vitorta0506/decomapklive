.class public final Lio/opencensus/proto/trace/v1/TraceConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/trace/v1/TraceConfig$c;,
        Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;
    }
.end annotation


# static fields
.field public static final CONSTANT_SAMPLER_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/TraceConfig;

.field public static final MAX_NUMBER_OF_ANNOTATIONS_FIELD_NUMBER:I = 0x5

.field public static final MAX_NUMBER_OF_ATTRIBUTES_FIELD_NUMBER:I = 0x4

.field public static final MAX_NUMBER_OF_LINKS_FIELD_NUMBER:I = 0x7

.field public static final MAX_NUMBER_OF_MESSAGE_EVENTS_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/TraceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROBABILITY_SAMPLER_FIELD_NUMBER:I = 0x1

.field public static final RATE_LIMITING_SAMPLER_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private maxNumberOfAnnotations_:J

.field private maxNumberOfAttributes_:J

.field private maxNumberOfLinks_:J

.field private maxNumberOfMessageEvents_:J

.field private memoizedIsInitialized:B

.field private samplerCase_:I

.field private sampler_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/TraceConfig;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/TraceConfig;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/TraceConfig;

    .line 2
    new-instance v0, Lio/opencensus/proto/trace/v1/TraceConfig$a;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/TraceConfig$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->memoizedIsInitialized:B

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAttributes_:J

    .line 10
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAnnotations_:J

    .line 11
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfMessageEvents_:J

    .line 12
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfLinks_:J

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

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/TraceConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/TraceConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;-><init>()V

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x20

    if-eq v2, v4, :cond_4

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    const/16 v4, 0x38

    if-eq v2, v4, :cond_1

    .line 17
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfLinks_:J

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfMessageEvents_:J

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAnnotations_:J

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAttributes_:J

    goto :goto_0

    .line 22
    :cond_5
    iget v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 23
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/RateLimitingSampler;->toBuilder()Lio/opencensus/proto/trace/v1/RateLimitingSampler$b;

    move-result-object v5

    .line 24
    :cond_6
    invoke-static {}, Lio/opencensus/proto/trace/v1/RateLimitingSampler;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 25
    check-cast v2, Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/RateLimitingSampler$b;->g0(Lio/opencensus/proto/trace/v1/RateLimitingSampler;)Lio/opencensus/proto/trace/v1/RateLimitingSampler$b;

    .line 26
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/RateLimitingSampler$b;->Y()Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    .line 27
    :cond_7
    iput v3, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    goto :goto_0

    .line 28
    :cond_8
    iget v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 29
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/trace/v1/ConstantSampler;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/ConstantSampler;->toBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v5

    .line 30
    :cond_9
    invoke-static {}, Lio/opencensus/proto/trace/v1/ConstantSampler;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 31
    check-cast v2, Lio/opencensus/proto/trace/v1/ConstantSampler;

    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/ConstantSampler$b;->g0(Lio/opencensus/proto/trace/v1/ConstantSampler;)Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    .line 32
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/ConstantSampler$b;->Y()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    .line 33
    :cond_a
    iput v3, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    goto/16 :goto_0

    .line 34
    :cond_b
    iget v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    if-ne v2, v3, :cond_c

    .line 35
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/ProbabilitySampler;->toBuilder()Lio/opencensus/proto/trace/v1/ProbabilitySampler$b;

    move-result-object v5

    .line 36
    :cond_c
    invoke-static {}, Lio/opencensus/proto/trace/v1/ProbabilitySampler;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    if-eqz v5, :cond_d

    .line 37
    check-cast v2, Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/ProbabilitySampler$b;->g0(Lio/opencensus/proto/trace/v1/ProbabilitySampler;)Lio/opencensus/proto/trace/v1/ProbabilitySampler$b;

    .line 38
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/ProbabilitySampler$b;->Y()Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    .line 39
    :cond_d
    iput v3, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_e
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 41
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 45
    throw p1

    .line 46
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/trace/v1/TraceConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/trace/v1/TraceConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/opencensus/proto/trace/v1/TraceConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/opencensus/proto/trace/v1/TraceConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lio/opencensus/proto/trace/v1/TraceConfig;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAttributes_:J

    return-wide p1
.end method

.method static synthetic access$602(Lio/opencensus/proto/trace/v1/TraceConfig;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAnnotations_:J

    return-wide p1
.end method

.method static synthetic access$702(Lio/opencensus/proto/trace/v1/TraceConfig;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfMessageEvents_:J

    return-wide p1
.end method

.method static synthetic access$802(Lio/opencensus/proto/trace/v1/TraceConfig;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfLinks_:J

    return-wide p1
.end method

.method static synthetic access$902(Lio/opencensus/proto/trace/v1/TraceConfig;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    return p1
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/i;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/TraceConfig;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/TraceConfig;->toBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig$c;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/TraceConfig;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/TraceConfig;->toBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->h0(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/TraceConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/proto/trace/v1/TraceConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/trace/v1/TraceConfig;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfAttributes()J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfAttributes()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfAnnotations()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfAnnotations()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-nez v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfMessageEvents()J

    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfMessageEvents()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-nez v6, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfLinks()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfLinks()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-nez v6, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getSamplerCase()Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getSamplerCase()Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_7

    return v5

    .line 15
    :cond_7
    iget v2, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    if-eq v2, v0, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getRateLimitingSampler()Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getRateLimitingSampler()Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/RateLimitingSampler;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getConstantSampler()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getConstantSampler()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/ConstantSampler;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getProbabilitySampler()Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->getProbabilitySampler()Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/ProbabilitySampler;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :goto_6
    if-eqz v1, :cond_c

    .line 22
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getConstantSampler()Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/ConstantSampler;->getDefaultInstance()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v0

    return-object v0
.end method

.method public getConstantSamplerOrBuilder()Lio/opencensus/proto/trace/v1/a;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/ConstantSampler;->getDefaultInstance()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object v0
.end method

.method public getMaxNumberOfAnnotations()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAnnotations_:J

    return-wide v0
.end method

.method public getMaxNumberOfAttributes()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAttributes_:J

    return-wide v0
.end method

.method public getMaxNumberOfLinks()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfLinks_:J

    return-wide v0
.end method

.method public getMaxNumberOfMessageEvents()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfMessageEvents_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/TraceConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getProbabilitySampler()Lio/opencensus/proto/trace/v1/ProbabilitySampler;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/ProbabilitySampler;->getDefaultInstance()Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    move-result-object v0

    return-object v0
.end method

.method public getProbabilitySamplerOrBuilder()Lio/opencensus/proto/trace/v1/c;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/ProbabilitySampler;->getDefaultInstance()Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitingSampler()Lio/opencensus/proto/trace/v1/RateLimitingSampler;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/RateLimitingSampler;->getDefaultInstance()Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitingSamplerOrBuilder()Lio/opencensus/proto/trace/v1/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/RateLimitingSampler;->getDefaultInstance()Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    move-result-object v0

    return-object v0
.end method

.method public getSamplerCase()Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;
    .locals 1

    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->forNumber(I)Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    move-result-object v0

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

    .line 2
    iget v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/trace/v1/ConstantSampler;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAttributes_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 12
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAnnotations_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 14
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfMessageEvents_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    .line 16
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfLinks_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const/4 v3, 0x7

    .line 18
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasConstantSampler()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProbabilitySampler()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRateLimitingSampler()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/opencensus/proto/trace/v1/TraceConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfAttributes()J

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfAnnotations()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfMessageEvents()J

    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getMaxNumberOfLinks()J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iget v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getRateLimitingSampler()Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/RateLimitingSampler;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getConstantSampler()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/ConstantSampler;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->getProbabilitySampler()Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/ProbabilitySampler;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/i;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/TraceConfig;

    const-class v2, Lio/opencensus/proto/trace/v1/TraceConfig$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->newBuilderForType()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/TraceConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->newBuilderForType()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/trace/v1/TraceConfig$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/TraceConfig;->newBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/TraceConfig$c;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/trace/v1/TraceConfig$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/trace/v1/TraceConfig$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/TraceConfig$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->toBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/TraceConfig;->toBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/TraceConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/trace/v1/TraceConfig$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/TraceConfig$c;-><init>(Lio/opencensus/proto/trace/v1/TraceConfig$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/trace/v1/TraceConfig$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/TraceConfig$c;-><init>(Lio/opencensus/proto/trace/v1/TraceConfig$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->h0(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/ProbabilitySampler;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->samplerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->sampler_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/RateLimitingSampler;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAttributes_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 8
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfAnnotations_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 11
    :cond_4
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfMessageEvents_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    .line 12
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 13
    :cond_5
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig;->maxNumberOfLinks_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    const/4 v2, 0x7

    .line 14
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
