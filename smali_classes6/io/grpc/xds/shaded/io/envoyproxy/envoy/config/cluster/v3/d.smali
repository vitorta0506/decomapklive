.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;
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

.field static final S:Lcom/google/protobuf/Descriptors$b;

.field static final T:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static U:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 67

    const-string v0, "\n%envoy/config/cluster/v3/cluster.proto\u0012\u0017envoy.config.cluster.v3\u001a-envoy/config/cluster/v3/circuit_breaker.proto\u001a$envoy/config/cluster/v3/filter.proto\u001a/envoy/config/cluster/v3/outlier_detection.proto\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a$envoy/config/core/v3/extension.proto\u001a\'envoy/config/core/v3/health_check.proto\u001a#envoy/config/core/v3/protocol.proto\u001a#envoy/config/core/v3/resolver.proto\u001a\'envoy/config/endpoint/v3/endpoint.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\"xds/core/v3/collection_entry.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"B\n\u0011ClusterCollection\u0012-\n\u0007entries\u0018\u0001 \u0001(\u000b2\u001c.xds.core.v3.CollectionEntry\"\u00a5=\n\u0007Cluster\u0012W\n\u0018transport_socket_matches\u0018+ \u0003(\u000b25.envoy.config.cluster.v3.Cluster.TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u00121\n\ralt_stat_name\u0018\u001c \u0001(\tB\u001a\u00f2\u0098\u00fe\u008f\u0005\u0014\n\u0012observability_name\u0012H\n\u0004type\u0018\u0002 \u0001(\u000e2..envoy.config.cluster.v3.Cluster.DiscoveryTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001H\u0000\u0012J\n\u000ccluster_type\u0018& \u0001(\u000b22.envoy.config.cluster.v3.Cluster.CustomClusterTypeH\u0000\u0012M\n\u0012eds_cluster_config\u0018\u0003 \u0001(\u000b21.envoy.config.cluster.v3.Cluster.EdsClusterConfig\u0012<\n\u000fconnect_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012P\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u008a\u0093\u00b7*\u0002\u0010\u0001\u0012F\n\tlb_policy\u0018\u0006 \u0001(\u000e2).envoy.config.cluster.v3.Cluster.LbPolicyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012H\n\u000fload_assignment\u0018! \u0001(\u000b2/.envoy.config.endpoint.v3.ClusterLoadAssignment\u00128\n\rhealth_checks\u0018\u0008 \u0003(\u000b2!.envoy.config.core.v3.HealthCheck\u0012N\n\u001bmax_requests_per_connection\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012B\n\u0010circuit_breakers\u0018\n \u0001(\u000b2(.envoy.config.cluster.v3.CircuitBreakers\u0012f\n\u001eupstream_http_protocol_options\u0018. \u0001(\u000b21.envoy.config.core.v3.UpstreamHttpProtocolOptionsB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012\\\n\u001ccommon_http_protocol_options\u0018\u001d \u0001(\u000b2).envoy.config.core.v3.HttpProtocolOptionsB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012V\n\u0015http_protocol_options\u0018\r \u0001(\u000b2*.envoy.config.core.v3.Http1ProtocolOptionsB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012^\n\u0016http2_protocol_options\u0018\u000e \u0001(\u000b2*.envoy.config.core.v3.Http2ProtocolOptionsB\u0012\u0018\u0001\u008a\u0093\u00b7*\u0002\u0010\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012m\n typed_extension_protocol_options\u0018$ \u0003(\u000b2C.envoy.config.cluster.v3.Cluster.TypedExtensionProtocolOptionsEntry\u0012A\n\u0010dns_refresh_rate\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000c\u00faB\t\u00aa\u0001\u0006*\u0004\u0010\u00c0\u0084=\u0012N\n\u0018dns_failure_refresh_rate\u0018, \u0001(\u000b2,.envoy.config.cluster.v3.Cluster.RefreshRate\u0012\u0017\n\u000frespect_dns_ttl\u0018\' \u0001(\u0008\u0012U\n\u0011dns_lookup_family\u0018\u0011 \u0001(\u000e20.envoy.config.cluster.v3.Cluster.DnsLookupFamilyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012A\n\rdns_resolvers\u0018\u0012 \u0003(\u000b2\u001d.envoy.config.core.v3.AddressB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012,\n\u0017use_tcp_for_dns_lookups\u0018- \u0001(\u0008B\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012H\n\u0015dns_resolution_config\u00185 \u0001(\u000b2).envoy.config.core.v3.DnsResolutionConfig\u0012M\n\u0019typed_dns_resolver_config\u00187 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u00129\n\u0015wait_for_warm_on_init\u00186 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012D\n\u0011outlier_detection\u0018\u0013 \u0001(\u000b2).envoy.config.cluster.v3.OutlierDetection\u0012=\n\u0010cleanup_interval\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012>\n\u0014upstream_bind_config\u0018\u0015 \u0001(\u000b2 .envoy.config.core.v3.BindConfig\u0012I\n\u0010lb_subset_config\u0018\u0016 \u0001(\u000b2/.envoy.config.cluster.v3.Cluster.LbSubsetConfig\u0012P\n\u0013ring_hash_lb_config\u0018\u0017 \u0001(\u000b21.envoy.config.cluster.v3.Cluster.RingHashLbConfigH\u0001\u0012K\n\u0010maglev_lb_config\u00184 \u0001(\u000b2/.envoy.config.cluster.v3.Cluster.MaglevLbConfigH\u0001\u0012V\n\u0016original_dst_lb_config\u0018\" \u0001(\u000b24.envoy.config.cluster.v3.Cluster.OriginalDstLbConfigH\u0001\u0012X\n\u0017least_request_lb_config\u0018% \u0001(\u000b25.envoy.config.cluster.v3.Cluster.LeastRequestLbConfigH\u0001\u0012I\n\u0010common_lb_config\u0018\u001b \u0001(\u000b2/.envoy.config.cluster.v3.Cluster.CommonLbConfig\u0012?\n\u0010transport_socket\u0018\u0018 \u0001(\u000b2%.envoy.config.core.v3.TransportSocket\u00120\n\u0008metadata\u0018\u0019 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012b\n\u0012protocol_selection\u0018\u001a \u0001(\u000e29.envoy.config.cluster.v3.Cluster.ClusterProtocolSelectionB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012W\n\u001bupstream_connection_options\u0018\u001e \u0001(\u000b22.envoy.config.cluster.v3.UpstreamConnectionOptions\u00120\n(close_connections_on_host_health_failure\u0018\u001f \u0001(\u0008\u0012%\n\u001dignore_health_on_host_removal\u0018  \u0001(\u0008\u00120\n\u0007filters\u0018( \u0003(\u000b2\u001f.envoy.config.cluster.v3.Filter\u0012K\n\u0015load_balancing_policy\u0018) \u0001(\u000b2,.envoy.config.cluster.v3.LoadBalancingPolicy\u00126\n\nlrs_server\u0018* \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012*\n\u0015track_timeout_budgets\u0018/ \u0001(\u0008B\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012C\n\u000fupstream_config\u00180 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012G\n\u0013track_cluster_stats\u00181 \u0001(\u000b2*.envoy.config.cluster.v3.TrackClusterStats\u0012L\n\u0011preconnect_policy\u00182 \u0001(\u000b21.envoy.config.cluster.v3.Cluster.PreconnectPolicy\u00121\n)connection_pool_per_downstream_connection\u00183 \u0001(\u0008\u001a\u00c8\u0001\n\u0014TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012&\n\u0005match\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012?\n\u0010transport_socket\u0018\u0003 \u0001(\u000b2%.envoy.config.core.v3.TransportSocket:0\u009a\u00c5\u0088\u001e+\n)envoy.api.v2.Cluster.TransportSocketMatch\u001a\u0085\u0001\n\u0011CustomClusterType\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012*\n\u000ctyped_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:-\u009a\u00c5\u0088\u001e(\n&envoy.api.v2.Cluster.CustomClusterType\u001a\u008e\u0001\n\u0010EdsClusterConfig\u00126\n\neds_config\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u0014\n\u000cservice_name\u0018\u0002 \u0001(\t:,\u009a\u00c5\u0088\u001e\'\n%envoy.api.v2.Cluster.EdsClusterConfig\u001a\u008e\u0007\n\u000eLbSubsetConfig\u0012i\n\u000ffallback_policy\u0018\u0001 \u0001(\u000e2F.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012/\n\u000edefault_subset\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012Z\n\u0010subset_selectors\u0018\u0003 \u0003(\u000b2@.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector\u0012\u001d\n\u0015locality_weight_aware\u0018\u0004 \u0001(\u0008\u0012\u001d\n\u0015scale_locality_weight\u0018\u0005 \u0001(\u0008\u0012\u0016\n\u000epanic_mode_any\u0018\u0006 \u0001(\u0008\u0012\u0013\n\u000blist_as_any\u0018\u0007 \u0001(\u0008\u001a\u009b\u0003\n\u0010LbSubsetSelector\u0012\u000c\n\u0004keys\u0018\u0001 \u0003(\t\u0012\u001e\n\u0016single_host_per_subset\u0018\u0004 \u0001(\u0008\u0012\u0082\u0001\n\u000ffallback_policy\u0018\u0002 \u0001(\u000e2_.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u0014fallback_keys_subset\u0018\u0003 \u0003(\t\"y\n\u001eLbSubsetSelectorFallbackPolicy\u0012\u000f\n\u000bNOT_DEFINED\u0010\u0000\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0001\u0012\u0010\n\u000cANY_ENDPOINT\u0010\u0002\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0003\u0012\u000f\n\u000bKEYS_SUBSET\u0010\u0004:;\u009a\u00c5\u0088\u001e6\n4envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector\"O\n\u0016LbSubsetFallbackPolicy\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0000\u0012\u0010\n\u000cANY_ENDPOINT\u0010\u0001\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0002:*\u009a\u00c5\u0088\u001e%\n#envoy.api.v2.Cluster.LbSubsetConfig\u001a\u00c7\u0001\n\u0014LeastRequestLbConfig\u0012;\n\u000cchoice_count\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0002\u0012@\n\u0013active_request_bias\u0018\u0002 \u0001(\u000b2#.envoy.config.core.v3.RuntimeDouble:0\u009a\u00c5\u0088\u001e+\n)envoy.api.v2.Cluster.LeastRequestLbConfig\u001a\u00e1\u0002\n\u0010RingHashLbConfig\u0012C\n\u0011minimum_ring_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\n\u00faB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\u0012_\n\rhash_function\u0018\u0003 \u0001(\u000e2>.envoy.config.cluster.v3.Cluster.RingHashLbConfig.HashFunctionB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012C\n\u0011maximum_ring_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\n\u00faB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\".\n\u000cHashFunction\u0012\u000b\n\u0007XX_HASH\u0010\u0000\u0012\u0011\n\rMURMUR_HASH_2\u0010\u0001:,\u009a\u00c5\u0088\u001e\'\n%envoy.api.v2.Cluster.RingHashLbConfigJ\u0004\u0008\u0002\u0010\u0003\u001aN\n\u000eMaglevLbConfig\u0012<\n\ntable_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\n\u00faB\u00072\u0005\u0018\u00cb\u0096\u00b1\u0002\u001a_\n\u0013OriginalDstLbConfig\u0012\u0017\n\u000fuse_http_header\u0018\u0001 \u0001(\u0008:/\u009a\u00c5\u0088\u001e*\n(envoy.api.v2.Cluster.OriginalDstLbConfig\u001a\u00ed\u0008\n\u000eCommonLbConfig\u00127\n\u0017healthy_panic_threshold\u0018\u0001 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012a\n\u0014zone_aware_lb_config\u0018\u0002 \u0001(\u000b2A.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfigH\u0000\u0012o\n\u001blocality_weighted_lb_config\u0018\u0003 \u0001(\u000b2H.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfigH\u0000\u00126\n\u0013update_merge_window\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\'\n\u001fignore_new_hosts_until_first_hc\u0018\u0005 \u0001(\u0008\u0012,\n$close_connections_on_host_set_change\u0018\u0006 \u0001(\u0008\u0012o\n\u001cconsistent_hashing_lb_config\u0018\u0007 \u0001(\u000b2I.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig\u001a\u00d9\u0001\n\u0011ZoneAwareLbConfig\u0012/\n\u000frouting_enabled\u0018\u0001 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u00126\n\u0010min_cluster_size\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt64Value\u0012\u001d\n\u0015fail_traffic_on_panic\u0018\u0003 \u0001(\u0008:<\u009a\u00c5\u0088\u001e7\n5envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig\u001a_\n\u0018LocalityWeightedLbConfig:C\u009a\u00c5\u0088\u001e>\n<envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig\u001a\u00c7\u0001\n\u0019ConsistentHashingLbConfig\u0012 \n\u0018use_hostname_for_hashing\u0018\u0001 \u0001(\u0008\u0012B\n\u0013hash_balance_factor\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(d:D\u009a\u00c5\u0088\u001e?\n=envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig:*\u009a\u00c5\u0088\u001e%\n#envoy.api.v2.Cluster.CommonLbConfigB\u001b\n\u0019locality_config_specifier\u001a\u00b7\u0001\n\u000bRefreshRate\u0012@\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000e\u00faB\u000b\u00aa\u0001\u0008\u0008\u0001*\u0004\u0010\u00c0\u0084=\u0012=\n\u000cmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000c\u00faB\t\u00aa\u0001\u0006*\u0004\u0010\u00c0\u0084=:\'\u009a\u00c5\u0088\u001e\"\n envoy.api.v2.Cluster.RefreshRate\u001a\u00cc\u0001\n\u0010PreconnectPolicy\u0012\\\n\u001dper_upstream_preconnect_ratio\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.DoubleValueB\u0017\u00faB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u0008@)\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?\u0012Z\n\u001bpredictive_preconnect_ratio\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValueB\u0017\u00faB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u0008@)\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?\u001aZ\n\"TypedExtensionProtocolOptionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001\"W\n\rDiscoveryType\u0012\n\n\u0006STATIC\u0010\u0000\u0012\u000e\n\nSTRICT_DNS\u0010\u0001\u0012\u000f\n\u000bLOGICAL_DNS\u0010\u0002\u0012\u0007\n\u0003EDS\u0010\u0003\u0012\u0010\n\u000cORIGINAL_DST\u0010\u0004\"\u00a4\u0001\n\u0008LbPolicy\u0012\u000f\n\u000bROUND_ROBIN\u0010\u0000\u0012\u0011\n\rLEAST_REQUEST\u0010\u0001\u0012\r\n\tRING_HASH\u0010\u0002\u0012\n\n\u0006RANDOM\u0010\u0003\u0012\n\n\u0006MAGLEV\u0010\u0005\u0012\u0014\n\u0010CLUSTER_PROVIDED\u0010\u0006\u0012 \n\u001cLOAD_BALANCING_POLICY_CONFIG\u0010\u0007\"\u0004\u0008\u0004\u0010\u0004*\u000fORIGINAL_DST_LB\"5\n\u000fDnsLookupFamily\u0012\u0008\n\u0004AUTO\u0010\u0000\u0012\u000b\n\u0007V4_ONLY\u0010\u0001\u0012\u000b\n\u0007V6_ONLY\u0010\u0002\"T\n\u0018ClusterProtocolSelection\u0012\u001b\n\u0017USE_CONFIGURED_PROTOCOL\u0010\u0000\u0012\u001b\n\u0017USE_DOWNSTREAM_PROTOCOL\u0010\u0001:\u001b\u009a\u00c5\u0088\u001e\u0016\n\u0014envoy.api.v2.ClusterB\u0018\n\u0016cluster_discovery_typeB\u000b\n\tlb_configJ\u0004\u0008\u000c\u0010\rJ\u0004\u0008\u000f\u0010\u0010J\u0004\u0008\u0007\u0010\u0008J\u0004\u0008\u000b\u0010\u000cJ\u0004\u0008#\u0010$R\u0005hostsR\u000btls_contextR\u001aextension_protocol_options\"\u00ba\u0002\n\u0013LoadBalancingPolicy\u0012E\n\u0008policies\u0018\u0001 \u0003(\u000b23.envoy.config.cluster.v3.LoadBalancingPolicy.Policy\u001a\u00b2\u0001\n\u0006Policy\u0012J\n\u0016typed_extension_config\u0018\u0004 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig:.\u009a\u00c5\u0088\u001e)\n\'envoy.api.v2.LoadBalancingPolicy.PolicyJ\u0004\u0008\u0002\u0010\u0003J\u0004\u0008\u0001\u0010\u0002J\u0004\u0008\u0003\u0010\u0004R\u0006configR\u0004nameR\u000ctyped_config:\'\u009a\u00c5\u0088\u001e\"\n envoy.api.v2.LoadBalancingPolicy\"s\n\u0012UpstreamBindConfig\u00125\n\u000esource_address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.Address:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.api.v2.UpstreamBindConfig\"\u0085\u0001\n\u0019UpstreamConnectionOptions\u00129\n\rtcp_keepalive\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.TcpKeepalive:-\u009a\u00c5\u0088\u001e(\n&envoy.api.v2.UpstreamConnectionOptions\"L\n\u0011TrackClusterStats\u0012\u0017\n\u000ftimeout_budgets\u0018\u0001 \u0001(\u0008\u0012\u001e\n\u0016request_response_sizes\u0018\u0002 \u0001(\u0008B?\n%io.envoyproxy.envoy.config.cluster.v3B\u000cClusterProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/t0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 14
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0xc

    aput-object v2, v1, v15

    .line 15
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0xd

    aput-object v2, v1, v15

    .line 16
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0xe

    aput-object v2, v1, v15

    .line 17
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0xf

    aput-object v2, v1, v15

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0x10

    aput-object v2, v1, v15

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0x11

    aput-object v2, v1, v15

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0x12

    aput-object v2, v1, v15

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0x13

    aput-object v2, v1, v15

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0x14

    aput-object v2, v1, v15

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0x15

    aput-object v2, v1, v15

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v15, 0x16

    aput-object v2, v1, v15

    .line 25
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->U:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Entries"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->c:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v15, "TransportSocketMatches"

    const-string v16, "Name"

    const-string v17, "AltStatName"

    const-string v18, "Type"

    const-string v19, "ClusterType"

    const-string v20, "EdsClusterConfig"

    const-string v21, "ConnectTimeout"

    const-string v22, "PerConnectionBufferLimitBytes"

    const-string v23, "LbPolicy"

    const-string v24, "LoadAssignment"

    const-string v25, "HealthChecks"

    const-string v26, "MaxRequestsPerConnection"

    const-string v27, "CircuitBreakers"

    const-string v28, "UpstreamHttpProtocolOptions"

    const-string v29, "CommonHttpProtocolOptions"

    const-string v30, "HttpProtocolOptions"

    const-string v31, "Http2ProtocolOptions"

    const-string v32, "TypedExtensionProtocolOptions"

    const-string v33, "DnsRefreshRate"

    const-string v34, "DnsFailureRefreshRate"

    const-string v35, "RespectDnsTtl"

    const-string v36, "DnsLookupFamily"

    const-string v37, "DnsResolvers"

    const-string v38, "UseTcpForDnsLookups"

    const-string v39, "DnsResolutionConfig"

    const-string v40, "TypedDnsResolverConfig"

    const-string v41, "WaitForWarmOnInit"

    const-string v42, "OutlierDetection"

    const-string v43, "CleanupInterval"

    const-string v44, "UpstreamBindConfig"

    const-string v45, "LbSubsetConfig"

    const-string v46, "RingHashLbConfig"

    const-string v47, "MaglevLbConfig"

    const-string v48, "OriginalDstLbConfig"

    const-string v49, "LeastRequestLbConfig"

    const-string v50, "CommonLbConfig"

    const-string v51, "TransportSocket"

    const-string v52, "Metadata"

    const-string v53, "ProtocolSelection"

    const-string v54, "UpstreamConnectionOptions"

    const-string v55, "CloseConnectionsOnHostHealthFailure"

    const-string v56, "IgnoreHealthOnHostRemoval"

    const-string v57, "Filters"

    const-string v58, "LoadBalancingPolicy"

    const-string v59, "LrsServer"

    const-string v60, "TrackTimeoutBudgets"

    const-string v61, "UpstreamConfig"

    const-string v62, "TrackClusterStats"

    const-string v63, "PreconnectPolicy"

    const-string v64, "ConnectionPoolPerDownstreamConnection"

    const-string v65, "ClusterDiscoveryType"

    const-string v66, "LbConfig"

    filled-new-array/range {v15 .. v66}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->e:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v15, "Name"

    const-string v14, "Match"

    const-string v13, "TransportSocket"

    filled-new-array {v15, v14, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->g:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "TypedConfig"

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->i:Lcom/google/protobuf/Descriptors$b;

    .line 35
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "EdsConfig"

    const-string v14, "ServiceName"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 36
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->k:Lcom/google/protobuf/Descriptors$b;

    .line 37
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v18, "FallbackPolicy"

    const-string v19, "DefaultSubset"

    const-string v20, "SubsetSelectors"

    const-string v21, "LocalityWeightAware"

    const-string v22, "ScaleLocalityWeight"

    const-string v23, "PanicModeAny"

    const-string v24, "ListAsAny"

    filled-new-array/range {v18 .. v24}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 38
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->m:Lcom/google/protobuf/Descriptors$b;

    .line 39
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "Keys"

    const-string v14, "SingleHostPerSubset"

    const-string v15, "FallbackPolicy"

    const-string v6, "FallbackKeysSubset"

    filled-new-array {v13, v14, v15, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 40
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->o:Lcom/google/protobuf/Descriptors$b;

    .line 41
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "ChoiceCount"

    const-string v13, "ActiveRequestBias"

    filled-new-array {v6, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 42
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->q:Lcom/google/protobuf/Descriptors$b;

    .line 43
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "MinimumRingSize"

    const-string v13, "HashFunction"

    const-string v14, "MaximumRingSize"

    filled-new-array {v6, v13, v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 44
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->s:Lcom/google/protobuf/Descriptors$b;

    .line 45
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "TableSize"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 46
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->u:Lcom/google/protobuf/Descriptors$b;

    .line 47
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "UseHttpHeader"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 48
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->w:Lcom/google/protobuf/Descriptors$b;

    .line 49
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v19, "HealthyPanicThreshold"

    const-string v20, "ZoneAwareLbConfig"

    const-string v21, "LocalityWeightedLbConfig"

    const-string v22, "UpdateMergeWindow"

    const-string v23, "IgnoreNewHostsUntilFirstHc"

    const-string v24, "CloseConnectionsOnHostSetChange"

    const-string v25, "ConsistentHashingLbConfig"

    const-string v26, "LocalityConfigSpecifier"

    filled-new-array/range {v19 .. v26}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 50
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->y:Lcom/google/protobuf/Descriptors$b;

    .line 51
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "RoutingEnabled"

    const-string v10, "MinClusterSize"

    const-string v11, "FailTrafficOnPanic"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v2, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 52
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->A:Lcom/google/protobuf/Descriptors$b;

    .line 53
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v6, v3, [Ljava/lang/String;

    invoke-direct {v4, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 54
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->C:Lcom/google/protobuf/Descriptors$b;

    .line 55
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "UseHostnameForHashing"

    const-string v6, "HashBalanceFactor"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 56
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->E:Lcom/google/protobuf/Descriptors$b;

    .line 57
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "BaseInterval"

    const-string v6, "MaxInterval"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 58
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->G:Lcom/google/protobuf/Descriptors$b;

    .line 59
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "PerUpstreamPreconnectRatio"

    const-string v6, "PredictivePreconnectRatio"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 60
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->I:Lcom/google/protobuf/Descriptors$b;

    .line 61
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v4, "Value"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 62
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->K:Lcom/google/protobuf/Descriptors$b;

    .line 63
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Policies"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->L:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 64
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->M:Lcom/google/protobuf/Descriptors$b;

    .line 65
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TypedExtensionConfig"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->N:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 66
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->O:Lcom/google/protobuf/Descriptors$b;

    .line 67
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SourceAddress"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->P:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 68
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->Q:Lcom/google/protobuf/Descriptors$b;

    .line 69
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TcpKeepalive"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->R:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 70
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->S:Lcom/google/protobuf/Descriptors$b;

    .line 71
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TimeoutBudgets"

    const-string v3, "RequestResponseSizes"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->T:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 72
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 73
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 74
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 75
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 76
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Security;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 77
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 78
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 79
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->U:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 80
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 81
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 82
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 83
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 84
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 85
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 86
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 87
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 88
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 89
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 90
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/t0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 91
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 92
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 93
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 94
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 95
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 96
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 97
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 98
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 99
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 100
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 101
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 102
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 103
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->U:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
