.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final C:Lcom/google/protobuf/Descriptors$b;

.field static final D:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static E:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 46

    const-string v0, "\nTenvoy/config/filter/network/http_connection_manager/v2/http_connection_manager.proto\u00126envoy.config.filter.network.http_connection_manager.v2\u001a%envoy/api/v2/core/config_source.proto\u001a envoy/api/v2/core/protocol.proto\u001a\u0018envoy/api/v2/route.proto\u001a\u001fenvoy/api/v2/scoped_route.proto\u001a0envoy/config/filter/accesslog/v2/accesslog.proto\u001a\'envoy/config/trace/v2/http_tracer.proto\u001a\u0018envoy/type/percent.proto\u001a&envoy/type/tracing/v2/custom_tag.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00ff\u001c\n\u0015HttpConnectionManager\u0012u\n\ncodec_type\u0018\u0001 \u0001(\u000e2W.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.CodecTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bstat_prefix\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012J\n\u0003rds\u0018\u0003 \u0001(\u000b2;.envoy.config.filter.network.http_connection_manager.v2.RdsH\u0000\u00128\n\u000croute_config\u0018\u0004 \u0001(\u000b2 .envoy.api.v2.RouteConfigurationH\u0000\u0012]\n\rscoped_routes\u0018\u001f \u0001(\u000b2D.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutesH\u0000\u0012X\n\u000chttp_filters\u0018\u0005 \u0003(\u000b2B.envoy.config.filter.network.http_connection_manager.v2.HttpFilter\u00122\n\u000eadd_user_agent\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012f\n\u0007tracing\u0018\u0007 \u0001(\u000b2U.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing\u0012L\n\u001ccommon_http_protocol_options\u0018# \u0001(\u000b2&.envoy.api.v2.core.HttpProtocolOptions\u0012F\n\u0015http_protocol_options\u0018\u0008 \u0001(\u000b2\'.envoy.api.v2.core.Http1ProtocolOptions\u0012G\n\u0016http2_protocol_options\u0018\t \u0001(\u000b2\'.envoy.api.v2.core.Http2ProtocolOptions\u0012\u0013\n\u000bserver_name\u0018\n \u0001(\t\u0012\u0098\u0001\n\u001cserver_header_transformation\u0018\" \u0001(\u000e2h.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.ServerHeaderTransformationB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012H\n\u0016max_request_headers_kb\u0018\u001d \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\n\u00faB\u0007*\u0005\u0018\u0080@ \u0000\u00129\n\u000cidle_timeout\u0018\u000b \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u0018\u0001\u00b8\u00ee\u00f2\u00d2\u0005\u0001\u00126\n\u0013stream_idle_timeout\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.Duration\u00122\n\u000frequest_timeout\u0018\u001c \u0001(\u000b2\u0019.google.protobuf.Duration\u00120\n\rdrain_timeout\u0018\u000c \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\u0015delayed_close_timeout\u0018\u001a \u0001(\u000b2\u0019.google.protobuf.Duration\u0012?\n\naccess_log\u0018\r \u0003(\u000b2+.envoy.config.filter.accesslog.v2.AccessLog\u00126\n\u0012use_remote_address\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u001c\n\u0014xff_num_trusted_hops\u0018\u0013 \u0001(\r\u0012\u0084\u0001\n\u0017internal_address_config\u0018\u0019 \u0001(\u000b2c.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig\u0012\u0017\n\u000fskip_xff_append\u0018\u0015 \u0001(\u0008\u0012\u000b\n\u0003via\u0018\u0016 \u0001(\t\u00127\n\u0013generate_request_id\u0018\u000f \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012$\n\u001cpreserve_external_request_id\u0018  \u0001(\u0008\u0012\u0095\u0001\n\u001bforward_client_cert_details\u0018\u0010 \u0001(\u000e2f.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.ForwardClientCertDetailsB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0092\u0001\n\u001fset_current_client_cert_details\u0018\u0011 \u0001(\u000b2i.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetails\u0012\u001a\n\u0012proxy_100_continue\u0018\u0012 \u0001(\u0008\u00129\n1represent_ipv4_remote_address_as_ipv4_mapped_ipv6\u0018\u0014 \u0001(\u0008\u0012t\n\u000fupgrade_configs\u0018\u0017 \u0003(\u000b2[.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig\u00122\n\u000enormalize_path\u0018\u001e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0015\n\rmerge_slashes\u0018! \u0001(\u0008\u0012h\n\u0014request_id_extension\u0018$ \u0001(\u000b2J.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension\u001a\u00ae\u0004\n\u0007Tracing\u0012\u008d\u0001\n\u000eoperation_name\u0018\u0001 \u0001(\u000e2c.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing.OperationNameB\u0010\u0018\u0001\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u00b8\u00ee\u00f2\u00d2\u0005\u0001\u0012$\n\u0018request_headers_for_tags\u0018\u0002 \u0003(\tB\u0002\u0018\u0001\u0012,\n\u000fclient_sampling\u0018\u0003 \u0001(\u000b2\u0013.envoy.type.Percent\u0012,\n\u000frandom_sampling\u0018\u0004 \u0001(\u000b2\u0013.envoy.type.Percent\u0012-\n\u0010overall_sampling\u0018\u0005 \u0001(\u000b2\u0013.envoy.type.Percent\u0012\u000f\n\u0007verbose\u0018\u0006 \u0001(\u0008\u00129\n\u0013max_path_tag_length\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00125\n\u000bcustom_tags\u0018\u0008 \u0003(\u000b2 .envoy.type.tracing.v2.CustomTag\u00125\n\u0008provider\u0018\t \u0001(\u000b2#.envoy.config.trace.v2.Tracing.Http\"(\n\rOperationName\u0012\u000b\n\u0007INGRESS\u0010\u0000\u0012\n\n\u0006EGRESS\u0010\u0001\u001a-\n\u0015InternalAddressConfig\u0012\u0014\n\u000cunix_sockets\u0018\u0001 \u0001(\u0008\u001a\u0087\u0001\n\u001bSetCurrentClientCertDetails\u0012+\n\u0007subject\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u000c\n\u0004cert\u0018\u0003 \u0001(\u0008\u0012\r\n\u0005chain\u0018\u0006 \u0001(\u0008\u0012\u000b\n\u0003dns\u0018\u0004 \u0001(\u0008\u0012\u000b\n\u0003uri\u0018\u0005 \u0001(\u0008J\u0004\u0008\u0002\u0010\u0003\u001a\u00a7\u0001\n\rUpgradeConfig\u0012\u0014\n\u000cupgrade_type\u0018\u0001 \u0001(\t\u0012S\n\u0007filters\u0018\u0002 \u0003(\u000b2B.envoy.config.filter.network.http_connection_manager.v2.HttpFilter\u0012+\n\u0007enabled\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"6\n\tCodecType\u0012\u0008\n\u0004AUTO\u0010\u0000\u0012\t\n\u0005HTTP1\u0010\u0001\u0012\t\n\u0005HTTP2\u0010\u0002\u0012\t\n\u0005HTTP3\u0010\u0003\"S\n\u001aServerHeaderTransformation\u0012\r\n\tOVERWRITE\u0010\u0000\u0012\u0014\n\u0010APPEND_IF_ABSENT\u0010\u0001\u0012\u0010\n\u000cPASS_THROUGH\u0010\u0002\"y\n\u0018ForwardClientCertDetails\u0012\u000c\n\u0008SANITIZE\u0010\u0000\u0012\u0010\n\u000cFORWARD_ONLY\u0010\u0001\u0012\u0012\n\u000eAPPEND_FORWARD\u0010\u0002\u0012\u0010\n\u000cSANITIZE_SET\u0010\u0003\u0012\u0017\n\u0013ALWAYS_FORWARD_ONLY\u0010\u0004B\u0016\n\u000froute_specifier\u0012\u0003\u00f8B\u0001J\u0004\u0008\u001b\u0010\u001c\"k\n\u0003Rds\u0012@\n\rconfig_source\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\"\n\u0011route_config_name\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\"v\n\u001dScopedRouteConfigurationsList\u0012U\n\u001bscoped_route_configurations\u0018\u0001 \u0003(\u000b2&.envoy.api.v2.ScopedRouteConfigurationB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\"\u00f8\u0008\n\u000cScopedRoutes\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012y\n\u0011scope_key_builder\u0018\u0002 \u0001(\u000b2T.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilderB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012D\n\u0011rds_config_source\u0018\u0003 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0081\u0001\n scoped_route_configurations_list\u0018\u0004 \u0001(\u000b2U.envoy.config.filter.network.http_connection_manager.v2.ScopedRouteConfigurationsListH\u0000\u0012W\n\nscoped_rds\u0018\u0005 \u0001(\u000b2A.envoy.config.filter.network.http_connection_manager.v2.ScopedRdsH\u0000\u001a\u0099\u0005\n\u000fScopeKeyBuilder\u0012\u0081\u0001\n\tfragments\u0018\u0001 \u0003(\u000b2d.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u001a\u0081\u0004\n\u000fFragmentBuilder\u0012\u009b\u0001\n\u0016header_value_extractor\u0018\u0001 \u0001(\u000b2y.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\u0000\u001a\u00c2\u0002\n\u0014HeaderValueExtractor\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012\u0019\n\u0011element_separator\u0018\u0002 \u0001(\t\u0012\u000f\n\u0005index\u0018\u0003 \u0001(\rH\u0000\u0012\u0097\u0001\n\u0007element\u0018\u0004 \u0001(\u000b2\u0083\u0001.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\u0000\u001a=\n\tKvElement\u0012\u001a\n\tseparator\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012\u0014\n\u0003key\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001B\u000e\n\u000cextract_typeB\u000b\n\u0004type\u0012\u0003\u00f8B\u0001B\u0017\n\u0010config_specifier\u0012\u0003\u00f8B\u0001\"X\n\tScopedRds\u0012K\n\u0018scoped_rds_config_source\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\"\u0095\u0001\n\nHttpFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_typeJ\u0004\u0008\u0003\u0010\u0004\"@\n\u0012RequestIDExtension\u0012*\n\u000ctyped_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.AnyB\u00af\u0001\nDio.envoyproxy.envoy.config.filter.network.http_connection_manager.v2B\u001aHttpConnectionManagerProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005=\u0012;envoy.extensions.filters.network.http_connection_manager.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 10
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0x8

    aput-object v2, v1, v10

    .line 11
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0x9

    aput-object v2, v1, v10

    .line 12
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xa

    aput-object v2, v1, v10

    .line 13
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xb

    aput-object v2, v1, v10

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xc

    aput-object v2, v1, v10

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xd

    aput-object v2, v1, v10

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xe

    aput-object v2, v1, v10

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v10, 0xf

    aput-object v2, v1, v10

    .line 18
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "CodecType"

    const-string v11, "StatPrefix"

    const-string v12, "Rds"

    const-string v13, "RouteConfig"

    const-string v14, "ScopedRoutes"

    const-string v15, "HttpFilters"

    const-string v16, "AddUserAgent"

    const-string v17, "Tracing"

    const-string v18, "CommonHttpProtocolOptions"

    const-string v19, "HttpProtocolOptions"

    const-string v20, "Http2ProtocolOptions"

    const-string v21, "ServerName"

    const-string v22, "ServerHeaderTransformation"

    const-string v23, "MaxRequestHeadersKb"

    const-string v24, "IdleTimeout"

    const-string v25, "StreamIdleTimeout"

    const-string v26, "RequestTimeout"

    const-string v27, "DrainTimeout"

    const-string v28, "DelayedCloseTimeout"

    const-string v29, "AccessLog"

    const-string v30, "UseRemoteAddress"

    const-string v31, "XffNumTrustedHops"

    const-string v32, "InternalAddressConfig"

    const-string v33, "SkipXffAppend"

    const-string v34, "Via"

    const-string v35, "GenerateRequestId"

    const-string v36, "PreserveExternalRequestId"

    const-string v37, "ForwardClientCertDetails"

    const-string v38, "SetCurrentClientCertDetails"

    const-string v39, "Proxy100Continue"

    const-string v40, "RepresentIpv4RemoteAddressAsIpv4MappedIpv6"

    const-string v41, "UpgradeConfigs"

    const-string v42, "NormalizePath"

    const-string v43, "MergeSlashes"

    const-string v44, "RequestIdExtension"

    const-string v45, "RouteSpecifier"

    filled-new-array/range {v10 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "OperationName"

    const-string v11, "RequestHeadersForTags"

    const-string v12, "ClientSampling"

    const-string v13, "RandomSampling"

    const-string v14, "OverallSampling"

    const-string v15, "Verbose"

    const-string v16, "MaxPathTagLength"

    const-string v17, "CustomTags"

    const-string v18, "Provider"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v1, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->e:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "UnixSockets"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v1, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->g:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Subject"

    const-string v11, "Cert"

    const-string v12, "Chain"

    const-string v13, "Dns"

    const-string v14, "Uri"

    filled-new-array {v10, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v1, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->i:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "UpgradeType"

    const-string v10, "Filters"

    const-string v11, "Enabled"

    filled-new-array {v2, v10, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->k:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ConfigSource"

    const-string v4, "RouteConfigName"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->m:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ScopedRouteConfigurations"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->o:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Name"

    const-string v11, "ScopeKeyBuilder"

    const-string v12, "RdsConfigSource"

    const-string v13, "ScopedRouteConfigurationsList"

    const-string v14, "ScopedRds"

    const-string v15, "ConfigSpecifier"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->q:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Fragments"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->s:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "HeaderValueExtractor"

    const-string v4, "Type"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->u:Lcom/google/protobuf/Descriptors$b;

    .line 40
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v4, "ElementSeparator"

    const-string v5, "Index"

    const-string v6, "Element"

    const-string v10, "ExtractType"

    filled-new-array {v2, v4, v5, v6, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 41
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->w:Lcom/google/protobuf/Descriptors$b;

    .line 42
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Separator"

    const-string v4, "Key"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->y:Lcom/google/protobuf/Descriptors$b;

    .line 44
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ScopedRdsConfigSource"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 45
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->A:Lcom/google/protobuf/Descriptors$b;

    .line 46
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Config"

    const-string v4, "TypedConfig"

    const-string v5, "ConfigType"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->C:Lcom/google/protobuf/Descriptors$b;

    .line 48
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 49
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 50
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 51
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 52
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 53
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 54
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 55
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 56
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 57
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 58
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 59
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 60
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 61
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 62
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 63
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 64
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 65
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 66
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 67
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 68
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 69
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 70
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 71
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 72
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
