.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;
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

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static q:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const-string v0, "\n$envoy/api/v2/core/health_check.proto\u0012\u0011envoy.api.v2.core\u001a\u001cenvoy/api/v2/core/base.proto\u001a,envoy/api/v2/core/event_service_config.proto\u001a\u0015envoy/type/http.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a\u0016envoy/type/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0080\u0012\n\u000bHealthCheck\u00126\n\u0007timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\n\u00faB\u0007\u00aa\u0001\u0004\u0008\u0001*\u0000\u00127\n\u0008interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\n\u00faB\u0007\u00aa\u0001\u0004\u0008\u0001*\u0000\u00121\n\u000einitial_jitter\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.Duration\u00122\n\u000finterval_jitter\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001f\n\u0017interval_jitter_percent\u0018\u0012 \u0001(\r\u0012C\n\u0013unhealthy_threshold\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012A\n\u0011healthy_threshold\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012.\n\u0008alt_port\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00124\n\u0010reuse_connection\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012K\n\u0011http_health_check\u0018\u0008 \u0001(\u000b2..envoy.api.v2.core.HealthCheck.HttpHealthCheckH\u0000\u0012I\n\u0010tcp_health_check\u0018\t \u0001(\u000b2-.envoy.api.v2.core.HealthCheck.TcpHealthCheckH\u0000\u0012K\n\u0011grpc_health_check\u0018\u000b \u0001(\u000b2..envoy.api.v2.core.HealthCheck.GrpcHealthCheckH\u0000\u0012O\n\u0013custom_health_check\u0018\r \u0001(\u000b20.envoy.api.v2.core.HealthCheck.CustomHealthCheckH\u0000\u0012@\n\u0013no_traffic_interval\u0018\u000c \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012?\n\u0012unhealthy_interval\u0018\u000e \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012D\n\u0017unhealthy_edge_interval\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012B\n\u0015healthy_edge_interval\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012\u0016\n\u000eevent_log_path\u0018\u0011 \u0001(\t\u0012<\n\revent_service\u0018\u0016 \u0001(\u000b2%.envoy.api.v2.core.EventServiceConfig\u0012(\n always_log_health_check_failures\u0018\u0013 \u0001(\u0008\u0012>\n\u000btls_options\u0018\u0015 \u0001(\u000b2).envoy.api.v2.core.HealthCheck.TlsOptions\u001aD\n\u0007Payload\u0012\u0017\n\u0004text\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001H\u0000\u0012\u0010\n\u0006binary\u0018\u0002 \u0001(\u000cH\u0000B\u000e\n\u0007payload\u0012\u0003\u00f8B\u0001\u001a\u0086\u0004\n\u000fHttpHealthCheck\u0012\u000c\n\u0004host\u0018\u0001 \u0001(\t\u0012\u0015\n\u0004path\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u00124\n\u0004send\u0018\u0003 \u0001(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u00127\n\u0007receive\u0018\u0004 \u0001(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u0012\u0018\n\u000cservice_name\u0018\u0005 \u0001(\tB\u0002\u0018\u0001\u0012O\n\u0016request_headers_to_add\u0018\u0006 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\t\u00faB\u0006\u0092\u0001\u0003\u0010\u00e8\u0007\u0012!\n\u0019request_headers_to_remove\u0018\u0008 \u0003(\t\u0012\u001b\n\tuse_http2\u0018\u0007 \u0001(\u0008B\u0008\u0018\u0001\u00b8\u00ee\u00f2\u00d2\u0005\u0001\u00121\n\u0011expected_statuses\u0018\t \u0003(\u000b2\u0016.envoy.type.Int64Range\u0012@\n\u0011codec_client_type\u0018\n \u0001(\u000e2\u001b.envoy.type.CodecClientTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012?\n\u0014service_name_matcher\u0018\u000b \u0001(\u000b2!.envoy.type.matcher.StringMatcher\u001a\u007f\n\u000eTcpHealthCheck\u00124\n\u0004send\u0018\u0001 \u0001(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u00127\n\u0007receive\u0018\u0002 \u0003(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u001a\u001f\n\u0010RedisHealthCheck\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u001a:\n\u000fGrpcHealthCheck\u0012\u0014\n\u000cservice_name\u0018\u0001 \u0001(\t\u0012\u0011\n\tauthority\u0018\u0002 \u0001(\t\u001a\u0096\u0001\n\u0011CustomHealthCheck\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\u001a$\n\nTlsOptions\u0012\u0016\n\u000ealpn_protocols\u0018\u0001 \u0003(\tB\u0015\n\u000ehealth_checker\u0012\u0003\u00f8B\u0001J\u0004\u0008\n\u0010\u000b*`\n\u000cHealthStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000b\n\u0007HEALTHY\u0010\u0001\u0012\r\n\tUNHEALTHY\u0010\u0002\u0012\u000c\n\u0008DRAINING\u0010\u0003\u0012\u000b\n\u0007TIMEOUT\u0010\u0004\u0012\u000c\n\u0008DEGRADED\u0010\u0005BY\n\u001fio.envoyproxy.envoy.api.v2.coreB\u0010HealthCheckProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 9
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 10
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0x8

    aput-object v2, v1, v10

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0x9

    aput-object v2, v1, v10

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xa

    aput-object v2, v1, v10

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xb

    aput-object v2, v1, v10

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xc

    aput-object v2, v1, v10

    .line 15
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->a:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Timeout"

    const-string v11, "Interval"

    const-string v12, "InitialJitter"

    const-string v13, "IntervalJitter"

    const-string v14, "IntervalJitterPercent"

    const-string v15, "UnhealthyThreshold"

    const-string v16, "HealthyThreshold"

    const-string v17, "AltPort"

    const-string v18, "ReuseConnection"

    const-string v19, "HttpHealthCheck"

    const-string v20, "TcpHealthCheck"

    const-string v21, "GrpcHealthCheck"

    const-string v22, "CustomHealthCheck"

    const-string v23, "NoTrafficInterval"

    const-string v24, "UnhealthyInterval"

    const-string v25, "UnhealthyEdgeInterval"

    const-string v26, "HealthyEdgeInterval"

    const-string v27, "EventLogPath"

    const-string v28, "EventService"

    const-string v29, "AlwaysLogHealthCheckFailures"

    const-string v30, "TlsOptions"

    const-string v31, "HealthChecker"

    filled-new-array/range {v10 .. v31}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->c:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Text"

    const-string v10, "Binary"

    const-string v11, "Payload"

    filled-new-array {v3, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->e:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Host"

    const-string v11, "Path"

    const-string v12, "Send"

    const-string v13, "Receive"

    const-string v14, "ServiceName"

    const-string v15, "RequestHeadersToAdd"

    const-string v16, "RequestHeadersToRemove"

    const-string v17, "UseHttp2"

    const-string v18, "ExpectedStatuses"

    const-string v19, "CodecClientType"

    const-string v20, "ServiceNameMatcher"

    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->g:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Send"

    const-string v4, "Receive"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->i:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Key"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->k:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ServiceName"

    const-string v4, "Authority"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->m:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v4, "Config"

    const-string v5, "TypedConfig"

    const-string v6, "ConfigType"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->o:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "AlpnProtocols"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 33
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 34
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 35
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 36
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 37
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 38
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
