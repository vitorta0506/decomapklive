.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;
    }
.end annotation


# static fields
.field public static final BUCKETS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

.field public static final MATCH_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bucketsMemoizedSerializedSize:I

.field private buckets_:Lcom/google/protobuf/u0$b;

.field private match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->bucketsMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyDoubleList()Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->bucketsMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_a

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x11

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v4

    .line 16
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->q(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_2

    .line 18
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newDoubleList()Lcom/google/protobuf/u0$b;

    move-result-object v5

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    or-int/lit8 v2, v2, 0x1

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_3

    .line 20
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/google/protobuf/u0$b;->N0(D)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_5

    .line 22
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newDoubleList()Lcom/google/protobuf/u0$b;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    or-int/lit8 v2, v2, 0x1

    .line 23
    :cond_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/google/protobuf/u0$b;->N0(D)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    .line 24
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v5, :cond_7

    .line 25
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;

    move-result-object v4

    .line 26
    :cond_7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;

    .line 28
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 29
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 30
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9

    .line 32
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    .line 33
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_b

    .line 35
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    .line 36
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/u0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyDoubleList()Lcom/google/protobuf/u0$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Lcom/google/protobuf/u0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyDoubleList()Lcom/google/protobuf/u0$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;)Lcom/google/protobuf/u0$b;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    return-object p0
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/protobuf/u0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyDoubleList()Lcom/google/protobuf/u0$b;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->hasMatch()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->hasMatch()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->hasMatch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getBucketsList()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getBucketsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public getBuckets(I)D
    .locals 2

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$b;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBucketsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    return-object v0
.end method

.method public getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/n;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getBucketsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getBucketsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 7
    :cond_2
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->bucketsMemoizedSerializedSize:I

    .line 8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasMatch()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->hasMatch()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getBucketsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getBucketsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings$b;

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
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getSerializedSize()I

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->getBucketsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x12

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->bucketsMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/HistogramBucketSettings;->buckets_:Lcom/google/protobuf/u0$b;

    invoke-interface {v1, v0}, Lcom/google/protobuf/u0$b;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->u0(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
