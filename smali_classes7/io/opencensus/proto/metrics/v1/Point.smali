.class public final Lio/opencensus/proto/metrics/v1/Point;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/metrics/v1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/metrics/v1/Point$c;,
        Lio/opencensus/proto/metrics/v1/Point$ValueCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Point;

.field public static final DISTRIBUTION_VALUE_FIELD_NUMBER:I = 0x4

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x3

.field public static final INT64_VALUE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUMMARY_VALUE_FIELD_NUMBER:I = 0x5

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private timestamp_:Lcom/google/protobuf/Timestamp;

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/metrics/v1/Point;

    invoke-direct {v0}, Lio/opencensus/proto/metrics/v1/Point;-><init>()V

    sput-object v0, Lio/opencensus/proto/metrics/v1/Point;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Point;

    .line 2
    new-instance v0, Lio/opencensus/proto/metrics/v1/Point$a;

    invoke-direct {v0}, Lio/opencensus/proto/metrics/v1/Point$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/opencensus/proto/metrics/v1/Point;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/opencensus/proto/metrics/v1/Point;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/metrics/v1/Point$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/metrics/v1/Point;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/Point;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_9

    const/16 v4, 0x10

    if-eq v2, v4, :cond_8

    const/16 v4, 0x19

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/metrics/v1/SummaryValue;

    invoke-virtual {v2}, Lio/opencensus/proto/metrics/v1/SummaryValue;->toBuilder()Lio/opencensus/proto/metrics/v1/SummaryValue$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/opencensus/proto/metrics/v1/SummaryValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/opencensus/proto/metrics/v1/SummaryValue;

    invoke-virtual {v5, v2}, Lio/opencensus/proto/metrics/v1/SummaryValue$b;->h0(Lio/opencensus/proto/metrics/v1/SummaryValue;)Lio/opencensus/proto/metrics/v1/SummaryValue$b;

    .line 18
    invoke-virtual {v5}, Lio/opencensus/proto/metrics/v1/SummaryValue$b;->Y()Lio/opencensus/proto/metrics/v1/SummaryValue;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/metrics/v1/DistributionValue;

    invoke-virtual {v2}, Lio/opencensus/proto/metrics/v1/DistributionValue;->toBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 23
    check-cast v2, Lio/opencensus/proto/metrics/v1/DistributionValue;

    invoke-virtual {v5, v2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->j0(Lio/opencensus/proto/metrics/v1/DistributionValue;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 24
    invoke-virtual {v5}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    .line 26
    iput v2, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x2

    .line 28
    iput v2, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30
    :cond_9
    iget-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_a

    .line 31
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 32
    :cond_a
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 34
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 40
    throw p1

    .line 41
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/metrics/v1/Point$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/Point;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/opencensus/proto/metrics/v1/Point;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$502(Lio/opencensus/proto/metrics/v1/Point;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/opencensus/proto/metrics/v1/Point;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    return p1
.end method

.method static synthetic access$700(Lio/opencensus/proto/metrics/v1/Point;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/metrics/v1/Point;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Point;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/metrics/v1/Point$c;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Point;

    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/Point;->toBuilder()Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/metrics/v1/Point;)Lio/opencensus/proto/metrics/v1/Point$c;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Point;

    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/Point;->toBuilder()Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/metrics/v1/Point$c;->h0(Lio/opencensus/proto/metrics/v1/Point;)Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/Point;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/opencensus/proto/metrics/v1/Point;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/metrics/v1/Point;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Point;->hasTimestamp()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Point;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getValueCase()Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Point;->getValueCase()Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_6

    return v3

    .line 11
    :cond_6
    iget v2, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v4, 0x4

    if-eq v2, v4, :cond_9

    const/4 v4, 0x5

    if-eq v2, v4, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getSummaryValue()Lio/opencensus/proto/metrics/v1/SummaryValue;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Point;->getSummaryValue()Lio/opencensus/proto/metrics/v1/SummaryValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/metrics/v1/SummaryValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getDistributionValue()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Point;->getDistributionValue()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/metrics/v1/DistributionValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getDoubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 17
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Point;->getDoubleValue()D

    move-result-wide v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_8

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getInt64Value()J

    move-result-wide v1

    .line 20
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Point;->getInt64Value()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_8

    goto :goto_3

    :goto_4
    if-eqz v1, :cond_c

    .line 21
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/Point;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/Point;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/Point;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Point;

    return-object v0
.end method

.method public getDistributionValue()Lio/opencensus/proto/metrics/v1/DistributionValue;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/metrics/v1/DistributionValue;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionValueOrBuilder()Lio/opencensus/proto/metrics/v1/a;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/metrics/v1/DistributionValue;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInt64Value()J
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/Point;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 11
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_3
    iget v1, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 13
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/metrics/v1/DistributionValue;

    .line 14
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    iget v1, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 16
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/metrics/v1/SummaryValue;

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSummaryValue()Lio/opencensus/proto/metrics/v1/SummaryValue;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/metrics/v1/SummaryValue;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/metrics/v1/SummaryValue;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/SummaryValue;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryValueOrBuilder()Lio/opencensus/proto/metrics/v1/h;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/metrics/v1/SummaryValue;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/metrics/v1/SummaryValue;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/SummaryValue;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValueCase()Lio/opencensus/proto/metrics/v1/Point$ValueCase;
    .locals 1

    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    invoke-static {v0}, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->forNumber(I)Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDistributionValue()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSummaryValue()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

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
    invoke-static {}, Lio/opencensus/proto/metrics/v1/Point;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getSummaryValue()Lio/opencensus/proto/metrics/v1/SummaryValue;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/metrics/v1/SummaryValue;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getDistributionValue()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getDoubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getInt64Value()J

    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/metrics/v1/Point;

    const-class v2, Lio/opencensus/proto/metrics/v1/Point$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/metrics/v1/Point;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/metrics/v1/Point;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->newBuilderForType()Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/Point;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->newBuilderForType()Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/metrics/v1/Point$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/metrics/v1/Point;->newBuilder()Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/metrics/v1/Point$c;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/metrics/v1/Point$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/metrics/v1/Point$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/metrics/v1/Point$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->toBuilder()Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->toBuilder()Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/metrics/v1/Point$c;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Point;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Point;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/metrics/v1/Point$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/metrics/v1/Point$c;-><init>(Lio/opencensus/proto/metrics/v1/Point$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/metrics/v1/Point$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/metrics/v1/Point$c;-><init>(Lio/opencensus/proto/metrics/v1/Point$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/metrics/v1/Point$c;->h0(Lio/opencensus/proto/metrics/v1/Point;)Lio/opencensus/proto/metrics/v1/Point$c;

    move-result-object v0

    :goto_0
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
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Point;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 7
    :cond_1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 10
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 11
    :cond_2
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 12
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/metrics/v1/DistributionValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_3
    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 14
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Point;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/metrics/v1/SummaryValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
