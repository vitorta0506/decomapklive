.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;
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

.field private static i:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "\n\u001benvoy/api/v2/listener.proto\u0012\u000cenvoy.api.v2\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a%envoy/api/v2/core/socket_option.proto\u001a/envoy/api/v2/listener/listener_components.proto\u001a/envoy/api/v2/listener/udp_listener_config.proto\u001a0envoy/config/filter/accesslog/v2/accesslog.proto\u001a+envoy/config/listener/v2/api_listener.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00aa\u000b\n\u0008Listener\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00125\n\u0007address\u0018\u0002 \u0001(\u000b2\u001a.envoy.api.v2.core.AddressB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u00129\n\rfilter_chains\u0018\u0003 \u0003(\u000b2\".envoy.api.v2.listener.FilterChain\u00128\n\u0010use_original_dst\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u0002\u0018\u0001\u0012G\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012-\n\u0008metadata\u0018\u0006 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012:\n\rdeprecated_v1\u0018\u0007 \u0001(\u000b2#.envoy.api.v2.Listener.DeprecatedV1\u00124\n\ndrain_type\u0018\u0008 \u0001(\u000e2 .envoy.api.v2.Listener.DrainType\u0012?\n\u0010listener_filters\u0018\t \u0003(\u000b2%.envoy.api.v2.listener.ListenerFilter\u0012;\n\u0018listener_filters_timeout\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.Duration\u0012,\n$continue_on_listener_filters_timeout\u0018\u0011 \u0001(\u0008\u0012/\n\u000btransparent\u0018\n \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012,\n\u0008freebind\u0018\u000b \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00127\n\u000esocket_options\u0018\r \u0003(\u000b2\u001f.envoy.api.v2.core.SocketOption\u0012@\n\u001atcp_fast_open_queue_length\u0018\u000c \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012>\n\u0011traffic_direction\u0018\u0010 \u0001(\u000e2#.envoy.api.v2.core.TrafficDirection\u0012E\n\u0013udp_listener_config\u0018\u0012 \u0001(\u000b2(.envoy.api.v2.listener.UdpListenerConfig\u0012;\n\u000capi_listener\u0018\u0013 \u0001(\u000b2%.envoy.config.listener.v2.ApiListener\u0012Q\n\u0019connection_balance_config\u0018\u0014 \u0001(\u000b2..envoy.api.v2.Listener.ConnectionBalanceConfig\u0012\u0012\n\nreuse_port\u0018\u0015 \u0001(\u0008\u0012?\n\naccess_log\u0018\u0016 \u0003(\u000b2+.envoy.config.filter.accesslog.v2.AccessLog\u001a@\n\u000cDeprecatedV1\u00120\n\u000cbind_to_port\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u001a\u0094\u0001\n\u0017ConnectionBalanceConfig\u0012T\n\rexact_balance\u0018\u0001 \u0001(\u000b2;.envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalanceH\u0000\u001a\u000e\n\u000cExactBalanceB\u0013\n\u000cbalance_type\u0012\u0003\u00f8B\u0001\")\n\tDrainType\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u000f\n\u000bMODIFY_ONLY\u0010\u0001J\u0004\u0008\u000e\u0010\u000fBU\n\u001aio.envoyproxy.envoy.api.v2B\rListenerProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u001a\u0012\u0018envoy.config.listener.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    .line 9
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 10
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v1, v5

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v5, 0x9

    aput-object v2, v1, v5

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v5, 0xa

    aput-object v2, v1, v5

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v5, 0xb

    aput-object v2, v1, v5

    .line 14
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->a:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Name"

    const-string v6, "Address"

    const-string v7, "FilterChains"

    const-string v8, "UseOriginalDst"

    const-string v9, "PerConnectionBufferLimitBytes"

    const-string v10, "Metadata"

    const-string v11, "DeprecatedV1"

    const-string v12, "DrainType"

    const-string v13, "ListenerFilters"

    const-string v14, "ListenerFiltersTimeout"

    const-string v15, "ContinueOnListenerFiltersTimeout"

    const-string v16, "Transparent"

    const-string v17, "Freebind"

    const-string v18, "SocketOptions"

    const-string v19, "TcpFastOpenQueueLength"

    const-string v20, "TrafficDirection"

    const-string v21, "UdpListenerConfig"

    const-string v22, "ApiListener"

    const-string v23, "ConnectionBalanceConfig"

    const-string v24, "ReusePort"

    const-string v25, "AccessLog"

    filled-new-array/range {v5 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->c:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "BindToPort"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->e:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ExactBalance"

    const-string v4, "BalanceType"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->g:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 24
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 25
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
