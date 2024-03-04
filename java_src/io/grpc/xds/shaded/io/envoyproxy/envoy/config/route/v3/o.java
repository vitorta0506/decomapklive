package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.p0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class o {
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
    static final Descriptors.b K0;
    static final GeneratedMessageV3.e L;
    static final GeneratedMessageV3.e L0;
    static final Descriptors.b M;
    static final Descriptors.b M0;
    static final GeneratedMessageV3.e N;
    static final GeneratedMessageV3.e N0;
    static final Descriptors.b O;
    static final Descriptors.b O0;
    static final GeneratedMessageV3.e P;
    static final GeneratedMessageV3.e P0;
    static final Descriptors.b Q;
    static final Descriptors.b Q0;
    static final GeneratedMessageV3.e R;
    static final GeneratedMessageV3.e R0;
    static final Descriptors.b S;
    static final Descriptors.b S0;
    static final GeneratedMessageV3.e T;
    static final GeneratedMessageV3.e T0;
    static final Descriptors.b U;
    static final Descriptors.b U0;
    static final GeneratedMessageV3.e V;
    static final GeneratedMessageV3.e V0;
    static final Descriptors.b W;
    static final Descriptors.b W0;
    static final GeneratedMessageV3.e X;
    static final GeneratedMessageV3.e X0;
    static final Descriptors.b Y;
    static final Descriptors.b Y0;
    static final GeneratedMessageV3.e Z;
    static final GeneratedMessageV3.e Z0;

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49462a;

    /* renamed from: a0  reason: collision with root package name */
    static final Descriptors.b f49463a0;

    /* renamed from: a1  reason: collision with root package name */
    static final Descriptors.b f49464a1;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49465b;

    /* renamed from: b0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49466b0;

    /* renamed from: b1  reason: collision with root package name */
    static final GeneratedMessageV3.e f49467b1;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49468c;

    /* renamed from: c0  reason: collision with root package name */
    static final Descriptors.b f49469c0;

    /* renamed from: c1  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49470c1 = Descriptors.FileDescriptor.s(new String[]{"\n,envoy/config/route/v3/route_components.proto\u0012\u0015envoy.config.route.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a)envoy/config/core/v3/proxy_protocol.proto\u001a!envoy/type/matcher/v3/regex.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a%envoy/type/metadata/v3/metadata.proto\u001a&envoy/type/tracing/v3/custom_tag.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019envoy/type/v3/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0087\n\n\u000bVirtualHost\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012#\n\u0007domains\u0018\u0002 \u0003(\tB\u0012úB\u000f\u0092\u0001\f\b\u0001\"\br\u0006À\u0001\u0002È\u0001\u0000\u0012,\n\u0006routes\u0018\u0003 \u0003(\u000b2\u001c.envoy.config.route.v3.Route\u0012T\n\u000brequire_tls\u0018\u0004 \u0001(\u000e25.envoy.config.route.v3.VirtualHost.TlsRequirementTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012?\n\u0010virtual_clusters\u0018\u0005 \u0003(\u000b2%.envoy.config.route.v3.VirtualCluster\u00125\n\u000brate_limits\u0018\u0006 \u0003(\u000b2 .envoy.config.route.v3.RateLimit\u0012R\n\u0016request_headers_to_add\u0018\u0007 \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00125\n\u0019request_headers_to_remove\u0018\r \u0003(\tB\u0012úB\u000f\u0092\u0001\f\"\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012S\n\u0017response_headers_to_add\u0018\n \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00126\n\u001aresponse_headers_to_remove\u0018\u000b \u0003(\tB\u0012úB\u000f\u0092\u0001\f\"\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012/\n\u0004cors\u0018\b \u0001(\u000b2!.envoy.config.route.v3.CorsPolicy\u0012]\n\u0017typed_per_filter_config\u0018\u000f \u0003(\u000b2<.envoy.config.route.v3.VirtualHost.TypedPerFilterConfigEntry\u0012%\n\u001dinclude_request_attempt_count\u0018\u000e \u0001(\b\u0012)\n!include_attempt_count_in_response\u0018\u0013 \u0001(\b\u00128\n\fretry_policy\u0018\u0010 \u0001(\u000b2\".envoy.config.route.v3.RetryPolicy\u00127\n\u0019retry_policy_typed_config\u0018\u0014 \u0001(\u000b2\u0014.google.protobuf.Any\u00128\n\fhedge_policy\u0018\u0011 \u0001(\u000b2\".envoy.config.route.v3.HedgePolicy\u0012D\n\u001eper_request_buffer_limit_bytes\u0018\u0012 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001aQ\n\u0019TypedPerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001\":\n\u0012TlsRequirementType\u0012\b\n\u0004NONE\u0010\u0000\u0012\u0011\n\rEXTERNAL_ONLY\u0010\u0001\u0012\u0007\n\u0003ALL\u0010\u0002:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.route.VirtualHostJ\u0004\b\t\u0010\nJ\u0004\b\f\u0010\rR\u0011per_filter_config\"\\\n\fFilterAction\u0012$\n\u0006action\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.route.FilterAction\"\u0085\t\n\u0005Route\u0012\f\n\u0004name\u0018\u000e \u0001(\t\u0012:\n\u0005match\u0018\u0001 \u0001(\u000b2!.envoy.config.route.v3.RouteMatchB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u00123\n\u0005route\u0018\u0002 \u0001(\u000b2\".envoy.config.route.v3.RouteActionH\u0000\u00129\n\bredirect\u0018\u0003 \u0001(\u000b2%.envoy.config.route.v3.RedirectActionH\u0000\u0012F\n\u000fdirect_response\u0018\u0007 \u0001(\u000b2+.envoy.config.route.v3.DirectResponseActionH\u0000\u0012<\n\rfilter_action\u0018\u0011 \u0001(\u000b2#.envoy.config.route.v3.FilterActionH\u0000\u0012K\n\u0015non_forwarding_action\u0018\u0012 \u0001(\u000b2*.envoy.config.route.v3.NonForwardingActionH\u0000\u00120\n\bmetadata\u0018\u0004 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u00123\n\tdecorator\u0018\u0005 \u0001(\u000b2 .envoy.config.route.v3.Decorator\u0012W\n\u0017typed_per_filter_config\u0018\r \u0003(\u000b26.envoy.config.route.v3.Route.TypedPerFilterConfigEntry\u0012R\n\u0016request_headers_to_add\u0018\t \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00125\n\u0019request_headers_to_remove\u0018\f \u0003(\tB\u0012úB\u000f\u0092\u0001\f\"\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012S\n\u0017response_headers_to_add\u0018\n \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00126\n\u001aresponse_headers_to_remove\u0018\u000b \u0003(\tB\u0012úB\u000f\u0092\u0001\f\"\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012/\n\u0007tracing\u0018\u000f \u0001(\u000b2\u001e.envoy.config.route.v3.Tracing\u0012D\n\u001eper_request_buffer_limit_bytes\u0018\u0010 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001aQ\n\u0019TypedPerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001:\u001f\u009aÅ\u0088\u001e\u001a\n\u0018envoy.api.v2.route.RouteB\r\n\u0006action\u0012\u0003øB\u0001J\u0004\b\u0006\u0010\u0007J\u0004\b\b\u0010\tR\u0011per_filter_config\"í\u0007\n\u000fWeightedCluster\u0012P\n\bclusters\u0018\u0001 \u0003(\u000b24.envoy.config.route.v3.WeightedCluster.ClusterWeightB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012;\n\ftotal_weight\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012\u001a\n\u0012runtime_key_prefix\u0018\u0002 \u0001(\t\u001a\u0083\u0006\n\rClusterWeight\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\u0006weight\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00126\n\u000emetadata_match\u0018\u0003 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012R\n\u0016request_headers_to_add\u0018\u0004 \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00123\n\u0019request_headers_to_remove\u0018\t \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012S\n\u0017response_headers_to_add\u0018\u0005 \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00124\n\u001aresponse_headers_to_remove\u0018\u0006 \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012o\n\u0017typed_per_filter_config\u0018\n \u0003(\u000b2N.envoy.config.route.v3.WeightedCluster.ClusterWeight.TypedPerFilterConfigEntry\u0012+\n\u0014host_rewrite_literal\u0018\u000b \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000H\u0000\u001aQ\n\u0019TypedPerFilterConfigEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001:7\u009aÅ\u0088\u001e2\n0envoy.api.v2.route.WeightedCluster.ClusterWeightB\u0018\n\u0016host_rewrite_specifierJ\u0004\b\u0007\u0010\bJ\u0004\b\b\u0010\tR\u0011per_filter_config:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.route.WeightedCluster\"À\u0007\n\nRouteMatch\u0012\u0010\n\u0006prefix\u0018\u0001 \u0001(\tH\u0000\u0012\u000e\n\u0004path\u0018\u0002 \u0001(\tH\u0000\u0012C\n\nsafe_regex\u0018\n \u0001(\u000b2#.envoy.type.matcher.v3.RegexMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012K\n\u000fconnect_matcher\u0018\f \u0001(\u000b20.envoy.config.route.v3.RouteMatch.ConnectMatcherH\u0000\u00122\n\u000ecase_sensitive\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012H\n\u0010runtime_fraction\u0018\t \u0001(\u000b2..envoy.config.core.v3.RuntimeFractionalPercent\u00125\n\u0007headers\u0018\u0006 \u0003(\u000b2$.envoy.config.route.v3.HeaderMatcher\u0012F\n\u0010query_parameters\u0018\u0007 \u0003(\u000b2,.envoy.config.route.v3.QueryParameterMatcher\u0012E\n\u0004grpc\u0018\b \u0001(\u000b27.envoy.config.route.v3.RouteMatch.GrpcRouteMatchOptions\u0012M\n\u000btls_context\u0018\u000b \u0001(\u000b28.envoy.config.route.v3.RouteMatch.TlsContextMatchOptions\u001aS\n\u0015GrpcRouteMatchOptions::\u009aÅ\u0088\u001e5\n3envoy.api.v2.route.RouteMatch.GrpcRouteMatchOptions\u001a³\u0001\n\u0016TlsContextMatchOptions\u0012-\n\tpresented\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012-\n\tvalidated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue:;\u009aÅ\u0088\u001e6\n4envoy.api.v2.route.RouteMatch.TlsContextMatchOptions\u001a\u0010\n\u000eConnectMatcher:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.api.v2.route.RouteMatchB\u0015\n\u000epath_specifier\u0012\u0003øB\u0001J\u0004\b\u0005\u0010\u0006J\u0004\b\u0003\u0010\u0004R\u0005regex\"í\u0003\n\nCorsPolicy\u0012G\n\u0019allow_origin_string_match\u0018\u000b \u0003(\u000b2$.envoy.type.matcher.v3.StringMatcher\u0012\u0015\n\rallow_methods\u0018\u0002 \u0001(\t\u0012\u0015\n\rallow_headers\u0018\u0003 \u0001(\t\u0012\u0016\n\u000eexpose_headers\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007max_age\u0018\u0005 \u0001(\t\u00125\n\u0011allow_credentials\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012H\n\u000efilter_enabled\u0018\t \u0001(\u000b2..envoy.config.core.v3.RuntimeFractionalPercentH\u0000\u0012F\n\u000eshadow_enabled\u0018\n \u0001(\u000b2..envoy.config.core.v3.RuntimeFractionalPercent:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.api.v2.route.CorsPolicyB\u0013\n\u0011enabled_specifierJ\u0004\b\u0001\u0010\u0002J\u0004\b\b\u0010\tJ\u0004\b\u0007\u0010\bR\fallow_originR\u0012allow_origin_regexR\u0007enabled\"ò \n\u000bRouteAction\u0012\u001a\n\u0007cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012'\n\u000ecluster_header\u0018\u0002 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000H\u0000\u0012C\n\u0011weighted_clusters\u0018\u0003 \u0001(\u000b2&.envoy.config.route.v3.WeightedClusterH\u0000\u0012\"\n\u0018cluster_specifier_plugin\u0018% \u0001(\tH\u0000\u0012q\n\u001fcluster_not_found_response_code\u0018\u0014 \u0001(\u000e2>.envoy.config.route.v3.RouteAction.ClusterNotFoundResponseCodeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00126\n\u000emetadata_match\u0018\u0004 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012#\n\u000eprefix_rewrite\u0018\u0005 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u0012E\n\rregex_rewrite\u0018  \u0001(\u000b2..envoy.type.matcher.v3.RegexMatchAndSubstitute\u0012+\n\u0014host_rewrite_literal\u0018\u0006 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000H\u0001\u00127\n\u0011auto_host_rewrite\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValueH\u0001\u0012*\n\u0013host_rewrite_header\u0018\u001d \u0001(\tB\u000búB\br\u0006À\u0001\u0001È\u0001\u0000H\u0001\u0012Q\n\u0017host_rewrite_path_regex\u0018# \u0001(\u000b2..envoy.type.matcher.v3.RegexMatchAndSubstituteH\u0001\u0012*\n\u0007timeout\u0018\b \u0001(\u000b2\u0019.google.protobuf.Duration\u0012/\n\fidle_timeout\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\fretry_policy\u0018\t \u0001(\u000b2\".envoy.config.route.v3.RetryPolicy\u00127\n\u0019retry_policy_typed_config\u0018! \u0001(\u000b2\u0014.google.protobuf.Any\u0012W\n\u0017request_mirror_policies\u0018\u001e \u0003(\u000b26.envoy.config.route.v3.RouteAction.RequestMirrorPolicy\u0012A\n\bpriority\u0018\u000b \u0001(\u000e2%.envoy.config.core.v3.RoutingPriorityB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00125\n\u000brate_limits\u0018\r \u0003(\u000b2 .envoy.config.route.v3.RateLimit\u0012G\n\u0016include_vh_rate_limits\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012B\n\u000bhash_policy\u0018\u000f \u0003(\u000b2-.envoy.config.route.v3.RouteAction.HashPolicy\u0012/\n\u0004cors\u0018\u0011 \u0001(\u000b2!.envoy.config.route.v3.CorsPolicy\u0012@\n\u0010max_grpc_timeout\u0018\u0017 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012C\n\u0013grpc_timeout_offset\u0018\u001c \u0001(\u000b2\u0019.google.protobuf.DurationB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012I\n\u000fupgrade_configs\u0018\u0019 \u0003(\u000b20.envoy.config.route.v3.RouteAction.UpgradeConfig\u0012O\n\u0018internal_redirect_policy\u0018\" \u0001(\u000b2-.envoy.config.route.v3.InternalRedirectPolicy\u0012h\n\u0018internal_redirect_action\u0018\u001a \u0001(\u000e29.envoy.config.route.v3.RouteAction.InternalRedirectActionB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012I\n\u0016max_internal_redirects\u0018\u001f \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u00128\n\fhedge_policy\u0018\u001b \u0001(\u000b2\".envoy.config.route.v3.HedgePolicy\u0012Q\n\u0013max_stream_duration\u0018$ \u0001(\u000b24.envoy.config.route.v3.RouteAction.MaxStreamDuration\u001aú\u0001\n\u0013RequestMirrorPolicy\u0012\u0018\n\u0007cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012H\n\u0010runtime_fraction\u0018\u0003 \u0001(\u000b2..envoy.config.core.v3.RuntimeFractionalPercent\u00121\n\rtrace_sampled\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue:9\u009aÅ\u0088\u001e4\n2envoy.api.v2.route.RouteAction.RequestMirrorPolicyJ\u0004\b\u0002\u0010\u0003R\u000bruntime_key\u001a\u0089\t\n\nHashPolicy\u0012F\n\u0006header\u0018\u0001 \u0001(\u000b24.envoy.config.route.v3.RouteAction.HashPolicy.HeaderH\u0000\u0012F\n\u0006cookie\u0018\u0002 \u0001(\u000b24.envoy.config.route.v3.RouteAction.HashPolicy.CookieH\u0000\u0012c\n\u0015connection_properties\u0018\u0003 \u0001(\u000b2B.envoy.config.route.v3.RouteAction.HashPolicy.ConnectionPropertiesH\u0000\u0012W\n\u000fquery_parameter\u0018\u0005 \u0001(\u000b2<.envoy.config.route.v3.RouteAction.HashPolicy.QueryParameterH\u0000\u0012Q\n\ffilter_state\u0018\u0006 \u0001(\u000b29.envoy.config.route.v3.RouteAction.HashPolicy.FilterStateH\u0000\u0012\u0010\n\bterminal\u0018\u0004 \u0001(\b\u001a¬\u0001\n\u0006Header\u0012\"\n\u000bheader_name\u0018\u0001 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012E\n\rregex_rewrite\u0018\u0002 \u0001(\u000b2..envoy.type.matcher.v3.RegexMatchAndSubstitute:7\u009aÅ\u0088\u001e2\n0envoy.api.v2.route.RouteAction.HashPolicy.Header\u001a\u008e\u0001\n\u0006Cookie\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012&\n\u0003ttl\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\f\n\u0004path\u0018\u0003 \u0001(\t:7\u009aÅ\u0088\u001e2\n0envoy.api.v2.route.RouteAction.HashPolicy.Cookie\u001ap\n\u0014ConnectionProperties\u0012\u0011\n\tsource_ip\u0018\u0001 \u0001(\b:E\u009aÅ\u0088\u001e@\n>envoy.api.v2.route.RouteAction.HashPolicy.ConnectionProperties\u001ah\n\u000eQueryParameter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:?\u009aÅ\u0088\u001e:\n8envoy.api.v2.route.RouteAction.HashPolicy.QueryParameter\u001aa\n\u000bFilterState\u0012\u0014\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:<\u009aÅ\u0088\u001e7\n5envoy.api.v2.route.RouteAction.HashPolicy.FilterState:0\u009aÅ\u0088\u001e+\n)envoy.api.v2.route.RouteAction.HashPolicyB\u0017\n\u0010policy_specifier\u0012\u0003øB\u0001\u001aÝ\u0002\n\rUpgradeConfig\u0012#\n\fupgrade_type\u0018\u0001 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0002È\u0001\u0000\u0012+\n\u0007enabled\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012V\n\u000econnect_config\u0018\u0003 \u0001(\u000b2>.envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig\u001am\n\rConnectConfig\u0012H\n\u0015proxy_protocol_config\u0018\u0001 \u0001(\u000b2).envoy.config.core.v3.ProxyProtocolConfig\u0012\u0012\n\nallow_post\u0018\u0002 \u0001(\b:3\u009aÅ\u0088\u001e.\n,envoy.api.v2.route.RouteAction.UpgradeConfig\u001aÆ\u0001\n\u0011MaxStreamDuration\u00126\n\u0013max_stream_duration\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012:\n\u0017grpc_timeout_header_max\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012=\n\u001agrpc_timeout_header_offset\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\"E\n\u001bClusterNotFoundResponseCode\u0012\u0017\n\u0013SERVICE_UNAVAILABLE\u0010\u0000\u0012\r\n\tNOT_FOUND\u0010\u0001\"^\n\u0016InternalRedirectAction\u0012\"\n\u001ePASS_THROUGH_INTERNAL_REDIRECT\u0010\u0000\u0012\u001c\n\u0018HANDLE_INTERNAL_REDIRECT\u0010\u0001\u001a\u0002\u0018\u0001:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.route.RouteActionB\u0018\n\u0011cluster_specifier\u0012\u0003øB\u0001B\u0018\n\u0016host_rewrite_specifierJ\u0004\b\f\u0010\rJ\u0004\b\u0012\u0010\u0013J\u0004\b\u0013\u0010\u0014J\u0004\b\u0010\u0010\u0011J\u0004\b\u0016\u0010\u0017J\u0004\b\u0015\u0010\u0016J\u0004\b\n\u0010\u000bR\u0015request_mirror_policy\"Ô\f\n\u000bRetryPolicy\u0012\u0010\n\bretry_on\u0018\u0001 \u0001(\t\u0012F\n\u000bnum_retries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0013ò\u0098þ\u008f\u0005\r\n\u000bmax_retries\u00122\n\u000fper_try_timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012H\n\u000eretry_priority\u0018\u0004 \u0001(\u000b20.envoy.config.route.v3.RetryPolicy.RetryPriority\u0012S\n\u0014retry_host_predicate\u0018\u0005 \u0003(\u000b25.envoy.config.route.v3.RetryPolicy.RetryHostPredicate\u0012)\n!host_selection_retry_max_attempts\u0018\u0006 \u0001(\u0003\u0012\u001e\n\u0016retriable_status_codes\u0018\u0007 \u0003(\r\u0012G\n\u000eretry_back_off\u0018\b \u0001(\u000b2/.envoy.config.route.v3.RetryPolicy.RetryBackOff\u0012_\n\u001brate_limited_retry_back_off\u0018\u000b \u0001(\u000b2:.envoy.config.route.v3.RetryPolicy.RateLimitedRetryBackOff\u0012?\n\u0011retriable_headers\u0018\t \u0003(\u000b2$.envoy.config.route.v3.HeaderMatcher\u0012G\n\u0019retriable_request_headers\u0018\n \u0003(\u000b2$.envoy.config.route.v3.HeaderMatcher\u001a¦\u0001\n\rRetryPriority\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:3\u009aÅ\u0088\u001e.\n,envoy.api.v2.route.RetryPolicy.RetryPriorityB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\u001a°\u0001\n\u0012RetryHostPredicate\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:8\u009aÅ\u0088\u001e3\n1envoy.api.v2.route.RetryPolicy.RetryHostPredicateB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\u001a»\u0001\n\fRetryBackOff\u0012<\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u0001*\u0000\u00129\n\fmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000:2\u009aÅ\u0088\u001e-\n+envoy.api.v2.route.RetryPolicy.RetryBackOff\u001az\n\u000bResetHeader\u0012\u001b\n\u0004name\u0018\u0001 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012N\n\u0006format\u0018\u0002 \u0001(\u000e24.envoy.config.route.v3.RetryPolicy.ResetHeaderFormatB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u001a¥\u0001\n\u0017RateLimitedRetryBackOff\u0012O\n\rreset_headers\u0018\u0001 \u0003(\u000b2..envoy.config.route.v3.RetryPolicy.ResetHeaderB\búB\u0005\u0092\u0001\u0002\b\u0001\u00129\n\fmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\"4\n\u0011ResetHeaderFormat\u0012\u000b\n\u0007SECONDS\u0010\u0000\u0012\u0012\n\u000eUNIX_TIMESTAMP\u0010\u0001:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.route.RetryPolicy\"Ü\u0001\n\u000bHedgePolicy\u0012?\n\u0010initial_requests\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012C\n\u0019additional_request_chance\u0018\u0002 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u0012 \n\u0018hedge_on_per_try_timeout\u0018\u0003 \u0001(\b:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.route.HedgePolicy\"á\u0004\n\u000eRedirectAction\u0012\u0018\n\u000ehttps_redirect\u0018\u0004 \u0001(\bH\u0000\u0012\u0019\n\u000fscheme_redirect\u0018\u0007 \u0001(\tH\u0000\u0012\"\n\rhost_redirect\u0018\u0001 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u0012\u0015\n\rport_redirect\u0018\b \u0001(\r\u0012$\n\rpath_redirect\u0018\u0002 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000H\u0001\u0012%\n\u000eprefix_rewrite\u0018\u0005 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000H\u0001\u0012G\n\rregex_rewrite\u0018\t \u0001(\u000b2..envoy.type.matcher.v3.RegexMatchAndSubstituteH\u0001\u0012[\n\rresponse_code\u0018\u0003 \u0001(\u000e2:.envoy.config.route.v3.RedirectAction.RedirectResponseCodeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bstrip_query\u0018\u0006 \u0001(\b\"w\n\u0014RedirectResponseCode\u0012\u0015\n\u0011MOVED_PERMANENTLY\u0010\u0000\u0012\t\n\u0005FOUND\u0010\u0001\u0012\r\n\tSEE_OTHER\u0010\u0002\u0012\u0016\n\u0012TEMPORARY_REDIRECT\u0010\u0003\u0012\u0016\n\u0012PERMANENT_REDIRECT\u0010\u0004:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.route.RedirectActionB\u001a\n\u0018scheme_rewrite_specifierB\u0018\n\u0016path_rewrite_specifier\"\u0092\u0001\n\u0014DirectResponseAction\u0012\u001a\n\u0006status\u0018\u0001 \u0001(\rB\núB\u0007*\u0005\u0010Ø\u0004(d\u0012.\n\u0004body\u0018\u0002 \u0001(\u000b2 .envoy.config.core.v3.DataSource:.\u009aÅ\u0088\u001e)\n'envoy.api.v2.route.DirectResponseAction\"\u0015\n\u0013NonForwardingAction\"{\n\tDecorator\u0012\u001a\n\toperation\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012-\n\tpropagate\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue:#\u009aÅ\u0088\u001e\u001e\n\u001cenvoy.api.v2.route.Decorator\"\u0095\u0002\n\u0007Tracing\u00129\n\u000fclient_sampling\u0018\u0001 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u00129\n\u000frandom_sampling\u0018\u0002 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u0012:\n\u0010overall_sampling\u0018\u0003 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u00125\n\u000bcustom_tags\u0018\u0004 \u0003(\u000b2 .envoy.type.tracing.v3.CustomTag:!\u009aÅ\u0088\u001e\u001c\n\u001aenvoy.api.v2.route.Tracing\"¥\u0001\n\u000eVirtualCluster\u00125\n\u0007headers\u0018\u0004 \u0003(\u000b2$.envoy.config.route.v3.HeaderMatcher\u0012\u0015\n\u0004name\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.route.VirtualClusterJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0003\u0010\u0004R\u0007patternR\u0006method\"\u0096\u0013\n\tRateLimit\u00124\n\u0005stage\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018\n\u0012\u0013\n\u000bdisable_key\u0018\u0002 \u0001(\t\u0012B\n\u0007actions\u0018\u0003 \u0003(\u000b2'.envoy.config.route.v3.RateLimit.ActionB\búB\u0005\u0092\u0001\u0002\b\u0001\u00128\n\u0005limit\u0018\u0004 \u0001(\u000b2).envoy.config.route.v3.RateLimit.Override\u001aÃ\u000f\n\u0006Action\u0012O\n\u000esource_cluster\u0018\u0001 \u0001(\u000b25.envoy.config.route.v3.RateLimit.Action.SourceClusterH\u0000\u0012Y\n\u0013destination_cluster\u0018\u0002 \u0001(\u000b2:.envoy.config.route.v3.RateLimit.Action.DestinationClusterH\u0000\u0012Q\n\u000frequest_headers\u0018\u0003 \u0001(\u000b26.envoy.config.route.v3.RateLimit.Action.RequestHeadersH\u0000\u0012O\n\u000eremote_address\u0018\u0004 \u0001(\u000b25.envoy.config.route.v3.RateLimit.Action.RemoteAddressH\u0000\u0012I\n\u000bgeneric_key\u0018\u0005 \u0001(\u000b22.envoy.config.route.v3.RateLimit.Action.GenericKeyH\u0000\u0012V\n\u0012header_value_match\u0018\u0006 \u0001(\u000b28.envoy.config.route.v3.RateLimit.Action.HeaderValueMatchH\u0000\u0012f\n\u0010dynamic_metadata\u0018\u0007 \u0001(\u000b27.envoy.config.route.v3.RateLimit.Action.DynamicMetaDataB\u0011\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0¸îòÒ\u0005\u0001H\u0000\u0012D\n\bmetadata\u0018\b \u0001(\u000b20.envoy.config.route.v3.RateLimit.Action.MetaDataH\u0000\u0012?\n\textension\u0018\t \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfigH\u0000\u001aI\n\rSourceCluster:8\u009aÅ\u0088\u001e3\n1envoy.api.v2.route.RateLimit.Action.SourceCluster\u001aS\n\u0012DestinationCluster:=\u009aÅ\u0088\u001e8\n6envoy.api.v2.route.RateLimit.Action.DestinationCluster\u001a¨\u0001\n\u000eRequestHeaders\u0012\"\n\u000bheader_name\u0018\u0001 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012\u001f\n\u000edescriptor_key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0016\n\u000eskip_if_absent\u0018\u0003 \u0001(\b:9\u009aÅ\u0088\u001e4\n2envoy.api.v2.route.RateLimit.Action.RequestHeaders\u001aI\n\rRemoteAddress:8\u009aÅ\u0088\u001e3\n1envoy.api.v2.route.RateLimit.Action.RemoteAddress\u001a~\n\nGenericKey\u0012!\n\u0010descriptor_value\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0016\n\u000edescriptor_key\u0018\u0002 \u0001(\t:5\u009aÅ\u0088\u001e0\n.envoy.api.v2.route.RateLimit.Action.GenericKey\u001aå\u0001\n\u0010HeaderValueMatch\u0012!\n\u0010descriptor_value\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00120\n\fexpect_match\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012?\n\u0007headers\u0018\u0003 \u0003(\u000b2$.envoy.config.route.v3.HeaderMatcherB\búB\u0005\u0092\u0001\u0002\b\u0001:;\u009aÅ\u0088\u001e6\n4envoy.api.v2.route.RateLimit.Action.HeaderValueMatch\u001a\u008e\u0001\n\u000fDynamicMetaData\u0012\u001f\n\u000edescriptor_key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012C\n\fmetadata_key\u0018\u0002 \u0001(\u000b2#.envoy.type.metadata.v3.MetadataKeyB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0015\n\rdefault_value\u0018\u0003 \u0001(\t\u001a\u0082\u0002\n\bMetaData\u0012\u001f\n\u000edescriptor_key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012C\n\fmetadata_key\u0018\u0002 \u0001(\u000b2#.envoy.type.metadata.v3.MetadataKeyB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0015\n\rdefault_value\u0018\u0003 \u0001(\t\u0012Q\n\u0006source\u0018\u0004 \u0001(\u000e27.envoy.config.route.v3.RateLimit.Action.MetaData.SourceB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"&\n\u0006Source\u0012\u000b\n\u0007DYNAMIC\u0010\u0000\u0012\u000f\n\u000bROUTE_ENTRY\u0010\u0001:*\u009aÅ\u0088\u001e%\n#envoy.api.v2.route.RateLimit.ActionB\u0017\n\u0010action_specifier\u0012\u0003øB\u0001\u001aÔ\u0001\n\bOverride\u0012U\n\u0010dynamic_metadata\u0018\u0001 \u0001(\u000b29.envoy.config.route.v3.RateLimit.Override.DynamicMetadataH\u0000\u001aV\n\u000fDynamicMetadata\u0012C\n\fmetadata_key\u0018\u0001 \u0001(\u000b2#.envoy.type.metadata.v3.MetadataKeyB\búB\u0005\u008a\u0001\u0002\u0010\u0001B\u0019\n\u0012override_specifier\u0012\u0003øB\u0001:#\u009aÅ\u0088\u001e\u001e\n\u001cenvoy.api.v2.route.RateLimit\"¥\u0004\n\rHeaderMatcher\u0012\u001b\n\u0004name\u0018\u0001 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012\"\n\u000bexact_match\u0018\u0004 \u0001(\tB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u0012L\n\u0010safe_regex_match\u0018\u000b \u0001(\u000b2#.envoy.type.matcher.v3.RegexMatcherB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u00120\n\u000brange_match\u0018\u0006 \u0001(\u000b2\u0019.envoy.type.v3.Int64RangeH\u0000\u0012\u0017\n\rpresent_match\u0018\u0007 \u0001(\bH\u0000\u0012*\n\fprefix_match\u0018\t \u0001(\tB\u0012\u0018\u0001úB\u0004r\u0002\u0010\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u0012*\n\fsuffix_match\u0018\n \u0001(\tB\u0012\u0018\u0001úB\u0004r\u0002\u0010\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u0012,\n\u000econtains_match\u0018\f \u0001(\tB\u0012\u0018\u0001úB\u0004r\u0002\u0010\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u0012<\n\fstring_match\u0018\r \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherH\u0000\u0012\u0014\n\finvert_match\u0018\b \u0001(\b:'\u009aÅ\u0088\u001e\"\n envoy.api.v2.", "route.HeaderMatcherB\u0018\n\u0016header_match_specifierJ\u0004\b\u0002\u0010\u0003J\u0004\b\u0003\u0010\u0004J\u0004\b\u0005\u0010\u0006R\u000bregex_match\"\u0080\u0002\n\u0015QueryParameterMatcher\u0012\u0018\n\u0004name\u0018\u0001 \u0001(\tB\núB\u0007r\u0005\u0010\u0001(\u0080\b\u0012F\n\fstring_match\u0018\u0005 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012\u0017\n\rpresent_match\u0018\u0006 \u0001(\bH\u0000:/\u009aÅ\u0088\u001e*\n(envoy.api.v2.route.QueryParameterMatcherB!\n\u001fquery_parameter_match_specifierJ\u0004\b\u0003\u0010\u0004J\u0004\b\u0004\u0010\u0005R\u0005valueR\u0005regex\"æ\u0001\n\u0016InternalRedirectPolicy\u0012<\n\u0016max_internal_redirects\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012)\n\u0017redirect_response_codes\u0018\u0002 \u0003(\rB\búB\u0005\u0092\u0001\u0002\u0010\u0005\u0012>\n\npredicates\u0018\u0003 \u0003(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012#\n\u001ballow_cross_scheme_redirect\u0018\u0004 \u0001(\b\"I\n\fFilterConfig\u0012$\n\u0006config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u0012\u0013\n\u000bis_optional\u0018\u0002 \u0001(\bBE\n#io.envoyproxy.envoy.config.route.v3B\u0014RouteComponentsProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v.a(), p0.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.m.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a(), com.google.protobuf.g.a(), com.google.protobuf.w.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49471d;

    /* renamed from: d0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49472d0;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49473e;

    /* renamed from: e0  reason: collision with root package name */
    static final Descriptors.b f49474e0;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49475f;

    /* renamed from: f0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49476f0;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f49477g;

    /* renamed from: g0  reason: collision with root package name */
    static final Descriptors.b f49478g0;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f49479h;

    /* renamed from: h0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49480h0;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f49481i;

    /* renamed from: i0  reason: collision with root package name */
    static final Descriptors.b f49482i0;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f49483j;

    /* renamed from: j0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49484j0;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f49485k;

    /* renamed from: k0  reason: collision with root package name */
    static final Descriptors.b f49486k0;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f49487l;

    /* renamed from: l0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49488l0;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f49489m;

    /* renamed from: m0  reason: collision with root package name */
    static final Descriptors.b f49490m0;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f49491n;

    /* renamed from: n0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49492n0;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f49493o;

    /* renamed from: o0  reason: collision with root package name */
    static final Descriptors.b f49494o0;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f49495p;

    /* renamed from: p0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49496p0;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f49497q;

    /* renamed from: q0  reason: collision with root package name */
    static final Descriptors.b f49498q0;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f49499r;

    /* renamed from: r0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49500r0;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f49501s;

    /* renamed from: s0  reason: collision with root package name */
    static final Descriptors.b f49502s0;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f49503t;

    /* renamed from: t0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49504t0;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f49505u;

    /* renamed from: u0  reason: collision with root package name */
    static final Descriptors.b f49506u0;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f49507v;

    /* renamed from: v0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49508v0;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f49509w;

    /* renamed from: w0  reason: collision with root package name */
    static final Descriptors.b f49510w0;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f49511x;

    /* renamed from: x0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49512x0;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f49513y;

    /* renamed from: y0  reason: collision with root package name */
    static final Descriptors.b f49514y0;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f49515z;

    /* renamed from: z0  reason: collision with root package name */
    static final GeneratedMessageV3.e f49516z0;

    static {
        Descriptors.b bVar = a().m().get(0);
        f49462a = bVar;
        f49465b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Domains", "Routes", "RequireTls", "VirtualClusters", "RateLimits", "RequestHeadersToAdd", "RequestHeadersToRemove", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "Cors", "TypedPerFilterConfig", "IncludeRequestAttemptCount", "IncludeAttemptCountInResponse", "RetryPolicy", "RetryPolicyTypedConfig", "HedgePolicy", "PerRequestBufferLimitBytes"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49468c = bVar2;
        f49471d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        Descriptors.b bVar3 = a().m().get(1);
        f49473e = bVar3;
        f49475f = new GeneratedMessageV3.e(bVar3, new String[]{"Action"});
        Descriptors.b bVar4 = a().m().get(2);
        f49477g = bVar4;
        f49479h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "Match", "Route", "Redirect", "DirectResponse", "FilterAction", "NonForwardingAction", "Metadata", "Decorator", "TypedPerFilterConfig", "RequestHeadersToAdd", "RequestHeadersToRemove", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "Tracing", "PerRequestBufferLimitBytes", "Action"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f49481i = bVar5;
        f49483j = new GeneratedMessageV3.e(bVar5, new String[]{"Key", "Value"});
        Descriptors.b bVar6 = a().m().get(3);
        f49485k = bVar6;
        f49487l = new GeneratedMessageV3.e(bVar6, new String[]{"Clusters", "TotalWeight", "RuntimeKeyPrefix"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f49489m = bVar7;
        f49491n = new GeneratedMessageV3.e(bVar7, new String[]{"Name", "Weight", "MetadataMatch", "RequestHeadersToAdd", "RequestHeadersToRemove", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "TypedPerFilterConfig", "HostRewriteLiteral", "HostRewriteSpecifier"});
        Descriptors.b bVar8 = bVar7.o().get(0);
        f49493o = bVar8;
        f49495p = new GeneratedMessageV3.e(bVar8, new String[]{"Key", "Value"});
        Descriptors.b bVar9 = a().m().get(4);
        f49497q = bVar9;
        f49499r = new GeneratedMessageV3.e(bVar9, new String[]{"Prefix", "Path", "SafeRegex", "ConnectMatcher", "CaseSensitive", "RuntimeFraction", "Headers", "QueryParameters", "Grpc", "TlsContext", "PathSpecifier"});
        Descriptors.b bVar10 = bVar9.o().get(0);
        f49501s = bVar10;
        f49503t = new GeneratedMessageV3.e(bVar10, new String[0]);
        Descriptors.b bVar11 = bVar9.o().get(1);
        f49505u = bVar11;
        f49507v = new GeneratedMessageV3.e(bVar11, new String[]{"Presented", "Validated"});
        Descriptors.b bVar12 = bVar9.o().get(2);
        f49509w = bVar12;
        f49511x = new GeneratedMessageV3.e(bVar12, new String[0]);
        Descriptors.b bVar13 = a().m().get(5);
        f49513y = bVar13;
        f49515z = new GeneratedMessageV3.e(bVar13, new String[]{"AllowOriginStringMatch", "AllowMethods", "AllowHeaders", "ExposeHeaders", "MaxAge", "AllowCredentials", "FilterEnabled", "ShadowEnabled", "EnabledSpecifier"});
        Descriptors.b bVar14 = a().m().get(6);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Cluster", "ClusterHeader", "WeightedClusters", "ClusterSpecifierPlugin", "ClusterNotFoundResponseCode", "MetadataMatch", "PrefixRewrite", "RegexRewrite", "HostRewriteLiteral", "AutoHostRewrite", "HostRewriteHeader", "HostRewritePathRegex", "Timeout", "IdleTimeout", "RetryPolicy", "RetryPolicyTypedConfig", "RequestMirrorPolicies", "Priority", "RateLimits", "IncludeVhRateLimits", "HashPolicy", "Cors", "MaxGrpcTimeout", "GrpcTimeoutOffset", "UpgradeConfigs", "InternalRedirectPolicy", "InternalRedirectAction", "MaxInternalRedirects", "HedgePolicy", "MaxStreamDuration", "ClusterSpecifier", "HostRewriteSpecifier"});
        Descriptors.b bVar15 = bVar14.o().get(0);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Cluster", "RuntimeFraction", "TraceSampled"});
        Descriptors.b bVar16 = bVar14.o().get(1);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Header", "Cookie", "ConnectionProperties", "QueryParameter", "FilterState", "Terminal", "PolicySpecifier"});
        Descriptors.b bVar17 = bVar16.o().get(0);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"HeaderName", "RegexRewrite"});
        Descriptors.b bVar18 = bVar16.o().get(1);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"Name", "Ttl", "Path"});
        Descriptors.b bVar19 = bVar16.o().get(2);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"SourceIp"});
        Descriptors.b bVar20 = bVar16.o().get(3);
        M = bVar20;
        N = new GeneratedMessageV3.e(bVar20, new String[]{"Name"});
        Descriptors.b bVar21 = bVar16.o().get(4);
        O = bVar21;
        P = new GeneratedMessageV3.e(bVar21, new String[]{"Key"});
        Descriptors.b bVar22 = bVar14.o().get(2);
        Q = bVar22;
        R = new GeneratedMessageV3.e(bVar22, new String[]{"UpgradeType", "Enabled", "ConnectConfig"});
        Descriptors.b bVar23 = bVar22.o().get(0);
        S = bVar23;
        T = new GeneratedMessageV3.e(bVar23, new String[]{"ProxyProtocolConfig", "AllowPost"});
        Descriptors.b bVar24 = bVar14.o().get(3);
        U = bVar24;
        V = new GeneratedMessageV3.e(bVar24, new String[]{"MaxStreamDuration", "GrpcTimeoutHeaderMax", "GrpcTimeoutHeaderOffset"});
        Descriptors.b bVar25 = a().m().get(7);
        W = bVar25;
        X = new GeneratedMessageV3.e(bVar25, new String[]{"RetryOn", "NumRetries", "PerTryTimeout", "RetryPriority", "RetryHostPredicate", "HostSelectionRetryMaxAttempts", "RetriableStatusCodes", "RetryBackOff", "RateLimitedRetryBackOff", "RetriableHeaders", "RetriableRequestHeaders"});
        Descriptors.b bVar26 = bVar25.o().get(0);
        Y = bVar26;
        Z = new GeneratedMessageV3.e(bVar26, new String[]{"Name", "TypedConfig", "ConfigType"});
        Descriptors.b bVar27 = bVar25.o().get(1);
        f49463a0 = bVar27;
        f49466b0 = new GeneratedMessageV3.e(bVar27, new String[]{"Name", "TypedConfig", "ConfigType"});
        Descriptors.b bVar28 = bVar25.o().get(2);
        f49469c0 = bVar28;
        f49472d0 = new GeneratedMessageV3.e(bVar28, new String[]{"BaseInterval", "MaxInterval"});
        Descriptors.b bVar29 = bVar25.o().get(3);
        f49474e0 = bVar29;
        f49476f0 = new GeneratedMessageV3.e(bVar29, new String[]{"Name", "Format"});
        Descriptors.b bVar30 = bVar25.o().get(4);
        f49478g0 = bVar30;
        f49480h0 = new GeneratedMessageV3.e(bVar30, new String[]{"ResetHeaders", "MaxInterval"});
        Descriptors.b bVar31 = a().m().get(8);
        f49482i0 = bVar31;
        f49484j0 = new GeneratedMessageV3.e(bVar31, new String[]{"InitialRequests", "AdditionalRequestChance", "HedgeOnPerTryTimeout"});
        Descriptors.b bVar32 = a().m().get(9);
        f49486k0 = bVar32;
        f49488l0 = new GeneratedMessageV3.e(bVar32, new String[]{"HttpsRedirect", "SchemeRedirect", "HostRedirect", "PortRedirect", "PathRedirect", "PrefixRewrite", "RegexRewrite", "ResponseCode", "StripQuery", "SchemeRewriteSpecifier", "PathRewriteSpecifier"});
        Descriptors.b bVar33 = a().m().get(10);
        f49490m0 = bVar33;
        f49492n0 = new GeneratedMessageV3.e(bVar33, new String[]{"Status", "Body"});
        Descriptors.b bVar34 = a().m().get(11);
        f49494o0 = bVar34;
        f49496p0 = new GeneratedMessageV3.e(bVar34, new String[0]);
        Descriptors.b bVar35 = a().m().get(12);
        f49498q0 = bVar35;
        f49500r0 = new GeneratedMessageV3.e(bVar35, new String[]{"Operation", "Propagate"});
        Descriptors.b bVar36 = a().m().get(13);
        f49502s0 = bVar36;
        f49504t0 = new GeneratedMessageV3.e(bVar36, new String[]{"ClientSampling", "RandomSampling", "OverallSampling", "CustomTags"});
        Descriptors.b bVar37 = a().m().get(14);
        f49506u0 = bVar37;
        f49508v0 = new GeneratedMessageV3.e(bVar37, new String[]{"Headers", "Name"});
        Descriptors.b bVar38 = a().m().get(15);
        f49510w0 = bVar38;
        f49512x0 = new GeneratedMessageV3.e(bVar38, new String[]{"Stage", "DisableKey", "Actions", "Limit"});
        Descriptors.b bVar39 = bVar38.o().get(0);
        f49514y0 = bVar39;
        f49516z0 = new GeneratedMessageV3.e(bVar39, new String[]{"SourceCluster", "DestinationCluster", "RequestHeaders", "RemoteAddress", "GenericKey", "HeaderValueMatch", "DynamicMetadata", "Metadata", "Extension", "ActionSpecifier"});
        Descriptors.b bVar40 = bVar39.o().get(0);
        A0 = bVar40;
        B0 = new GeneratedMessageV3.e(bVar40, new String[0]);
        Descriptors.b bVar41 = bVar39.o().get(1);
        C0 = bVar41;
        D0 = new GeneratedMessageV3.e(bVar41, new String[0]);
        Descriptors.b bVar42 = bVar39.o().get(2);
        E0 = bVar42;
        F0 = new GeneratedMessageV3.e(bVar42, new String[]{"HeaderName", "DescriptorKey", "SkipIfAbsent"});
        Descriptors.b bVar43 = bVar39.o().get(3);
        G0 = bVar43;
        H0 = new GeneratedMessageV3.e(bVar43, new String[0]);
        Descriptors.b bVar44 = bVar39.o().get(4);
        I0 = bVar44;
        J0 = new GeneratedMessageV3.e(bVar44, new String[]{"DescriptorValue", "DescriptorKey"});
        Descriptors.b bVar45 = bVar39.o().get(5);
        K0 = bVar45;
        L0 = new GeneratedMessageV3.e(bVar45, new String[]{"DescriptorValue", "ExpectMatch", "Headers"});
        Descriptors.b bVar46 = bVar39.o().get(6);
        M0 = bVar46;
        N0 = new GeneratedMessageV3.e(bVar46, new String[]{"DescriptorKey", "MetadataKey", "DefaultValue"});
        Descriptors.b bVar47 = bVar39.o().get(7);
        O0 = bVar47;
        P0 = new GeneratedMessageV3.e(bVar47, new String[]{"DescriptorKey", "MetadataKey", "DefaultValue", "Source"});
        Descriptors.b bVar48 = bVar38.o().get(1);
        Q0 = bVar48;
        R0 = new GeneratedMessageV3.e(bVar48, new String[]{"DynamicMetadata", "OverrideSpecifier"});
        Descriptors.b bVar49 = bVar48.o().get(0);
        S0 = bVar49;
        T0 = new GeneratedMessageV3.e(bVar49, new String[]{"MetadataKey"});
        Descriptors.b bVar50 = a().m().get(16);
        U0 = bVar50;
        V0 = new GeneratedMessageV3.e(bVar50, new String[]{"Name", "ExactMatch", "SafeRegexMatch", "RangeMatch", "PresentMatch", "PrefixMatch", "SuffixMatch", "ContainsMatch", "StringMatch", "InvertMatch", "HeaderMatchSpecifier"});
        Descriptors.b bVar51 = a().m().get(17);
        W0 = bVar51;
        X0 = new GeneratedMessageV3.e(bVar51, new String[]{"Name", "StringMatch", "PresentMatch", "QueryParameterMatchSpecifier"});
        Descriptors.b bVar52 = a().m().get(18);
        Y0 = bVar52;
        Z0 = new GeneratedMessageV3.e(bVar52, new String[]{"MaxInternalRedirects", "RedirectResponseCodes", "Predicates", "AllowCrossSchemeRedirect"});
        Descriptors.b bVar53 = a().m().get(19);
        f49464a1 = bVar53;
        f49467b1 = new GeneratedMessageV3.e(bVar53, new String[]{"Config", "IsOptional"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45757a);
        k10.f(Migrate.f50818b);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49470c1, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v.a();
        p0.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.m.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a();
        com.google.protobuf.g.a();
        com.google.protobuf.w.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49470c1;
    }
}
