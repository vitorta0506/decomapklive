.class public final Lio/opencensus/proto/metrics/v1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final C:Lcom/google/protobuf/Descriptors$b;

.field static final D:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static E:Lcom/google/protobuf/Descriptors$FileDescriptor;

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

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/google/protobuf/Descriptors$b;

.field static final t:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final u:Lcom/google/protobuf/Descriptors$b;

.field static final v:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final w:Lcom/google/protobuf/Descriptors$b;

.field static final x:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final y:Lcom/google/protobuf/Descriptors$b;

.field static final z:Lcom/google/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "\n)opencensus/proto/metrics/v1/metrics.proto\u0012\u001bopencensus.proto.metrics.v1\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a+opencensus/proto/resource/v1/resource.proto\"\u00c9\u0001\n\u0006Metric\u0012H\n\u0011metric_descriptor\u0018\u0001 \u0001(\u000b2-.opencensus.proto.metrics.v1.MetricDescriptor\u0012;\n\ntimeseries\u0018\u0002 \u0003(\u000b2\'.opencensus.proto.metrics.v1.TimeSeries\u00128\n\u0008resource\u0018\u0003 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\"\u00ec\u0002\n\u0010MetricDescriptor\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004unit\u0018\u0003 \u0001(\t\u0012@\n\u0004type\u0018\u0004 \u0001(\u000e22.opencensus.proto.metrics.v1.MetricDescriptor.Type\u00129\n\nlabel_keys\u0018\u0005 \u0003(\u000b2%.opencensus.proto.metrics.v1.LabelKey\"\u00a9\u0001\n\u0004Type\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012\u000f\n\u000bGAUGE_INT64\u0010\u0001\u0012\u0010\n\u000cGAUGE_DOUBLE\u0010\u0002\u0012\u0016\n\u0012GAUGE_DISTRIBUTION\u0010\u0003\u0012\u0014\n\u0010CUMULATIVE_INT64\u0010\u0004\u0012\u0015\n\u0011CUMULATIVE_DOUBLE\u0010\u0005\u0012\u001b\n\u0017CUMULATIVE_DISTRIBUTION\u0010\u0006\u0012\u000b\n\u0007SUMMARY\u0010\u0007\",\n\u0008LabelKey\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\"\u00b4\u0001\n\nTimeSeries\u00123\n\u000fstart_timestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012=\n\u000clabel_values\u0018\u0002 \u0003(\u000b2\'.opencensus.proto.metrics.v1.LabelValue\u00122\n\u0006points\u0018\u0003 \u0003(\u000b2\".opencensus.proto.metrics.v1.Point\".\n\nLabelValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\u0012\u0011\n\thas_value\u0018\u0002 \u0001(\u0008\"\u0080\u0002\n\u0005Point\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0015\n\u000bint64_value\u0018\u0002 \u0001(\u0003H\u0000\u0012\u0016\n\u000cdouble_value\u0018\u0003 \u0001(\u0001H\u0000\u0012L\n\u0012distribution_value\u0018\u0004 \u0001(\u000b2..opencensus.proto.metrics.v1.DistributionValueH\u0000\u0012B\n\rsummary_value\u0018\u0005 \u0001(\u000b2).opencensus.proto.metrics.v1.SummaryValueH\u0000B\u0007\n\u0005value\"\u00c2\u0005\n\u0011DistributionValue\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0003\u0012\u000b\n\u0003sum\u0018\u0002 \u0001(\u0001\u0012 \n\u0018sum_of_squared_deviation\u0018\u0003 \u0001(\u0001\u0012T\n\u000ebucket_options\u0018\u0004 \u0001(\u000b2<.opencensus.proto.metrics.v1.DistributionValue.BucketOptions\u0012F\n\u0007buckets\u0018\u0005 \u0003(\u000b25.opencensus.proto.metrics.v1.DistributionValue.Bucket\u001a\u008e\u0001\n\rBucketOptions\u0012Y\n\u0008explicit\u0018\u0001 \u0001(\u000b2E.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.ExplicitH\u0000\u001a\u001a\n\u0008Explicit\u0012\u000e\n\u0006bounds\u0018\u0001 \u0003(\u0001B\u0006\n\u0004type\u001ab\n\u0006Bucket\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0003\u0012I\n\u0008exemplar\u0018\u0002 \u0001(\u000b27.opencensus.proto.metrics.v1.DistributionValue.Exemplar\u001a\u00db\u0001\n\u0008Exemplar\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0001\u0012-\n\ttimestamp\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012]\n\u000battachments\u0018\u0003 \u0003(\u000b2H.opencensus.proto.metrics.v1.DistributionValue.Exemplar.AttachmentsEntry\u001a2\n\u0010AttachmentsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u00a8\u0003\n\u000cSummaryValue\u0012*\n\u0005count\u0018\u0001 \u0001(\u000b2\u001b.google.protobuf.Int64Value\u0012)\n\u0003sum\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValue\u0012D\n\u0008snapshot\u0018\u0003 \u0001(\u000b22.opencensus.proto.metrics.v1.SummaryValue.Snapshot\u001a\u00fa\u0001\n\u0008Snapshot\u0012*\n\u0005count\u0018\u0001 \u0001(\u000b2\u001b.google.protobuf.Int64Value\u0012)\n\u0003sum\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValue\u0012_\n\u0011percentile_values\u0018\u0003 \u0003(\u000b2D.opencensus.proto.metrics.v1.SummaryValue.Snapshot.ValueAtPercentile\u001a6\n\u0011ValueAtPercentile\u0012\u0012\n\npercentile\u0018\u0001 \u0001(\u0001\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0001Bv\n\u001eio.opencensus.proto.metrics.v1B\u000cMetricsProtoP\u0001ZDgithub.com/census-instrumentation/opencensus-proto/gen-go/metrics/v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/opencensus/proto/metrics/v1/f$a;

    invoke-direct {v1}, Lio/opencensus/proto/metrics/v1/f$a;-><init>()V

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 5
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 6
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 7
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->a:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "MetricDescriptor"

    const-string v4, "Timeseries"

    const-string v8, "Resource"

    filled-new-array {v3, v4, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->c:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v4, "Description"

    const-string v8, "Unit"

    const-string v9, "Type"

    const-string v10, "LabelKeys"

    filled-new-array {v3, v4, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->e:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Key"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->g:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "StartTimestamp"

    const-string v4, "LabelValues"

    const-string v8, "Points"

    filled-new-array {v2, v4, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->i:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Value"

    const-string v4, "HasValue"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->k:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Timestamp"

    const-string v11, "Int64Value"

    const-string v12, "DoubleValue"

    const-string v13, "DistributionValue"

    const-string v14, "SummaryValue"

    const-string v15, "Value"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->m:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Count"

    const-string v8, "Sum"

    const-string v10, "SumOfSquaredDeviation"

    const-string v11, "BucketOptions"

    const-string v12, "Buckets"

    filled-new-array {v4, v8, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v0, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->o:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v10, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "Explicit"

    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v1, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v10, Lio/opencensus/proto/metrics/v1/f;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->q:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v9, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Bounds"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v1, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v9, Lio/opencensus/proto/metrics/v1/f;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->s:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "Exemplar"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v1, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v6, Lio/opencensus/proto/metrics/v1/f;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->u:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Timestamp"

    const-string v7, "Attachments"

    filled-new-array {v2, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->w:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->y:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Snapshot"

    filled-new-array {v4, v8, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->A:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "PercentileValues"

    filled-new-array {v4, v8, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/metrics/v1/f;->C:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Percentile"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/f;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lio/opencensus/proto/metrics/v1/f;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
