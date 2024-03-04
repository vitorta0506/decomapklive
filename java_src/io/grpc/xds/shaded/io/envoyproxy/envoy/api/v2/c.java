package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class c {
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
    static final Descriptors.b M;
    static final GeneratedMessageV3.e N;
    private static Descriptors.FileDescriptor O = Descriptors.FileDescriptor.s(new String[]{"\n\u001aenvoy/api/v2/cluster.proto\u0012\fenvoy.api.v2\u001a\u001benvoy/api/v2/auth/tls.proto\u001a*envoy/api/v2/cluster/circuit_breaker.proto\u001a!envoy/api/v2/cluster/filter.proto\u001a,envoy/api/v2/cluster/outlier_detection.proto\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a%envoy/api/v2/core/config_source.proto\u001a$envoy/api/v2/core/health_check.proto\u001a envoy/api/v2/core/protocol.proto\u001a\u001benvoy/api/v2/endpoint.proto\u001a\u0018envoy/type/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00ad.\n\u0007Cluster\u0012L\n\u0018transport_socket_matches\u0018+ \u0003(\u000b2*.envoy.api.v2.Cluster.TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0015\n\ralt_stat_name\u0018\u001c \u0001(\t\u0012=\n\u0004type\u0018\u0002 \u0001(\u000e2#.envoy.api.v2.Cluster.DiscoveryTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001H\u0000\u0012?\n\fcluster_type\u0018& \u0001(\u000b2'.envoy.api.v2.Cluster.CustomClusterTypeH\u0000\u0012B\n\u0012eds_cluster_config\u0018\u0003 \u0001(\u000b2&.envoy.api.v2.Cluster.EdsClusterConfig\u0012<\n\u000fconnect_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012G\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012;\n\tlb_policy\u0018\u0006 \u0001(\u000e2\u001e.envoy.api.v2.Cluster.LbPolicyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012-\n\u0005hosts\u0018\u0007 \u0003(\u000b2\u001a.envoy.api.v2.core.AddressB\u0002\u0018\u0001\u0012<\n\u000fload_assignment\u0018! \u0001(\u000b2#.envoy.api.v2.ClusterLoadAssignment\u00125\n\rhealth_checks\u0018\b \u0003(\u000b2\u001e.envoy.api.v2.core.HealthCheck\u0012A\n\u001bmax_requests_per_connection\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012?\n\u0010circuit_breakers\u0018\n \u0001(\u000b2%.envoy.api.v2.cluster.CircuitBreakers\u0012D\n\u000btls_context\u0018\u000b \u0001(\u000b2%.envoy.api.v2.auth.UpstreamTlsContextB\b\u0018\u0001¸îòÒ\u0005\u0001\u0012V\n\u001eupstream_http_protocol_options\u0018. \u0001(\u000b2..envoy.api.v2.core.UpstreamHttpProtocolOptions\u0012L\n\u001ccommon_http_protocol_options\u0018\u001d \u0001(\u000b2&.envoy.api.v2.core.HttpProtocolOptions\u0012F\n\u0015http_protocol_options\u0018\r \u0001(\u000b2'.envoy.api.v2.core.Http1ProtocolOptions\u0012G\n\u0016http2_protocol_options\u0018\u000e \u0001(\u000b2'.envoy.api.v2.core.Http2ProtocolOptions\u0012a\n\u001aextension_protocol_options\u0018# \u0003(\u000b23.envoy.api.v2.Cluster.ExtensionProtocolOptionsEntryB\b\u0018\u0001¸îòÒ\u0005\u0001\u0012b\n typed_extension_protocol_options\u0018$ \u0003(\u000b28.envoy.api.v2.Cluster.TypedExtensionProtocolOptionsEntry\u0012A\n\u0010dns_refresh_rate\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\fúB\tª\u0001\u0006*\u0004\u0010À\u0084=\u0012C\n\u0018dns_failure_refresh_rate\u0018, \u0001(\u000b2!.envoy.api.v2.Cluster.RefreshRate\u0012\u0017\n\u000frespect_dns_ttl\u0018' \u0001(\b\u0012J\n\u0011dns_lookup_family\u0018\u0011 \u0001(\u000e2%.envoy.api.v2.Cluster.DnsLookupFamilyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00121\n\rdns_resolvers\u0018\u0012 \u0003(\u000b2\u001a.envoy.api.v2.core.Address\u0012\u001f\n\u0017use_tcp_for_dns_lookups\u0018- \u0001(\b\u0012A\n\u0011outlier_detection\u0018\u0013 \u0001(\u000b2&.envoy.api.v2.cluster.OutlierDetection\u0012=\n\u0010cleanup_interval\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012;\n\u0014upstream_bind_config\u0018\u0015 \u0001(\u000b2\u001d.envoy.api.v2.core.BindConfig\u0012>\n\u0010lb_subset_config\u0018\u0016 \u0001(\u000b2$.envoy.api.v2.Cluster.LbSubsetConfig\u0012E\n\u0013ring_hash_lb_config\u0018\u0017 \u0001(\u000b2&.envoy.api.v2.Cluster.RingHashLbConfigH\u0001\u0012K\n\u0016original_dst_lb_config\u0018\" \u0001(\u000b2).envoy.api.v2.Cluster.OriginalDstLbConfigH\u0001\u0012M\n\u0017least_request_lb_config\u0018% \u0001(\u000b2*.envoy.api.v2.Cluster.LeastRequestLbConfigH\u0001\u0012>\n\u0010common_lb_config\u0018\u001b \u0001(\u000b2$.envoy.api.v2.Cluster.CommonLbConfig\u0012<\n\u0010transport_socket\u0018\u0018 \u0001(\u000b2\".envoy.api.v2.core.TransportSocket\u0012-\n\bmetadata\u0018\u0019 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012J\n\u0012protocol_selection\u0018\u001a \u0001(\u000e2..envoy.api.v2.Cluster.ClusterProtocolSelection\u0012L\n\u001bupstream_connection_options\u0018\u001e \u0001(\u000b2'.envoy.api.v2.UpstreamConnectionOptions\u00120\n(close_connections_on_host_health_failure\u0018\u001f \u0001(\b\u0012P\n!drain_connections_on_host_removal\u0018  \u0001(\bB%ò\u0098þ\u008f\u0005\u001f\n\u001dignore_health_on_host_removal\u0012-\n\u0007filters\u0018( \u0003(\u000b2\u001c.envoy.api.v2.cluster.Filter\u0012@\n\u0015load_balancing_policy\u0018) \u0001(\u000b2!.envoy.api.v2.LoadBalancingPolicy\u00123\n\nlrs_server\u0018* \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSource\u0012\u001d\n\u0015track_timeout_budgets\u0018/ \u0001(\b\u001a\u0093\u0001\n\u0014TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012&\n\u0005match\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012<\n\u0010transport_socket\u0018\u0003 \u0001(\u000b2\".envoy.api.v2.core.TransportSocket\u001aV\n\u0011CustomClusterType\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012*\n\ftyped_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u001a]\n\u0010EdsClusterConfig\u00123\n\neds_config\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSource\u0012\u0014\n\fservice_name\u0018\u0002 \u0001(\t\u001aã\u0005\n\u000eLbSubsetConfig\u0012^\n\u000ffallback_policy\u0018\u0001 \u0001(\u000e2;.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetFallbackPolicyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012/\n\u000edefault_subset\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012O\n\u0010subset_selectors\u0018\u0003 \u0003(\u000b25.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector\u0012\u001d\n\u0015locality_weight_aware\u0018\u0004 \u0001(\b\u0012\u001d\n\u0015scale_locality_weight\u0018\u0005 \u0001(\b\u0012\u0016\n\u000epanic_mode_any\u0018\u0006 \u0001(\b\u0012\u0013\n\u000blist_as_any\u0018\u0007 \u0001(\b\u001a²\u0002\n\u0010LbSubsetSelector\u0012\f\n\u0004keys\u0018\u0001 \u0003(\t\u0012w\n\u000ffallback_policy\u0018\u0002 \u0001(\u000e2T.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u0014fallback_keys_subset\u0018\u0003 \u0003(\t\"y\n\u001eLbSubsetSelectorFallbackPolicy\u0012\u000f\n\u000bNOT_DEFINED\u0010\u0000\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0001\u0012\u0010\n\fANY_ENDPOINT\u0010\u0002\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0003\u0012\u000f\n\u000bKEYS_SUBSET\u0010\u0004\"O\n\u0016LbSubsetFallbackPolicy\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0000\u0012\u0010\n\fANY_ENDPOINT\u0010\u0001\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0002\u001aS\n\u0014LeastRequestLbConfig\u0012;\n\fchoice_count\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0002\u001a¨\u0002\n\u0010RingHashLbConfig\u0012C\n\u0011minimum_ring_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\núB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\u0012T\n\rhash_function\u0018\u0003 \u0001(\u000e23.envoy.api.v2.Cluster.RingHashLbConfig.HashFunctionB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012C\n\u0011maximum_ring_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\núB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\".\n\fHashFunction\u0012\u000b\n\u0007XX_HASH\u0010\u0000\u0012\u0011\n\rMURMUR_HASH_2\u0010\u0001J\u0004\b\u0002\u0010\u0003\u001a.\n\u0013OriginalDstLbConfig\u0012\u0017\n\u000fuse_http_header\u0018\u0001 \u0001(\b\u001a\u008c\u0006\n\u000eCommonLbConfig\u00124\n\u0017healthy_panic_threshold\u0018\u0001 \u0001(\u000b2\u0013.envoy.type.Percent\u0012V\n\u0014zone_aware_lb_config\u0018\u0002 \u0001(\u000b26.envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfigH\u0000\u0012d\n\u001blocality_weighted_lb_config\u0018\u0003 \u0001(\u000b2=.envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfigH\u0000\u00126\n\u0013update_merge_window\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012'\n\u001fignore_new_hosts_until_first_hc\u0018\u0005 \u0001(\b\u0012,\n$close_connections_on_host_set_change\u0018\u0006 \u0001(\b\u0012d\n\u001cconsistent_hashing_lb_config\u0018\u0007 \u0001(\u000b2>.envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig\u001a\u0098\u0001\n\u0011ZoneAwareLbConfig\u0012,\n\u000frouting_enabled\u0018\u0001 \u0001(\u000b2\u0013.envoy.type.Percent\u00126\n\u0010min_cluster_size\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt64Value\u0012\u001d\n\u0015fail_traffic_on_panic\u0018\u0003 \u0001(\b\u001a\u001a\n\u0018LocalityWeightedLbConfig\u001a=\n\u0019ConsistentHashingLbConfig\u0012 \n\u0018use_hostname_for_hashing\u0018\u0001 \u0001(\bB\u001b\n\u0019locality_config_specifier\u001a\u008e\u0001\n\u000bRefreshRate\u0012@\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000eúB\u000bª\u0001\b\b\u0001*\u0004\u0010À\u0084=\u0012=\n\fmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\fúB\tª\u0001\u0006*\u0004\u0010À\u0084=\u001aX\n\u001dExtensionProtocolOptionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\u001aZ\n\"TypedExtensionProtocolOptionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001\"W\n\rDiscoveryType\u0012\n\n\u0006STATIC\u0010\u0000\u0012\u000e\n\nSTRICT_DNS\u0010\u0001\u0012\u000f\n\u000bLOGICAL_DNS\u0010\u0002\u0012\u0007\n\u0003EDS\u0010\u0003\u0012\u0010\n\fORIGINAL_DST\u0010\u0004\"¬\u0001\n\bLbPolicy\u0012\u000f\n\u000bROUND_ROBIN\u0010\u0000\u0012\u0011\n\rLEAST_REQUEST\u0010\u0001\u0012\r\n\tRING_HASH\u0010\u0002\u0012\n\n\u0006RANDOM\u0010\u0003\u0012\u001d\n\u000fORIGINAL_DST_LB\u0010\u0004\u001a\b\b\u0001¨÷´\u008b\u0002\u0001\u0012\n\n\u0006MAGLEV\u0010\u0005\u0012\u0014\n\u0010CLUSTER_PROVIDED\u0010\u0006\u0012 \n\u001cLOAD_BALANCING_POLICY_CONFIG\u0010\u0007\"5\n\u000fDnsLookupFamily\u0012\b\n\u0004AUTO\u0010\u0000\u0012\u000b\n\u0007V4_ONLY\u0010\u0001\u0012\u000b\n\u0007V6_ONLY\u0010\u0002\"T\n\u0018ClusterProtocolSelection\u0012\u001b\n\u0017USE_CONFIGURED_PROTOCOL\u0010\u0000\u0012\u001b\n\u0017USE_DOWNSTREAM_PROTOCOL\u0010\u0001B\u0018\n\u0016cluster_discovery_typeB\u000b\n\tlb_configJ\u0004\b\f\u0010\rJ\u0004\b\u000f\u0010\u0010\"Â\u0001\n\u0013LoadBalancingPolicy\u0012:\n\bpolicies\u0018\u0001 \u0003(\u000b2(.envoy.api.v2.LoadBalancingPolicy.Policy\u001ao\n\u0006Policy\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012+\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001\u0012*\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any\"H\n\u0012UpstreamBindConfig\u00122\n\u000esource_address\u0018\u0001 \u0001(\u000b2\u001a.envoy.api.v2.core.Address\"S\n\u0019UpstreamConnectionOptions\u00126\n\rtcp_keepalive\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.TcpKeepaliveBS\n\u001aio.envoyproxy.envoy.api.v2B\fClusterProtoP\u0001ò\u0098þ\u008f\u0005\u0019\u0012\u0017envoy.config.cluster.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.k.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.d.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.f.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l.a(), w.a(), g0.a(), f.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a(), com.google.protobuf.g.a(), com.google.protobuf.w.a(), v2.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46265a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46266b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46267c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46268d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46269e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46270f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46271g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46272h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46273i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46274j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46275k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46276l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f46277m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f46278n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f46279o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f46280p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f46281q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f46282r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f46283s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f46284t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f46285u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f46286v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f46287w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f46288x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f46289y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f46290z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f46265a = bVar;
        f46266b = new GeneratedMessageV3.e(bVar, new String[]{"TransportSocketMatches", "Name", "AltStatName", "Type", "ClusterType", "EdsClusterConfig", "ConnectTimeout", "PerConnectionBufferLimitBytes", "LbPolicy", "Hosts", "LoadAssignment", "HealthChecks", "MaxRequestsPerConnection", "CircuitBreakers", "TlsContext", "UpstreamHttpProtocolOptions", "CommonHttpProtocolOptions", "HttpProtocolOptions", "Http2ProtocolOptions", "ExtensionProtocolOptions", "TypedExtensionProtocolOptions", "DnsRefreshRate", "DnsFailureRefreshRate", "RespectDnsTtl", "DnsLookupFamily", "DnsResolvers", "UseTcpForDnsLookups", "OutlierDetection", "CleanupInterval", "UpstreamBindConfig", "LbSubsetConfig", "RingHashLbConfig", "OriginalDstLbConfig", "LeastRequestLbConfig", "CommonLbConfig", "TransportSocket", "Metadata", "ProtocolSelection", "UpstreamConnectionOptions", "CloseConnectionsOnHostHealthFailure", "DrainConnectionsOnHostRemoval", "Filters", "LoadBalancingPolicy", "LrsServer", "TrackTimeoutBudgets", "ClusterDiscoveryType", "LbConfig"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f46267c = bVar2;
        f46268d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "Match", "TransportSocket"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f46269e = bVar3;
        f46270f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "TypedConfig"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f46271g = bVar4;
        f46272h = new GeneratedMessageV3.e(bVar4, new String[]{"EdsConfig", "ServiceName"});
        Descriptors.b bVar5 = bVar.o().get(3);
        f46273i = bVar5;
        f46274j = new GeneratedMessageV3.e(bVar5, new String[]{"FallbackPolicy", "DefaultSubset", "SubsetSelectors", "LocalityWeightAware", "ScaleLocalityWeight", "PanicModeAny", "ListAsAny"});
        Descriptors.b bVar6 = bVar5.o().get(0);
        f46275k = bVar6;
        f46276l = new GeneratedMessageV3.e(bVar6, new String[]{"Keys", "FallbackPolicy", "FallbackKeysSubset"});
        Descriptors.b bVar7 = bVar.o().get(4);
        f46277m = bVar7;
        f46278n = new GeneratedMessageV3.e(bVar7, new String[]{"ChoiceCount"});
        Descriptors.b bVar8 = bVar.o().get(5);
        f46279o = bVar8;
        f46280p = new GeneratedMessageV3.e(bVar8, new String[]{"MinimumRingSize", "HashFunction", "MaximumRingSize"});
        Descriptors.b bVar9 = bVar.o().get(6);
        f46281q = bVar9;
        f46282r = new GeneratedMessageV3.e(bVar9, new String[]{"UseHttpHeader"});
        Descriptors.b bVar10 = bVar.o().get(7);
        f46283s = bVar10;
        f46284t = new GeneratedMessageV3.e(bVar10, new String[]{"HealthyPanicThreshold", "ZoneAwareLbConfig", "LocalityWeightedLbConfig", "UpdateMergeWindow", "IgnoreNewHostsUntilFirstHc", "CloseConnectionsOnHostSetChange", "ConsistentHashingLbConfig", "LocalityConfigSpecifier"});
        Descriptors.b bVar11 = bVar10.o().get(0);
        f46285u = bVar11;
        f46286v = new GeneratedMessageV3.e(bVar11, new String[]{"RoutingEnabled", "MinClusterSize", "FailTrafficOnPanic"});
        Descriptors.b bVar12 = bVar10.o().get(1);
        f46287w = bVar12;
        f46288x = new GeneratedMessageV3.e(bVar12, new String[0]);
        Descriptors.b bVar13 = bVar10.o().get(2);
        f46289y = bVar13;
        f46290z = new GeneratedMessageV3.e(bVar13, new String[]{"UseHostnameForHashing"});
        Descriptors.b bVar14 = bVar.o().get(8);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"BaseInterval", "MaxInterval"});
        Descriptors.b bVar15 = bVar.o().get(9);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Key", "Value"});
        Descriptors.b bVar16 = bVar.o().get(10);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Key", "Value"});
        Descriptors.b bVar17 = a().m().get(1);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Policies"});
        Descriptors.b bVar18 = bVar17.o().get(0);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"Name", "Config", "TypedConfig"});
        Descriptors.b bVar19 = a().m().get(2);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"SourceAddress"});
        Descriptors.b bVar20 = a().m().get(3);
        M = bVar20;
        N = new GeneratedMessageV3.e(bVar20, new String[]{"TcpKeepalive"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45757a);
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45759c);
        k10.f(Migrate.f50818b);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(O, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.k.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.d.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.f.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l.a();
        w.a();
        g0.a();
        f.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a();
        com.google.protobuf.g.a();
        com.google.protobuf.w.a();
        v2.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return O;
    }
}
