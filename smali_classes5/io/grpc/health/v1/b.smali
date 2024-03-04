.class public final Lio/grpc/health/v1/b;
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
    .locals 3

    const-string v0, "\n\u001bgrpc/health/v1/health.proto\u0012\u000egrpc.health.v1\"%\n\u0012HealthCheckRequest\u0012\u000f\n\u0007service\u0018\u0001 \u0001(\t\"\u00a9\u0001\n\u0013HealthCheckResponse\u0012A\n\u0006status\u0018\u0001 \u0001(\u000e21.grpc.health.v1.HealthCheckResponse.ServingStatus\"O\n\rServingStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000b\n\u0007SERVING\u0010\u0001\u0012\u000f\n\u000bNOT_SERVING\u0010\u0002\u0012\u0013\n\u000fSERVICE_UNKNOWN\u0010\u00032\u00ae\u0001\n\u0006Health\u0012P\n\u0005Check\u0012\".grpc.health.v1.HealthCheckRequest\u001a#.grpc.health.v1.HealthCheckResponse\u0012R\n\u0005Watch\u0012\".grpc.health.v1.HealthCheckRequest\u001a#.grpc.health.v1.HealthCheckResponse0\u0001Ba\n\u0011io.grpc.health.v1B\u000bHealthProtoP\u0001Z,google.golang.org/grpc/health/grpc_health_v1\u00aa\u0002\u000eGrpc.Health.V1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/health/v1/b;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lio/grpc/health/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/health/v1/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Service"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/health/v1/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 5
    invoke-static {}, Lio/grpc/health/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/health/v1/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Status"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/health/v1/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/health/v1/b;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
