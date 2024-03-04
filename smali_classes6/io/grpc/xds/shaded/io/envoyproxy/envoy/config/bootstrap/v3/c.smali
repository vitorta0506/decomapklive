.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;
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

.field private static K:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 44

    const-string v0, "\n)envoy/config/bootstrap/v3/bootstrap.proto\u0012\u0019envoy.config.bootstrap.v3\u001a)envoy/config/accesslog/v3/accesslog.proto\u001a%envoy/config/cluster/v3/cluster.proto\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a/envoy/config/core/v3/event_service_config.proto\u001a$envoy/config/core/v3/extension.proto\u001a#envoy/config/core/v3/resolver.proto\u001a(envoy/config/core/v3/socket_option.proto\u001a\'envoy/config/listener/v3/listener.proto\u001a#envoy/config/metrics/v3/stats.proto\u001a\'envoy/config/overload/v3/overload.proto\u001a\'envoy/config/trace/v3/http_tracer.proto\u001a6envoy/extensions/transport_sockets/tls/v3/secret.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00af\u0014\n\tBootstrap\u0012(\n\u0004node\u0018\u0001 \u0001(\u000b2\u001a.envoy.config.core.v3.Node\u0012\u001b\n\u0013node_context_params\u0018\u001a \u0003(\t\u0012N\n\u0010static_resources\u0018\u0002 \u0001(\u000b24.envoy.config.bootstrap.v3.Bootstrap.StaticResources\u0012P\n\u0011dynamic_resources\u0018\u0003 \u0001(\u000b25.envoy.config.bootstrap.v3.Bootstrap.DynamicResources\u0012B\n\u000fcluster_manager\u0018\u0004 \u0001(\u000b2).envoy.config.bootstrap.v3.ClusterManager\u00129\n\nhds_config\u0018\u000e \u0001(\u000b2%.envoy.config.core.v3.ApiConfigSource\u0012\u0012\n\nflags_path\u0018\u0005 \u0001(\t\u00127\n\u000bstats_sinks\u0018\u0006 \u0003(\u000b2\".envoy.config.metrics.v3.StatsSink\u0012:\n\u000cstats_config\u0018\r \u0001(\u000b2$.envoy.config.metrics.v3.StatsConfig\u0012]\n\u0014stats_flush_interval\u0018\u0007 \u0001(\u000b2\u0019.google.protobuf.DurationB$\u00faB\u000e\u00aa\u0001\u000b\u001a\u0003\u0008\u00ac\u00022\u0004\u0010\u00c0\u0084=\u00f2\u0098\u00fe\u008f\u0005\r\u0012\u000bstats_flush\u0012\'\n\u0014stats_flush_on_admin\u0018\u001d \u0001(\u0008B\u0007\u00faB\u0004j\u0002\u0008\u0001H\u0000\u0012B\n\u0008watchdog\u0018\u0008 \u0001(\u000b2#.envoy.config.bootstrap.v3.WatchdogB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u00127\n\twatchdogs\u0018\u001b \u0001(\u000b2$.envoy.config.bootstrap.v3.Watchdogs\u0012<\n\u0007tracing\u0018\t \u0001(\u000b2\u001e.envoy.config.trace.v3.TracingB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012B\n\u000flayered_runtime\u0018\u0011 \u0001(\u000b2).envoy.config.bootstrap.v3.LayeredRuntime\u0012/\n\u0005admin\u0018\u000c \u0001(\u000b2 .envoy.config.bootstrap.v3.Admin\u0012S\n\u0010overload_manager\u0018\u000f \u0001(\u000b2).envoy.config.overload.v3.OverloadManagerB\u000e\u008a\u0093\u00b7*\u0002\u0008\u0001\u008a\u0093\u00b7*\u0002\u0010\u0001\u0012\u001f\n\u0017enable_dispatcher_stats\u0018\u0010 \u0001(\u0008\u0012\u0015\n\rheader_prefix\u0018\u0012 \u0001(\t\u0012C\n\u001dstats_server_version_override\u0018\u0013 \u0001(\u000b2\u001c.google.protobuf.UInt64Value\u0012,\n\u0017use_tcp_for_dns_lookups\u0018\u0014 \u0001(\u0008B\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012H\n\u0015dns_resolution_config\u0018\u001e \u0001(\u000b2).envoy.config.core.v3.DnsResolutionConfig\u0012M\n\u0019typed_dns_resolver_config\u0018\u001f \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012H\n\u0014bootstrap_extensions\u0018\u0015 \u0003(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012=\n\rfatal_actions\u0018\u001c \u0003(\u000b2&.envoy.config.bootstrap.v3.FatalAction\u0012:\n\u000econfig_sources\u0018\u0016 \u0003(\u000b2\".envoy.config.core.v3.ConfigSource\u0012A\n\u0015default_config_source\u0018\u0017 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012 \n\u0018default_socket_interface\u0018\u0018 \u0001(\t\u0012n\n\u001ecertificate_provider_instances\u0018\u0019 \u0003(\u000b2F.envoy.config.bootstrap.v3.Bootstrap.CertificateProviderInstancesEntry\u0012E\n\u000einline_headers\u0018  \u0003(\u000b2-.envoy.config.bootstrap.v3.CustomInlineHeader\u001a\u00fc\u0001\n\u000fStaticResources\u00125\n\tlisteners\u0018\u0001 \u0003(\u000b2\".envoy.config.listener.v3.Listener\u00122\n\u0008clusters\u0018\u0002 \u0003(\u000b2 .envoy.config.cluster.v3.Cluster\u0012B\n\u0007secrets\u0018\u0003 \u0003(\u000b21.envoy.extensions.transport_sockets.tls.v3.Secret::\u009a\u00c5\u0088\u001e5\n3envoy.config.bootstrap.v2.Bootstrap.StaticResources\u001a\u00be\u0002\n\u0010DynamicResources\u00126\n\nlds_config\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u001d\n\u0015lds_resources_locator\u0018\u0005 \u0001(\t\u00126\n\ncds_config\u0018\u0002 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u001d\n\u0015cds_resources_locator\u0018\u0006 \u0001(\t\u00129\n\nads_config\u0018\u0003 \u0001(\u000b2%.envoy.config.core.v3.ApiConfigSource:;\u009a\u00c5\u0088\u001e6\n4envoy.config.bootstrap.v2.Bootstrap.DynamicResourcesJ\u0004\u0008\u0004\u0010\u0005\u001ao\n!CertificateProviderInstancesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u00129\n\u0005value\u0018\u0002 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig:\u00028\u0001:*\u009a\u00c5\u0088\u001e%\n#envoy.config.bootstrap.v2.BootstrapB\r\n\u000bstats_flushJ\u0004\u0008\n\u0010\u000bJ\u0004\u0008\u000b\u0010\u000cR\u0007runtime\"\u0091\u0002\n\u0005Admin\u00128\n\naccess_log\u0018\u0005 \u0003(\u000b2$.envoy.config.accesslog.v3.AccessLog\u0012$\n\u000faccess_log_path\u0018\u0001 \u0001(\tB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012\u0014\n\u000cprofile_path\u0018\u0002 \u0001(\t\u0012.\n\u0007address\u0018\u0003 \u0001(\u000b2\u001d.envoy.config.core.v3.Address\u0012:\n\u000esocket_options\u0018\u0004 \u0003(\u000b2\".envoy.config.core.v3.SocketOption:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.config.bootstrap.v2.Admin\"\u00e6\u0003\n\u000eClusterManager\u0012\u001a\n\u0012local_cluster_name\u0018\u0001 \u0001(\t\u0012U\n\u0011outlier_detection\u0018\u0002 \u0001(\u000b2:.envoy.config.bootstrap.v3.ClusterManager.OutlierDetection\u0012>\n\u0014upstream_bind_config\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.BindConfig\u0012@\n\u0011load_stats_config\u0018\u0004 \u0001(\u000b2%.envoy.config.core.v3.ApiConfigSource\u001a\u00ad\u0001\n\u0010OutlierDetection\u0012\u0016\n\u000eevent_log_path\u0018\u0001 \u0001(\t\u0012?\n\revent_service\u0018\u0002 \u0001(\u000b2(.envoy.config.core.v3.EventServiceConfig:@\u009a\u00c5\u0088\u001e;\n9envoy.config.bootstrap.v2.ClusterManager.OutlierDetection:/\u009a\u00c5\u0088\u001e*\n(envoy.config.bootstrap.v2.ClusterManager\"\u008c\u0001\n\tWatchdogs\u0012A\n\u0014main_thread_watchdog\u0018\u0001 \u0001(\u000b2#.envoy.config.bootstrap.v3.Watchdog\u0012<\n\u000fworker_watchdog\u0018\u0002 \u0001(\u000b2#.envoy.config.bootstrap.v3.Watchdog\"\u00bb\u0005\n\u0008Watchdog\u0012C\n\u0007actions\u0018\u0007 \u0003(\u000b22.envoy.config.bootstrap.v3.Watchdog.WatchdogAction\u0012/\n\u000cmiss_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u00123\n\u0010megamiss_timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012/\n\u000ckill_timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012D\n\u0017max_kill_timeout_jitter\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u00022\u0000\u00124\n\u0011multikill_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u00123\n\u0013multikill_threshold\u0018\u0005 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u001a\u00f6\u0001\n\u000eWatchdogAction\u0012:\n\u0006config\u0018\u0001 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012Y\n\u0005event\u0018\u0002 \u0001(\u000e2@.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.WatchdogEventB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\"M\n\rWatchdogEvent\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0008\n\u0004KILL\u0010\u0001\u0012\r\n\tMULTIKILL\u0010\u0002\u0012\u000c\n\u0008MEGAMISS\u0010\u0003\u0012\u0008\n\u0004MISS\u0010\u0004:)\u009a\u00c5\u0088\u001e$\n\"envoy.config.bootstrap.v2.Watchdog\"I\n\u000bFatalAction\u0012:\n\u0006config\u0018\u0001 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\"\u00a5\u0001\n\u0007Runtime\u0012\u0014\n\u000csymlink_root\u0018\u0001 \u0001(\t\u0012\u0014\n\u000csubdirectory\u0018\u0002 \u0001(\t\u0012\u001d\n\u0015override_subdirectory\u0018\u0003 \u0001(\t\u0012%\n\u0004base\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct:(\u009a\u00c5\u0088\u001e#\n!envoy.config.bootstrap.v2.Runtime\"\u00e3\u0005\n\u000cRuntimeLayer\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012/\n\u000cstatic_layer\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructH\u0000\u0012G\n\ndisk_layer\u0018\u0003 \u0001(\u000b21.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayerH\u0000\u0012I\n\u000badmin_layer\u0018\u0004 \u0001(\u000b22.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayerH\u0000\u0012G\n\nrtds_layer\u0018\u0005 \u0001(\u000b21.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayerH\u0000\u001a\u0090\u0001\n\tDiskLayer\u0012\u0014\n\u000csymlink_root\u0018\u0001 \u0001(\t\u0012\u0014\n\u000csubdirectory\u0018\u0003 \u0001(\t\u0012\u001e\n\u0016append_service_cluster\u0018\u0002 \u0001(\u0008:7\u009a\u00c5\u0088\u001e2\n0envoy.config.bootstrap.v2.RuntimeLayer.DiskLayer\u001aF\n\nAdminLayer:8\u009a\u00c5\u0088\u001e3\n1envoy.config.bootstrap.v2.RuntimeLayer.AdminLayer\u001a\u008b\u0001\n\tRtdsLayer\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00127\n\u000brtds_config\u0018\u0002 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource:7\u009a\u00c5\u0088\u001e2\n0envoy.config.bootstrap.v2.RuntimeLayer.RtdsLayer:-\u009a\u00c5\u0088\u001e(\n&envoy.config.bootstrap.v2.RuntimeLayerB\u0016\n\u000flayer_specifier\u0012\u0003\u00f8B\u0001\"z\n\u000eLayeredRuntime\u00127\n\u0006layers\u0018\u0001 \u0003(\u000b2\'.envoy.config.bootstrap.v3.RuntimeLayer:/\u009a\u00c5\u0088\u001e*\n(envoy.config.bootstrap.v2.LayeredRuntime\"\u008d\u0002\n\u0012CustomInlineHeader\u0012)\n\u0012inline_header_name\u0018\u0001 \u0001(\tB\r\u00faB\nr\u0008\u0010\u0001\u00c0\u0001\u0001\u00c8\u0001\u0000\u0012d\n\u0012inline_header_type\u0018\u0002 \u0001(\u000e2>.envoy.config.bootstrap.v3.CustomInlineHeader.InlineHeaderTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\"f\n\u0010InlineHeaderType\u0012\u0012\n\u000eREQUEST_HEADER\u0010\u0000\u0012\u0013\n\u000fREQUEST_TRAILER\u0010\u0001\u0012\u0013\n\u000fRESPONSE_HEADER\u0010\u0002\u0012\u0014\n\u0010RESPONSE_TRAILER\u0010\u0003BC\n\'io.envoyproxy.envoy.config.bootstrap.v3B\u000eBootstrapProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/t0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xb

    aput-object v2, v1, v13

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xc

    aput-object v2, v1, v13

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xd

    aput-object v2, v1, v13

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xe

    aput-object v2, v1, v13

    .line 17
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xf

    aput-object v2, v1, v13

    .line 18
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x10

    aput-object v2, v1, v13

    .line 19
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x11

    aput-object v2, v1, v13

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x12

    aput-object v2, v1, v13

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x13

    aput-object v2, v1, v13

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x14

    aput-object v2, v1, v13

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x15

    aput-object v2, v1, v13

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x16

    aput-object v2, v1, v13

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x17

    aput-object v2, v1, v13

    .line 26
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "Node"

    const-string v14, "NodeContextParams"

    const-string v15, "StaticResources"

    const-string v16, "DynamicResources"

    const-string v17, "ClusterManager"

    const-string v18, "HdsConfig"

    const-string v19, "FlagsPath"

    const-string v20, "StatsSinks"

    const-string v21, "StatsConfig"

    const-string v22, "StatsFlushInterval"

    const-string v23, "StatsFlushOnAdmin"

    const-string v24, "Watchdog"

    const-string v25, "Watchdogs"

    const-string v26, "Tracing"

    const-string v27, "LayeredRuntime"

    const-string v28, "Admin"

    const-string v29, "OverloadManager"

    const-string v30, "EnableDispatcherStats"

    const-string v31, "HeaderPrefix"

    const-string v32, "StatsServerVersionOverride"

    const-string v33, "UseTcpForDnsLookups"

    const-string v34, "DnsResolutionConfig"

    const-string v35, "TypedDnsResolverConfig"

    const-string v36, "BootstrapExtensions"

    const-string v37, "FatalActions"

    const-string v38, "ConfigSources"

    const-string v39, "DefaultConfigSource"

    const-string v40, "DefaultSocketInterface"

    const-string v41, "CertificateProviderInstances"

    const-string v42, "InlineHeaders"

    const-string v43, "StatsFlush"

    filled-new-array/range {v13 .. v43}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "Listeners"

    const-string v14, "Clusters"

    const-string v15, "Secrets"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "LdsConfig"

    const-string v14, "LdsResourcesLocator"

    const-string v15, "CdsConfig"

    const-string v12, "CdsResourcesLocator"

    const-string v11, "AdsConfig"

    filled-new-array {v13, v14, v15, v12, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v1, v11}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v11, "Value"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "AccessLog"

    const-string v11, "AccessLogPath"

    const-string v12, "ProfilePath"

    const-string v13, "Address"

    const-string v14, "SocketOptions"

    filled-new-array {v2, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "LocalClusterName"

    const-string v11, "OutlierDetection"

    const-string v12, "UpstreamBindConfig"

    const-string v13, "LoadStatsConfig"

    filled-new-array {v2, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->m:Lcom/google/protobuf/Descriptors$b;

    .line 40
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "EventLogPath"

    const-string v11, "EventService"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->o:Lcom/google/protobuf/Descriptors$b;

    .line 42
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "MainThreadWatchdog"

    const-string v6, "WorkerWatchdog"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->q:Lcom/google/protobuf/Descriptors$b;

    .line 44
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v18, "Actions"

    const-string v19, "MissTimeout"

    const-string v20, "MegamissTimeout"

    const-string v21, "KillTimeout"

    const-string v22, "MaxKillTimeoutJitter"

    const-string v23, "MultikillTimeout"

    const-string v24, "MultikillThreshold"

    filled-new-array/range {v18 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 45
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->s:Lcom/google/protobuf/Descriptors$b;

    .line 46
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Config"

    const-string v6, "Event"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->u:Lcom/google/protobuf/Descriptors$b;

    .line 48
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->w:Lcom/google/protobuf/Descriptors$b;

    .line 50
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SymlinkRoot"

    const-string v6, "Subdirectory"

    const-string v7, "OverrideSubdirectory"

    const-string v8, "Base"

    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->y:Lcom/google/protobuf/Descriptors$b;

    .line 52
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Name"

    const-string v8, "StaticLayer"

    const-string v9, "DiskLayer"

    const-string v10, "AdminLayer"

    const-string v11, "RtdsLayer"

    const-string v12, "LayerSpecifier"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 53
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->A:Lcom/google/protobuf/Descriptors$b;

    .line 54
    new-instance v7, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "AppendServiceCluster"

    filled-new-array {v2, v6, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 55
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->C:Lcom/google/protobuf/Descriptors$b;

    .line 56
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 57
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->E:Lcom/google/protobuf/Descriptors$b;

    .line 58
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v3, "RtdsConfig"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 59
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->G:Lcom/google/protobuf/Descriptors$b;

    .line 60
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Layers"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 61
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->I:Lcom/google/protobuf/Descriptors$b;

    .line 62
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "InlineHeaderName"

    const-string v3, "InlineHeaderType"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 63
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 64
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 65
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 66
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 67
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Security;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 68
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 69
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 70
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 71
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 72
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 73
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 74
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 75
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 76
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 77
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 78
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 79
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 80
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/t0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 81
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 82
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 83
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 84
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 85
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 86
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 87
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 88
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 89
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 90
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 91
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 92
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 93
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 94
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 95
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 96
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
