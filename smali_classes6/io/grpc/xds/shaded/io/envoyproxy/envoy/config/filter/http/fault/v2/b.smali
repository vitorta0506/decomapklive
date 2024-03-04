.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;
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
    .locals 15

    const-string v0, "\n-envoy/config/filter/http/fault/v2/fault.proto\u0012!envoy.config.filter.http.fault.v2\u001a)envoy/api/v2/route/route_components.proto\u001a(envoy/config/filter/fault/v2/fault.proto\u001a\u0018envoy/type/percent.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00de\u0001\n\nFaultAbort\u0012\"\n\u000bhttp_status\u0018\u0002 \u0001(\rB\u000b\u00faB\u0008*\u0006\u0010\u00d8\u0004(\u00c8\u0001H\u0000\u0012Q\n\u000cheader_abort\u0018\u0004 \u0001(\u000b29.envoy.config.filter.http.fault.v2.FaultAbort.HeaderAbortH\u0000\u00121\n\npercentage\u0018\u0003 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u001a\r\n\u000bHeaderAbortB\u0011\n\nerror_type\u0012\u0003\u00f8B\u0001J\u0004\u0008\u0001\u0010\u0002\"\u00bf\u0004\n\tHTTPFault\u00127\n\u0005delay\u0018\u0001 \u0001(\u000b2(.envoy.config.filter.fault.v2.FaultDelay\u0012<\n\u0005abort\u0018\u0002 \u0001(\u000b2-.envoy.config.filter.http.fault.v2.FaultAbort\u0012\u0018\n\u0010upstream_cluster\u0018\u0003 \u0001(\t\u00122\n\u0007headers\u0018\u0004 \u0003(\u000b2!.envoy.api.v2.route.HeaderMatcher\u0012\u0018\n\u0010downstream_nodes\u0018\u0005 \u0003(\t\u00127\n\u0011max_active_faults\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012I\n\u0013response_rate_limit\u0018\u0007 \u0001(\u000b2,.envoy.config.filter.fault.v2.FaultRateLimit\u0012\u001d\n\u0015delay_percent_runtime\u0018\u0008 \u0001(\t\u0012\u001d\n\u0015abort_percent_runtime\u0018\t \u0001(\t\u0012\u001e\n\u0016delay_duration_runtime\u0018\n \u0001(\t\u0012!\n\u0019abort_http_status_runtime\u0018\u000b \u0001(\t\u0012!\n\u0019max_active_faults_runtime\u0018\u000c \u0001(\t\u0012+\n#response_rate_limit_percent_runtime\u0018\r \u0001(\tBu\n/io.envoyproxy.envoy.config.filter.http.fault.v2B\nFaultProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005(\u0012&envoy.extensions.filters.http.fault.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/fault/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "HttpStatus"

    const-string v5, "HeaderAbort"

    const-string v6, "Percentage"

    const-string v7, "ErrorType"

    filled-new-array {v2, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->e:Lcom/google/protobuf/Descriptors$b;

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

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 17
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 18
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 19
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 20
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 21
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/fault/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/b;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
