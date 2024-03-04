.class public final Lcom/google/api/v;
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

.field private static o:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n\u001dgoogle/api/distribution.proto\u0012\ngoogle.api\u001a\u0019google/protobuf/any.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"\u00d9\u0006\n\u000cDistribution\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004mean\u0018\u0002 \u0001(\u0001\u0012 \n\u0018sum_of_squared_deviation\u0018\u0003 \u0001(\u0001\u0012-\n\u0005range\u0018\u0004 \u0001(\u000b2\u001e.google.api.Distribution.Range\u0012>\n\u000ebucket_options\u0018\u0006 \u0001(\u000b2&.google.api.Distribution.BucketOptions\u0012\u0015\n\rbucket_counts\u0018\u0007 \u0003(\u0003\u00124\n\texemplars\u0018\n \u0003(\u000b2!.google.api.Distribution.Exemplar\u001a!\n\u0005Range\u0012\u000b\n\u0003min\u0018\u0001 \u0001(\u0001\u0012\u000b\n\u0003max\u0018\u0002 \u0001(\u0001\u001a\u00b5\u0003\n\rBucketOptions\u0012G\n\u000elinear_buckets\u0018\u0001 \u0001(\u000b2-.google.api.Distribution.BucketOptions.LinearH\u0000\u0012Q\n\u0013exponential_buckets\u0018\u0002 \u0001(\u000b22.google.api.Distribution.BucketOptions.ExponentialH\u0000\u0012K\n\u0010explicit_buckets\u0018\u0003 \u0001(\u000b2/.google.api.Distribution.BucketOptions.ExplicitH\u0000\u001aC\n\u0006Linear\u0012\u001a\n\u0012num_finite_buckets\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005width\u0018\u0002 \u0001(\u0001\u0012\u000e\n\u0006offset\u0018\u0003 \u0001(\u0001\u001aO\n\u000bExponential\u0012\u001a\n\u0012num_finite_buckets\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rgrowth_factor\u0018\u0002 \u0001(\u0001\u0012\r\n\u0005scale\u0018\u0003 \u0001(\u0001\u001a\u001a\n\u0008Explicit\u0012\u000e\n\u0006bounds\u0018\u0001 \u0003(\u0001B\t\n\u0007options\u001as\n\u0008Exemplar\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0001\u0012-\n\ttimestamp\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012)\n\u000battachments\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.AnyBq\n\u000ecom.google.apiB\u0011DistributionProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/api/distribution;distribution\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/api/v;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lcom/google/api/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/v;->a:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Count"

    const-string v7, "Mean"

    const-string v8, "SumOfSquaredDeviation"

    const-string v9, "Range"

    const-string v10, "BucketOptions"

    const-string v11, "BucketCounts"

    const-string v12, "Exemplars"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/v;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/api/v;->c:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Min"

    const-string v7, "Max"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/api/v;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/api/v;->e:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "LinearBuckets"

    const-string v7, "ExponentialBuckets"

    const-string v8, "ExplicitBuckets"

    const-string v9, "Options"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/api/v;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lcom/google/api/v;->g:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "NumFiniteBuckets"

    const-string v7, "Width"

    const-string v8, "Offset"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lcom/google/api/v;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lcom/google/api/v;->i:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "GrowthFactor"

    const-string v7, "Scale"

    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lcom/google/api/v;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/api/v;->k:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Bounds"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/api/v;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/v;->m:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Value"

    const-string v3, "Timestamp"

    const-string v4, "Attachments"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/v;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 20
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/v;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
