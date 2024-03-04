package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class l {
    static final Descriptors.b A;
    static final Descriptors.b A0;
    static final GeneratedMessageV3.e B;
    static final GeneratedMessageV3.e B0;
    static final Descriptors.b C;
    static final Descriptors.b C0;
    static final GeneratedMessageV3.e D;
    static final GeneratedMessageV3.e D0;
    static final Descriptors.b E;
    static final Descriptors.b E0;
    static final GeneratedMessageV3.e F;
    static final GeneratedMessageV3.e F0;
    static final Descriptors.b G;
    static final Descriptors.b G0;
    static final GeneratedMessageV3.e H;
    static final GeneratedMessageV3.e H0;
    static final Descriptors.b I;
    static final Descriptors.b I0;
    static final GeneratedMessageV3.e J;
    static final GeneratedMessageV3.e J0;
    static final Descriptors.b K;
    private static Descriptors.FileDescriptor K0 = Descriptors.FileDescriptor.s(new String[]{"\n)envoy/api/v2/route/route_components.proto\u0012\u0012envoy.api.v2.route\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u001eenvoy/type/matcher/regex.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a\u0018envoy/type/percent.proto\u001a\u0016envoy/type/range.proto\u001a&envoy/type/tracing/v2/custom_tag.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"§\n\n\u000bVirtualHost\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012#\n\u0007domains\u0018\u0002 \u0003(\tB\u0012úB\u000f\u0092\u0001\f\b\u0001\"\br\u0006À\u0001\u0002È\u0001\u0000\u0012)\n\u0006routes\u0018\u0003 \u0003(\u000b2\u0019.envoy.api.v2.route.Route\u0012Q\n\u000brequire_tls\u0018\u0004 \u0001(\u000e22.envoy.api.v2.route.VirtualHost.TlsRequirementTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012<\n\u0010virtual_clusters\u0018\u0005 \u0003(\u000b2\".envoy.api.v2.route.VirtualCluster\u00122\n\u000brate_limits\u0018\u0006 \u0003(\u000b2\u001d.envoy.api.v2.route.RateLimit\u0012O\n\u0016request_headers_to_add\u0018\u0007 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u0012!\n\u0019request_headers_to_remove\u0018\r \u0003(\t\u0012P\n\u0017response_headers_to_add\u0018\n \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u0012\"\n\u001aresponse_headers_to_remove\u0018\u000b \u0003(\t\u0012,\n\u0004cors\u0018\b \u0001(\u000b2\u001e.envoy.api.v2.route.CorsPolicy\u0012S\n\u0011per_filter_config\u0018\f \u0003(\u000b24.envoy.api.v2.route.VirtualHost.PerFilterConfigEntryB\u0002\u0018\u0001\u0012Z\n\u0017typed_per_filter_config\u0018\u000f \u0003(\u000b29.envoy.api.v2.route.VirtualHost.TypedPerFilterConfigEntry\u0012%\n\u001dinclude_request_attempt_count\u0018\u000e \u0001(\b\u0012)\n!include_attempt_count_in_response\u0018\u0013 \u0001(\b\u00125\n\fretry_policy\u0018\u0010 \u0001(\u000b2\u001f.envoy.api.v2.route.RetryPolicy\u00127\n\u0019retry_policy_typed_config\u0018\u0014 \u0001(\u000b2\u0014.google.protobuf.Any\u00125\n\fhedge_policy\u0018\u0011 \u0001(\u000b2\u001f.envoy.api.v2.route.HedgePolicy\u0012D\n\u001eper_request_buffer_limit_bytes\u0018\u0012 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001aO\n\u0014PerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\u001aQ\n\u0019TypedPerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001\":\n\u0012TlsRequirementType\u0012\b\n\u0004NONE\u0010\u0000\u0012\u0011\n\rEXTERNAL_ONLY\u0010\u0001\u0012\u0007\n\u0003ALL\u0010\u0002J\u0004\b\t\u0010\n\"4\n\fFilterAction\u0012$\n\u0006action\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\"Õ\b\n\u0005Route\u0012\f\n\u0004name\u0018\u000e \u0001(\t\u00127\n\u0005match\u0018\u0001 \u0001(\u000b2\u001e.envoy.api.v2.route.RouteMatchB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u00120\n\u0005route\u0018\u0002 \u0001(\u000b2\u001f.envoy.api.v2.route.RouteActionH\u0000\u00126\n\bredirect\u0018\u0003 \u0001(\u000b2\".envoy.api.v2.route.RedirectActionH\u0000\u0012C\n\u000fdirect_response\u0018\u0007 \u0001(\u000b2(.envoy.api.v2.route.DirectResponseActionH\u0000\u00129\n\rfilter_action\u0018\u0011 \u0001(\u000b2 .envoy.api.v2.route.FilterActionH\u0000\u0012-\n\bmetadata\u0018\u0004 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u00120\n\tdecorator\u0018\u0005 \u0001(\u000b2\u001d.envoy.api.v2.route.Decorator\u0012M\n\u0011per_filter_config\u0018\b \u0003(\u000b2..envoy.api.v2.route.Route.PerFilterConfigEntryB\u0002\u0018\u0001\u0012T\n\u0017typed_per_filter_config\u0018\r \u0003(\u000b23.envoy.api.v2.route.Route.TypedPerFilterConfigEntry\u0012O\n\u0016request_headers_to_add\u0018\t \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u0012!\n\u0019request_headers_to_remove\u0018\f \u0003(\t\u0012P\n\u0017response_headers_to_add\u0018\n \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u0012\"\n\u001aresponse_headers_to_remove\u0018\u000b \u0003(\t\u0012,\n\u0007tracing\u0018\u000f \u0001(\u000b2\u001b.envoy.api.v2.route.Tracing\u0012D\n\u001eper_request_buffer_limit_bytes\u0018\u0010 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001aO\n\u0014PerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\u001aQ\n\u0019TypedPerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001B\r\n\u0006action\u0012\u0003øB\u0001J\u0004\b\u0006\u0010\u0007\"®\u0007\n\u000fWeightedCluster\u0012M\n\bclusters\u0018\u0001 \u0003(\u000b21.envoy.api.v2.route.WeightedCluster.ClusterWeightB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012;\n\ftotal_weight\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012\u001a\n\u0012runtime_key_prefix\u0018\u0002 \u0001(\t\u001aò\u0005\n\rClusterWeight\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012,\n\u0006weight\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00123\n\u000emetadata_match\u0018\u0003 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012O\n\u0016request_headers_to_add\u0018\u0004 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u0012!\n\u0019request_headers_to_remove\u0018\t \u0003(\t\u0012P\n\u0017response_headers_to_add\u0018\u0005 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u0012\"\n\u001aresponse_headers_to_remove\u0018\u0006 \u0003(\t\u0012e\n\u0011per_filter_config\u0018\b \u0003(\u000b2F.envoy.api.v2.route.WeightedCluster.ClusterWeight.PerFilterConfigEntryB\u0002\u0018\u0001\u0012l\n\u0017typed_per_filter_config\u0018\n \u0003(\u000b2K.envoy.api.v2.route.WeightedCluster.ClusterWeight.TypedPerFilterConfigEntry\u001aO\n\u0014PerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\u001aQ\n\u0019TypedPerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001J\u0004\b\u0007\u0010\b\"Å\u0005\n\nRouteMatch\u0012\u0010\n\u0006prefix\u0018\u0001 \u0001(\tH\u0000\u0012\u000e\n\u0004path\u0018\u0002 \u0001(\tH\u0000\u0012!\n\u0005regex\u0018\u0003 \u0001(\tB\u0010\u0018\u0001úB\u0005r\u0003(\u0080\b¸îòÒ\u0005\u0001H\u0000\u0012@\n\nsafe_regex\u0018\n \u0001(\u000b2 .envoy.type.matcher.RegexMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u00122\n\u000ecase_sensitive\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012E\n\u0010runtime_fraction\u0018\t \u0001(\u000b2+.envoy.api.v2.core.RuntimeFractionalPercent\u00122\n\u0007headers\u0018\u0006 \u0003(\u000b2!.envoy.api.v2.route.HeaderMatcher\u0012C\n\u0010query_parameters\u0018\u0007 \u0003(\u000b2).envoy.api.v2.route.QueryParameterMatcher\u0012B\n\u0004grpc\u0018\b \u0001(\u000b24.envoy.api.v2.route.RouteMatch.GrpcRouteMatchOptions\u0012J\n\u000btls_context\u0018\u000b \u0001(\u000b25.envoy.api.v2.route.RouteMatch.TlsContextMatchOptions\u001a\u0017\n\u0015GrpcRouteMatchOptions\u001av\n\u0016TlsContextMatchOptions\u0012-\n\tpresented\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012-\n\tvalidated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u0015\n\u000epath_specifier\u0012\u0003øB\u0001J\u0004\b\u0005\u0010\u0006\"\u0087\u0004\n\nCorsPolicy\u0012\u001e\n\fallow_origin\u0018\u0001 \u0003(\tB\b\u0018\u0001¸îòÒ\u0005\u0001\u0012+\n\u0012allow_origin_regex\u0018\b \u0003(\tB\u000f\u0018\u0001úB\n\u0092\u0001\u0007\"\u0005r\u0003(\u0080\b\u0012D\n\u0019allow_origin_string_match\u0018\u000b \u0003(\u000b2!.envoy.type.matcher.StringMatcher\u0012\u0015\n\rallow_methods\u0018\u0002 \u0001(\t\u0012\u0015\n\rallow_headers\u0018\u0003 \u0001(\t\u0012\u0016\n\u000eexpose_headers\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007max_age\u0018\u0005 \u0001(\t\u00125\n\u0011allow_credentials\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00127\n\u0007enabled\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\b\u0018\u0001¸îòÒ\u0005\u0001H\u0000\u0012E\n\u000efilter_enabled\u0018\t \u0001(\u000b2+.envoy.api.v2.core.RuntimeFractionalPercentH\u0000\u0012C\n\u000eshadow_enabled\u0018\n \u0001(\u000b2+.envoy.api.v2.core.RuntimeFractionalPercentB\u0013\n\u0011enabled_specifier\"÷\u0016\n\u000bRouteAction\u0012\u001a\n\u0007cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000\u0012'\n\u000ecluster_header\u0018\u0002 \u0001(\tB\rúB\nr\b \u0001À\u0001\u0001È\u0001\u0000H\u0000\u0012@\n\u0011weighted_clusters\u0018\u0003 \u0001(\u000b2#.envoy.api.v2.route.WeightedClusterH\u0000\u0012n\n\u001fcluster_not_found_response_code\u0018\u0014 \u0001(\u000e2;.envoy.api.v2.route.RouteAction.ClusterNotFoundResponseCodeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00123\n\u000emetadata_match\u0018\u0004 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012#\n\u000eprefix_rewrite\u0018\u0005 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u0012B\n\rregex_rewrite\u0018  \u0001(\u000b2+.envoy.type.matcher.RegexMatchAndSubstitute\u0012?\n\fhost_rewrite\u0018\u0006 \u0001(\tB'úB\br\u0006À\u0001\u0002È\u0001\u0000ò\u0098þ\u008f\u0005\u0016\n\u0014host_rewrite_literalH\u0001\u00127\n\u0011auto_host_rewrite\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValueH\u0001\u0012J\n\u0018auto_host_rewrite_header\u0018\u001d \u0001(\tB&úB\br\u0006À\u0001\u0001È\u0001\u0000ò\u0098þ\u008f\u0005\u0015\n\u0013host_rewrite_headerH\u0001\u0012*\n\u0007timeout\u0018\b \u0001(\u000b2\u0019.google.protobuf.Duration\u0012/\n\fidle_timeout\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.Duration\u00125\n\fretry_policy\u0018\t \u0001(\u000b2\u001f.envoy.api.v2.route.RetryPolicy\u00127\n\u0019retry_policy_typed_config\u0018! \u0001(\u000b2\u0014.google.protobuf.Any\u0012V\n\u0015request_mirror_policy\u0018\n \u0001(\u000b23.envoy.api.v2.route.RouteAction.RequestMirrorPolicyB\u0002\u0018\u0001\u0012T\n\u0017request_mirror_policies\u0018\u001e \u0003(\u000b23.envoy.api.v2.route.RouteAction.RequestMirrorPolicy\u0012>\n\bpriority\u0018\u000b \u0001(\u000e2\".envoy.api.v2.core.RoutingPriorityB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00122\n\u000brate_limits\u0018\r \u0003(\u000b2\u001d.envoy.api.v2.route.RateLimit\u0012:\n\u0016include_vh_rate_limits\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012?\n\u000bhash_policy\u0018\u000f \u0003(\u000b2*.envoy.api.v2.route.RouteAction.HashPolicy\u0012,\n\u0004cors\u0018\u0011 \u0001(\u000b2\u001e.envoy.api.v2.route.CorsPolicy\u00123\n\u0010max_grpc_timeout\u0018\u0017 \u0001(\u000b2\u0019.google.protobuf.Duration\u00126\n\u0013grpc_timeout_offset\u0018\u001c \u0001(\u000b2\u0019.google.protobuf.Duration\u0012F\n\u000fupgrade_configs\u0018\u0019 \u0003(\u000b2-.envoy.api.v2.route.RouteAction.UpgradeConfig\u0012X\n\u0018internal_redirect_action\u0018\u001a \u0001(\u000e26.envoy.api.v2.route.RouteAction.InternalRedirectAction\u0012<\n\u0016max_internal_redirects\u0018\u001f \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00125\n\fhedge_policy\u0018\u001b \u0001(\u000b2\u001f.envoy.api.v2.route.HedgePolicy\u001aÈ\u0001\n\u0013RequestMirrorPolicy\u0012\u0018\n\u0007cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u001d\n\u000bruntime_key\u0018\u0002 \u0001(\tB\b\u0018\u0001¸îòÒ\u0005\u0001\u0012E\n\u0010runtime_fraction\u0018\u0003 \u0001(\u000b2+.envoy.api.v2.core.RuntimeFractionalPercent\u00121\n\rtrace_sampled\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u001aÇ\u0005\n\nHashPolicy\u0012C\n\u0006header\u0018\u0001 \u0001(\u000b21.envoy.api.v2.route.RouteAction.HashPolicy.HeaderH\u0000\u0012C\n\u0006cookie\u0018\u0002 \u0001(\u000b21.envoy.api.v2.route.RouteAction.HashPolicy.CookieH\u0000\u0012`\n\u0015connection_properties\u0018\u0003 \u0001(\u000b2?.envoy.api.v2.route.RouteAction.HashPolicy.ConnectionPropertiesH\u0000\u0012T\n\u000fquery_parameter\u0018\u0005 \u0001(\u000b29.envoy.api.v2.route.RouteAction.HashPolicy.QueryParameterH\u0000\u0012N\n\ffilter_state\u0018\u0006 \u0001(\u000b26.envoy.api.v2.route.RouteAction.HashPolicy.FilterStateH\u0000\u0012\u0010\n\bterminal\u0018\u0004 \u0001(\b\u001a,\n\u0006Header\u0012\"\n\u000bheader_name\u0018\u0001 \u0001(\tB\rúB\nr\b \u0001À\u0001\u0001È\u0001\u0000\u001aU\n\u0006Cookie\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012&\n\u0003ttl\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\f\n\u0004path\u0018\u0003 \u0001(\t\u001a)\n\u0014ConnectionProperties\u0012\u0011\n\tsource_ip\u0018\u0001 \u0001(\b\u001a'\n\u000eQueryParameter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u001a#\n\u000bFilterState\u0012\u0014\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001B\u0017\n\u0010policy_specifier\u0012\u0003øB\u0001\u001a_\n\rUpgradeConfig\u0012!\n\fupgrade_type\u0018\u0001 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u0012+\n\u0007enabled\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"E\n\u001bClusterNotFoundResponseCode\u0012\u0017\n\u0013SERVICE_UNAVAILABLE\u0010\u0000\u0012\r\n\tNOT_FOUND\u0010\u0001\"Z\n\u0016InternalRedirectAction\u0012\"\n\u001ePASS_THROUGH_INTERNAL_REDIRECT\u0010\u0000\u0012\u001c\n\u0018HANDLE_INTERNAL_REDIRECT\u0010\u0001B\u0018\n\u0011cluster_specifier\u0012\u0003øB\u0001B\u0018\n\u0016host_rewrite_specifierJ\u0004\b\f\u0010\rJ\u0004\b\u0012\u0010\u0013J\u0004\b\u0013\u0010\u0014J\u0004\b\u0010\u0010\u0011J\u0004\b\u0016\u0010\u0017J\u0004\b\u0015\u0010\u0016\"í\u0007\n\u000bRetryPolicy\u0012\u0010\n\bretry_on\u0018\u0001 \u0001(\t\u00121\n\u000bnum_retries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00122\n\u000fper_try_timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012E\n\u000eretry_priority\u0018\u0004 \u0001(\u000b2-.envoy.api.v2.route.RetryPolicy.RetryPriority\u0012P\n\u0014retry_host_predicate\u0018\u0005 \u0003(\u000b22.envoy.api.v2.route.RetryPolicy.RetryHostPredicate\u0012)\n!host_selection_retry_max_attempts\u0018\u0006 \u0001(\u0003\u0012\u001e\n\u0016retriable_status_codes\u0018\u0007 \u0003(\r\u0012D\n\u000eretry_back_off\u0018\b \u0001(\u000b2,.envoy.api.v2.route.RetryPolicy.RetryBackOff\u0012<\n\u0011retriable_headers\u0018\t \u0003(\u000b2!.envoy.api.v2.route.HeaderMatcher\u0012D\n\u0019retriable_request_headers\u0018\n \u0003(\u000b2!.envoy.api.v2.route.HeaderMatcher\u001a\u0092\u0001\n\rRetryPriority\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\u001a\u0097\u0001\n\u0012RetryHostPredicate\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\u001a\u0087\u0001\n\fRetryBackOff\u0012<\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u0001*\u0000\u00129\n\fmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\"²\u0001\n\u000bHedgePolicy\u0012?\n\u0010initial_requests\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012@\n\u0019additional_request_chance\u0018\u0002 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u0012 \n\u0018hedge_on_per_try_timeout\u0018\u0003 \u0001(\b\"ë\u0003\n\u000eRedirectAction\u0012\u0018\n\u000ehttps_redirect\u0018\u0004 \u0001(\bH\u0000\u0012\u0019\n\u000fscheme_redirect\u0018\u0007 \u0001(\tH\u0000\u0012\"\n\rhost_redirect\u0018\u0001 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u0012\u0015\n\rport_redirect\u0018\b \u0001(\r\u0012$\n\rpath_redirect\u0018\u0002 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000H\u0001\u0012%\n\u000eprefix_rewrite\u0018\u0005 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000H\u0001\u0012X\n\rresponse_code\u0018\u0003 \u0001(\u000e27.envoy.api.v2.route.RedirectAction.RedirectResponseCodeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bstrip_query\u0018\u0006 \u0001(\b\"w\n\u0014RedirectResponseCode\u0012\u0015\n\u0011MOVED_PERMANENTLY\u0010\u0000\u0012\t\n\u0005FOUND\u0010\u0001\u0012\r\n\tSEE_OTHER\u0010\u0002\u0012\u0016\n\u0012TEMPORARY_REDIRECT\u0010\u0003\u0012\u0016\n\u0012PERMANENT_REDIRECT\u0010\u0004B\u001a\n\u0018scheme_rewrite_specifierB\u0018\n\u0016path_rewrite_specifier\"_\n\u0014DirectResponseAction\u0012\u001a\n\u0006status\u0018\u0001 \u0001(\rB\núB\u0007*\u0005\u0010Ø\u0004(d\u0012+\n\u0004body\u0018\u0002 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\"V\n\tDecorator\u0012\u001a\n\toperation\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\tpropagate\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"é\u0001\n\u0007Tracing\u00126\n\u000fclient_sampling\u0018\u0001 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u00126\n\u000frandom_sampling\u0018\u0002 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u00127\n\u0010overall_sampling\u0018\u0003 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u00125\n\u000bcustom_tags\u0018\u0004 \u0003(\u000b2 .envoy.type.tracing.v2.CustomTag\"º\u0001\n\u000eVirtualCluster\u0012!\n\u0007pattern\u0018\u0001 \u0001(\tB\u0010\u0018\u0001úB\u0005r\u0003(\u0080\b¸îòÒ\u0005\u0001\u00122\n\u0007headers\u0018\u0004 \u0003(\u000b2!.envoy.api.v2.route.HeaderMatcher\u0012\u0015\n\u0004name\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012:\n\u0006method\u0018\u0003 \u0001(\u000e2 .envoy.api.v2.core.RequestMethodB\b\u0018\u0001¸îòÒ\u0005\u0001\"\u0084\b\n\tRateLimit\u00124\n\u0005stage\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018\n\u0012\u0013\n\u000bdisable_key\u0018\u0002 \u0001(\t\u0012?\n\u0007actions\u0018\u0003 \u0003(\u000b2$.envoy.api.v2.route.RateLimit.ActionB\búB\u0005\u0092\u0001\u0002\b\u0001\u001aê\u0006\n\u0006Action\u0012L\n\u000esource_cluster\u0018\u0001 \u0001(\u000b22.envoy.api.v2.route.RateLimit.Action.SourceClusterH\u0000\u0012V\n\u0013destination_cluster\u0018\u0002 \u0001(\u000b27.envoy.api.v2.route.RateLimit.Action.DestinationClusterH\u0000\u0012N\n\u000frequest_headers\u0018\u0003 \u0001(\u000b23.envoy.api.v2.route.RateLimit.Action.RequestHeadersH\u0000\u0012L\n\u000eremote_address\u0018\u0004 \u0001(\u000b22.envoy.api.v2.route.RateLimit.Action.RemoteAddressH\u0000\u0012F\n\u000bgeneric_key\u0018\u0005 \u0001(\u000b2/.envoy.api.v2.route.RateLimit.Action.GenericKeyH\u0000\u0012S\n\u0012header_value_match\u0018\u0006 \u0001(\u000b25.envoy.api.v2.route.RateLimit.Action.HeaderValueMatchH\u0000\u001a\u000f\n\rSourceCluster\u001a\u0014\n\u0012DestinationCluster\u001aU\n\u000eRequestHeaders\u0012\"\n\u000bheader_name\u0018\u0001 \u0001(\tB\rúB\nr\b \u0001À\u0001\u0001È\u0001\u0000\u0012\u001f\n\u000edescriptor_key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u001a\u000f\n\rRemoteAddress\u001a/\n\nGenericKey\u0012!\n\u0010descriptor_value\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u001a¥\u0001\n\u0010HeaderValueMatch\u0012!\n\u0010descriptor_value\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u00120\n\fexpect_match\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012<\n\u0007headers\u0018\u0003 \u0003(\u000b2!.envoy.api.v2.route.HeaderMatcherB\búB\u0005\u0092\u0001\u0002\b\u0001B\u0017\n\u0010action_specifier\u0012\u0003øB\u0001\"ð\u0002\n\rHeaderMatcher\u0012\u001b\n\u0004name\u0018\u0001 \u0001(\tB\rúB\nr\b \u0001À\u0001\u0001È\u0001\u0000\u0012\u0015\n\u000bexact_match\u0018\u0004 \u0001(\tH\u0000\u0012'\n\u000bregex_match\u0018\u0005 \u0001(\tB\u0010\u0018\u0001úB\u0005r\u0003(\u0080\b¸îòÒ\u0005\u0001H\u0000\u0012<\n\u0010safe_regex_match\u0018\u000b \u0001(\u000b2 .envoy.type.matcher.RegexMatcherH\u0000\u0012-\n\u000brange_match\u0018\u0006 \u0001(\u000b2\u0016.envoy.type.Int64RangeH\u0000\u0012\u0017\n\rpresent_match\u0018\u0007 \u0001(\bH\u0000\u0012\u001f\n\fprefix_match\u0018\t \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000\u0012\u001f\n\fsuffix_match\u0018\n \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000\u0012\u0014\n\finvert_match\u0018\b \u0001(\bB\u0018\n\u0016header_match_specifierJ\u0004\b\u0002\u0010\u0003J\u0004\b\u0003\u0010\u0004\"\u0080\u0002\n\u0015QueryParameterMatcher\u0012\u0018\n\u0004name\u0018\u0001 \u0001(\tB\núB\u0007r\u0005 \u0001(\u0080\b\u0012\u0017\n\u0005value\u0018\u0003 \u0001(\tB\b\u0018\u0001¸îòÒ\u0005\u0001\u00123\n\u0005regex\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\b\u0018\u0001¸îòÒ\u0005\u0001\u0012C\n\fstring_match\u0018\u0005 \u0001(\u000b2!.envoy.type.matcher.StringMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012\u0017\n\rpresent_match\u0018\u0006 \u0001(\bH\u0000B!\n\u001fquery_parameter_match_specifierB_\n io.envoyproxy.envoy.api.v2.routeB\u0014RouteComponentsProtoP\u0001ò\u0098þ\u008f\u0005\u0017\u0012\u0015envoy.config.route.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.j.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.h.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.a(), com.google.protobuf.g.a(), w.a(), v2.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Validate.U()});
    static final GeneratedMessageV3.e L;
    static final Descriptors.b M;
    static final GeneratedMessageV3.e N;
    static final Descriptors.b O;
    static final GeneratedMessageV3.e P;
    static final Descriptors.b Q;
    static final GeneratedMessageV3.e R;
    static final Descriptors.b S;
    static final GeneratedMessageV3.e T;
    static final Descriptors.b U;
    static final GeneratedMessageV3.e V;
    static final Descriptors.b W;
    static final GeneratedMessageV3.e X;
    static final Descriptors.b Y;
    static final GeneratedMessageV3.e Z;

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47283a;

    /* renamed from: a0  reason: collision with root package name */
    static final Descriptors.b f47284a0;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47285b;

    /* renamed from: b0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47286b0;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f47287c;

    /* renamed from: c0  reason: collision with root package name */
    static final Descriptors.b f47288c0;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f47289d;

    /* renamed from: d0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47290d0;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f47291e;

    /* renamed from: e0  reason: collision with root package name */
    static final Descriptors.b f47292e0;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f47293f;

    /* renamed from: f0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47294f0;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f47295g;

    /* renamed from: g0  reason: collision with root package name */
    static final Descriptors.b f47296g0;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f47297h;

    /* renamed from: h0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47298h0;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f47299i;

    /* renamed from: i0  reason: collision with root package name */
    static final Descriptors.b f47300i0;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f47301j;

    /* renamed from: j0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47302j0;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f47303k;

    /* renamed from: k0  reason: collision with root package name */
    static final Descriptors.b f47304k0;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f47305l;

    /* renamed from: l0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47306l0;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f47307m;

    /* renamed from: m0  reason: collision with root package name */
    static final Descriptors.b f47308m0;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f47309n;

    /* renamed from: n0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47310n0;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f47311o;

    /* renamed from: o0  reason: collision with root package name */
    static final Descriptors.b f47312o0;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f47313p;

    /* renamed from: p0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47314p0;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f47315q;

    /* renamed from: q0  reason: collision with root package name */
    static final Descriptors.b f47316q0;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f47317r;

    /* renamed from: r0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47318r0;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f47319s;

    /* renamed from: s0  reason: collision with root package name */
    static final Descriptors.b f47320s0;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f47321t;

    /* renamed from: t0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47322t0;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f47323u;

    /* renamed from: u0  reason: collision with root package name */
    static final Descriptors.b f47324u0;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f47325v;

    /* renamed from: v0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47326v0;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f47327w;

    /* renamed from: w0  reason: collision with root package name */
    static final Descriptors.b f47328w0;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f47329x;

    /* renamed from: x0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47330x0;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f47331y;

    /* renamed from: y0  reason: collision with root package name */
    static final Descriptors.b f47332y0;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f47333z;

    /* renamed from: z0  reason: collision with root package name */
    static final GeneratedMessageV3.e f47334z0;

    static {
        Descriptors.b bVar = a().m().get(0);
        f47283a = bVar;
        f47285b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Domains", "Routes", "RequireTls", "VirtualClusters", "RateLimits", "RequestHeadersToAdd", "RequestHeadersToRemove", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "Cors", "PerFilterConfig", "TypedPerFilterConfig", "IncludeRequestAttemptCount", "IncludeAttemptCountInResponse", "RetryPolicy", "RetryPolicyTypedConfig", "HedgePolicy", "PerRequestBufferLimitBytes"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f47287c = bVar2;
        f47289d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f47291e = bVar3;
        f47293f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        Descriptors.b bVar4 = a().m().get(1);
        f47295g = bVar4;
        f47297h = new GeneratedMessageV3.e(bVar4, new String[]{"Action"});
        Descriptors.b bVar5 = a().m().get(2);
        f47299i = bVar5;
        f47301j = new GeneratedMessageV3.e(bVar5, new String[]{"Name", "Match", "Route", "Redirect", "DirectResponse", "FilterAction", "Metadata", "Decorator", "PerFilterConfig", "TypedPerFilterConfig", "RequestHeadersToAdd", "RequestHeadersToRemove", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "Tracing", "PerRequestBufferLimitBytes", "Action"});
        Descriptors.b bVar6 = bVar5.o().get(0);
        f47303k = bVar6;
        f47305l = new GeneratedMessageV3.e(bVar6, new String[]{"Key", "Value"});
        Descriptors.b bVar7 = bVar5.o().get(1);
        f47307m = bVar7;
        f47309n = new GeneratedMessageV3.e(bVar7, new String[]{"Key", "Value"});
        Descriptors.b bVar8 = a().m().get(3);
        f47311o = bVar8;
        f47313p = new GeneratedMessageV3.e(bVar8, new String[]{"Clusters", "TotalWeight", "RuntimeKeyPrefix"});
        Descriptors.b bVar9 = bVar8.o().get(0);
        f47315q = bVar9;
        f47317r = new GeneratedMessageV3.e(bVar9, new String[]{"Name", "Weight", "MetadataMatch", "RequestHeadersToAdd", "RequestHeadersToRemove", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "PerFilterConfig", "TypedPerFilterConfig"});
        Descriptors.b bVar10 = bVar9.o().get(0);
        f47319s = bVar10;
        f47321t = new GeneratedMessageV3.e(bVar10, new String[]{"Key", "Value"});
        Descriptors.b bVar11 = bVar9.o().get(1);
        f47323u = bVar11;
        f47325v = new GeneratedMessageV3.e(bVar11, new String[]{"Key", "Value"});
        Descriptors.b bVar12 = a().m().get(4);
        f47327w = bVar12;
        f47329x = new GeneratedMessageV3.e(bVar12, new String[]{"Prefix", "Path", "Regex", "SafeRegex", "CaseSensitive", "RuntimeFraction", "Headers", "QueryParameters", "Grpc", "TlsContext", "PathSpecifier"});
        Descriptors.b bVar13 = bVar12.o().get(0);
        f47331y = bVar13;
        f47333z = new GeneratedMessageV3.e(bVar13, new String[0]);
        Descriptors.b bVar14 = bVar12.o().get(1);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Presented", "Validated"});
        Descriptors.b bVar15 = a().m().get(5);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"AllowOrigin", "AllowOriginRegex", "AllowOriginStringMatch", "AllowMethods", "AllowHeaders", "ExposeHeaders", "MaxAge", "AllowCredentials", "Enabled", "FilterEnabled", "ShadowEnabled", "EnabledSpecifier"});
        Descriptors.b bVar16 = a().m().get(6);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Cluster", "ClusterHeader", "WeightedClusters", "ClusterNotFoundResponseCode", "MetadataMatch", "PrefixRewrite", "RegexRewrite", "HostRewrite", "AutoHostRewrite", "AutoHostRewriteHeader", "Timeout", "IdleTimeout", "RetryPolicy", "RetryPolicyTypedConfig", "RequestMirrorPolicy", "RequestMirrorPolicies", "Priority", "RateLimits", "IncludeVhRateLimits", "HashPolicy", "Cors", "MaxGrpcTimeout", "GrpcTimeoutOffset", "UpgradeConfigs", "InternalRedirectAction", "MaxInternalRedirects", "HedgePolicy", "ClusterSpecifier", "HostRewriteSpecifier"});
        Descriptors.b bVar17 = bVar16.o().get(0);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Cluster", "RuntimeKey", "RuntimeFraction", "TraceSampled"});
        Descriptors.b bVar18 = bVar16.o().get(1);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"Header", "Cookie", "ConnectionProperties", "QueryParameter", "FilterState", "Terminal", "PolicySpecifier"});
        Descriptors.b bVar19 = bVar18.o().get(0);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"HeaderName"});
        Descriptors.b bVar20 = bVar18.o().get(1);
        M = bVar20;
        N = new GeneratedMessageV3.e(bVar20, new String[]{"Name", "Ttl", "Path"});
        Descriptors.b bVar21 = bVar18.o().get(2);
        O = bVar21;
        P = new GeneratedMessageV3.e(bVar21, new String[]{"SourceIp"});
        Descriptors.b bVar22 = bVar18.o().get(3);
        Q = bVar22;
        R = new GeneratedMessageV3.e(bVar22, new String[]{"Name"});
        Descriptors.b bVar23 = bVar18.o().get(4);
        S = bVar23;
        T = new GeneratedMessageV3.e(bVar23, new String[]{"Key"});
        Descriptors.b bVar24 = bVar16.o().get(2);
        U = bVar24;
        V = new GeneratedMessageV3.e(bVar24, new String[]{"UpgradeType", "Enabled"});
        Descriptors.b bVar25 = a().m().get(7);
        W = bVar25;
        X = new GeneratedMessageV3.e(bVar25, new String[]{"RetryOn", "NumRetries", "PerTryTimeout", "RetryPriority", "RetryHostPredicate", "HostSelectionRetryMaxAttempts", "RetriableStatusCodes", "RetryBackOff", "RetriableHeaders", "RetriableRequestHeaders"});
        Descriptors.b bVar26 = bVar25.o().get(0);
        Y = bVar26;
        Z = new GeneratedMessageV3.e(bVar26, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar27 = bVar25.o().get(1);
        f47284a0 = bVar27;
        f47286b0 = new GeneratedMessageV3.e(bVar27, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar28 = bVar25.o().get(2);
        f47288c0 = bVar28;
        f47290d0 = new GeneratedMessageV3.e(bVar28, new String[]{"BaseInterval", "MaxInterval"});
        Descriptors.b bVar29 = a().m().get(8);
        f47292e0 = bVar29;
        f47294f0 = new GeneratedMessageV3.e(bVar29, new String[]{"InitialRequests", "AdditionalRequestChance", "HedgeOnPerTryTimeout"});
        Descriptors.b bVar30 = a().m().get(9);
        f47296g0 = bVar30;
        f47298h0 = new GeneratedMessageV3.e(bVar30, new String[]{"HttpsRedirect", "SchemeRedirect", "HostRedirect", "PortRedirect", "PathRedirect", "PrefixRewrite", "ResponseCode", "StripQuery", "SchemeRewriteSpecifier", "PathRewriteSpecifier"});
        Descriptors.b bVar31 = a().m().get(10);
        f47300i0 = bVar31;
        f47302j0 = new GeneratedMessageV3.e(bVar31, new String[]{"Status", "Body"});
        Descriptors.b bVar32 = a().m().get(11);
        f47304k0 = bVar32;
        f47306l0 = new GeneratedMessageV3.e(bVar32, new String[]{"Operation", "Propagate"});
        Descriptors.b bVar33 = a().m().get(12);
        f47308m0 = bVar33;
        f47310n0 = new GeneratedMessageV3.e(bVar33, new String[]{"ClientSampling", "RandomSampling", "OverallSampling", "CustomTags"});
        Descriptors.b bVar34 = a().m().get(13);
        f47312o0 = bVar34;
        f47314p0 = new GeneratedMessageV3.e(bVar34, new String[]{"Pattern", "Headers", "Name", "Method"});
        Descriptors.b bVar35 = a().m().get(14);
        f47316q0 = bVar35;
        f47318r0 = new GeneratedMessageV3.e(bVar35, new String[]{"Stage", "DisableKey", "Actions"});
        Descriptors.b bVar36 = bVar35.o().get(0);
        f47320s0 = bVar36;
        f47322t0 = new GeneratedMessageV3.e(bVar36, new String[]{"SourceCluster", "DestinationCluster", "RequestHeaders", "RemoteAddress", "GenericKey", "HeaderValueMatch", "ActionSpecifier"});
        Descriptors.b bVar37 = bVar36.o().get(0);
        f47324u0 = bVar37;
        f47326v0 = new GeneratedMessageV3.e(bVar37, new String[0]);
        Descriptors.b bVar38 = bVar36.o().get(1);
        f47328w0 = bVar38;
        f47330x0 = new GeneratedMessageV3.e(bVar38, new String[0]);
        Descriptors.b bVar39 = bVar36.o().get(2);
        f47332y0 = bVar39;
        f47334z0 = new GeneratedMessageV3.e(bVar39, new String[]{"HeaderName", "DescriptorKey"});
        Descriptors.b bVar40 = bVar36.o().get(3);
        A0 = bVar40;
        B0 = new GeneratedMessageV3.e(bVar40, new String[0]);
        Descriptors.b bVar41 = bVar36.o().get(4);
        C0 = bVar41;
        D0 = new GeneratedMessageV3.e(bVar41, new String[]{"DescriptorValue"});
        Descriptors.b bVar42 = bVar36.o().get(5);
        E0 = bVar42;
        F0 = new GeneratedMessageV3.e(bVar42, new String[]{"DescriptorValue", "ExpectMatch", "Headers"});
        Descriptors.b bVar43 = a().m().get(15);
        G0 = bVar43;
        H0 = new GeneratedMessageV3.e(bVar43, new String[]{"Name", "ExactMatch", "RegexMatch", "SafeRegexMatch", "RangeMatch", "PresentMatch", "PrefixMatch", "SuffixMatch", "InvertMatch", "HeaderMatchSpecifier"});
        Descriptors.b bVar44 = a().m().get(16);
        I0 = bVar44;
        J0 = new GeneratedMessageV3.e(bVar44, new String[]{"Name", "Value", "Regex", "StringMatch", "PresentMatch", "QueryParameterMatchSpecifier"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45757a);
        k10.f(Migrate.f50818b);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(K0, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.j.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.h.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.a();
        com.google.protobuf.g.a();
        w.a();
        v2.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return K0;
    }
}
