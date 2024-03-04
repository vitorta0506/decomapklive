.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;
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

.field private static m:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v0, "\n\'envoy/config/listener/v3/listener.proto\u0012\u0018envoy.config.listener.v3\u001a)envoy/config/accesslog/v3/accesslog.proto\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/socket_option.proto\u001a+envoy/config/listener/v3/api_listener.proto\u001a2envoy/config/listener/v3/listener_components.proto\u001a2envoy/config/listener/v3/udp_listener_config.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\"xds/core/v3/collection_entry.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"C\n\u0012ListenerCollection\u0012-\n\u0007entries\u0018\u0001 \u0003(\u000b2\u001c.xds.core.v3.CollectionEntry\"\u00d2\u0010\n\u0008Listener\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00128\n\u0007address\u0018\u0002 \u0001(\u000b2\u001d.envoy.config.core.v3.AddressB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bstat_prefix\u0018\u001c \u0001(\t\u0012<\n\rfilter_chains\u0018\u0003 \u0003(\u000b2%.envoy.config.listener.v3.FilterChain\u00124\n\u0010use_original_dst\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012C\n\u0014default_filter_chain\u0018\u0019 \u0001(\u000b2%.envoy.config.listener.v3.FilterChain\u0012P\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u008a\u0093\u00b7*\u0002\u0008\u0001\u00120\n\u0008metadata\u0018\u0006 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012S\n\rdeprecated_v1\u0018\u0007 \u0001(\u000b2/.envoy.config.listener.v3.Listener.DeprecatedV1B\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012@\n\ndrain_type\u0018\u0008 \u0001(\u000e2,.envoy.config.listener.v3.Listener.DrainType\u0012B\n\u0010listener_filters\u0018\t \u0003(\u000b2(.envoy.config.listener.v3.ListenerFilter\u0012;\n\u0018listener_filters_timeout\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.Duration\u0012,\n$continue_on_listener_filters_timeout\u0018\u0011 \u0001(\u0008\u0012/\n\u000btransparent\u0018\n \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012,\n\u0008freebind\u0018\u000b \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012:\n\u000esocket_options\u0018\r \u0003(\u000b2\".envoy.config.core.v3.SocketOption\u0012@\n\u001atcp_fast_open_queue_length\u0018\u000c \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012A\n\u0011traffic_direction\u0018\u0010 \u0001(\u000e2&.envoy.config.core.v3.TrafficDirection\u0012H\n\u0013udp_listener_config\u0018\u0012 \u0001(\u000b2+.envoy.config.listener.v3.UdpListenerConfig\u0012;\n\u000capi_listener\u0018\u0013 \u0001(\u000b2%.envoy.config.listener.v3.ApiListener\u0012]\n\u0019connection_balance_config\u0018\u0014 \u0001(\u000b2:.envoy.config.listener.v3.Listener.ConnectionBalanceConfig\u0012\u001f\n\nreuse_port\u0018\u0015 \u0001(\u0008B\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u00125\n\u0011enable_reuse_port\u0018\u001d \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00128\n\naccess_log\u0018\u0016 \u0003(\u000b2$.envoy.config.accesslog.v3.AccessLog\u00126\n\u0010tcp_backlog_size\u0018\u0018 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00120\n\u000cbind_to_port\u0018\u001a \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012V\n\u0011internal_listener\u0018\u001b \u0001(\u000b29.envoy.config.listener.v3.Listener.InternalListenerConfigH\u0000\u001ak\n\u000cDeprecatedV1\u00120\n\u000cbind_to_port\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue:)\u009a\u00c5\u0088\u001e$\n\"envoy.api.v2.Listener.DeprecatedV1\u001a\u0099\u0002\n\u0017ConnectionBalanceConfig\u0012`\n\rexact_balance\u0018\u0001 \u0001(\u000b2G.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalanceH\u0000\u001aQ\n\u000cExactBalance:A\u009a\u00c5\u0088\u001e<\n:envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance:4\u009a\u00c5\u0088\u001e/\n-envoy.api.v2.Listener.ConnectionBalanceConfigB\u0013\n\u000cbalance_type\u0012\u0003\u00f8B\u0001\u001a\u0018\n\u0016InternalListenerConfig\")\n\tDrainType\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u000f\n\u000bMODIFY_ONLY\u0010\u0001:\u001c\u009a\u00c5\u0088\u001e\u0017\n\u0015envoy.api.v2.ListenerB\u0014\n\u0012listener_specifierJ\u0004\u0008\u000e\u0010\u000fJ\u0004\u0008\u0017\u0010\u0018BA\n&io.envoyproxy.envoy.config.listener.v3B\rListenerProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/n;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v1, v6

    .line 9
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v1, v6

    .line 10
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v1, v6

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0x9

    aput-object v2, v1, v6

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v1, v6

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0xb

    aput-object v2, v1, v6

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0xc

    aput-object v2, v1, v6

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0xd

    aput-object v2, v1, v6

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0xe

    aput-object v2, v1, v6

    .line 17
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->a:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Entries"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->c:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Name"

    const-string v7, "Address"

    const-string v8, "StatPrefix"

    const-string v9, "FilterChains"

    const-string v10, "UseOriginalDst"

    const-string v11, "DefaultFilterChain"

    const-string v12, "PerConnectionBufferLimitBytes"

    const-string v13, "Metadata"

    const-string v14, "DeprecatedV1"

    const-string v15, "DrainType"

    const-string v16, "ListenerFilters"

    const-string v17, "ListenerFiltersTimeout"

    const-string v18, "ContinueOnListenerFiltersTimeout"

    const-string v19, "Transparent"

    const-string v20, "Freebind"

    const-string v21, "SocketOptions"

    const-string v22, "TcpFastOpenQueueLength"

    const-string v23, "TrafficDirection"

    const-string v24, "UdpListenerConfig"

    const-string v25, "ApiListener"

    const-string v26, "ConnectionBalanceConfig"

    const-string v27, "ReusePort"

    const-string v28, "EnableReusePort"

    const-string v29, "AccessLog"

    const-string v30, "TcpBacklogSize"

    const-string v31, "BindToPort"

    const-string v32, "InternalListener"

    const-string v33, "ListenerSpecifier"

    filled-new-array/range {v6 .. v33}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->e:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "BindToPort"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->g:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "ExactBalance"

    const-string v6, "BalanceType"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->i:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->k:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 32
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 33
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Security;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 34
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 35
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 36
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 37
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/n;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 53
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
