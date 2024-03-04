.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;
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

.field private static k:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "\n*envoy/config/endpoint/v3/load_report.proto\u0012\u0018envoy.config.endpoint.v3\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00b3\u0003\n\u0015UpstreamLocalityStats\u00120\n\u0008locality\u0018\u0001 \u0001(\u000b2\u001e.envoy.config.core.v3.Locality\u0012!\n\u0019total_successful_requests\u0018\u0002 \u0001(\u0004\u0012\"\n\u001atotal_requests_in_progress\u0018\u0003 \u0001(\u0004\u0012\u001c\n\u0014total_error_requests\u0018\u0004 \u0001(\u0004\u0012\u001d\n\u0015total_issued_requests\u0018\u0008 \u0001(\u0004\u0012L\n\u0011load_metric_stats\u0018\u0005 \u0003(\u000b21.envoy.config.endpoint.v3.EndpointLoadMetricStats\u0012P\n\u0017upstream_endpoint_stats\u0018\u0007 \u0003(\u000b2/.envoy.config.endpoint.v3.UpstreamEndpointStats\u0012\u0010\n\u0008priority\u0018\u0006 \u0001(\r:2\u009a\u00c5\u0088\u001e-\n+envoy.api.v2.endpoint.UpstreamLocalityStats\"\u00f8\u0002\n\u0015UpstreamEndpointStats\u0012.\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.Address\u0012)\n\u0008metadata\u0018\u0006 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012!\n\u0019total_successful_requests\u0018\u0002 \u0001(\u0004\u0012\"\n\u001atotal_requests_in_progress\u0018\u0003 \u0001(\u0004\u0012\u001c\n\u0014total_error_requests\u0018\u0004 \u0001(\u0004\u0012\u001d\n\u0015total_issued_requests\u0018\u0007 \u0001(\u0004\u0012L\n\u0011load_metric_stats\u0018\u0005 \u0003(\u000b21.envoy.config.endpoint.v3.EndpointLoadMetricStats:2\u009a\u00c5\u0088\u001e-\n+envoy.api.v2.endpoint.UpstreamEndpointStats\"\u00ab\u0001\n\u0017EndpointLoadMetricStats\u0012\u0013\n\u000bmetric_name\u0018\u0001 \u0001(\t\u0012)\n!num_requests_finished_with_metric\u0018\u0002 \u0001(\u0004\u0012\u001a\n\u0012total_metric_value\u0018\u0003 \u0001(\u0001:4\u009a\u00c5\u0088\u001e/\n-envoy.api.v2.endpoint.EndpointLoadMetricStats\"\u00fd\u0003\n\u000cClusterStats\u0012\u001d\n\u000ccluster_name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\u001c\n\u0014cluster_service_name\u0018\u0006 \u0001(\t\u0012Z\n\u0017upstream_locality_stats\u0018\u0002 \u0003(\u000b2/.envoy.config.endpoint.v3.UpstreamLocalityStatsB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u0012\u001e\n\u0016total_dropped_requests\u0018\u0003 \u0001(\u0004\u0012P\n\u0010dropped_requests\u0018\u0005 \u0003(\u000b26.envoy.config.endpoint.v3.ClusterStats.DroppedRequests\u00127\n\u0014load_report_interval\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u001a~\n\u000fDroppedRequests\u0012\u0019\n\u0008category\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\u0015\n\rdropped_count\u0018\u0002 \u0001(\u0004:9\u009a\u00c5\u0088\u001e4\n2envoy.api.v2.endpoint.ClusterStats.DroppedRequests:)\u009a\u00c5\u0088\u001e$\n\"envoy.api.v2.endpoint.ClusterStatsBC\n&io.envoyproxy.envoy.config.endpoint.v3B\u000fLoadReportProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 9
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->a:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Locality"

    const-string v8, "TotalSuccessfulRequests"

    const-string v9, "TotalRequestsInProgress"

    const-string v10, "TotalErrorRequests"

    const-string v11, "TotalIssuedRequests"

    const-string v12, "LoadMetricStats"

    const-string v13, "UpstreamEndpointStats"

    const-string v14, "Priority"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->c:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Address"

    const-string v8, "Metadata"

    const-string v9, "TotalSuccessfulRequests"

    const-string v10, "TotalRequestsInProgress"

    const-string v11, "TotalErrorRequests"

    const-string v12, "TotalIssuedRequests"

    const-string v13, "LoadMetricStats"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->e:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "MetricName"

    const-string v4, "NumRequestsFinishedWithMetric"

    const-string v5, "TotalMetricValue"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->g:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "ClusterName"

    const-string v5, "ClusterServiceName"

    const-string v6, "UpstreamLocalityStats"

    const-string v7, "TotalDroppedRequests"

    const-string v8, "DroppedRequests"

    const-string v9, "LoadReportInterval"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->i:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Category"

    const-string v3, "DroppedCount"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 21
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 22
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 23
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 24
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 25
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
