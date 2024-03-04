.class public final Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static g:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "\n\'xds/data/orca/v3/orca_load_report.proto\u0012\u0010xds.data.orca.v3\u001a\u0017validate/validate.proto\"\u00ac\u0003\n\u000eOrcaLoadReport\u00125\n\u000fcpu_utilization\u0018\u0001 \u0001(\u0001B\u001c\u00faB\u000b\u0012\t)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u00faB\u000b\u0012\t\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?\u00125\n\u000fmem_utilization\u0018\u0002 \u0001(\u0001B\u001c\u00faB\u000b\u0012\t)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u00faB\u000b\u0012\t\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?\u0012\u000b\n\u0003rps\u0018\u0003 \u0001(\u0004\u0012G\n\u000crequest_cost\u0018\u0004 \u0003(\u000b21.xds.data.orca.v3.OrcaLoadReport.RequestCostEntry\u0012n\n\u000butilization\u0018\u0005 \u0003(\u000b21.xds.data.orca.v3.OrcaLoadReport.UtilizationEntryB&\u00faB\u0010\u009a\u0001\r*\u000b\u0012\t)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u00faB\u0010\u009a\u0001\r*\u000b\u0012\t\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?\u001a2\n\u0010RequestCostEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0001:\u00028\u0001\u001a2\n\u0010UtilizationEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0001:\u00028\u0001B]\n\u001bcom.github.xds.data.orca.v3B\u0013OrcaLoadReportProtoP\u0001Z\'github.com/cncf/xds/go/xds/data/orca/v3b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "CpuUtilization"

    const-string v5, "MemUtilization"

    const-string v6, "Rps"

    const-string v7, "RequestCost"

    const-string v8, "Utilization"

    filled-new-array {v3, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Key"

    const-string v5, "Value"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->e:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 11
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 12
    sget-object v1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
