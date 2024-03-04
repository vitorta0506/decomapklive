package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.t0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Security;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class d {
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
    static final Descriptors.b O;
    static final GeneratedMessageV3.e P;
    static final Descriptors.b Q;
    static final GeneratedMessageV3.e R;
    static final Descriptors.b S;
    static final GeneratedMessageV3.e T;
    private static Descriptors.FileDescriptor U = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/config/cluster/v3/cluster.proto\u0012\u0017envoy.config.cluster.v3\u001a-envoy/config/cluster/v3/circuit_breaker.proto\u001a$envoy/config/cluster/v3/filter.proto\u001a/envoy/config/cluster/v3/outlier_detection.proto\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a$envoy/config/core/v3/extension.proto\u001a'envoy/config/core/v3/health_check.proto\u001a#envoy/config/core/v3/protocol.proto\u001a#envoy/config/core/v3/resolver.proto\u001a'envoy/config/endpoint/v3/endpoint.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\"xds/core/v3/collection_entry.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"B\n\u0011ClusterCollection\u0012-\n\u0007entries\u0018\u0001 \u0001(\u000b2\u001c.xds.core.v3.CollectionEntry\"¥=\n\u0007Cluster\u0012W\n\u0018transport_socket_matches\u0018+ \u0003(\u000b25.envoy.config.cluster.v3.Cluster.TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00121\n\ralt_stat_name\u0018\u001c \u0001(\tB\u001aò\u0098þ\u008f\u0005\u0014\n\u0012observability_name\u0012H\n\u0004type\u0018\u0002 \u0001(\u000e2..envoy.config.cluster.v3.Cluster.DiscoveryTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001H\u0000\u0012J\n\fcluster_type\u0018& \u0001(\u000b22.envoy.config.cluster.v3.Cluster.CustomClusterTypeH\u0000\u0012M\n\u0012eds_cluster_config\u0018\u0003 \u0001(\u000b21.envoy.config.cluster.v3.Cluster.EdsClusterConfig\u0012<\n\u000fconnect_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012P\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u008a\u0093·*\u0002\u0010\u0001\u0012F\n\tlb_policy\u0018\u0006 \u0001(\u000e2).envoy.config.cluster.v3.Cluster.LbPolicyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012H\n\u000fload_assignment\u0018! \u0001(\u000b2/.envoy.config.endpoint.v3.ClusterLoadAssignment\u00128\n\rhealth_checks\u0018\b \u0003(\u000b2!.envoy.config.core.v3.HealthCheck\u0012N\n\u001bmax_requests_per_connection\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012B\n\u0010circuit_breakers\u0018\n \u0001(\u000b2(.envoy.config.cluster.v3.CircuitBreakers\u0012f\n\u001eupstream_http_protocol_options\u0018. \u0001(\u000b21.envoy.config.core.v3.UpstreamHttpProtocolOptionsB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012\\\n\u001ccommon_http_protocol_options\u0018\u001d \u0001(\u000b2).envoy.config.core.v3.HttpProtocolOptionsB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012V\n\u0015http_protocol_options\u0018\r \u0001(\u000b2*.envoy.config.core.v3.Http1ProtocolOptionsB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012^\n\u0016http2_protocol_options\u0018\u000e \u0001(\u000b2*.envoy.config.core.v3.Http2ProtocolOptionsB\u0012\u0018\u0001\u008a\u0093·*\u0002\u0010\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012m\n typed_extension_protocol_options\u0018$ \u0003(\u000b2C.envoy.config.cluster.v3.Cluster.TypedExtensionProtocolOptionsEntry\u0012A\n\u0010dns_refresh_rate\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\fúB\tª\u0001\u0006*\u0004\u0010À\u0084=\u0012N\n\u0018dns_failure_refresh_rate\u0018, \u0001(\u000b2,.envoy.config.cluster.v3.Cluster.RefreshRate\u0012\u0017\n\u000frespect_dns_ttl\u0018' \u0001(\b\u0012U\n\u0011dns_lookup_family\u0018\u0011 \u0001(\u000e20.envoy.config.cluster.v3.Cluster.DnsLookupFamilyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012A\n\rdns_resolvers\u0018\u0012 \u0003(\u000b2\u001d.envoy.config.core.v3.AddressB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012,\n\u0017use_tcp_for_dns_lookups\u0018- \u0001(\bB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012H\n\u0015dns_resolution_config\u00185 \u0001(\u000b2).envoy.config.core.v3.DnsResolutionConfig\u0012M\n\u0019typed_dns_resolver_config\u00187 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u00129\n\u0015wait_for_warm_on_init\u00186 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012D\n\u0011outlier_detection\u0018\u0013 \u0001(\u000b2).envoy.config.cluster.v3.OutlierDetection\u0012=\n\u0010cleanup_interval\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012>\n\u0014upstream_bind_config\u0018\u0015 \u0001(\u000b2 .envoy.config.core.v3.BindConfig\u0012I\n\u0010lb_subset_config\u0018\u0016 \u0001(\u000b2/.envoy.config.cluster.v3.Cluster.LbSubsetConfig\u0012P\n\u0013ring_hash_lb_config\u0018\u0017 \u0001(\u000b21.envoy.config.cluster.v3.Cluster.RingHashLbConfigH\u0001\u0012K\n\u0010maglev_lb_config\u00184 \u0001(\u000b2/.envoy.config.cluster.v3.Cluster.MaglevLbConfigH\u0001\u0012V\n\u0016original_dst_lb_config\u0018\" \u0001(\u000b24.envoy.config.cluster.v3.Cluster.OriginalDstLbConfigH\u0001\u0012X\n\u0017least_request_lb_config\u0018% \u0001(\u000b25.envoy.config.cluster.v3.Cluster.LeastRequestLbConfigH\u0001\u0012I\n\u0010common_lb_config\u0018\u001b \u0001(\u000b2/.envoy.config.cluster.v3.Cluster.CommonLbConfig\u0012?\n\u0010transport_socket\u0018\u0018 \u0001(\u000b2%.envoy.config.core.v3.TransportSocket\u00120\n\bmetadata\u0018\u0019 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012b\n\u0012protocol_selection\u0018\u001a \u0001(\u000e29.envoy.config.cluster.v3.Cluster.ClusterProtocolSelectionB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012W\n\u001bupstream_connection_options\u0018\u001e \u0001(\u000b22.envoy.config.cluster.v3.UpstreamConnectionOptions\u00120\n(close_connections_on_host_health_failure\u0018\u001f \u0001(\b\u0012%\n\u001dignore_health_on_host_removal\u0018  \u0001(\b\u00120\n\u0007filters\u0018( \u0003(\u000b2\u001f.envoy.config.cluster.v3.Filter\u0012K\n\u0015load_balancing_policy\u0018) \u0001(\u000b2,.envoy.config.cluster.v3.LoadBalancingPolicy\u00126\n\nlrs_server\u0018* \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012*\n\u0015track_timeout_budgets\u0018/ \u0001(\bB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012C\n\u000fupstream_config\u00180 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012G\n\u0013track_cluster_stats\u00181 \u0001(\u000b2*.envoy.config.cluster.v3.TrackClusterStats\u0012L\n\u0011preconnect_policy\u00182 \u0001(\u000b21.envoy.config.cluster.v3.Cluster.PreconnectPolicy\u00121\n)connection_pool_per_downstream_connection\u00183 \u0001(\b\u001aÈ\u0001\n\u0014TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012&\n\u0005match\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012?\n\u0010transport_socket\u0018\u0003 \u0001(\u000b2%.envoy.config.core.v3.TransportSocket:0\u009aÅ\u0088\u001e+\n)envoy.api.v2.Cluster.TransportSocketMatch\u001a\u0085\u0001\n\u0011CustomClusterType\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012*\n\ftyped_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:-\u009aÅ\u0088\u001e(\n&envoy.api.v2.Cluster.CustomClusterType\u001a\u008e\u0001\n\u0010EdsClusterConfig\u00126\n\neds_config\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u0014\n\fservice_name\u0018\u0002 \u0001(\t:,\u009aÅ\u0088\u001e'\n%envoy.api.v2.Cluster.EdsClusterConfig\u001a\u008e\u0007\n\u000eLbSubsetConfig\u0012i\n\u000ffallback_policy\u0018\u0001 \u0001(\u000e2F.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012/\n\u000edefault_subset\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012Z\n\u0010subset_selectors\u0018\u0003 \u0003(\u000b2@.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector\u0012\u001d\n\u0015locality_weight_aware\u0018\u0004 \u0001(\b\u0012\u001d\n\u0015scale_locality_weight\u0018\u0005 \u0001(\b\u0012\u0016\n\u000epanic_mode_any\u0018\u0006 \u0001(\b\u0012\u0013\n\u000blist_as_any\u0018\u0007 \u0001(\b\u001a\u009b\u0003\n\u0010LbSubsetSelector\u0012\f\n\u0004keys\u0018\u0001 \u0003(\t\u0012\u001e\n\u0016single_host_per_subset\u0018\u0004 \u0001(\b\u0012\u0082\u0001\n\u000ffallback_policy\u0018\u0002 \u0001(\u000e2_.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u0014fallback_keys_subset\u0018\u0003 \u0003(\t\"y\n\u001eLbSubsetSelectorFallbackPolicy\u0012\u000f\n\u000bNOT_DEFINED\u0010\u0000\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0001\u0012\u0010\n\fANY_ENDPOINT\u0010\u0002\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0003\u0012\u000f\n\u000bKEYS_SUBSET\u0010\u0004:;\u009aÅ\u0088\u001e6\n4envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector\"O\n\u0016LbSubsetFallbackPolicy\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0000\u0012\u0010\n\fANY_ENDPOINT\u0010\u0001\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0002:*\u009aÅ\u0088\u001e%\n#envoy.api.v2.Cluster.LbSubsetConfig\u001aÇ\u0001\n\u0014LeastRequestLbConfig\u0012;\n\fchoice_count\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0002\u0012@\n\u0013active_request_bias\u0018\u0002 \u0001(\u000b2#.envoy.config.core.v3.RuntimeDouble:0\u009aÅ\u0088\u001e+\n)envoy.api.v2.Cluster.LeastRequestLbConfig\u001aá\u0002\n\u0010RingHashLbConfig\u0012C\n\u0011minimum_ring_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\núB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\u0012_\n\rhash_function\u0018\u0003 \u0001(\u000e2>.envoy.config.cluster.v3.Cluster.RingHashLbConfig.HashFunctionB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012C\n\u0011maximum_ring_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\núB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\".\n\fHashFunction\u0012\u000b\n\u0007XX_HASH\u0010\u0000\u0012\u0011\n\rMURMUR_HASH_2\u0010\u0001:,\u009aÅ\u0088\u001e'\n%envoy.api.v2.Cluster.RingHashLbConfigJ\u0004\b\u0002\u0010\u0003\u001aN\n\u000eMaglevLbConfig\u0012<\n\ntable_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\núB\u00072\u0005\u0018Ë\u0096±\u0002\u001a_\n\u0013OriginalDstLbConfig\u0012\u0017\n\u000fuse_http_header\u0018\u0001 \u0001(\b:/\u009aÅ\u0088\u001e*\n(envoy.api.v2.Cluster.OriginalDstLbConfig\u001aí\b\n\u000eCommonLbConfig\u00127\n\u0017healthy_panic_threshold\u0018\u0001 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012a\n\u0014zone_aware_lb_config\u0018\u0002 \u0001(\u000b2A.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfigH\u0000\u0012o\n\u001blocality_weighted_lb_config\u0018\u0003 \u0001(\u000b2H.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfigH\u0000\u00126\n\u0013update_merge_window\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012'\n\u001fignore_new_hosts_until_first_hc\u0018\u0005 \u0001(\b\u0012,\n$close_connections_on_host_set_change\u0018\u0006 \u0001(\b\u0012o\n\u001cconsistent_hashing_lb_config\u0018\u0007 \u0001(\u000b2I.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig\u001aÙ\u0001\n\u0011ZoneAwareLbConfig\u0012/\n\u000frouting_enabled\u0018\u0001 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u00126\n\u0010min_cluster_size\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt64Value\u0012\u001d\n\u0015fail_traffic_on_panic\u0018\u0003 \u0001(\b:<\u009aÅ\u0088\u001e7\n5envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig\u001a_\n\u0018LocalityWeightedLbConfig:C\u009aÅ\u0088\u001e>\n<envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig\u001aÇ\u0001\n\u0019ConsistentHashingLbConfig\u0012 \n\u0018use_hostname_for_hashing\u0018\u0001 \u0001(\b\u0012B\n\u0013hash_balance_factor\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(d:D\u009aÅ\u0088\u001e?\n=envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig:*\u009aÅ\u0088\u001e%\n#envoy.api.v2.Cluster.CommonLbConfigB\u001b\n\u0019locality_config_specifier\u001a·\u0001\n\u000bRefreshRate\u0012@\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000eúB\u000bª\u0001\b\b\u0001*\u0004\u0010À\u0084=\u0012=\n\fmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\fúB\tª\u0001\u0006*\u0004\u0010À\u0084=:'\u009aÅ\u0088\u001e\"\n envoy.api.v2.Cluster.RefreshRate\u001aÌ\u0001\n\u0010PreconnectPolicy\u0012\\\n\u001dper_upstream_preconnect_ratio\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.DoubleValueB\u0017úB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000\b@)\u0000\u0000\u0000\u0000\u0000\u0000ð?\u0012Z\n\u001bpredictive_preconnect_ratio\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValueB\u0017úB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000\b@)\u0000\u0000\u0000\u0000\u0000\u0000ð?\u001aZ\n\"TypedExtensionProtocolOptionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001\"W\n\rDiscoveryType\u0012\n\n\u0006STATIC\u0010\u0000\u0012\u000e\n\nSTRICT_DNS\u0010\u0001\u0012\u000f\n\u000bLOGICAL_DNS\u0010\u0002\u0012\u0007\n\u0003EDS\u0010\u0003\u0012\u0010\n\fORIGINAL_DST\u0010\u0004\"¤\u0001\n\bLbPolicy\u0012\u000f\n\u000bROUND_ROBIN\u0010\u0000\u0012\u0011\n\rLEAST_REQUEST\u0010\u0001\u0012\r\n\tRING_HASH\u0010\u0002\u0012\n\n\u0006RANDOM\u0010\u0003\u0012\n\n\u0006MAGLEV\u0010\u0005\u0012\u0014\n\u0010CLUSTER_PROVIDED\u0010\u0006\u0012 \n\u001cLOAD_BALANCING_POLICY_CONFIG\u0010\u0007\"\u0004\b\u0004\u0010\u0004*\u000fORIGINAL_DST_LB\"5\n\u000fDnsLookupFamily\u0012\b\n\u0004AUTO\u0010\u0000\u0012\u000b\n\u0007V4_ONLY\u0010\u0001\u0012\u000b\n\u0007V6_ONLY\u0010\u0002\"T\n\u0018ClusterProtocolSelection\u0012\u001b\n\u0017USE_CONFIGURED_PROTOCOL\u0010\u0000\u0012\u001b\n\u0017USE_DOWNSTREAM_PROTOCOL\u0010\u0001:\u001b\u009aÅ\u0088\u001e\u0016\n\u0014envoy.api.v2.ClusterB\u0018\n\u0016cluster_discovery_typeB\u000b\n\tlb_configJ\u0004\b\f\u0010\rJ\u0004\b\u000f\u0010\u0010J\u0004\b\u0007\u0010\bJ\u0004\b\u000b\u0010\fJ\u0004\b#\u0010$R\u0005hostsR\u000btls_contextR\u001aextension_protocol_options\"º\u0002\n\u0013LoadBalancingPolicy\u0012E\n\bpolicies\u0018\u0001 \u0003(\u000b23.envoy.config.cluster.v3.LoadBalancingPolicy.Policy\u001a²\u0001\n\u0006Policy\u0012J\n\u0016typed_extension_config\u0018\u0004 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig:.\u009aÅ\u0088\u001e)\n'envoy.api.v2.LoadBalancingPolicy.PolicyJ\u0004\b\u0002\u0010\u0003J\u0004\b\u0001\u0010\u0002J\u0004\b\u0003\u0010\u0004R\u0006configR\u0004nameR\ftyped_config:'\u009aÅ\u0088\u001e\"\n envoy.api.v2.LoadBalancingPolicy\"s\n\u0012UpstreamBindConfig\u00125\n\u000esource_address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.Address:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.UpstreamBindConfig\"\u0085\u0001\n\u0019UpstreamConnectionOptions\u00129\n\rtcp_keepalive\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.TcpKeepalive:-\u009aÅ\u0088\u001e(\n&envoy.api.v2.UpstreamConnectionOptions\"L\n\u0011TrackClusterStats\u0012\u0017\n\u000ftimeout_budgets\u0018\u0001 \u0001(\b\u0012\u001e\n\u0016request_response_sizes\u0018\u0002 \u0001(\bB?\n%io.envoyproxy.envoy.config.cluster.v3B\fClusterProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{a.a(), f.a(), i.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), l.a(), v.a(), b0.a(), n0.a(), t0.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.f.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), com.google.protobuf.g.a(), w.a(), v2.a(), p3.a(), io.grpc.xds.shaded.com.github.xds.core.v3.d.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Security.c(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47732a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47733b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f47734c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f47735d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f47736e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f47737f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f47738g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f47739h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f47740i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f47741j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f47742k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f47743l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f47744m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f47745n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f47746o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f47747p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f47748q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f47749r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f47750s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f47751t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f47752u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f47753v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f47754w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f47755x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f47756y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f47757z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f47732a = bVar;
        f47733b = new GeneratedMessageV3.e(bVar, new String[]{"Entries"});
        Descriptors.b bVar2 = a().m().get(1);
        f47734c = bVar2;
        f47735d = new GeneratedMessageV3.e(bVar2, new String[]{"TransportSocketMatches", "Name", "AltStatName", "Type", "ClusterType", "EdsClusterConfig", "ConnectTimeout", "PerConnectionBufferLimitBytes", "LbPolicy", "LoadAssignment", "HealthChecks", "MaxRequestsPerConnection", "CircuitBreakers", "UpstreamHttpProtocolOptions", "CommonHttpProtocolOptions", "HttpProtocolOptions", "Http2ProtocolOptions", "TypedExtensionProtocolOptions", "DnsRefreshRate", "DnsFailureRefreshRate", "RespectDnsTtl", "DnsLookupFamily", "DnsResolvers", "UseTcpForDnsLookups", "DnsResolutionConfig", "TypedDnsResolverConfig", "WaitForWarmOnInit", "OutlierDetection", "CleanupInterval", "UpstreamBindConfig", "LbSubsetConfig", "RingHashLbConfig", "MaglevLbConfig", "OriginalDstLbConfig", "LeastRequestLbConfig", "CommonLbConfig", "TransportSocket", "Metadata", "ProtocolSelection", "UpstreamConnectionOptions", "CloseConnectionsOnHostHealthFailure", "IgnoreHealthOnHostRemoval", "Filters", "LoadBalancingPolicy", "LrsServer", "TrackTimeoutBudgets", "UpstreamConfig", "TrackClusterStats", "PreconnectPolicy", "ConnectionPoolPerDownstreamConnection", "ClusterDiscoveryType", "LbConfig"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f47736e = bVar3;
        f47737f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Match", "TransportSocket"});
        Descriptors.b bVar4 = bVar2.o().get(1);
        f47738g = bVar4;
        f47739h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "TypedConfig"});
        Descriptors.b bVar5 = bVar2.o().get(2);
        f47740i = bVar5;
        f47741j = new GeneratedMessageV3.e(bVar5, new String[]{"EdsConfig", "ServiceName"});
        Descriptors.b bVar6 = bVar2.o().get(3);
        f47742k = bVar6;
        f47743l = new GeneratedMessageV3.e(bVar6, new String[]{"FallbackPolicy", "DefaultSubset", "SubsetSelectors", "LocalityWeightAware", "ScaleLocalityWeight", "PanicModeAny", "ListAsAny"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f47744m = bVar7;
        f47745n = new GeneratedMessageV3.e(bVar7, new String[]{"Keys", "SingleHostPerSubset", "FallbackPolicy", "FallbackKeysSubset"});
        Descriptors.b bVar8 = bVar2.o().get(4);
        f47746o = bVar8;
        f47747p = new GeneratedMessageV3.e(bVar8, new String[]{"ChoiceCount", "ActiveRequestBias"});
        Descriptors.b bVar9 = bVar2.o().get(5);
        f47748q = bVar9;
        f47749r = new GeneratedMessageV3.e(bVar9, new String[]{"MinimumRingSize", "HashFunction", "MaximumRingSize"});
        Descriptors.b bVar10 = bVar2.o().get(6);
        f47750s = bVar10;
        f47751t = new GeneratedMessageV3.e(bVar10, new String[]{"TableSize"});
        Descriptors.b bVar11 = bVar2.o().get(7);
        f47752u = bVar11;
        f47753v = new GeneratedMessageV3.e(bVar11, new String[]{"UseHttpHeader"});
        Descriptors.b bVar12 = bVar2.o().get(8);
        f47754w = bVar12;
        f47755x = new GeneratedMessageV3.e(bVar12, new String[]{"HealthyPanicThreshold", "ZoneAwareLbConfig", "LocalityWeightedLbConfig", "UpdateMergeWindow", "IgnoreNewHostsUntilFirstHc", "CloseConnectionsOnHostSetChange", "ConsistentHashingLbConfig", "LocalityConfigSpecifier"});
        Descriptors.b bVar13 = bVar12.o().get(0);
        f47756y = bVar13;
        f47757z = new GeneratedMessageV3.e(bVar13, new String[]{"RoutingEnabled", "MinClusterSize", "FailTrafficOnPanic"});
        Descriptors.b bVar14 = bVar12.o().get(1);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[0]);
        Descriptors.b bVar15 = bVar12.o().get(2);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"UseHostnameForHashing", "HashBalanceFactor"});
        Descriptors.b bVar16 = bVar2.o().get(9);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"BaseInterval", "MaxInterval"});
        Descriptors.b bVar17 = bVar2.o().get(10);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"PerUpstreamPreconnectRatio", "PredictivePreconnectRatio"});
        Descriptors.b bVar18 = bVar2.o().get(11);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"Key", "Value"});
        Descriptors.b bVar19 = a().m().get(2);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"Policies"});
        Descriptors.b bVar20 = bVar19.o().get(0);
        M = bVar20;
        N = new GeneratedMessageV3.e(bVar20, new String[]{"TypedExtensionConfig"});
        Descriptors.b bVar21 = a().m().get(3);
        O = bVar21;
        P = new GeneratedMessageV3.e(bVar21, new String[]{"SourceAddress"});
        Descriptors.b bVar22 = a().m().get(4);
        Q = bVar22;
        R = new GeneratedMessageV3.e(bVar22, new String[]{"TcpKeepalive"});
        Descriptors.b bVar23 = a().m().get(5);
        S = bVar23;
        T = new GeneratedMessageV3.e(bVar23, new String[]{"TimeoutBudgets", "RequestResponseSizes"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Migrate.f50818b);
        k10.f(Status.f50839a);
        k10.f(Security.f50833a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(U, k10);
        a.a();
        f.a();
        i.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        l.a();
        v.a();
        b0.a();
        n0.a();
        t0.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.f.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        com.google.protobuf.g.a();
        w.a();
        v2.a();
        p3.a();
        io.grpc.xds.shaded.com.github.xds.core.v3.d.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Security.c();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return U;
    }
}
