.class public final Lio/opencensus/proto/stats/v1/View;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/stats/v1/View$c;,
        Lio/opencensus/proto/stats/v1/View$AggregationCase;
    }
.end annotation


# static fields
.field public static final COLUMNS_FIELD_NUMBER:I = 0x4

.field public static final COUNT_AGGREGATION_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/View;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final DISTRIBUTION_AGGREGATION_FIELD_NUMBER:I = 0x8

.field public static final LAST_VALUE_AGGREGATION_FIELD_NUMBER:I = 0x7

.field public static final MEASURE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/stats/v1/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUM_AGGREGATION_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private aggregationCase_:I

.field private aggregation_:Ljava/lang/Object;

.field private bitField0_:I

.field private columns_:Lcom/google/protobuf/z0;

.field private volatile description_:Ljava/lang/Object;

.field private measure_:Lio/opencensus/proto/stats/v1/Measure;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/stats/v1/View;

    invoke-direct {v0}, Lio/opencensus/proto/stats/v1/View;-><init>()V

    sput-object v0, Lio/opencensus/proto/stats/v1/View;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/View;

    .line 2
    new-instance v0, Lio/opencensus/proto/stats/v1/View$a;

    invoke-direct {v0}, Lio/opencensus/proto/stats/v1/View$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/opencensus/proto/stats/v1/View;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

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
    iput p1, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/opencensus/proto/stats/v1/View;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/stats/v1/View$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/stats/v1/View;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/View;-><init>()V

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x8

    if-nez v1, :cond_15

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_13

    const/16 v6, 0xa

    if-eq v4, v6, :cond_12

    const/16 v6, 0x12

    if-eq v4, v6, :cond_11

    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-eq v4, v6, :cond_f

    const/16 v6, 0x22

    if-eq v4, v6, :cond_d

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_a

    const/16 v6, 0x32

    if-eq v4, v6, :cond_7

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_4

    const/16 v6, 0x42

    if-eq v4, v6, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 17
    :cond_1
    iget v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    if-ne v4, v3, :cond_2

    .line 18
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v4, Lio/opencensus/proto/stats/v1/DistributionAggregation;

    invoke-virtual {v4}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->toBuilder()Lio/opencensus/proto/stats/v1/DistributionAggregation$b;

    move-result-object v7

    .line 19
    :cond_2
    invoke-static {}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 20
    check-cast v4, Lio/opencensus/proto/stats/v1/DistributionAggregation;

    invoke-virtual {v7, v4}, Lio/opencensus/proto/stats/v1/DistributionAggregation$b;->h0(Lio/opencensus/proto/stats/v1/DistributionAggregation;)Lio/opencensus/proto/stats/v1/DistributionAggregation$b;

    .line 21
    invoke-virtual {v7}, Lio/opencensus/proto/stats/v1/DistributionAggregation$b;->Y()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    .line 22
    :cond_3
    iput v3, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    goto :goto_0

    .line 23
    :cond_4
    iget v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 24
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v4, Lio/opencensus/proto/stats/v1/LastValueAggregation;

    invoke-virtual {v4}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->toBuilder()Lio/opencensus/proto/stats/v1/LastValueAggregation$b;

    move-result-object v7

    .line 25
    :cond_5
    invoke-static {}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    if-eqz v7, :cond_6

    .line 26
    check-cast v4, Lio/opencensus/proto/stats/v1/LastValueAggregation;

    invoke-virtual {v7, v4}, Lio/opencensus/proto/stats/v1/LastValueAggregation$b;->g0(Lio/opencensus/proto/stats/v1/LastValueAggregation;)Lio/opencensus/proto/stats/v1/LastValueAggregation$b;

    .line 27
    invoke-virtual {v7}, Lio/opencensus/proto/stats/v1/LastValueAggregation$b;->Y()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    .line 28
    :cond_6
    iput v5, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    goto/16 :goto_0

    .line 29
    :cond_7
    iget v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    .line 30
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v4, Lio/opencensus/proto/stats/v1/SumAggregation;

    invoke-virtual {v4}, Lio/opencensus/proto/stats/v1/SumAggregation;->toBuilder()Lio/opencensus/proto/stats/v1/SumAggregation$b;

    move-result-object v7

    .line 31
    :cond_8
    invoke-static {}, Lio/opencensus/proto/stats/v1/SumAggregation;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    if-eqz v7, :cond_9

    .line 32
    check-cast v4, Lio/opencensus/proto/stats/v1/SumAggregation;

    invoke-virtual {v7, v4}, Lio/opencensus/proto/stats/v1/SumAggregation$b;->g0(Lio/opencensus/proto/stats/v1/SumAggregation;)Lio/opencensus/proto/stats/v1/SumAggregation$b;

    .line 33
    invoke-virtual {v7}, Lio/opencensus/proto/stats/v1/SumAggregation$b;->Y()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    .line 34
    :cond_9
    iput v5, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    goto/16 :goto_0

    .line 35
    :cond_a
    iget v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_b

    .line 36
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v4, Lio/opencensus/proto/stats/v1/CountAggregation;

    invoke-virtual {v4}, Lio/opencensus/proto/stats/v1/CountAggregation;->toBuilder()Lio/opencensus/proto/stats/v1/CountAggregation$b;

    move-result-object v7

    .line 37
    :cond_b
    invoke-static {}, Lio/opencensus/proto/stats/v1/CountAggregation;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    if-eqz v7, :cond_c

    .line 38
    check-cast v4, Lio/opencensus/proto/stats/v1/CountAggregation;

    invoke-virtual {v7, v4}, Lio/opencensus/proto/stats/v1/CountAggregation$b;->g0(Lio/opencensus/proto/stats/v1/CountAggregation;)Lio/opencensus/proto/stats/v1/CountAggregation$b;

    .line 39
    invoke-virtual {v7}, Lio/opencensus/proto/stats/v1/CountAggregation$b;->Y()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    .line 40
    :cond_c
    iput v5, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    goto/16 :goto_0

    .line 41
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x8

    if-eq v5, v3, :cond_e

    .line 42
    new-instance v5, Lcom/google/protobuf/y0;

    invoke-direct {v5}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v5, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x8

    .line 43
    :cond_e
    iget-object v5, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :cond_f
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    if-eqz v4, :cond_10

    .line 45
    invoke-virtual {v4}, Lio/opencensus/proto/stats/v1/Measure;->toBuilder()Lio/opencensus/proto/stats/v1/Measure$b;

    move-result-object v7

    .line 46
    :cond_10
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measure;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/opencensus/proto/stats/v1/Measure;

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    if-eqz v7, :cond_0

    .line 47
    invoke-virtual {v7, v4}, Lio/opencensus/proto/stats/v1/Measure$b;->g0(Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/Measure$b;

    .line 48
    invoke-virtual {v7}, Lio/opencensus/proto/stats/v1/Measure$b;->Y()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    goto/16 :goto_0

    .line 49
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 50
    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 51
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 52
    iput-object v4, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_13
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 53
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 54
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 55
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x8

    if-ne p2, v3, :cond_14

    .line 56
    iget-object p2, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    .line 57
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 59
    throw p1

    :cond_15
    and-int/lit8 p1, v2, 0x8

    if-ne p1, v3, :cond_16

    .line 60
    iget-object p1, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    .line 61
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 62
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/stats/v1/View$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/opencensus/proto/stats/v1/View;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    return p1
.end method

.method static synthetic access$1100(Lio/opencensus/proto/stats/v1/View;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/opencensus/proto/stats/v1/View;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/opencensus/proto/stats/v1/View;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/opencensus/proto/stats/v1/View;Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/Measure;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    return-object p1
.end method

.method static synthetic access$700(Lio/opencensus/proto/stats/v1/View;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$702(Lio/opencensus/proto/stats/v1/View;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lio/opencensus/proto/stats/v1/View;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/stats/v1/View;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/stats/v1/View;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/View;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/View;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/e;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/stats/v1/View$c;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/View;

    invoke-virtual {v0}, Lio/opencensus/proto/stats/v1/View;->toBuilder()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/stats/v1/View;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/View;

    invoke-virtual {v0}, Lio/opencensus/proto/stats/v1/View;->toBuilder()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/stats/v1/View$c;->j0(Lio/opencensus/proto/stats/v1/View;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/stats/v1/View;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/proto/stats/v1/View;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/stats/v1/View;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->hasMeasure()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->hasMeasure()Z

    move-result v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->hasMeasure()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getMeasure()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getMeasure()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/stats/v1/Measure;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getColumnsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getColumnsList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getAggregationCase()Lio/opencensus/proto/stats/v1/View$AggregationCase;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getAggregationCase()Lio/opencensus/proto/stats/v1/View$AggregationCase;

    move-result-object v3

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_9

    return v2

    .line 17
    :cond_9
    iget v3, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_e

    const/4 v4, 0x6

    if-eq v3, v4, :cond_d

    const/4 v4, 0x7

    if-eq v3, v4, :cond_c

    const/16 v4, 0x8

    if-eq v3, v4, :cond_a

    goto :goto_7

    :cond_a
    if-eqz v1, :cond_b

    .line 18
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDistributionAggregation()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getDistributionAggregation()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_6
    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    if-eqz v1, :cond_b

    .line 20
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getLastValueAggregation()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getLastValueAggregation()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_d
    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getSumAggregation()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getSumAggregation()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/stats/v1/SumAggregation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_e
    if-eqz v1, :cond_b

    .line 24
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getCountAggregation()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getCountAggregation()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/stats/v1/CountAggregation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_f

    .line 26
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getAggregationCase()Lio/opencensus/proto/stats/v1/View$AggregationCase;
    .locals 1

    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    invoke-static {v0}, Lio/opencensus/proto/stats/v1/View$AggregationCase;->forNumber(I)Lio/opencensus/proto/stats/v1/View$AggregationCase;

    move-result-object v0

    return-object v0
.end method

.method public getColumns(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getColumnsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getColumnsCount()I
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColumnsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getColumnsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getColumnsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getCountAggregation()Lio/opencensus/proto/stats/v1/CountAggregation;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/CountAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/CountAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v0

    return-object v0
.end method

.method public getCountAggregationOrBuilder()Lio/opencensus/proto/stats/v1/a;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/CountAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/CountAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDefaultInstanceForType()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDefaultInstanceForType()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/stats/v1/View;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/View;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDistributionAggregation()Lio/opencensus/proto/stats/v1/DistributionAggregation;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/DistributionAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionAggregationOrBuilder()Lio/opencensus/proto/stats/v1/b;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/DistributionAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v0

    return-object v0
.end method

.method public getLastValueAggregation()Lio/opencensus/proto/stats/v1/LastValueAggregation;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/LastValueAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v0

    return-object v0
.end method

.method public getLastValueAggregationOrBuilder()Lio/opencensus/proto/stats/v1/c;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/LastValueAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v0

    return-object v0
.end method

.method public getMeasure()Lio/opencensus/proto/stats/v1/Measure;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/stats/v1/Measure;->getDefaultInstance()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMeasureOrBuilder()Lio/opencensus/proto/stats/v1/d;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getMeasure()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

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
            "Lio/opencensus/proto/stats/v1/View;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/stats/v1/View;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 5
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 6
    :cond_2
    iget-object v3, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getMeasure()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 9
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v3

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getColumnsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 11
    iget v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 12
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/stats/v1/CountAggregation;

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 15
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/stats/v1/SumAggregation;

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 18
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/stats/v1/LastValueAggregation;

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    iget v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 21
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/stats/v1/DistributionAggregation;

    .line 22
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSumAggregation()Lio/opencensus/proto/stats/v1/SumAggregation;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/SumAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/SumAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v0

    return-object v0
.end method

.method public getSumAggregationOrBuilder()Lio/opencensus/proto/stats/v1/f;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/SumAggregation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/SumAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasCountAggregation()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDistributionAggregation()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastValueAggregation()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMeasure()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSumAggregation()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x6

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
    invoke-static {}, Lio/opencensus/proto/stats/v1/View;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->hasMeasure()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getMeasure()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/stats/v1/Measure;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getColumnsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getColumnsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_2
    iget v1, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDistributionAggregation()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getLastValueAggregation()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getSumAggregation()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/stats/v1/SumAggregation;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getCountAggregation()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/stats/v1/CountAggregation;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/e;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/stats/v1/View;

    const-class v2, Lio/opencensus/proto/stats/v1/View$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/stats/v1/View;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/stats/v1/View;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->newBuilderForType()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->newBuilderForType()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/stats/v1/View$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/stats/v1/View;->newBuilder()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/stats/v1/View$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/stats/v1/View$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/stats/v1/View$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->toBuilder()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->toBuilder()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/stats/v1/View$c;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/View;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/View;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/stats/v1/View$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/stats/v1/View$c;-><init>(Lio/opencensus/proto/stats/v1/View$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/stats/v1/View$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/stats/v1/View$c;-><init>(Lio/opencensus/proto/stats/v1/View$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/stats/v1/View$c;->j0(Lio/opencensus/proto/stats/v1/View;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    :goto_0
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
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View;->description_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->measure_:Lio/opencensus/proto/stats/v1/Measure;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View;->getMeasure()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 8
    iget-object v2, p0, Lio/opencensus/proto/stats/v1/View;->columns_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/CountAggregation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/SumAggregation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/LastValueAggregation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregationCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View;->aggregation_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/DistributionAggregation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
