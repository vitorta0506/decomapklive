.class public final Lio/opencensus/proto/metrics/v1/Metric;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/metrics/v1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/metrics/v1/Metric$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Metric;

.field public static final METRIC_DESCRIPTOR_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/Metric;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_FIELD_NUMBER:I = 0x3

.field public static final TIMESERIES_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

.field private resource_:Lio/opencensus/proto/resource/v1/Resource;

.field private timeseries_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/proto/metrics/v1/TimeSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/metrics/v1/Metric;

    invoke-direct {v0}, Lio/opencensus/proto/metrics/v1/Metric;-><init>()V

    sput-object v0, Lio/opencensus/proto/metrics/v1/Metric;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Metric;

    .line 2
    new-instance v0, Lio/opencensus/proto/metrics/v1/Metric$a;

    invoke-direct {v0}, Lio/opencensus/proto/metrics/v1/Metric$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/opencensus/proto/metrics/v1/Metric;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/metrics/v1/Metric$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/metrics/v1/Metric;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/Metric;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_9

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v4, v6, :cond_5

    const/16 v6, 0x12

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    iget-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4}, Lio/opencensus/proto/resource/v1/Resource;->toBuilder()Lio/opencensus/proto/resource/v1/Resource$b;

    move-result-object v7

    .line 15
    :cond_2
    invoke-static {}, Lio/opencensus/proto/resource/v1/Resource;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/opencensus/proto/resource/v1/Resource;

    iput-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v7, :cond_0

    .line 16
    invoke-virtual {v7, v4}, Lio/opencensus/proto/resource/v1/Resource$b;->i0(Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource$b;

    .line 17
    invoke-virtual {v7}, Lio/opencensus/proto/resource/v1/Resource$b;->Y()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v3, :cond_4

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 19
    :cond_4
    iget-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    .line 20
    invoke-static {}, Lio/opencensus/proto/metrics/v1/TimeSeries;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 21
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_5
    iget-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    if-eqz v4, :cond_6

    .line 23
    invoke-virtual {v4}, Lio/opencensus/proto/metrics/v1/MetricDescriptor;->toBuilder()Lio/opencensus/proto/metrics/v1/MetricDescriptor$b;

    move-result-object v7

    .line 24
    :cond_6
    invoke-static {}, Lio/opencensus/proto/metrics/v1/MetricDescriptor;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    iput-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    if-eqz v7, :cond_0

    .line 25
    invoke-virtual {v7, v4}, Lio/opencensus/proto/metrics/v1/MetricDescriptor$b;->i0(Lio/opencensus/proto/metrics/v1/MetricDescriptor;)Lio/opencensus/proto/metrics/v1/MetricDescriptor$b;

    .line 26
    invoke-virtual {v7}, Lio/opencensus/proto/metrics/v1/MetricDescriptor$b;->Y()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;
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

    .line 28
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
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v3, :cond_8

    .line 30
    iget-object p2, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    .line 31
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 33
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v3, :cond_a

    .line 34
    iget-object p1, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    .line 35
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/metrics/v1/Metric$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/Metric;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/opencensus/proto/metrics/v1/Metric;Lio/opencensus/proto/metrics/v1/MetricDescriptor;)Lio/opencensus/proto/metrics/v1/MetricDescriptor;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    return-object p1
.end method

.method static synthetic access$500(Lio/opencensus/proto/metrics/v1/Metric;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lio/opencensus/proto/metrics/v1/Metric;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lio/opencensus/proto/metrics/v1/Metric;Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    return-object p1
.end method

.method static synthetic access$702(Lio/opencensus/proto/metrics/v1/Metric;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/metrics/v1/Metric;->bitField0_:I

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$900(Lio/opencensus/proto/metrics/v1/Metric;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Metric;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/metrics/v1/Metric$b;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Metric;

    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/Metric;->toBuilder()Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/metrics/v1/Metric;)Lio/opencensus/proto/metrics/v1/Metric$b;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Metric;

    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/Metric;->toBuilder()Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/metrics/v1/Metric$b;->i0(Lio/opencensus/proto/metrics/v1/Metric;)Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Metric;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/Metric;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/opencensus/proto/metrics/v1/Metric;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/metrics/v1/Metric;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->hasMetricDescriptor()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Metric;->hasMetricDescriptor()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->hasMetricDescriptor()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getMetricDescriptor()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Metric;->getMetricDescriptor()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/metrics/v1/MetricDescriptor;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getTimeseriesList()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Metric;->getTimeseriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->hasResource()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Metric;->hasResource()Z

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 11
    :goto_3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->hasResource()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/Metric;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/resource/v1/Resource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/Metric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/Metric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/Metric;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Metric;

    return-object v0
.end method

.method public getMetricDescriptor()Lio/opencensus/proto/metrics/v1/MetricDescriptor;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/metrics/v1/MetricDescriptor;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetricDescriptorOrBuilder()Lio/opencensus/proto/metrics/v1/d;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getMetricDescriptor()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/Metric;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResource()Lio/opencensus/proto/resource/v1/Resource;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/resource/v1/Resource;->getDefaultInstance()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResourceOrBuilder()Lio/opencensus/proto/resource/v1/a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getResource()Lio/opencensus/proto/resource/v1/Resource;

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

    .line 2
    :cond_0
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getMetricDescriptor()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

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
    iget-object v2, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    .line 6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTimeseries(I)Lio/opencensus/proto/metrics/v1/TimeSeries;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/TimeSeries;

    return-object p1
.end method

.method public getTimeseriesCount()I
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTimeseriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/proto/metrics/v1/TimeSeries;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    return-object v0
.end method

.method public getTimeseriesOrBuilder(I)Lio/opencensus/proto/metrics/v1/i;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/i;

    return-object p1
.end method

.method public getTimeseriesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/opencensus/proto/metrics/v1/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasMetricDescriptor()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResource()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

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
    invoke-static {}, Lio/opencensus/proto/metrics/v1/Metric;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->hasMetricDescriptor()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getMetricDescriptor()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/metrics/v1/MetricDescriptor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getTimeseriesCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getTimeseriesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->hasResource()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/resource/v1/Resource;->hashCode()I

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
    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/metrics/v1/Metric;

    const-class v2, Lio/opencensus/proto/metrics/v1/Metric$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/metrics/v1/Metric;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->newBuilderForType()Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/Metric;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->newBuilderForType()Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/metrics/v1/Metric$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/metrics/v1/Metric;->newBuilder()Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/metrics/v1/Metric$b;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/metrics/v1/Metric$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/metrics/v1/Metric$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/metrics/v1/Metric$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->toBuilder()Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->toBuilder()Lio/opencensus/proto/metrics/v1/Metric$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/metrics/v1/Metric$b;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/Metric;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/Metric;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/metrics/v1/Metric$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/metrics/v1/Metric$b;-><init>(Lio/opencensus/proto/metrics/v1/Metric$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/metrics/v1/Metric$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/metrics/v1/Metric$b;-><init>(Lio/opencensus/proto/metrics/v1/Metric$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/metrics/v1/Metric$b;->i0(Lio/opencensus/proto/metrics/v1/Metric;)Lio/opencensus/proto/metrics/v1/Metric$b;

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
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->metricDescriptor_:Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getMetricDescriptor()Lio/opencensus/proto/metrics/v1/MetricDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lio/opencensus/proto/metrics/v1/Metric;->timeseries_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/Metric;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/Metric;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
