.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;
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
    .locals 22

    const-string v0, "\n2envoy/config/listener/v3/listener_components.proto\u0012\u0018envoy.config.listener.v3\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a\u0019envoy/type/v3/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00de\u0001\n\u0006Filter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012,\n\u000ctyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012G\n\u0010config_discovery\u0018\u0005 \u0001(\u000b2+.envoy.config.core.v3.ExtensionConfigSourceH\u0000:#\u009a\u00c5\u0088\u001e\u001e\n\u001cenvoy.api.v2.listener.FilterB\r\n\u000bconfig_typeJ\u0004\u0008\u0003\u0010\u0004J\u0004\u0008\u0002\u0010\u0003R\u0006config\"\u00b4\u0005\n\u0010FilterChainMatch\u0012C\n\u0010destination_port\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000b\u00faB\u0008*\u0006\u0018\u00ff\u00ff\u0003(\u0001\u00126\n\rprefix_ranges\u0018\u0003 \u0003(\u000b2\u001f.envoy.config.core.v3.CidrRange\u0012\u0016\n\u000eaddress_suffix\u0018\u0004 \u0001(\t\u00120\n\nsuffix_len\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012D\n\u001bdirect_source_prefix_ranges\u0018\r \u0003(\u000b2\u001f.envoy.config.core.v3.CidrRange\u0012^\n\u000bsource_type\u0018\u000c \u0001(\u000e2?.envoy.config.listener.v3.FilterChainMatch.ConnectionSourceTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012=\n\u0014source_prefix_ranges\u0018\u0006 \u0003(\u000b2\u001f.envoy.config.core.v3.CidrRange\u0012&\n\u000csource_ports\u0018\u0007 \u0003(\rB\u0010\u00faB\r\u0092\u0001\n\"\u0008*\u0006\u0018\u00ff\u00ff\u0003(\u0001\u0012\u0014\n\u000cserver_names\u0018\u000b \u0003(\t\u0012\u001a\n\u0012transport_protocol\u0018\t \u0001(\t\u0012\u001d\n\u0015application_protocols\u0018\n \u0003(\t\"F\n\u0014ConnectionSourceType\u0012\u0007\n\u0003ANY\u0010\u0000\u0012\u0017\n\u0013SAME_IP_OR_LOOPBACK\u0010\u0001\u0012\u000c\n\u0008EXTERNAL\u0010\u0002:-\u009a\u00c5\u0088\u001e(\n&envoy.api.v2.listener.FilterChainMatchJ\u0004\u0008\u0001\u0010\u0002\"\u00f8\u0004\n\u000bFilterChain\u0012F\n\u0012filter_chain_match\u0018\u0001 \u0001(\u000b2*.envoy.config.listener.v3.FilterChainMatch\u00121\n\u0007filters\u0018\u0003 \u0003(\u000b2 .envoy.config.listener.v3.Filter\u0012@\n\u000fuse_proxy_proto\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u00120\n\u0008metadata\u0018\u0005 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012?\n\u0010transport_socket\u0018\u0006 \u0001(\u000b2%.envoy.config.core.v3.TransportSocket\u0012C\n transport_socket_connect_timeout\u0018\t \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u000c\n\u0004name\u0018\u0007 \u0001(\t\u0012\\\n\u0017on_demand_configuration\u0018\u0008 \u0001(\u000b2;.envoy.config.listener.v3.FilterChain.OnDemandConfiguration\u001aK\n\u0015OnDemandConfiguration\u00122\n\u000frebuild_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration:(\u009a\u00c5\u0088\u001e#\n!envoy.api.v2.listener.FilterChainJ\u0004\u0008\u0002\u0010\u0003R\u000btls_context\"\u00fe\u0004\n!ListenerFilterChainMatchPredicate\u0012X\n\u0008or_match\u0018\u0001 \u0001(\u000b2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012Y\n\tand_match\u0018\u0002 \u0001(\u000b2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012P\n\tnot_match\u0018\u0003 \u0001(\u000b2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateH\u0000\u0012\u001c\n\tany_match\u0018\u0004 \u0001(\u0008B\u0007\u00faB\u0004j\u0002\u0008\u0001H\u0000\u0012;\n\u0016destination_port_range\u0018\u0005 \u0001(\u000b2\u0019.envoy.type.v3.Int32RangeH\u0000\u001a\u00a9\u0001\n\u0008MatchSet\u0012T\n\u0005rules\u0018\u0001 \u0003(\u000b2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0002:G\u009a\u00c5\u0088\u001eB\n@envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet:>\u009a\u00c5\u0088\u001e9\n7envoy.api.v2.listener.ListenerFilterChainMatchPredicateB\u000b\n\u0004rule\u0012\u0003\u00f8B\u0001\"\u00f5\u0001\n\u000eListenerFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012T\n\u000ffilter_disabled\u0018\u0004 \u0001(\u000b2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicate:+\u009a\u00c5\u0088\u001e&\n$envoy.api.v2.listener.ListenerFilterB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006configBK\n&io.envoyproxy.envoy.config.listener.v3B\u0017ListenerComponentsProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v1, v8

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v1, v8

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v1, v8

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v1, v8

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v1, v8

    .line 13
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v8, "TypedConfig"

    const-string v9, "ConfigDiscovery"

    const-string v10, "ConfigType"

    filled-new-array {v2, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->c:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "DestinationPort"

    const-string v12, "PrefixRanges"

    const-string v13, "AddressSuffix"

    const-string v14, "SuffixLen"

    const-string v15, "DirectSourcePrefixRanges"

    const-string v16, "SourceType"

    const-string v17, "SourcePrefixRanges"

    const-string v18, "SourcePorts"

    const-string v19, "ServerNames"

    const-string v20, "TransportProtocol"

    const-string v21, "ApplicationProtocols"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->e:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "FilterChainMatch"

    const-string v12, "Filters"

    const-string v13, "UseProxyProto"

    const-string v14, "Metadata"

    const-string v15, "TransportSocket"

    const-string v16, "TransportSocketConnectTimeout"

    const-string v17, "Name"

    const-string v18, "OnDemandConfiguration"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->g:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "RebuildTimeout"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->i:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "OrMatch"

    const-string v12, "AndMatch"

    const-string v13, "NotMatch"

    const-string v14, "AnyMatch"

    const-string v15, "DestinationPortRange"

    const-string v16, "Rule"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->k:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Rules"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->m:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "FilterDisabled"

    filled-new-array {v2, v8, v3, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 32
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 33
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 34
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
