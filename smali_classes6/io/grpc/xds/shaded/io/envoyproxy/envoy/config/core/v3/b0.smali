.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;
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
    .locals 34

    const-string v0, "\n\'envoy/config/core/v3/health_check.proto\u0012\u0014envoy.config.core.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a/envoy/config/core/v3/event_service_config.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0018envoy/type/v3/http.proto\u001a\u0019envoy/type/v3/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00cb\u0016\n\u000bHealthCheck\u00126\n\u0007timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\n\u00faB\u0007\u00aa\u0001\u0004\u0008\u0001*\u0000\u00127\n\u0008interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\n\u00faB\u0007\u00aa\u0001\u0004\u0008\u0001*\u0000\u00121\n\u000einitial_jitter\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.Duration\u00122\n\u000finterval_jitter\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001f\n\u0017interval_jitter_percent\u0018\u0012 \u0001(\r\u0012C\n\u0013unhealthy_threshold\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012A\n\u0011healthy_threshold\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012.\n\u0008alt_port\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00124\n\u0010reuse_connection\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012N\n\u0011http_health_check\u0018\u0008 \u0001(\u000b21.envoy.config.core.v3.HealthCheck.HttpHealthCheckH\u0000\u0012L\n\u0010tcp_health_check\u0018\t \u0001(\u000b20.envoy.config.core.v3.HealthCheck.TcpHealthCheckH\u0000\u0012N\n\u0011grpc_health_check\u0018\u000b \u0001(\u000b21.envoy.config.core.v3.HealthCheck.GrpcHealthCheckH\u0000\u0012R\n\u0013custom_health_check\u0018\r \u0001(\u000b23.envoy.config.core.v3.HealthCheck.CustomHealthCheckH\u0000\u0012@\n\u0013no_traffic_interval\u0018\u000c \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012H\n\u001bno_traffic_healthy_interval\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012?\n\u0012unhealthy_interval\u0018\u000e \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012D\n\u0017unhealthy_edge_interval\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012B\n\u0015healthy_edge_interval\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012\u0016\n\u000eevent_log_path\u0018\u0011 \u0001(\t\u0012?\n\revent_service\u0018\u0016 \u0001(\u000b2(.envoy.config.core.v3.EventServiceConfig\u0012(\n always_log_health_check_failures\u0018\u0013 \u0001(\u0008\u0012A\n\u000btls_options\u0018\u0015 \u0001(\u000b2,.envoy.config.core.v3.HealthCheck.TlsOptions\u0012@\n\u001ftransport_socket_match_criteria\u0018\u0017 \u0001(\u000b2\u0017.google.protobuf.Struct\u001ar\n\u0007Payload\u0012\u0017\n\u0004text\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001H\u0000\u0012\u0010\n\u0006binary\u0018\u0002 \u0001(\u000cH\u0000:,\u009a\u00c5\u0088\u001e\'\n%envoy.api.v2.core.HealthCheck.PayloadB\u000e\n\u0007payload\u0012\u0003\u00f8B\u0001\u001a\u00e1\u0004\n\u000fHttpHealthCheck\u0012\u0019\n\u0004host\u0018\u0001 \u0001(\tB\u000b\u00faB\u0008r\u0006\u00c0\u0001\u0002\u00c8\u0001\u0000\u0012\u001b\n\u0004path\u0018\u0002 \u0001(\tB\r\u00faB\nr\u0008\u0010\u0001\u00c0\u0001\u0002\u00c8\u0001\u0000\u00127\n\u0004send\u0018\u0003 \u0001(\u000b2).envoy.config.core.v3.HealthCheck.Payload\u0012:\n\u0007receive\u0018\u0004 \u0001(\u000b2).envoy.config.core.v3.HealthCheck.Payload\u0012R\n\u0016request_headers_to_add\u0018\u0006 \u0003(\u000b2\'.envoy.config.core.v3.HeaderValueOptionB\t\u00faB\u0006\u0092\u0001\u0003\u0010\u00e8\u0007\u00123\n\u0019request_headers_to_remove\u0018\u0008 \u0003(\tB\u0010\u00faB\r\u0092\u0001\n\"\u0008r\u0006\u00c0\u0001\u0001\u00c8\u0001\u0000\u00124\n\u0011expected_statuses\u0018\t \u0003(\u000b2\u0019.envoy.type.v3.Int64Range\u0012C\n\u0011codec_client_type\u0018\n \u0001(\u000e2\u001e.envoy.type.v3.CodecClientTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012B\n\u0014service_name_matcher\u0018\u000b \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcher:4\u009a\u00c5\u0088\u001e/\n-envoy.api.v2.core.HealthCheck.HttpHealthCheckJ\u0004\u0008\u0005\u0010\u0006J\u0004\u0008\u0007\u0010\u0008R\u000cservice_nameR\tuse_http2\u001a\u00ba\u0001\n\u000eTcpHealthCheck\u00127\n\u0004send\u0018\u0001 \u0001(\u000b2).envoy.config.core.v3.HealthCheck.Payload\u0012:\n\u0007receive\u0018\u0002 \u0003(\u000b2).envoy.config.core.v3.HealthCheck.Payload:3\u009a\u00c5\u0088\u001e.\n,envoy.api.v2.core.HealthCheck.TcpHealthCheck\u001aV\n\u0010RedisHealthCheck\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t:5\u009a\u00c5\u0088\u001e0\n.envoy.api.v2.core.HealthCheck.RedisHealthCheck\u001a}\n\u000fGrpcHealthCheck\u0012\u0014\n\u000cservice_name\u0018\u0001 \u0001(\t\u0012\u001e\n\tauthority\u0018\u0002 \u0001(\tB\u000b\u00faB\u0008r\u0006\u00c0\u0001\u0002\u00c8\u0001\u0000:4\u009a\u00c5\u0088\u001e/\n-envoy.api.v2.core.HealthCheck.GrpcHealthCheck\u001a\u00ad\u0001\n\u0011CustomHealthCheck\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:6\u009a\u00c5\u0088\u001e1\n/envoy.api.v2.core.HealthCheck.CustomHealthCheckB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006config\u001aU\n\nTlsOptions\u0012\u0016\n\u000ealpn_protocols\u0018\u0001 \u0003(\t:/\u009a\u00c5\u0088\u001e*\n(envoy.api.v2.core.HealthCheck.TlsOptions:$\u009a\u00c5\u0088\u001e\u001f\n\u001denvoy.api.v2.core.HealthCheckB\u0015\n\u000ehealth_checker\u0012\u0003\u00f8B\u0001J\u0004\u0008\n\u0010\u000b*`\n\u000cHealthStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000b\n\u0007HEALTHY\u0010\u0001\u0012\r\n\tUNHEALTHY\u0010\u0002\u0012\u000c\n\u0008DRAINING\u0010\u0003\u0012\u000b\n\u0007TIMEOUT\u0010\u0004\u0012\u000c\n\u0008DEGRADED\u0010\u0005B@\n\"io.envoyproxy.envoy.config.core.v3B\u0010HealthCheckProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0x9

    aput-object v2, v1, v10

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xa

    aput-object v2, v1, v10

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xb

    aput-object v2, v1, v10

    .line 14
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->a:Lcom/google/protobuf/Descriptors$b;

    .line 16
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

    const-string v24, "NoTrafficHealthyInterval"

    const-string v25, "UnhealthyInterval"

    const-string v26, "UnhealthyEdgeInterval"

    const-string v27, "HealthyEdgeInterval"

    const-string v28, "EventLogPath"

    const-string v29, "EventService"

    const-string v30, "AlwaysLogHealthCheckFailures"

    const-string v31, "TlsOptions"

    const-string v32, "TransportSocketMatchCriteria"

    const-string v33, "HealthChecker"

    filled-new-array/range {v10 .. v33}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->c:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Text"

    const-string v10, "Binary"

    const-string v11, "Payload"

    filled-new-array {v3, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->e:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Host"

    const-string v11, "Path"

    const-string v12, "Send"

    const-string v13, "Receive"

    const-string v14, "RequestHeadersToAdd"

    const-string v15, "RequestHeadersToRemove"

    const-string v16, "ExpectedStatuses"

    const-string v17, "CodecClientType"

    const-string v18, "ServiceNameMatcher"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->g:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Send"

    const-string v4, "Receive"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->i:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Key"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->k:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ServiceName"

    const-string v4, "Authority"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->m:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v4, "TypedConfig"

    const-string v5, "ConfigType"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->o:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "AlpnProtocols"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 32
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 33
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 34
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 35
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 36
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
