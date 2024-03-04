.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "\n&envoy/config/trace/v2/opencensus.proto\u0012\u0015envoy.config.trace.v2\u001a$envoy/api/v2/core/grpc_service.proto\u001a,opencensus/proto/trace/v1/trace_config.proto\u001a\u001dudpa/annotations/status.proto\"\u00d8\u0005\n\u0010OpenCensusConfig\u0012<\n\u000ctrace_config\u0018\u0001 \u0001(\u000b2&.opencensus.proto.trace.v1.TraceConfig\u0012\u001f\n\u0017stdout_exporter_enabled\u0018\u0002 \u0001(\u0008\u0012$\n\u001cstackdriver_exporter_enabled\u0018\u0003 \u0001(\u0008\u0012\u001e\n\u0016stackdriver_project_id\u0018\u0004 \u0001(\t\u0012\u001b\n\u0013stackdriver_address\u0018\n \u0001(\t\u0012@\n\u0018stackdriver_grpc_service\u0018\r \u0001(\u000b2\u001e.envoy.api.v2.core.GrpcService\u0012\u001f\n\u0017zipkin_exporter_enabled\u0018\u0005 \u0001(\u0008\u0012\u0012\n\nzipkin_url\u0018\u0006 \u0001(\t\u0012 \n\u0018ocagent_exporter_enabled\u0018\u000b \u0001(\u0008\u0012\u0017\n\u000focagent_address\u0018\u000c \u0001(\t\u0012<\n\u0014ocagent_grpc_service\u0018\u000e \u0001(\u000b2\u001e.envoy.api.v2.core.GrpcService\u0012T\n\u0016incoming_trace_context\u0018\u0008 \u0003(\u000e24.envoy.config.trace.v2.OpenCensusConfig.TraceContext\u0012T\n\u0016outgoing_trace_context\u0018\t \u0003(\u000e24.envoy.config.trace.v2.OpenCensusConfig.TraceContext\"`\n\u000cTraceContext\u0012\u0008\n\u0004NONE\u0010\u0000\u0012\u0011\n\rTRACE_CONTEXT\u0010\u0001\u0012\u0012\n\u000eGRPC_TRACE_BIN\u0010\u0002\u0012\u0017\n\u0013CLOUD_TRACE_CONTEXT\u0010\u0003\u0012\u0006\n\u0002B3\u0010\u0004J\u0004\u0008\u0007\u0010\u0008B@\n#io.envoyproxy.envoy.config.trace.v2B\u000fOpencensusProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 5
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/e;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/e;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TraceConfig"

    const-string v3, "StdoutExporterEnabled"

    const-string v4, "StackdriverExporterEnabled"

    const-string v5, "StackdriverProjectId"

    const-string v6, "StackdriverAddress"

    const-string v7, "StackdriverGrpcService"

    const-string v8, "ZipkinExporterEnabled"

    const-string v9, "ZipkinUrl"

    const-string v10, "OcagentExporterEnabled"

    const-string v11, "OcagentAddress"

    const-string v12, "OcagentGrpcService"

    const-string v13, "IncomingTraceContext"

    const-string v14, "OutgoingTraceContext"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/e;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 9
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 10
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/e;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/e;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
