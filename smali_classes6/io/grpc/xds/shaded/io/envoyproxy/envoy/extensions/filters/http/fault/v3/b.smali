.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;
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
    .locals 17

    const-string v0, "\n2envoy/extensions/filters/http/fault/v3/fault.proto\u0012&envoy.extensions.filters.http.fault.v3\u001a,envoy/config/route/v3/route_components.proto\u001a4envoy/extensions/filters/common/fault/v3/fault.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00f3\u0002\n\nFaultAbort\u0012\"\n\u000bhttp_status\u0018\u0002 \u0001(\rB\u000b\u00faB\u0008*\u0006\u0010\u00d8\u0004(\u00c8\u0001H\u0000\u0012\u0015\n\u000bgrpc_status\u0018\u0005 \u0001(\rH\u0000\u0012V\n\u000cheader_abort\u0018\u0004 \u0001(\u000b2>.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbortH\u0000\u00124\n\npercentage\u0018\u0003 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u001aN\n\u000bHeaderAbort:?\u009a\u00c5\u0088\u001e:\n8envoy.config.filter.http.fault.v2.FaultAbort.HeaderAbort:3\u009a\u00c5\u0088\u001e.\n,envoy.config.filter.http.fault.v2.FaultAbortB\u0011\n\nerror_type\u0012\u0003\u00f8B\u0001J\u0004\u0008\u0001\u0010\u0002\"\u00e0\u0005\n\tHTTPFault\u0012C\n\u0005delay\u0018\u0001 \u0001(\u000b24.envoy.extensions.filters.common.fault.v3.FaultDelay\u0012A\n\u0005abort\u0018\u0002 \u0001(\u000b22.envoy.extensions.filters.http.fault.v3.FaultAbort\u0012\u0018\n\u0010upstream_cluster\u0018\u0003 \u0001(\t\u00125\n\u0007headers\u0018\u0004 \u0003(\u000b2$.envoy.config.route.v3.HeaderMatcher\u0012\u0018\n\u0010downstream_nodes\u0018\u0005 \u0003(\t\u00127\n\u0011max_active_faults\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012U\n\u0013response_rate_limit\u0018\u0007 \u0001(\u000b28.envoy.extensions.filters.common.fault.v3.FaultRateLimit\u0012\u001d\n\u0015delay_percent_runtime\u0018\u0008 \u0001(\t\u0012\u001d\n\u0015abort_percent_runtime\u0018\t \u0001(\t\u0012\u001e\n\u0016delay_duration_runtime\u0018\n \u0001(\t\u0012!\n\u0019abort_http_status_runtime\u0018\u000b \u0001(\t\u0012!\n\u0019max_active_faults_runtime\u0018\u000c \u0001(\t\u0012+\n#response_rate_limit_percent_runtime\u0018\r \u0001(\t\u0012!\n\u0019abort_grpc_status_runtime\u0018\u000e \u0001(\t\u0012(\n disable_downstream_cluster_stats\u0018\u000f \u0001(\u0008:2\u009a\u00c5\u0088\u001e-\n+envoy.config.filter.http.fault.v2.HTTPFaultBL\n4io.envoyproxy.envoy.extensions.filters.http.fault.v3B\nFaultProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    .line 9
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "HttpStatus"

    const-string v5, "GrpcStatus"

    const-string v6, "HeaderAbort"

    const-string v7, "Percentage"

    const-string v8, "ErrorType"

    filled-new-array {v2, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Delay"

    const-string v3, "Abort"

    const-string v4, "UpstreamCluster"

    const-string v5, "Headers"

    const-string v6, "DownstreamNodes"

    const-string v7, "MaxActiveFaults"

    const-string v8, "ResponseRateLimit"

    const-string v9, "DelayPercentRuntime"

    const-string v10, "AbortPercentRuntime"

    const-string v11, "DelayDurationRuntime"

    const-string v12, "AbortHttpStatusRuntime"

    const-string v13, "MaxActiveFaultsRuntime"

    const-string v14, "ResponseRateLimitPercentRuntime"

    const-string v15, "AbortGrpcStatusRuntime"

    const-string v16, "DisableDownstreamClusterStats"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 17
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 18
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 19
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 20
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 21
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
