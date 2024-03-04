package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.f1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.s;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.u;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Security;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    static final Descriptors.b E;
    static final GeneratedMessageV3.e F;
    static final Descriptors.b G;
    static final GeneratedMessageV3.e H;
    static final Descriptors.b I;
    static final GeneratedMessageV3.e J;
    static final Descriptors.b K;
    static final GeneratedMessageV3.e L;
    private static Descriptors.FileDescriptor M = Descriptors.FileDescriptor.s(new String[]{"\nYenvoy/extensions/filters/network/http_connection_manager/v3/http_connection_manager.proto\u0012;envoy.extensions.filters.network.http_connection_manager.v3\u001a)envoy/config/accesslog/v3/accesslog.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a$envoy/config/core/v3/extension.proto\u001a#envoy/config/core/v3/protocol.proto\u001a5envoy/config/core/v3/substitution_format_string.proto\u001a!envoy/config/route/v3/route.proto\u001a(envoy/config/route/v3/scoped_route.proto\u001a'envoy/config/trace/v3/http_tracer.proto\u001a,envoy/type/http/v3/path_transformation.proto\u001a&envoy/type/tracing/v3/custom_tag.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u009b+\n\u0015HttpConnectionManager\u0012z\n\ncodec_type\u0018\u0001 \u0001(\u000e2\\.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.CodecTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bstat_prefix\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012O\n\u0003rds\u0018\u0003 \u0001(\u000b2@.envoy.extensions.filters.network.http_connection_manager.v3.RdsH\u0000\u0012A\n\froute_config\u0018\u0004 \u0001(\u000b2).envoy.config.route.v3.RouteConfigurationH\u0000\u0012b\n\rscoped_routes\u0018\u001f \u0001(\u000b2I.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutesH\u0000\u0012]\n\fhttp_filters\u0018\u0005 \u0003(\u000b2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter\u00122\n\u000eadd_user_agent\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012k\n\u0007tracing\u0018\u0007 \u0001(\u000b2Z.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing\u0012X\n\u001ccommon_http_protocol_options\u0018# \u0001(\u000b2).envoy.config.core.v3.HttpProtocolOptionsB\u0007\u008a\u0093·*\u0002\b\u0001\u0012I\n\u0015http_protocol_options\u0018\b \u0001(\u000b2*.envoy.config.core.v3.Http1ProtocolOptions\u0012S\n\u0016http2_protocol_options\u0018\t \u0001(\u000b2*.envoy.config.core.v3.Http2ProtocolOptionsB\u0007\u008a\u0093·*\u0002\b\u0001\u0012J\n\u0016http3_protocol_options\u0018, \u0001(\u000b2*.envoy.config.core.v3.Http3ProtocolOptions\u0012 \n\u000bserver_name\u0018\n \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u0012\u009d\u0001\n\u001cserver_header_transformation\u0018\" \u0001(\u000e2m.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ServerHeaderTransformationB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012V\n\u001cscheme_header_transformation\u00180 \u0001(\u000b20.envoy.config.core.v3.SchemeHeaderTransformation\u0012H\n\u0016max_request_headers_kb\u0018\u001d \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\núB\u0007*\u0005\u0018\u0080@ \u0000\u0012?\n\u0013stream_idle_timeout\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0007\u008a\u0093·*\u0002\b\u0001\u0012;\n\u000frequest_timeout\u0018\u001c \u0001(\u000b2\u0019.google.protobuf.DurationB\u0007\u008a\u0093·*\u0002\b\u0001\u0012K\n\u0017request_headers_timeout\u0018) \u0001(\u000b2\u0019.google.protobuf.DurationB\u000fúB\u0005ª\u0001\u00022\u0000\u008a\u0093·*\u0002\b\u0001\u00120\n\rdrain_timeout\u0018\f \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\u0015delayed_close_timeout\u0018\u001a \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\naccess_log\u0018\r \u0003(\u000b2$.envoy.config.accesslog.v3.AccessLog\u0012?\n\u0012use_remote_address\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u0007\u008a\u0093·*\u0002\b\u0001\u0012\u001c\n\u0014xff_num_trusted_hops\u0018\u0013 \u0001(\r\u0012T\n original_ip_detection_extensions\u0018. \u0003(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012\u0089\u0001\n\u0017internal_address_config\u0018\u0019 \u0001(\u000b2h.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig\u0012\u0017\n\u000fskip_xff_append\u0018\u0015 \u0001(\b\u0012\u0018\n\u0003via\u0018\u0016 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u00127\n\u0013generate_request_id\u0018\u000f \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012$\n\u001cpreserve_external_request_id\u0018  \u0001(\b\u0012)\n!always_set_request_id_in_response\u0018% \u0001(\b\u0012\u009a\u0001\n\u001bforward_client_cert_details\u0018\u0010 \u0001(\u000e2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ForwardClientCertDetailsB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0097\u0001\n\u001fset_current_client_cert_details\u0018\u0011 \u0001(\u000b2n.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails\u0012\u001a\n\u0012proxy_100_continue\u0018\u0012 \u0001(\b\u00129\n1represent_ipv4_remote_address_as_ipv4_mapped_ipv6\u0018\u0014 \u0001(\b\u0012y\n\u000fupgrade_configs\u0018\u0017 \u0003(\u000b2`.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig\u00122\n\u000enormalize_path\u0018\u001e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0015\n\rmerge_slashes\u0018! \u0001(\b\u0012\u0099\u0001\n path_with_escaped_slashes_action\u0018- \u0001(\u000e2o.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathWithEscapedSlashesAction\u0012m\n\u0014request_id_extension\u0018$ \u0001(\u000b2O.envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtension\u0012i\n\u0012local_reply_config\u0018& \u0001(\u000b2M.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig\u00129\n\u0018strip_matching_host_port\u0018' \u0001(\bB\u0017ò\u0098þ\u008f\u0005\u0011\u0012\u000fstrip_port_mode\u0012\u001d\n\u0013strip_any_host_port\u0018* \u0001(\bH\u0001\u0012H\n$stream_error_on_invalid_http_message\u0018( \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u008f\u0001\n\u001apath_normalization_options\u0018+ \u0001(\u000b2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions\u0012\u001f\n\u0017strip_trailing_host_dot\u0018/ \u0001(\b\u001a\u0094\u0004\n\u0007Tracing\u0012/\n\u000fclient_sampling\u0018\u0003 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012/\n\u000frandom_sampling\u0018\u0004 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u00120\n\u0010overall_sampling\u0018\u0005 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012\u000f\n\u0007verbose\u0018\u0006 \u0001(\b\u00129\n\u0013max_path_tag_length\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00125\n\u000bcustom_tags\u0018\b \u0003(\u000b2 .envoy.type.tracing.v3.CustomTag\u00125\n\bprovider\u0018\t \u0001(\u000b2#.envoy.config.trace.v3.Tracing.Http\"(\n\rOperationName\u0012\u000b\n\u0007INGRESS\u0010\u0000\u0012\n\n\u0006EGRESS\u0010\u0001:[\u009aÅ\u0088\u001eV\nTenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.TracingJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0002\u0010\u0003R\u000eoperation_nameR\u0018request_headers_for_tags\u001a\u0098\u0001\n\u0015InternalAddressConfig\u0012\u0014\n\funix_sockets\u0018\u0001 \u0001(\b:i\u009aÅ\u0088\u001ed\nbenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig\u001aø\u0001\n\u001bSetCurrentClientCertDetails\u0012+\n\u0007subject\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\f\n\u0004cert\u0018\u0003 \u0001(\b\u0012\r\n\u0005chain\u0018\u0006 \u0001(\b\u0012\u000b\n\u0003dns\u0018\u0004 \u0001(\b\u0012\u000b\n\u0003uri\u0018\u0005 \u0001(\b:o\u009aÅ\u0088\u001ej\nhenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetailsJ\u0004\b\u0002\u0010\u0003\u001a\u008f\u0002\n\rUpgradeConfig\u0012\u0014\n\fupgrade_type\u0018\u0001 \u0001(\t\u0012X\n\u0007filters\u0018\u0002 \u0003(\u000b2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter\u0012+\n\u0007enabled\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue:a\u009aÅ\u0088\u001e\\\nZenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig\u001a±\u0001\n\u0018PathNormalizationOptions\u0012I\n\u0019forwarding_transformation\u0018\u0001 \u0001(\u000b2&.envoy.type.http.v3.PathTransformation\u0012J\n\u001ahttp_filter_transformation\u0018\u0002 \u0001(\u000b2&.envoy.type.http.v3.PathTransformation\"6\n\tCodecType\u0012\b\n\u0004AUTO\u0010\u0000\u0012\t\n\u0005HTTP1\u0010\u0001\u0012\t\n\u0005HTTP2\u0010\u0002\u0012\t\n\u0005HTTP3\u0010\u0003\"S\n\u001aServerHeaderTransformation\u0012\r\n\tOVERWRITE\u0010\u0000\u0012\u0014\n\u0010APPEND_IF_ABSENT\u0010\u0001\u0012\u0010\n\fPASS_THROUGH\u0010\u0002\"y\n\u0018ForwardClientCertDetails\u0012\f\n\bSANITIZE\u0010\u0000\u0012\u0010\n\fFORWARD_ONLY\u0010\u0001\u0012\u0012\n\u000eAPPEND_FORWARD\u0010\u0002\u0012\u0010\n\fSANITIZE_SET\u0010\u0003\u0012\u0017\n\u0013ALWAYS_FORWARD_ONLY\u0010\u0004\" \u0001\n\u001cPathWithEscapedSlashesAction\u0012#\n\u001fIMPLEMENTATION_SPECIFIC_DEFAULT\u0010\u0000\u0012\u0012\n\u000eKEEP_UNCHANGED\u0010\u0001\u0012\u0012\n\u000eREJECT_REQUEST\u0010\u0002\u0012\u0019\n\u0015UNESCAPE_AND_REDIRECT\u0010\u0003\u0012\u0018\n\u0014UNESCAPE_AND_FORWARD\u0010\u0004:S\u009aÅ\u0088\u001eN\nLenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManagerB\u0016\n\u000froute_specifier\u0012\u0003øB\u0001B\u0011\n\u000fstrip_port_modeJ\u0004\b\u001b\u0010\u001cJ\u0004\b\u000b\u0010\fR\fidle_timeout\"µ\u0001\n\u0010LocalReplyConfig\u0012\\\n\u0007mappers\u0018\u0001 \u0003(\u000b2K.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper\u0012C\n\u000bbody_format\u0018\u0002 \u0001(\u000b2..envoy.config.core.v3.SubstitutionFormatString\"à\u0002\n\u000eResponseMapper\u0012D\n\u0006filter\u0018\u0001 \u0001(\u000b2*.envoy.config.accesslog.v3.AccessLogFilterB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012>\n\u000bstatus_code\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000búB\b*\u0006\u0010Ø\u0004(È\u0001\u0012.\n\u0004body\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012L\n\u0014body_format_override\u0018\u0004 \u0001(\u000b2..envoy.config.core.v3.SubstitutionFormatString\u0012J\n\u000eheaders_to_add\u0018\u0005 \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\"¨\u0001\n\u0003Rds\u0012C\n\rconfig_source\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0019\n\u0011route_config_name\u0018\u0002 \u0001(\t:A\u009aÅ\u0088\u001e<\n:envoy.config.filter.network.http_connection_manager.v2.Rds\"Ü\u0001\n\u001dScopedRouteConfigurationsList\u0012^\n\u001bscoped_route_configurations\u0018\u0001 \u0003(\u000b2/.envoy.config.route.v3.ScopedRouteConfigurationB\búB\u0005\u0092\u0001\u0002\b\u0001:[\u009aÅ\u0088\u001eV\nTenvoy.config.filter.network.http_connection_manager.v2.ScopedRouteConfigurationsList\"½\r\n\fScopedRoutes\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012~\n\u0011scope_key_builder\u0018\u0002 \u0001(\u000b2Y.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilderB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012G\n\u0011rds_config_source\u0018\u0003 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0086\u0001\n scoped_route_configurations_list\u0018\u0004 \u0001(\u000b2Z.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRouteConfigurationsListH\u0000\u0012\\\n\nscoped_rds\u0018\u0005 \u0001(\u000b2F.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRdsH\u0000\u001a\u0080\t\n\u000fScopeKeyBuilder\u0012\u0086\u0001\n\tfragments\u0018\u0001 \u0003(\u000b2i.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderB\búB\u0005\u0092\u0001\u0002\b\u0001\u001a\u0087\u0007\n\u000fFragmentBuilder\u0012 \u0001\n\u0016header_value_extractor\u0018\u0001 \u0001(\u000b2~.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\u0000\u001a×\u0004\n\u0014HeaderValueExtractor\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0019\n\u0011element_separator\u0018\u0002 \u0001(\t\u0012\u000f\n\u0005index\u0018\u0003 \u0001(\rH\u0000\u0012\u009c\u0001\n\u0007element\u0018\u0004 \u0001(\u000b2\u0088\u0001.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\u0000\u001aË\u0001\n\tKvElement\u0012\u001a\n\tseparator\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0014\n\u0003key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:\u008b\u0001\u009aÅ\u0088\u001e\u0085\u0001\n\u0082\u0001envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement:\u007f\u009aÅ\u0088\u001ez\nxenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorB\u000e\n\fextract_type:j\u009aÅ\u0088\u001ee\ncenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderB\u000b\n\u0004type\u0012\u0003øB\u0001:Z\u009aÅ\u0088\u001eU\nSenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder:J\u009aÅ\u0088\u001eE\nCenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutesB\u0017\n\u0010config_specifier\u0012\u0003øB\u0001\"Ä\u0001\n\tScopedRds\u0012N\n\u0018scoped_rds_config_source\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u001e\n\u0016srds_resources_locator\u0018\u0002 \u0001(\t:G\u009aÅ\u0088\u001eB\n@envoy.config.filter.network.http_connection_manager.v2.ScopedRds\"\u009c\u0002\n\nHttpFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012G\n\u0010config_discovery\u0018\u0005 \u0001(\u000b2+.envoy.config.core.v3.ExtensionConfigSourceH\u0000\u0012\u0013\n\u000bis_optional\u0018\u0006 \u0001(\b:H\u009aÅ\u0088\u001eC\nAenvoy.config.filter.network.http_connection_manager.v2.HttpFilterB\r\n\u000bconfig_typeJ\u0004\b\u0003\u0010\u0004J\u0004\b\u0002\u0010\u0003R\u0006config\"\u0092\u0001\n\u0012RequestIDExtension\u0012*\n\ftyped_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any:P\u009aÅ\u0088\u001eK\nIenvoy.config.filter.network.http_connection_manager.v2.RequestIDExtension\"\u0086\u0001\n EnvoyMobileHttpConnectionManager\u0012b\n\u0006config\u0018\u0001 \u0001(\u000b2R.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManagerBq\nIio.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3B\u001aHttpConnectionManagerProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), l.a(), v.a(), n0.a(), f1.a(), s.a(), u.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), com.google.protobuf.g.a(), w.a(), p3.a(), Migrate.g(), Security.c(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49877a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49878b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49879c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49880d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49881e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49882f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f49883g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f49884h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f49885i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f49886j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f49887k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f49888l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f49889m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f49890n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f49891o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f49892p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f49893q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f49894r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f49895s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f49896t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f49897u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f49898v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f49899w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f49900x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f49901y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f49902z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f49877a = bVar;
        f49878b = new GeneratedMessageV3.e(bVar, new String[]{"CodecType", "StatPrefix", "Rds", "RouteConfig", "ScopedRoutes", "HttpFilters", "AddUserAgent", "Tracing", "CommonHttpProtocolOptions", "HttpProtocolOptions", "Http2ProtocolOptions", "Http3ProtocolOptions", "ServerName", "ServerHeaderTransformation", "SchemeHeaderTransformation", "MaxRequestHeadersKb", "StreamIdleTimeout", "RequestTimeout", "RequestHeadersTimeout", "DrainTimeout", "DelayedCloseTimeout", "AccessLog", "UseRemoteAddress", "XffNumTrustedHops", "OriginalIpDetectionExtensions", "InternalAddressConfig", "SkipXffAppend", "Via", "GenerateRequestId", "PreserveExternalRequestId", "AlwaysSetRequestIdInResponse", "ForwardClientCertDetails", "SetCurrentClientCertDetails", "Proxy100Continue", "RepresentIpv4RemoteAddressAsIpv4MappedIpv6", "UpgradeConfigs", "NormalizePath", "MergeSlashes", "PathWithEscapedSlashesAction", "RequestIdExtension", "LocalReplyConfig", "StripMatchingHostPort", "StripAnyHostPort", "StreamErrorOnInvalidHttpMessage", "PathNormalizationOptions", "StripTrailingHostDot", "RouteSpecifier", "StripPortMode"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49879c = bVar2;
        f49880d = new GeneratedMessageV3.e(bVar2, new String[]{"ClientSampling", "RandomSampling", "OverallSampling", "Verbose", "MaxPathTagLength", "CustomTags", "Provider"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f49881e = bVar3;
        f49882f = new GeneratedMessageV3.e(bVar3, new String[]{"UnixSockets"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f49883g = bVar4;
        f49884h = new GeneratedMessageV3.e(bVar4, new String[]{"Subject", "Cert", "Chain", "Dns", "Uri"});
        Descriptors.b bVar5 = bVar.o().get(3);
        f49885i = bVar5;
        f49886j = new GeneratedMessageV3.e(bVar5, new String[]{"UpgradeType", "Filters", "Enabled"});
        Descriptors.b bVar6 = bVar.o().get(4);
        f49887k = bVar6;
        f49888l = new GeneratedMessageV3.e(bVar6, new String[]{"ForwardingTransformation", "HttpFilterTransformation"});
        Descriptors.b bVar7 = a().m().get(1);
        f49889m = bVar7;
        f49890n = new GeneratedMessageV3.e(bVar7, new String[]{"Mappers", "BodyFormat"});
        Descriptors.b bVar8 = a().m().get(2);
        f49891o = bVar8;
        f49892p = new GeneratedMessageV3.e(bVar8, new String[]{"Filter", "StatusCode", "Body", "BodyFormatOverride", "HeadersToAdd"});
        Descriptors.b bVar9 = a().m().get(3);
        f49893q = bVar9;
        f49894r = new GeneratedMessageV3.e(bVar9, new String[]{"ConfigSource", "RouteConfigName"});
        Descriptors.b bVar10 = a().m().get(4);
        f49895s = bVar10;
        f49896t = new GeneratedMessageV3.e(bVar10, new String[]{"ScopedRouteConfigurations"});
        Descriptors.b bVar11 = a().m().get(5);
        f49897u = bVar11;
        f49898v = new GeneratedMessageV3.e(bVar11, new String[]{"Name", "ScopeKeyBuilder", "RdsConfigSource", "ScopedRouteConfigurationsList", "ScopedRds", "ConfigSpecifier"});
        Descriptors.b bVar12 = bVar11.o().get(0);
        f49899w = bVar12;
        f49900x = new GeneratedMessageV3.e(bVar12, new String[]{"Fragments"});
        Descriptors.b bVar13 = bVar12.o().get(0);
        f49901y = bVar13;
        f49902z = new GeneratedMessageV3.e(bVar13, new String[]{"HeaderValueExtractor", "Type"});
        Descriptors.b bVar14 = bVar13.o().get(0);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Name", "ElementSeparator", "Index", "Element", "ExtractType"});
        Descriptors.b bVar15 = bVar14.o().get(0);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Separator", "Key"});
        Descriptors.b bVar16 = a().m().get(6);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"ScopedRdsConfigSource", "SrdsResourcesLocator"});
        Descriptors.b bVar17 = a().m().get(7);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Name", "TypedConfig", "ConfigDiscovery", "IsOptional", "ConfigType"});
        Descriptors.b bVar18 = a().m().get(8);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"TypedConfig"});
        Descriptors.b bVar19 = a().m().get(9);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"Config"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50818b);
        k10.f(Status.f50839a);
        k10.f(Security.f50833a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(M, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        l.a();
        v.a();
        n0.a();
        f1.a();
        s.a();
        u.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        com.google.protobuf.g.a();
        w.a();
        p3.a();
        Migrate.g();
        Security.c();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return M;
    }
}
