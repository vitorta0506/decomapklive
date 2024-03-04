.class public final Lio/grpc/xds/shaded/com/github/xds/service/orca/v3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\n\u001exds/service/orca/v3/orca.proto\u0012\u0013xds.service.orca.v3\u001a\'xds/data/orca/v3/orca_load_report.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u0017validate/validate.proto\"g\n\u0015OrcaLoadReportRequest\u00122\n\u000freport_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001a\n\u0012request_cost_names\u0018\u0002 \u0003(\t2u\n\u000eOpenRcaService\u0012c\n\u0011StreamCoreMetrics\u0012*.xds.service.orca.v3.OrcaLoadReportRequest\u001a .xds.data.orca.v3.OrcaLoadReport0\u0001BY\n\u001ecom.github.xds.service.orca.v3B\tOrcaProtoP\u0001Z*github.com/cncf/xds/go/xds/service/orca/v3b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 5
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/service/orca/v3/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/service/orca/v3/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/service/orca/v3/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ReportInterval"

    const-string v3, "RequestCostNames"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/github/xds/service/orca/v3/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/service/orca/v3/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
