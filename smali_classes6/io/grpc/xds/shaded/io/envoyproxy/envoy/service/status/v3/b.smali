.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;
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
    .locals 16

    const-string v0, "\n\"envoy/service/status/v3/csds.proto\u0012\u0017envoy.service.status.v3\u001a envoy/admin/v3/config_dump.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a envoy/type/matcher/v3/node.proto\u001a\u001cgoogle/api/annotations.proto\u001a\u0019google/protobuf/any.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"\u00ae\u0001\n\u0013ClientStatusRequest\u00129\n\rnode_matchers\u0018\u0001 \u0003(\u000b2\".envoy.type.matcher.v3.NodeMatcher\u0012(\n\u0004node\u0018\u0002 \u0001(\u000b2\u001a.envoy.config.core.v3.Node:2\u009a\u00c5\u0088\u001e-\n+envoy.service.status.v2.ClientStatusRequest\"\u0094\u0004\n\u000cPerXdsConfig\u00125\n\u0006status\u0018\u0001 \u0001(\u000e2%.envoy.service.status.v3.ConfigStatus\u0012O\n\rclient_status\u0018\u0007 \u0001(\u000e2+.envoy.service.status.v3.ClientConfigStatusB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012>\n\u000flistener_config\u0018\u0002 \u0001(\u000b2#.envoy.admin.v3.ListenersConfigDumpH\u0000\u0012<\n\u000ecluster_config\u0018\u0003 \u0001(\u000b2\".envoy.admin.v3.ClustersConfigDumpH\u0000\u00128\n\u000croute_config\u0018\u0004 \u0001(\u000b2 .envoy.admin.v3.RoutesConfigDumpH\u0000\u0012E\n\u0013scoped_route_config\u0018\u0005 \u0001(\u000b2&.envoy.admin.v3.ScopedRoutesConfigDumpH\u0000\u0012>\n\u000fendpoint_config\u0018\u0006 \u0001(\u000b2#.envoy.admin.v3.EndpointsConfigDumpH\u0000:+\u009a\u00c5\u0088\u001e&\n$envoy.service.status.v2.PerXdsConfigB\u0010\n\u000eper_xds_config\"\u00f9\u0004\n\u000cClientConfig\u0012(\n\u0004node\u0018\u0001 \u0001(\u000b2\u001a.envoy.config.core.v3.Node\u0012F\n\nxds_config\u0018\u0002 \u0003(\u000b2%.envoy.service.status.v3.PerXdsConfigB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012S\n\u0013generic_xds_configs\u0018\u0003 \u0003(\u000b26.envoy.service.status.v3.ClientConfig.GenericXdsConfig\u001a\u00f4\u0002\n\u0010GenericXdsConfig\u0012\u0010\n\u0008type_url\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u0014\n\u000cversion_info\u0018\u0003 \u0001(\t\u0012(\n\nxds_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012<\n\rconfig_status\u0018\u0006 \u0001(\u000e2%.envoy.service.status.v3.ConfigStatus\u0012;\n\rclient_status\u0018\u0007 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus\u00127\n\u000berror_state\u0018\u0008 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012\u001a\n\u0012is_static_resource\u0018\t \u0001(\u0008:+\u009a\u00c5\u0088\u001e&\n$envoy.service.status.v2.ClientConfig\"\u0082\u0001\n\u0014ClientStatusResponse\u00125\n\u0006config\u0018\u0001 \u0003(\u000b2%.envoy.service.status.v3.ClientConfig:3\u009a\u00c5\u0088\u001e.\n,envoy.service.status.v2.ClientStatusResponse*K\n\u000cConfigStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\n\n\u0006SYNCED\u0010\u0001\u0012\u000c\n\u0008NOT_SENT\u0010\u0002\u0012\t\n\u0005STALE\u0010\u0003\u0012\t\n\u0005ERROR\u0010\u0004*c\n\u0012ClientConfigStatus\u0012\u0012\n\u000eCLIENT_UNKNOWN\u0010\u0000\u0012\u0014\n\u0010CLIENT_REQUESTED\u0010\u0001\u0012\u0010\n\u000cCLIENT_ACKED\u0010\u0002\u0012\u0011\n\rCLIENT_NACKED\u0010\u00032\u00b8\u0002\n\u001cClientStatusDiscoveryService\u0012w\n\u0012StreamClientStatus\u0012,.envoy.service.status.v3.ClientStatusRequest\u001a-.envoy.service.status.v3.ClientStatusResponse\"\u0000(\u00010\u0001\u0012\u009e\u0001\n\u0011FetchClientStatus\u0012,.envoy.service.status.v3.ClientStatusRequest\u001a-.envoy.service.status.v3.ClientStatusResponse\",\u0082\u00d3\u00e4\u0093\u0002\u001d\"\u001b/v3/discovery:client_status\u0082\u00d3\u00e4\u0093\u0002\u0003:\u0001*B?\n%io.envoyproxy.envoy.service.status.v3B\tCsdsProtoP\u0001\u0088\u0001\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x7

    aput-object v2, v1, v7

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v7, 0x8

    aput-object v2, v1, v7

    .line 11
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "NodeMatchers"

    const-string v7, "Node"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Status"

    const-string v9, "ClientStatus"

    const-string v10, "ListenerConfig"

    const-string v11, "ClusterConfig"

    const-string v12, "RouteConfig"

    const-string v13, "ScopedRouteConfig"

    const-string v14, "EndpointConfig"

    const-string v15, "PerXdsConfig"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "XdsConfig"

    const-string v4, "GenericXdsConfigs"

    filled-new-array {v7, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "TypeUrl"

    const-string v8, "Name"

    const-string v9, "VersionInfo"

    const-string v10, "XdsConfig"

    const-string v11, "LastUpdated"

    const-string v12, "ConfigStatus"

    const-string v13, "ClientStatus"

    const-string v14, "ErrorState"

    const-string v15, "IsStaticResource"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Config"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 23
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 24
    sget-object v1, Lcom/google/api/b;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 25
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
