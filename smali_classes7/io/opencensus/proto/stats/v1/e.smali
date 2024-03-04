.class public final Lio/opencensus/proto/stats/v1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static q:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "\n%opencensus/proto/stats/v1/stats.proto\u0012\u0019opencensus.proto.stats.v1\u001a\u001fgoogle/protobuf/timestamp.proto\"!\n\u0003Tag\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"\u00a6\u0001\n\u0007Measure\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004unit\u0018\u0003 \u0001(\t\u00125\n\u0004type\u0018\u0004 \u0001(\u000e2\'.opencensus.proto.stats.v1.Measure.Type\"3\n\u0004Type\u0012\u0014\n\u0010TYPE_UNSPECIFIED\u0010\u0000\u0012\t\n\u0005INT64\u0010\u0001\u0012\n\n\u0006DOUBLE\u0010\u0002\"\u00b9\u0003\n\u0004View\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u00123\n\u0007measure\u0018\u0003 \u0001(\u000b2\".opencensus.proto.stats.v1.Measure\u0012\u000f\n\u0007columns\u0018\u0004 \u0003(\t\u0012H\n\u0011count_aggregation\u0018\u0005 \u0001(\u000b2+.opencensus.proto.stats.v1.CountAggregationH\u0000\u0012D\n\u000fsum_aggregation\u0018\u0006 \u0001(\u000b2).opencensus.proto.stats.v1.SumAggregationH\u0000\u0012Q\n\u0016last_value_aggregation\u0018\u0007 \u0001(\u000b2/.opencensus.proto.stats.v1.LastValueAggregationH\u0000\u0012V\n\u0018distribution_aggregation\u0018\u0008 \u0001(\u000b22.opencensus.proto.stats.v1.DistributionAggregationH\u0000B\r\n\u000baggregation\"\u0012\n\u0010CountAggregation\"\u0010\n\u000eSumAggregation\"\u0016\n\u0014LastValueAggregation\"0\n\u0017DistributionAggregation\u0012\u0015\n\rbucket_bounds\u0018\u0001 \u0003(\u0001\"\u00b1\u0001\n\u000bMeasurement\u0012,\n\u0004tags\u0018\u0001 \u0003(\u000b2\u001e.opencensus.proto.stats.v1.Tag\u0012\u0014\n\u000cmeasure_name\u0018\u0002 \u0001(\t\u0012\u0016\n\u000cdouble_value\u0018\u0003 \u0001(\u0001H\u0000\u0012\u0013\n\tint_value\u0018\u0004 \u0001(\u0003H\u0000\u0012(\n\u0004time\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.TimestampB\u0007\n\u0005valueBp\n\u001cio.opencensus.proto.stats.v1B\nStatsProtoP\u0001ZBgithub.com/census-instrumentation/opencensus-proto/gen-go/stats/v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/opencensus/proto/stats/v1/e$a;

    invoke-direct {v1}, Lio/opencensus/proto/stats/v1/e$a;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 5
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->a:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Key"

    const-string v4, "Value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->c:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v3, "Description"

    const-string v4, "Unit"

    const-string v6, "Type"

    filled-new-array {v2, v3, v4, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->e:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Name"

    const-string v7, "Description"

    const-string v8, "Measure"

    const-string v9, "Columns"

    const-string v10, "CountAggregation"

    const-string v11, "SumAggregation"

    const-string v12, "LastValueAggregation"

    const-string v13, "DistributionAggregation"

    const-string v14, "Aggregation"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->g:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v5, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->i:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v5, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->k:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v5, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->m:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "BucketBounds"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/opencensus/proto/stats/v1/e;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/stats/v1/e;->o:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Tags"

    const-string v3, "MeasureName"

    const-string v4, "DoubleValue"

    const-string v5, "IntValue"

    const-string v6, "Time"

    const-string v7, "Value"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/stats/v1/e;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lio/opencensus/proto/stats/v1/e;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/e;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
