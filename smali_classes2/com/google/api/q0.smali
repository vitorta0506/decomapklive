.class public final Lcom/google/api/q0;
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

.field private static i:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "\n\u0017google/api/metric.proto\u0012\ngoogle.api\u001a\u0016google/api/label.proto\u001a\u001dgoogle/api/launch_stage.proto\u001a\u001egoogle/protobuf/duration.proto\"\u009f\u0006\n\u0010MetricDescriptor\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0008 \u0001(\t\u0012+\n\u0006labels\u0018\u0002 \u0003(\u000b2\u001b.google.api.LabelDescriptor\u0012<\n\u000bmetric_kind\u0018\u0003 \u0001(\u000e2\'.google.api.MetricDescriptor.MetricKind\u0012:\n\nvalue_type\u0018\u0004 \u0001(\u000e2&.google.api.MetricDescriptor.ValueType\u0012\u000c\n\u0004unit\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0006 \u0001(\t\u0012\u0014\n\u000cdisplay_name\u0018\u0007 \u0001(\t\u0012G\n\u0008metadata\u0018\n \u0001(\u000b25.google.api.MetricDescriptor.MetricDescriptorMetadata\u0012-\n\u000claunch_stage\u0018\u000c \u0001(\u000e2\u0017.google.api.LaunchStage\u0012 \n\u0018monitored_resource_types\u0018\r \u0003(\t\u001a\u00b0\u0001\n\u0018MetricDescriptorMetadata\u00121\n\u000claunch_stage\u0018\u0001 \u0001(\u000e2\u0017.google.api.LaunchStageB\u0002\u0018\u0001\u00120\n\rsample_period\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012/\n\u000cingest_delay\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\"O\n\nMetricKind\u0012\u001b\n\u0017METRIC_KIND_UNSPECIFIED\u0010\u0000\u0012\t\n\u0005GAUGE\u0010\u0001\u0012\t\n\u0005DELTA\u0010\u0002\u0012\u000e\n\nCUMULATIVE\u0010\u0003\"q\n\tValueType\u0012\u001a\n\u0016VALUE_TYPE_UNSPECIFIED\u0010\u0000\u0012\u0008\n\u0004BOOL\u0010\u0001\u0012\t\n\u0005INT64\u0010\u0002\u0012\n\n\u0006DOUBLE\u0010\u0003\u0012\n\n\u0006STRING\u0010\u0004\u0012\u0010\n\u000cDISTRIBUTION\u0010\u0005\u0012\t\n\u0005MONEY\u0010\u0006\"u\n\u0006Metric\u0012\u000c\n\u0004type\u0018\u0003 \u0001(\t\u0012.\n\u0006labels\u0018\u0002 \u0003(\u000b2\u001e.google.api.Metric.LabelsEntry\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001B_\n\u000ecom.google.apiB\u000bMetricProtoP\u0001Z7google.golang.org/genproto/googleapis/api/metric;metric\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/api/j0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lcom/google/api/k0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/api/q0;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lcom/google/api/q0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/q0;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Name"

    const-string v6, "Type"

    const-string v7, "Labels"

    const-string v8, "MetricKind"

    const-string v9, "ValueType"

    const-string v10, "Unit"

    const-string v11, "Description"

    const-string v12, "DisplayName"

    const-string v13, "Metadata"

    const-string v14, "LaunchStage"

    const-string v15, "MonitoredResourceTypes"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/q0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/q0;->c:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "LaunchStage"

    const-string v5, "SamplePeriod"

    const-string v6, "IngestDelay"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/q0;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lcom/google/api/q0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/q0;->e:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Type"

    const-string v4, "Labels"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/q0;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/q0;->g:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/q0;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lcom/google/api/j0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    invoke-static {}, Lcom/google/api/k0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/q0;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
