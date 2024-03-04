.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final C:Lcom/google/protobuf/Descriptors$b;

.field static final D:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final E:Lcom/google/protobuf/Descriptors$b;

.field static final F:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final G:Lcom/google/protobuf/Descriptors$b;

.field static final H:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final I:Lcom/google/protobuf/Descriptors$b;

.field static final J:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final K:Lcom/google/protobuf/Descriptors$b;

.field static final L:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final M:Lcom/google/protobuf/Descriptors$b;

.field static final N:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final O:Lcom/google/protobuf/Descriptors$b;

.field static final P:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final Q:Lcom/google/protobuf/Descriptors$b;

.field static final R:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static S:Lcom/google/protobuf/Descriptors$FileDescriptor;

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

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/google/protobuf/Descriptors$b;

.field static final t:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final u:Lcom/google/protobuf/Descriptors$b;

.field static final v:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final w:Lcom/google/protobuf/Descriptors$b;

.field static final x:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final y:Lcom/google/protobuf/Descriptors$b;

.field static final z:Lcom/google/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "\n envoy/admin/v3/config_dump.proto\u0012\u000eenvoy.admin.v3\u001a)envoy/config/bootstrap/v3/bootstrap.proto\u001a\u0019google/protobuf/any.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"Z\n\nConfigDump\u0012%\n\u0007configs\u0018\u0001 \u0003(\u000b2\u0014.google.protobuf.Any:%\u009a\u00c5\u0088\u001e \n\u001eenvoy.admin.v2alpha.ConfigDump\"\u00d7\u0001\n\u0012UpdateFailureState\u00122\n\u0014failed_configuration\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00127\n\u0013last_update_attempt\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000f\n\u0007details\u0018\u0003 \u0001(\t\u0012\u0014\n\u000cversion_info\u0018\u0004 \u0001(\t:-\u009a\u00c5\u0088\u001e(\n&envoy.admin.v2alpha.UpdateFailureState\"\u00b0\u0001\n\u0013BootstrapConfigDump\u00127\n\tbootstrap\u0018\u0001 \u0001(\u000b2$.envoy.config.bootstrap.v3.Bootstrap\u00120\n\u000clast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:.\u009a\u00c5\u0088\u001e)\n\'envoy.admin.v2alpha.BootstrapConfigDump\"\u00be\u0008\n\u0013ListenersConfigDump\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012L\n\u0010static_listeners\u0018\u0002 \u0003(\u000b22.envoy.admin.v3.ListenersConfigDump.StaticListener\u0012N\n\u0011dynamic_listeners\u0018\u0003 \u0003(\u000b23.envoy.admin.v3.ListenersConfigDump.DynamicListener\u001a\u00a9\u0001\n\u000eStaticListener\u0012&\n\u0008listener\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:=\u009a\u00c5\u0088\u001e8\n6envoy.admin.v2alpha.ListenersConfigDump.StaticListener\u001a\u00cb\u0001\n\u0014DynamicListenerState\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012&\n\u0008listener\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp:C\u009a\u00c5\u0088\u001e>\n<envoy.admin.v2alpha.ListenersConfigDump.DynamicListenerState\u001a\u00c8\u0003\n\u000fDynamicListener\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012N\n\u000cactive_state\u0018\u0002 \u0001(\u000b28.envoy.admin.v3.ListenersConfigDump.DynamicListenerState\u0012O\n\rwarming_state\u0018\u0003 \u0001(\u000b28.envoy.admin.v3.ListenersConfigDump.DynamicListenerState\u0012P\n\u000edraining_state\u0018\u0004 \u0001(\u000b28.envoy.admin.v3.ListenersConfigDump.DynamicListenerState\u00127\n\u000berror_state\u0018\u0005 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0006 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:>\u009a\u00c5\u0088\u001e9\n7envoy.admin.v2alpha.ListenersConfigDump.DynamicListener:.\u009a\u00c5\u0088\u001e)\n\'envoy.admin.v2alpha.ListenersConfigDump\"\u00ab\u0006\n\u0012ClustersConfigDump\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012I\n\u000fstatic_clusters\u0018\u0002 \u0003(\u000b20.envoy.admin.v3.ClustersConfigDump.StaticCluster\u0012R\n\u0017dynamic_active_clusters\u0018\u0003 \u0003(\u000b21.envoy.admin.v3.ClustersConfigDump.DynamicCluster\u0012S\n\u0018dynamic_warming_clusters\u0018\u0004 \u0003(\u000b21.envoy.admin.v3.ClustersConfigDump.DynamicCluster\u001a\u00a5\u0001\n\rStaticCluster\u0012%\n\u0007cluster\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:;\u009a\u00c5\u0088\u001e6\n4envoy.admin.v2alpha.ClustersConfigDump.StaticCluster\u001a\u00b3\u0002\n\u000eDynamicCluster\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012%\n\u0007cluster\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0004 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0005 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:<\u009a\u00c5\u0088\u001e7\n5envoy.admin.v2alpha.ClustersConfigDump.DynamicCluster:-\u009a\u00c5\u0088\u001e(\n&envoy.admin.v2alpha.ClustersConfigDump\"\u00d9\u0005\n\u0010RoutesConfigDump\u0012P\n\u0014static_route_configs\u0018\u0002 \u0003(\u000b22.envoy.admin.v3.RoutesConfigDump.StaticRouteConfig\u0012R\n\u0015dynamic_route_configs\u0018\u0003 \u0003(\u000b23.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig\u001a\u00b0\u0001\n\u0011StaticRouteConfig\u0012*\n\u000croute_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:=\u009a\u00c5\u0088\u001e8\n6envoy.admin.v2alpha.RoutesConfigDump.StaticRouteConfig\u001a\u00be\u0002\n\u0012DynamicRouteConfig\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012*\n\u000croute_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0004 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0005 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:>\u009a\u00c5\u0088\u001e9\n7envoy.admin.v2alpha.RoutesConfigDump.DynamicRouteConfig:+\u009a\u00c5\u0088\u001e&\n$envoy.admin.v2alpha.RoutesConfigDump\"\u00e1\u0006\n\u0016ScopedRoutesConfigDump\u0012d\n\u001binline_scoped_route_configs\u0018\u0001 \u0003(\u000b2?.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs\u0012f\n\u001cdynamic_scoped_route_configs\u0018\u0002 \u0003(\u000b2@.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs\u001a\u00da\u0001\n\u0018InlineScopedRouteConfigs\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00122\n\u0014scoped_route_configs\u0018\u0002 \u0003(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp:J\u009a\u00c5\u0088\u001eE\nCenvoy.admin.v2alpha.ScopedRoutesConfigDump.InlineScopedRouteConfigs\u001a\u00e8\u0002\n\u0019DynamicScopedRouteConfigs\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0014\n\u000cversion_info\u0018\u0002 \u0001(\t\u00122\n\u0014scoped_route_configs\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0005 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0006 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:K\u009a\u00c5\u0088\u001eF\nDenvoy.admin.v2alpha.ScopedRoutesConfigDump.DynamicScopedRouteConfigs:1\u009a\u00c5\u0088\u001e,\n*envoy.admin.v2alpha.ScopedRoutesConfigDump\"\u009e\u0006\n\u0011SecretsConfigDump\u0012F\n\u000estatic_secrets\u0018\u0001 \u0003(\u000b2..envoy.admin.v3.SecretsConfigDump.StaticSecret\u0012O\n\u0016dynamic_active_secrets\u0018\u0002 \u0003(\u000b2/.envoy.admin.v3.SecretsConfigDump.DynamicSecret\u0012P\n\u0017dynamic_warming_secrets\u0018\u0003 \u0003(\u000b2/.envoy.admin.v3.SecretsConfigDump.DynamicSecret\u001a\u00bd\u0002\n\rDynamicSecret\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0014\n\u000cversion_info\u0018\u0002 \u0001(\t\u00120\n\u000clast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012$\n\u0006secret\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.Any\u00127\n\u000berror_state\u0018\u0005 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0006 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus::\u009a\u00c5\u0088\u001e5\n3envoy.admin.v2alpha.SecretsConfigDump.DynamicSecret\u001a\u00af\u0001\n\u000cStaticSecret\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00120\n\u000clast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012$\n\u0006secret\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any:9\u009a\u00c5\u0088\u001e4\n2envoy.admin.v2alpha.SecretsConfigDump.StaticSecret:,\u009a\u00c5\u0088\u001e\'\n%envoy.admin.v2alpha.SecretsConfigDump\"\u00cd\u0004\n\u0013EndpointsConfigDump\u0012Y\n\u0017static_endpoint_configs\u0018\u0002 \u0003(\u000b28.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig\u0012[\n\u0018dynamic_endpoint_configs\u0018\u0003 \u0003(\u000b29.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig\u001aw\n\u0014StaticEndpointConfig\u0012-\n\u000fendpoint_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u001a\u0084\u0002\n\u0015DynamicEndpointConfig\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012-\n\u000fendpoint_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\u000clast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0004 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0005 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus*]\n\u0014ClientResourceStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\r\n\tREQUESTED\u0010\u0001\u0012\u0012\n\u000eDOES_NOT_EXIST\u0010\u0002\u0012\t\n\u0005ACKED\u0010\u0003\u0012\n\n\u0006NACKED\u0010\u0004B9\n\u001cio.envoyproxy.envoy.admin.v3B\u000fConfigDumpProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->S:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Configs"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "FailedConfiguration"

    const-string v9, "LastUpdateAttempt"

    const-string v10, "Details"

    const-string v11, "VersionInfo"

    filled-new-array {v3, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Bootstrap"

    const-string v9, "LastUpdated"

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "StaticListeners"

    const-string v7, "DynamicListeners"

    filled-new-array {v11, v3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->i:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Listener"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v2, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->k:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v11, v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->m:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "Name"

    const-string v13, "ActiveState"

    const-string v14, "WarmingState"

    const-string v15, "DrainingState"

    const-string v16, "ErrorState"

    const-string v17, "ClientStatus"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->o:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "StaticClusters"

    const-string v6, "DynamicActiveClusters"

    const-string v7, "DynamicWarmingClusters"

    filled-new-array {v11, v3, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->q:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Cluster"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->s:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ErrorState"

    const-string v7, "ClientStatus"

    filled-new-array {v11, v6, v9, v3, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->u:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "StaticRouteConfigs"

    const-string v6, "DynamicRouteConfigs"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->w:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "RouteConfig"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->y:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v11, v6, v9, v3, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->A:Lcom/google/protobuf/Descriptors$b;

    .line 35
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "InlineScopedRouteConfigs"

    const-string v6, "DynamicScopedRouteConfigs"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 36
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->C:Lcom/google/protobuf/Descriptors$b;

    .line 37
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Name"

    const-string v8, "ScopedRouteConfigs"

    filled-new-array {v6, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 38
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->E:Lcom/google/protobuf/Descriptors$b;

    .line 39
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "Name"

    const-string v13, "VersionInfo"

    const-string v14, "ScopedRouteConfigs"

    const-string v15, "LastUpdated"

    const-string v16, "ErrorState"

    const-string v17, "ClientStatus"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->G:Lcom/google/protobuf/Descriptors$b;

    .line 41
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "StaticSecrets"

    const-string v8, "DynamicActiveSecrets"

    const-string v10, "DynamicWarmingSecrets"

    filled-new-array {v2, v8, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 42
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->I:Lcom/google/protobuf/Descriptors$b;

    .line 43
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "Name"

    const-string v13, "VersionInfo"

    const-string v14, "LastUpdated"

    const-string v15, "Secret"

    const-string v16, "ErrorState"

    const-string v17, "ClientStatus"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 44
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->K:Lcom/google/protobuf/Descriptors$b;

    .line 45
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Secret"

    filled-new-array {v6, v9, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->L:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 46
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->M:Lcom/google/protobuf/Descriptors$b;

    .line 47
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "StaticEndpointConfigs"

    const-string v6, "DynamicEndpointConfigs"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->N:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 48
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->O:Lcom/google/protobuf/Descriptors$b;

    .line 49
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "EndpointConfig"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->P:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 50
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->Q:Lcom/google/protobuf/Descriptors$b;

    .line 51
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v11, v4, v9, v3, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->R:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 52
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 53
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 54
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 55
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->S:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 56
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 57
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 58
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 59
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 60
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 61
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->S:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
