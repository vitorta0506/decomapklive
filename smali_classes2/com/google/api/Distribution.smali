.class public final Lcom/google/api/Distribution;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$d;,
        Lcom/google/api/Distribution$Exemplar;,
        Lcom/google/api/Distribution$e;,
        Lcom/google/api/Distribution$BucketOptions;,
        Lcom/google/api/Distribution$c;,
        Lcom/google/api/Distribution$Range;,
        Lcom/google/api/Distribution$f;
    }
.end annotation


# static fields
.field public static final BUCKET_COUNTS_FIELD_NUMBER:I = 0x7

.field public static final BUCKET_OPTIONS_FIELD_NUMBER:I = 0x6

.field public static final COUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution;

.field public static final EXEMPLARS_FIELD_NUMBER:I = 0xa

.field public static final MEAN_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Distribution;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANGE_FIELD_NUMBER:I = 0x4

.field public static final SUM_OF_SQUARED_DEVIATION_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bucketCountsMemoizedSerializedSize:I

.field private bucketCounts_:Lcom/google/protobuf/u0$i;

.field private bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

.field private count_:J

.field private exemplars_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation
.end field

.field private mean_:D

.field private memoizedIsInitialized:B

.field private range_:Lcom/google/api/Distribution$Range;

.field private sumOfSquaredDeviation_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/Distribution;

    invoke-direct {v0}, Lcom/google/api/Distribution;-><init>()V

    sput-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    .line 2
    new-instance v0, Lcom/google/api/Distribution$a;

    invoke-direct {v0}, Lcom/google/api/Distribution$a;-><init>()V

    sput-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/api/Distribution;->bucketCountsMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lcom/google/api/Distribution;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/u0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

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
    iput p1, p0, Lcom/google/api/Distribution;->bucketCountsMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lcom/google/api/Distribution;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/api/Distribution;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    const/16 v5, 0x8

    if-eq v3, v5, :cond_e

    const/16 v5, 0x11

    if-eq v3, v5, :cond_d

    const/16 v5, 0x19

    if-eq v3, v5, :cond_c

    const/16 v5, 0x22

    const/4 v6, 0x0

    if-eq v3, v5, :cond_a

    const/16 v5, 0x32

    if-eq v3, v5, :cond_8

    const/16 v5, 0x38

    if-eq v3, v5, :cond_6

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x52

    if-eq v3, v5, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    .line 18
    invoke-static {}, Lcom/google/api/Distribution$Exemplar;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 19
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 20
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v3

    .line 22
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->q(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_4

    .line 24
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newLongList()Lcom/google/protobuf/u0$i;

    move-result-object v4

    iput-object v4, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    or-int/lit8 v2, v2, 0x1

    .line 25
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_5

    .line 26
    iget-object v4, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/google/protobuf/u0$i;->I0(J)V

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_0

    :cond_6
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_7

    .line 28
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newLongList()Lcom/google/protobuf/u0$i;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    or-int/lit8 v2, v2, 0x1

    .line 29
    :cond_7
    iget-object v3, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/google/protobuf/u0$i;->I0(J)V

    goto/16 :goto_0

    .line 30
    :cond_8
    iget-object v3, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-eqz v3, :cond_9

    .line 31
    invoke-virtual {v3}, Lcom/google/api/Distribution$BucketOptions;->toBuilder()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v6

    .line 32
    :cond_9
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 33
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Distribution$BucketOptions;

    iput-object v3, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-eqz v6, :cond_0

    .line 34
    invoke-virtual {v6, v3}, Lcom/google/api/Distribution$BucketOptions$b;->g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

    .line 35
    invoke-virtual {v6}, Lcom/google/api/Distribution$BucketOptions$b;->Y()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    goto/16 :goto_0

    .line 36
    :cond_a
    iget-object v3, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    if-eqz v3, :cond_b

    .line 37
    invoke-virtual {v3}, Lcom/google/api/Distribution$Range;->toBuilder()Lcom/google/api/Distribution$Range$b;

    move-result-object v6

    .line 38
    :cond_b
    invoke-static {}, Lcom/google/api/Distribution$Range;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Distribution$Range;

    iput-object v3, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v6, v3}, Lcom/google/api/Distribution$Range$b;->d0(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range$b;

    .line 40
    invoke-virtual {v6}, Lcom/google/api/Distribution$Range$b;->Y()Lcom/google/api/Distribution$Range;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    goto/16 :goto_0

    .line 41
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    goto/16 :goto_0

    .line 42
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/api/Distribution;->mean_:D

    goto/16 :goto_0

    .line 43
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/api/Distribution;->count_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 44
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 45
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_10

    .line 46
    iget-object p2, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    :cond_10
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_11

    .line 47
    iget-object p2, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    .line 48
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 50
    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_13

    .line 51
    iget-object p1, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    :cond_13
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_14

    .line 52
    iget-object p1, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    .line 53
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/api/Distribution$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$6300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6400()Lcom/google/protobuf/u0$i;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/u0$i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6602(Lcom/google/api/Distribution;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/api/Distribution;->count_:J

    return-wide p1
.end method

.method static synthetic access$6702(Lcom/google/api/Distribution;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/api/Distribution;->mean_:D

    return-wide p1
.end method

.method static synthetic access$6802(Lcom/google/api/Distribution;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    return-wide p1
.end method

.method static synthetic access$6902(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/google/api/Distribution;)Lcom/google/protobuf/u0$i;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    return-object p0
.end method

.method static synthetic access$7102(Lcom/google/api/Distribution;Lcom/google/protobuf/u0$i;)Lcom/google/protobuf/u0$i;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/google/api/Distribution;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7202(Lcom/google/api/Distribution;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/google/api/Distribution;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$7500()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$7600()Lcom/google/protobuf/u0$i;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/u0$i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/google/protobuf/u0$i;)Lcom/google/protobuf/u0$i;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$i;)Lcom/google/protobuf/u0$i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7800()Lcom/google/protobuf/u0$i;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/u0$i;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution;
    .locals 1

    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/v;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Distribution$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->toBuilder()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$d;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->toBuilder()Lcom/google/api/Distribution$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$d;->i0(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$d;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/api/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Distribution;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/api/Distribution;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/api/Distribution;

    .line 4
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 6
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3

    return v5

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 8
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_4

    return v5

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v5

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/Distribution$Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v5

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v5

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/Distribution$BucketOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v5

    .line 15
    :cond_8
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    .line 16
    :cond_9
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getExemplarsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution;->getExemplarsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v5

    .line 17
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v0
.end method

.method public getBucketCounts(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$i;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketCountsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBucketCountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    return-object v0
.end method

.method public getBucketOptions()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBucketOptionsOrBuilder()Lcom/google/api/Distribution$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/google/api/Distribution;->count_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/api/Distribution;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getDefaultInstanceForType()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getDefaultInstanceForType()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public getExemplars(I)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$Exemplar;

    return-object p1
.end method

.method public getExemplarsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExemplarsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    return-object v0
.end method

.method public getExemplarsOrBuilder(I)Lcom/google/api/Distribution$e;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$e;

    return-object p1
.end method

.method public getExemplarsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Distribution$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    return-object v0
.end method

.method public getMean()D
    .locals 2

    iget-wide v0, p0, Lcom/google/api/Distribution;->mean_:D

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Distribution;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRange()Lcom/google/api/Distribution$Range;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Distribution$Range;->getDefaultInstance()Lcom/google/api/Distribution$Range;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRangeOrBuilder()Lcom/google/api/Distribution$f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/google/api/Distribution;->count_:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-wide v1, p0, Lcom/google/api/Distribution;->mean_:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v1, v5

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    cmpl-double v3, v1, v5

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 11
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_1
    iget-object v3, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 13
    iget-object v3, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    .line 14
    invoke-interface {v3, v1}, Lcom/google/protobuf/u0$i;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->A(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v2

    .line 15
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 16
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    iput v2, p0, Lcom/google/api/Distribution;->bucketCountsMemoizedSerializedSize:I

    .line 18
    :goto_2
    iget-object v1, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_8

    const/16 v1, 0xa

    .line 19
    iget-object v2, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSumOfSquaredDeviation()D
    .locals 2

    iget-wide v0, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasBucketOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRange()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

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
    invoke-static {}, Lcom/google/api/Distribution;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Distribution$Range;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Distribution$BucketOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketCountsCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getExemplarsCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getExemplarsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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
    sget-object v0, Lcom/google/api/v;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/Distribution;

    const-class v2, Lcom/google/api/Distribution$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/api/Distribution;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/api/Distribution;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/api/Distribution$d;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/api/Distribution;->newBuilder()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/Distribution$d;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/api/Distribution$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/api/Distribution$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/Distribution$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution;->newBuilderForType()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/Distribution;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/Distribution;->newBuilderForType()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/api/Distribution;

    invoke-direct {p1}, Lcom/google/api/Distribution;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/api/Distribution$d;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/api/Distribution$d;

    invoke-direct {v0, v1}, Lcom/google/api/Distribution$d;-><init>(Lcom/google/api/Distribution$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/api/Distribution$d;

    invoke-direct {v0, v1}, Lcom/google/api/Distribution$d;-><init>(Lcom/google/api/Distribution$a;)V

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$d;->i0(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution;->toBuilder()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution;->toBuilder()Lcom/google/api/Distribution$d;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getSerializedSize()I

    .line 2
    iget-wide v0, p0, Lcom/google/api/Distribution;->count_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/google/api/Distribution;->mean_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    .line 7
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    .line 11
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/16 v0, 0x3a

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 14
    iget v0, p0, Lcom/google/api/Distribution;->bucketCountsMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 16
    iget-object v2, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/u0$i;

    invoke-interface {v2, v1}, Lcom/google/protobuf/u0$i;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->K0(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0xa

    .line 18
    iget-object v2, p0, Lcom/google/api/Distribution;->exemplars_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
