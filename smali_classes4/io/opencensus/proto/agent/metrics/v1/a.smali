.class public final Lio/opencensus/proto/agent/metrics/v1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\n7opencensus/proto/agent/metrics/v1/metrics_service.proto\u0012!opencensus.proto.agent.metrics.v1\u001a-opencensus/proto/agent/common/v1/common.proto\u001a)opencensus/proto/metrics/v1/metrics.proto\u001a+opencensus/proto/resource/v1/resource.proto\"\u00c3\u0001\n\u001bExportMetricsServiceRequest\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u00124\n\u0007metrics\u0018\u0002 \u0003(\u000b2#.opencensus.proto.metrics.v1.Metric\u00128\n\u0008resource\u0018\u0003 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\"\u001e\n\u001cExportMetricsServiceResponse2\u00a2\u0001\n\u000eMetricsService\u0012\u008f\u0001\n\u0006Export\u0012>.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest\u001a?.opencensus.proto.agent.metrics.v1.ExportMetricsServiceResponse\"\u0000(\u00010\u0001B\u0089\u0001\n$io.opencensus.proto.agent.metrics.v1B\u0013MetricsServiceProtoP\u0001ZJgithub.com/census-instrumentation/opencensus-proto/gen-go/agent/metrics/v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/opencensus/proto/agent/metrics/v1/a$a;

    invoke-direct {v1}, Lio/opencensus/proto/agent/metrics/v1/a$a;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 6
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 7
    invoke-static {}, Lio/opencensus/proto/agent/metrics/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/metrics/v1/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Node"

    const-string v3, "Metrics"

    const-string v6, "Resource"

    filled-new-array {v2, v3, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/metrics/v1/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lio/opencensus/proto/agent/metrics/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/metrics/v1/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/metrics/v1/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/opencensus/proto/metrics/v1/f;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lio/opencensus/proto/agent/metrics/v1/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/opencensus/proto/agent/metrics/v1/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
