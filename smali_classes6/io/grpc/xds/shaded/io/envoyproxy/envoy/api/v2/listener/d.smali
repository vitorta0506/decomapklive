.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;
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
    .locals 21

    const-string v0, "\n/envoy/api/v2/listener/listener_components.proto\u0012\u0015envoy.api.v2.listener\u001a\u001benvoy/api/v2/auth/tls.proto\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u0016envoy/type/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0091\u0001\n\u0006Filter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_typeJ\u0004\u0008\u0003\u0010\u0004\"\u00c5\u0004\n\u0010FilterChainMatch\u0012C\n\u0010destination_port\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000b\u00faB\u0008*\u0006\u0018\u00ff\u00ff\u0003(\u0001\u00123\n\rprefix_ranges\u0018\u0003 \u0003(\u000b2\u001c.envoy.api.v2.core.CidrRange\u0012\u0016\n\u000eaddress_suffix\u0018\u0004 \u0001(\t\u00120\n\nsuffix_len\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012[\n\u000bsource_type\u0018\u000c \u0001(\u000e2<.envoy.api.v2.listener.FilterChainMatch.ConnectionSourceTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012:\n\u0014source_prefix_ranges\u0018\u0006 \u0003(\u000b2\u001c.envoy.api.v2.core.CidrRange\u0012&\n\u000csource_ports\u0018\u0007 \u0003(\rB\u0010\u00faB\r\u0092\u0001\n\"\u0008*\u0006\u0018\u00ff\u00ff\u0003(\u0001\u0012\u0014\n\u000cserver_names\u0018\u000b \u0003(\t\u0012\u001a\n\u0012transport_protocol\u0018\t \u0001(\t\u0012\u001d\n\u0015application_protocols\u0018\n \u0003(\t\"U\n\u0014ConnectionSourceType\u0012\u0007\n\u0003ANY\u0010\u0000\u0012&\n\u0005LOCAL\u0010\u0001\u001a\u001b\u00f2\u0098\u00fe\u008f\u0005\u0015\n\u0013SAME_IP_OR_LOOPBACK\u0012\u000c\n\u0008EXTERNAL\u0010\u0002J\u0004\u0008\u0001\u0010\u0002\"\u00f4\u0002\n\u000bFilterChain\u0012C\n\u0012filter_chain_match\u0018\u0001 \u0001(\u000b2\'.envoy.api.v2.listener.FilterChainMatch\u0012@\n\u000btls_context\u0018\u0002 \u0001(\u000b2\'.envoy.api.v2.auth.DownstreamTlsContextB\u0002\u0018\u0001\u0012.\n\u0007filters\u0018\u0003 \u0003(\u000b2\u001d.envoy.api.v2.listener.Filter\u00123\n\u000fuse_proxy_proto\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012-\n\u0008metadata\u0018\u0005 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012<\n\u0010transport_socket\u0018\u0006 \u0001(\u000b2\".envoy.api.v2.core.TransportSocket\u0012\u000c\n\u0004name\u0018\u0007 \u0001(\t\"\u00e5\u0003\n!ListenerFilterChainMatchPredicate\u0012U\n\u0008or_match\u0018\u0001 \u0001(\u000b2A.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012V\n\tand_match\u0018\u0002 \u0001(\u000b2A.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012M\n\tnot_match\u0018\u0003 \u0001(\u000b28.envoy.api.v2.listener.ListenerFilterChainMatchPredicateH\u0000\u0012\u001c\n\tany_match\u0018\u0004 \u0001(\u0008B\u0007\u00faB\u0004j\u0002\u0008\u0001H\u0000\u00128\n\u0016destination_port_range\u0018\u0005 \u0001(\u000b2\u0016.envoy.type.Int32RangeH\u0000\u001a]\n\u0008MatchSet\u0012Q\n\u0005rules\u0018\u0001 \u0003(\u000b28.envoy.api.v2.listener.ListenerFilterChainMatchPredicateB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0002B\u000b\n\u0004rule\u0012\u0003\u00f8B\u0001\"\u00e6\u0001\n\u000eListenerFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012Q\n\u000ffilter_disabled\u0018\u0004 \u0001(\u000b28.envoy.api.v2.listener.ListenerFilterChainMatchPredicateB\r\n\u000bconfig_typeB\u009c\u0001\n#io.envoyproxy.envoy.api.v2.listenerB\u0017ListenerComponentsProtoP\u0001\u00aa\u0002\u0017Envoy.Api.V2.ListenerNS\u00ea\u0002\u0017Envoy.Api.V2.ListenerNS\u00f2\u0098\u00fe\u008f\u0005\u001a\u0012\u0018envoy.config.listener.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v1, v8

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v1, v8

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v1, v8

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v1, v8

    .line 12
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v8, "Config"

    const-string v9, "TypedConfig"

    const-string v10, "ConfigType"

    filled-new-array {v2, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v0, v11}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->c:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "DestinationPort"

    const-string v12, "PrefixRanges"

    const-string v13, "AddressSuffix"

    const-string v14, "SuffixLen"

    const-string v15, "SourceType"

    const-string v16, "SourcePrefixRanges"

    const-string v17, "SourcePorts"

    const-string v18, "ServerNames"

    const-string v19, "TransportProtocol"

    const-string v20, "ApplicationProtocols"

    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->e:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "FilterChainMatch"

    const-string v12, "TlsContext"

    const-string v13, "Filters"

    const-string v14, "UseProxyProto"

    const-string v15, "Metadata"

    const-string v16, "TransportSocket"

    const-string v17, "Name"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->g:Lcom/google/protobuf/Descriptors$b;

    .line 20
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

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->i:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Rules"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->k:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "FilterDisabled"

    filled-new-array {v2, v8, v9, v3, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->d:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
