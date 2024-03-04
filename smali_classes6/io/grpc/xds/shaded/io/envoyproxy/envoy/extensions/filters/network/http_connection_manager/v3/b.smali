.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;
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

.field private static M:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 61

    const-string v0, "\nYenvoy/extensions/filters/network/http_connection_manager/v3/http_connection_manager.proto\u0012;envoy.extensions.filters.network.http_connection_manager.v3\u001a)envoy/config/accesslog/v3/accesslog.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a$envoy/config/core/v3/extension.proto\u001a#envoy/config/core/v3/protocol.proto\u001a5envoy/config/core/v3/substitution_format_string.proto\u001a!envoy/config/route/v3/route.proto\u001a(envoy/config/route/v3/scoped_route.proto\u001a\'envoy/config/trace/v3/http_tracer.proto\u001a,envoy/type/http/v3/path_transformation.proto\u001a&envoy/type/tracing/v3/custom_tag.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u009b+\n\u0015HttpConnectionManager\u0012z\n\ncodec_type\u0018\u0001 \u0001(\u000e2\\.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.CodecTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bstat_prefix\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012O\n\u0003rds\u0018\u0003 \u0001(\u000b2@.envoy.extensions.filters.network.http_connection_manager.v3.RdsH\u0000\u0012A\n\u000croute_config\u0018\u0004 \u0001(\u000b2).envoy.config.route.v3.RouteConfigurationH\u0000\u0012b\n\rscoped_routes\u0018\u001f \u0001(\u000b2I.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutesH\u0000\u0012]\n\u000chttp_filters\u0018\u0005 \u0003(\u000b2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter\u00122\n\u000eadd_user_agent\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012k\n\u0007tracing\u0018\u0007 \u0001(\u000b2Z.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing\u0012X\n\u001ccommon_http_protocol_options\u0018# \u0001(\u000b2).envoy.config.core.v3.HttpProtocolOptionsB\u0007\u008a\u0093\u00b7*\u0002\u0008\u0001\u0012I\n\u0015http_protocol_options\u0018\u0008 \u0001(\u000b2*.envoy.config.core.v3.Http1ProtocolOptions\u0012S\n\u0016http2_protocol_options\u0018\t \u0001(\u000b2*.envoy.config.core.v3.Http2ProtocolOptionsB\u0007\u008a\u0093\u00b7*\u0002\u0008\u0001\u0012J\n\u0016http3_protocol_options\u0018, \u0001(\u000b2*.envoy.config.core.v3.Http3ProtocolOptions\u0012 \n\u000bserver_name\u0018\n \u0001(\tB\u000b\u00faB\u0008r\u0006\u00c0\u0001\u0002\u00c8\u0001\u0000\u0012\u009d\u0001\n\u001cserver_header_transformation\u0018\" \u0001(\u000e2m.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ServerHeaderTransformationB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012V\n\u001cscheme_header_transformation\u00180 \u0001(\u000b20.envoy.config.core.v3.SchemeHeaderTransformation\u0012H\n\u0016max_request_headers_kb\u0018\u001d \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\n\u00faB\u0007*\u0005\u0018\u0080@ \u0000\u0012?\n\u0013stream_idle_timeout\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0007\u008a\u0093\u00b7*\u0002\u0008\u0001\u0012;\n\u000frequest_timeout\u0018\u001c \u0001(\u000b2\u0019.google.protobuf.DurationB\u0007\u008a\u0093\u00b7*\u0002\u0008\u0001\u0012K\n\u0017request_headers_timeout\u0018) \u0001(\u000b2\u0019.google.protobuf.DurationB\u000f\u00faB\u0005\u00aa\u0001\u00022\u0000\u008a\u0093\u00b7*\u0002\u0008\u0001\u00120\n\rdrain_timeout\u0018\u000c \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\u0015delayed_close_timeout\u0018\u001a \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\naccess_log\u0018\r \u0003(\u000b2$.envoy.config.accesslog.v3.AccessLog\u0012?\n\u0012use_remote_address\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u0007\u008a\u0093\u00b7*\u0002\u0008\u0001\u0012\u001c\n\u0014xff_num_trusted_hops\u0018\u0013 \u0001(\r\u0012T\n original_ip_detection_extensions\u0018. \u0003(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012\u0089\u0001\n\u0017internal_address_config\u0018\u0019 \u0001(\u000b2h.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig\u0012\u0017\n\u000fskip_xff_append\u0018\u0015 \u0001(\u0008\u0012\u0018\n\u0003via\u0018\u0016 \u0001(\tB\u000b\u00faB\u0008r\u0006\u00c0\u0001\u0002\u00c8\u0001\u0000\u00127\n\u0013generate_request_id\u0018\u000f \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012$\n\u001cpreserve_external_request_id\u0018  \u0001(\u0008\u0012)\n!always_set_request_id_in_response\u0018% \u0001(\u0008\u0012\u009a\u0001\n\u001bforward_client_cert_details\u0018\u0010 \u0001(\u000e2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ForwardClientCertDetailsB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0097\u0001\n\u001fset_current_client_cert_details\u0018\u0011 \u0001(\u000b2n.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails\u0012\u001a\n\u0012proxy_100_continue\u0018\u0012 \u0001(\u0008\u00129\n1represent_ipv4_remote_address_as_ipv4_mapped_ipv6\u0018\u0014 \u0001(\u0008\u0012y\n\u000fupgrade_configs\u0018\u0017 \u0003(\u000b2`.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig\u00122\n\u000enormalize_path\u0018\u001e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0015\n\rmerge_slashes\u0018! \u0001(\u0008\u0012\u0099\u0001\n path_with_escaped_slashes_action\u0018- \u0001(\u000e2o.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathWithEscapedSlashesAction\u0012m\n\u0014request_id_extension\u0018$ \u0001(\u000b2O.envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtension\u0012i\n\u0012local_reply_config\u0018& \u0001(\u000b2M.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig\u00129\n\u0018strip_matching_host_port\u0018\' \u0001(\u0008B\u0017\u00f2\u0098\u00fe\u008f\u0005\u0011\u0012\u000fstrip_port_mode\u0012\u001d\n\u0013strip_any_host_port\u0018* \u0001(\u0008H\u0001\u0012H\n$stream_error_on_invalid_http_message\u0018( \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u008f\u0001\n\u001apath_normalization_options\u0018+ \u0001(\u000b2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions\u0012\u001f\n\u0017strip_trailing_host_dot\u0018/ \u0001(\u0008\u001a\u0094\u0004\n\u0007Tracing\u0012/\n\u000fclient_sampling\u0018\u0003 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012/\n\u000frandom_sampling\u0018\u0004 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u00120\n\u0010overall_sampling\u0018\u0005 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012\u000f\n\u0007verbose\u0018\u0006 \u0001(\u0008\u00129\n\u0013max_path_tag_length\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00125\n\u000bcustom_tags\u0018\u0008 \u0003(\u000b2 .envoy.type.tracing.v3.CustomTag\u00125\n\u0008provider\u0018\t \u0001(\u000b2#.envoy.config.trace.v3.Tracing.Http\"(\n\rOperationName\u0012\u000b\n\u0007INGRESS\u0010\u0000\u0012\n\n\u0006EGRESS\u0010\u0001:[\u009a\u00c5\u0088\u001eV\nTenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.TracingJ\u0004\u0008\u0001\u0010\u0002J\u0004\u0008\u0002\u0010\u0003R\u000eoperation_nameR\u0018request_headers_for_tags\u001a\u0098\u0001\n\u0015InternalAddressConfig\u0012\u0014\n\u000cunix_sockets\u0018\u0001 \u0001(\u0008:i\u009a\u00c5\u0088\u001ed\nbenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig\u001a\u00f8\u0001\n\u001bSetCurrentClientCertDetails\u0012+\n\u0007subject\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u000c\n\u0004cert\u0018\u0003 \u0001(\u0008\u0012\r\n\u0005chain\u0018\u0006 \u0001(\u0008\u0012\u000b\n\u0003dns\u0018\u0004 \u0001(\u0008\u0012\u000b\n\u0003uri\u0018\u0005 \u0001(\u0008:o\u009a\u00c5\u0088\u001ej\nhenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetailsJ\u0004\u0008\u0002\u0010\u0003\u001a\u008f\u0002\n\rUpgradeConfig\u0012\u0014\n\u000cupgrade_type\u0018\u0001 \u0001(\t\u0012X\n\u0007filters\u0018\u0002 \u0003(\u000b2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter\u0012+\n\u0007enabled\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue:a\u009a\u00c5\u0088\u001e\\\nZenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig\u001a\u00b1\u0001\n\u0018PathNormalizationOptions\u0012I\n\u0019forwarding_transformation\u0018\u0001 \u0001(\u000b2&.envoy.type.http.v3.PathTransformation\u0012J\n\u001ahttp_filter_transformation\u0018\u0002 \u0001(\u000b2&.envoy.type.http.v3.PathTransformation\"6\n\tCodecType\u0012\u0008\n\u0004AUTO\u0010\u0000\u0012\t\n\u0005HTTP1\u0010\u0001\u0012\t\n\u0005HTTP2\u0010\u0002\u0012\t\n\u0005HTTP3\u0010\u0003\"S\n\u001aServerHeaderTransformation\u0012\r\n\tOVERWRITE\u0010\u0000\u0012\u0014\n\u0010APPEND_IF_ABSENT\u0010\u0001\u0012\u0010\n\u000cPASS_THROUGH\u0010\u0002\"y\n\u0018ForwardClientCertDetails\u0012\u000c\n\u0008SANITIZE\u0010\u0000\u0012\u0010\n\u000cFORWARD_ONLY\u0010\u0001\u0012\u0012\n\u000eAPPEND_FORWARD\u0010\u0002\u0012\u0010\n\u000cSANITIZE_SET\u0010\u0003\u0012\u0017\n\u0013ALWAYS_FORWARD_ONLY\u0010\u0004\"\u00a0\u0001\n\u001cPathWithEscapedSlashesAction\u0012#\n\u001fIMPLEMENTATION_SPECIFIC_DEFAULT\u0010\u0000\u0012\u0012\n\u000eKEEP_UNCHANGED\u0010\u0001\u0012\u0012\n\u000eREJECT_REQUEST\u0010\u0002\u0012\u0019\n\u0015UNESCAPE_AND_REDIRECT\u0010\u0003\u0012\u0018\n\u0014UNESCAPE_AND_FORWARD\u0010\u0004:S\u009a\u00c5\u0088\u001eN\nLenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManagerB\u0016\n\u000froute_specifier\u0012\u0003\u00f8B\u0001B\u0011\n\u000fstrip_port_modeJ\u0004\u0008\u001b\u0010\u001cJ\u0004\u0008\u000b\u0010\u000cR\u000cidle_timeout\"\u00b5\u0001\n\u0010LocalReplyConfig\u0012\\\n\u0007mappers\u0018\u0001 \u0003(\u000b2K.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper\u0012C\n\u000bbody_format\u0018\u0002 \u0001(\u000b2..envoy.config.core.v3.SubstitutionFormatString\"\u00e0\u0002\n\u000eResponseMapper\u0012D\n\u0006filter\u0018\u0001 \u0001(\u000b2*.envoy.config.accesslog.v3.AccessLogFilterB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012>\n\u000bstatus_code\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000b\u00faB\u0008*\u0006\u0010\u00d8\u0004(\u00c8\u0001\u0012.\n\u0004body\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012L\n\u0014body_format_override\u0018\u0004 \u0001(\u000b2..envoy.config.core.v3.SubstitutionFormatString\u0012J\n\u000eheaders_to_add\u0018\u0005 \u0003(\u000b2\'.envoy.config.core.v3.HeaderValueOptionB\t\u00faB\u0006\u0092\u0001\u0003\u0010\u00e8\u0007\"\u00a8\u0001\n\u0003Rds\u0012C\n\rconfig_source\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0019\n\u0011route_config_name\u0018\u0002 \u0001(\t:A\u009a\u00c5\u0088\u001e<\n:envoy.config.filter.network.http_connection_manager.v2.Rds\"\u00dc\u0001\n\u001dScopedRouteConfigurationsList\u0012^\n\u001bscoped_route_configurations\u0018\u0001 \u0003(\u000b2/.envoy.config.route.v3.ScopedRouteConfigurationB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001:[\u009a\u00c5\u0088\u001eV\nTenvoy.config.filter.network.http_connection_manager.v2.ScopedRouteConfigurationsList\"\u00bd\r\n\u000cScopedRoutes\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012~\n\u0011scope_key_builder\u0018\u0002 \u0001(\u000b2Y.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilderB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012G\n\u0011rds_config_source\u0018\u0003 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0086\u0001\n scoped_route_configurations_list\u0018\u0004 \u0001(\u000b2Z.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRouteConfigurationsListH\u0000\u0012\\\n\nscoped_rds\u0018\u0005 \u0001(\u000b2F.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRdsH\u0000\u001a\u0080\t\n\u000fScopeKeyBuilder\u0012\u0086\u0001\n\tfragments\u0018\u0001 \u0003(\u000b2i.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u001a\u0087\u0007\n\u000fFragmentBuilder\u0012\u00a0\u0001\n\u0016header_value_extractor\u0018\u0001 \u0001(\u000b2~.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\u0000\u001a\u00d7\u0004\n\u0014HeaderValueExtractor\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\u0019\n\u0011element_separator\u0018\u0002 \u0001(\t\u0012\u000f\n\u0005index\u0018\u0003 \u0001(\rH\u0000\u0012\u009c\u0001\n\u0007element\u0018\u0004 \u0001(\u000b2\u0088\u0001.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\u0000\u001a\u00cb\u0001\n\tKvElement\u0012\u001a\n\tseparator\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\u0014\n\u0003key\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001:\u008b\u0001\u009a\u00c5\u0088\u001e\u0085\u0001\n\u0082\u0001envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement:\u007f\u009a\u00c5\u0088\u001ez\nxenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorB\u000e\n\u000cextract_type:j\u009a\u00c5\u0088\u001ee\ncenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderB\u000b\n\u0004type\u0012\u0003\u00f8B\u0001:Z\u009a\u00c5\u0088\u001eU\nSenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder:J\u009a\u00c5\u0088\u001eE\nCenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutesB\u0017\n\u0010config_specifier\u0012\u0003\u00f8B\u0001\"\u00c4\u0001\n\tScopedRds\u0012N\n\u0018scoped_rds_config_source\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u001e\n\u0016srds_resources_locator\u0018\u0002 \u0001(\t:G\u009a\u00c5\u0088\u001eB\n@envoy.config.filter.network.http_connection_manager.v2.ScopedRds\"\u009c\u0002\n\nHttpFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012,\n\u000ctyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012G\n\u0010config_discovery\u0018\u0005 \u0001(\u000b2+.envoy.config.core.v3.ExtensionConfigSourceH\u0000\u0012\u0013\n\u000bis_optional\u0018\u0006 \u0001(\u0008:H\u009a\u00c5\u0088\u001eC\nAenvoy.config.filter.network.http_connection_manager.v2.HttpFilterB\r\n\u000bconfig_typeJ\u0004\u0008\u0003\u0010\u0004J\u0004\u0008\u0002\u0010\u0003R\u0006config\"\u0092\u0001\n\u0012RequestIDExtension\u0012*\n\u000ctyped_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any:P\u009a\u00c5\u0088\u001eK\nIenvoy.config.filter.network.http_connection_manager.v2.RequestIDExtension\"\u0086\u0001\n EnvoyMobileHttpConnectionManager\u0012b\n\u0006config\u0018\u0001 \u0001(\u000b2R.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManagerBq\nIio.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3B\u001aHttpConnectionManagerProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/u;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xb

    aput-object v2, v1, v13

    .line 14
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xc

    aput-object v2, v1, v13

    .line 15
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xd

    aput-object v2, v1, v13

    .line 16
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xe

    aput-object v2, v1, v13

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xf

    aput-object v2, v1, v13

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x10

    aput-object v2, v1, v13

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x11

    aput-object v2, v1, v13

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x12

    aput-object v2, v1, v13

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0x13

    aput-object v2, v1, v13

    .line 22
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->M:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "CodecType"

    const-string v14, "StatPrefix"

    const-string v15, "Rds"

    const-string v16, "RouteConfig"

    const-string v17, "ScopedRoutes"

    const-string v18, "HttpFilters"

    const-string v19, "AddUserAgent"

    const-string v20, "Tracing"

    const-string v21, "CommonHttpProtocolOptions"

    const-string v22, "HttpProtocolOptions"

    const-string v23, "Http2ProtocolOptions"

    const-string v24, "Http3ProtocolOptions"

    const-string v25, "ServerName"

    const-string v26, "ServerHeaderTransformation"

    const-string v27, "SchemeHeaderTransformation"

    const-string v28, "MaxRequestHeadersKb"

    const-string v29, "StreamIdleTimeout"

    const-string v30, "RequestTimeout"

    const-string v31, "RequestHeadersTimeout"

    const-string v32, "DrainTimeout"

    const-string v33, "DelayedCloseTimeout"

    const-string v34, "AccessLog"

    const-string v35, "UseRemoteAddress"

    const-string v36, "XffNumTrustedHops"

    const-string v37, "OriginalIpDetectionExtensions"

    const-string v38, "InternalAddressConfig"

    const-string v39, "SkipXffAppend"

    const-string v40, "Via"

    const-string v41, "GenerateRequestId"

    const-string v42, "PreserveExternalRequestId"

    const-string v43, "AlwaysSetRequestIdInResponse"

    const-string v44, "ForwardClientCertDetails"

    const-string v45, "SetCurrentClientCertDetails"

    const-string v46, "Proxy100Continue"

    const-string v47, "RepresentIpv4RemoteAddressAsIpv4MappedIpv6"

    const-string v48, "UpgradeConfigs"

    const-string v49, "NormalizePath"

    const-string v50, "MergeSlashes"

    const-string v51, "PathWithEscapedSlashesAction"

    const-string v52, "RequestIdExtension"

    const-string v53, "LocalReplyConfig"

    const-string v54, "StripMatchingHostPort"

    const-string v55, "StripAnyHostPort"

    const-string v56, "StreamErrorOnInvalidHttpMessage"

    const-string v57, "PathNormalizationOptions"

    const-string v58, "StripTrailingHostDot"

    const-string v59, "RouteSpecifier"

    const-string v60, "StripPortMode"

    filled-new-array/range {v13 .. v60}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "ClientSampling"

    const-string v14, "RandomSampling"

    const-string v15, "OverallSampling"

    const-string v16, "Verbose"

    const-string v17, "MaxPathTagLength"

    const-string v18, "CustomTags"

    const-string v19, "Provider"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "UnixSockets"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "Subject"

    const-string v14, "Cert"

    const-string v15, "Chain"

    const-string v12, "Dns"

    const-string v11, "Uri"

    filled-new-array {v13, v14, v15, v12, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v1, v11}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->i:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "UpgradeType"

    const-string v12, "Filters"

    const-string v13, "Enabled"

    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v1, v11}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->k:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ForwardingTransformation"

    const-string v11, "HttpFilterTransformation"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->m:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Mappers"

    const-string v4, "BodyFormat"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->o:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Filter"

    const-string v4, "StatusCode"

    const-string v5, "Body"

    const-string v11, "BodyFormatOverride"

    const-string v12, "HeadersToAdd"

    filled-new-array {v2, v4, v5, v11, v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->q:Lcom/google/protobuf/Descriptors$b;

    .line 40
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ConfigSource"

    const-string v4, "RouteConfigName"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->s:Lcom/google/protobuf/Descriptors$b;

    .line 42
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ScopedRouteConfigurations"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->u:Lcom/google/protobuf/Descriptors$b;

    .line 44
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v18, "Name"

    const-string v19, "ScopeKeyBuilder"

    const-string v20, "RdsConfigSource"

    const-string v21, "ScopedRouteConfigurationsList"

    const-string v22, "ScopedRds"

    const-string v23, "ConfigSpecifier"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 45
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->w:Lcom/google/protobuf/Descriptors$b;

    .line 46
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Fragments"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 47
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->y:Lcom/google/protobuf/Descriptors$b;

    .line 48
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "HeaderValueExtractor"

    const-string v4, "Type"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 49
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->A:Lcom/google/protobuf/Descriptors$b;

    .line 50
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v4, "ElementSeparator"

    const-string v5, "Index"

    const-string v6, "Element"

    const-string v7, "ExtractType"

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->C:Lcom/google/protobuf/Descriptors$b;

    .line 52
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Separator"

    const-string v4, "Key"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 53
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->E:Lcom/google/protobuf/Descriptors$b;

    .line 54
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ScopedRdsConfigSource"

    const-string v4, "SrdsResourcesLocator"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 55
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->G:Lcom/google/protobuf/Descriptors$b;

    .line 56
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "TypedConfig"

    const-string v4, "ConfigDiscovery"

    const-string v5, "IsOptional"

    const-string v6, "ConfigType"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 57
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->I:Lcom/google/protobuf/Descriptors$b;

    .line 58
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 59
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->K:Lcom/google/protobuf/Descriptors$b;

    .line 60
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Config"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->L:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 61
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 62
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 63
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 64
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Security;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 65
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 66
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 67
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 68
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->M:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 69
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 70
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 71
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 72
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 73
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 74
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 75
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 76
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 77
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/u;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 78
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 79
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 80
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 81
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 82
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 83
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 84
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 85
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 86
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 87
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 88
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 89
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->M:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
