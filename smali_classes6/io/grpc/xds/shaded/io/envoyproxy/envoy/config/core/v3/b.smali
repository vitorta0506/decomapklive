.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;
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

.field private static o:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "\n\"envoy/config/core/v3/address.proto\u0012\u0014envoy.config.core.v3\u001a(envoy/config/core/v3/socket_option.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"T\n\u0004Pipe\u0012\u0015\n\u0004path\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\u0016\n\u0004mode\u0018\u0002 \u0001(\rB\u0008\u00faB\u0005*\u0003\u0018\u00ff\u0003:\u001d\u009a\u00c5\u0088\u001e\u0018\n\u0016envoy.api.v2.core.Pipe\"U\n\u0014EnvoyInternalAddress\u0012\u001e\n\u0014server_listener_name\u0018\u0001 \u0001(\tH\u0000B\u001d\n\u0016address_name_specifier\u0012\u0003\u00f8B\u0001\"\u00b3\u0002\n\rSocketAddress\u0012H\n\u0008protocol\u0018\u0001 \u0001(\u000e2,.envoy.config.core.v3.SocketAddress.ProtocolB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0018\n\u0007address\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\u001f\n\nport_value\u0018\u0003 \u0001(\rB\t\u00faB\u0006*\u0004\u0018\u00ff\u00ff\u0003H\u0000\u0012\u0014\n\nnamed_port\u0018\u0004 \u0001(\tH\u0000\u0012\u0015\n\rresolver_name\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bipv4_compat\u0018\u0006 \u0001(\u0008\"\u001c\n\u0008Protocol\u0012\u0007\n\u0003TCP\u0010\u0000\u0012\u0007\n\u0003UDP\u0010\u0001:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.api.v2.core.SocketAddressB\u0015\n\u000eport_specifier\u0012\u0003\u00f8B\u0001\"\u00dd\u0001\n\u000cTcpKeepalive\u00126\n\u0010keepalive_probes\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00124\n\u000ekeepalive_time\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00128\n\u0012keepalive_interval\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32Value:%\u009a\u00c5\u0088\u001e \n\u001eenvoy.api.v2.core.TcpKeepalive\"\u00e2\u0001\n\nBindConfig\u0012E\n\u000esource_address\u0018\u0001 \u0001(\u000b2#.envoy.config.core.v3.SocketAddressB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012,\n\u0008freebind\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012:\n\u000esocket_options\u0018\u0003 \u0003(\u000b2\".envoy.config.core.v3.SocketOption:#\u009a\u00c5\u0088\u001e\u001e\n\u001cenvoy.api.v2.core.BindConfig\"\u00f4\u0001\n\u0007Address\u0012=\n\u000esocket_address\u0018\u0001 \u0001(\u000b2#.envoy.config.core.v3.SocketAddressH\u0000\u0012*\n\u0004pipe\u0018\u0002 \u0001(\u000b2\u001a.envoy.config.core.v3.PipeH\u0000\u0012L\n\u0016envoy_internal_address\u0018\u0003 \u0001(\u000b2*.envoy.config.core.v3.EnvoyInternalAddressH\u0000: \u009a\u00c5\u0088\u001e\u001b\n\u0019envoy.api.v2.core.AddressB\u000e\n\u0007address\u0012\u0003\u00f8B\u0001\"\u008c\u0001\n\tCidrRange\u0012\u001f\n\u000eaddress_prefix\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012:\n\nprefix_len\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0008\u00faB\u0005*\u0003\u0018\u0080\u0001:\"\u009a\u00c5\u0088\u001e\u001d\n\u001benvoy.api.v2.core.CidrRangeB<\n\"io.envoyproxy.envoy.config.core.v3B\u000cAddressProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Path"

    const-string v4, "Mode"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ServerListenerName"

    const-string v4, "AddressNameSpecifier"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "Protocol"

    const-string v10, "Address"

    const-string v11, "PortValue"

    const-string v12, "NamedPort"

    const-string v13, "ResolverName"

    const-string v14, "Ipv4Compat"

    const-string v15, "PortSpecifier"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "KeepaliveProbes"

    const-string v4, "KeepaliveTime"

    const-string v5, "KeepaliveInterval"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->i:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "SourceAddress"

    const-string v4, "Freebind"

    const-string v5, "SocketOptions"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->k:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SocketAddress"

    const-string v3, "Pipe"

    const-string v4, "EnvoyInternalAddress"

    const-string v5, "Address"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->m:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "AddressPrefix"

    const-string v3, "PrefixLen"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 23
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 24
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 25
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
