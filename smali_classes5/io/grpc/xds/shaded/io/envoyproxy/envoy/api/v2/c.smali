.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;
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

.field private static O:Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    const-string v0, "\n\u001aenvoy/api/v2/cluster.proto\u0012\u000cenvoy.api.v2\u001a\u001benvoy/api/v2/auth/tls.proto\u001a*envoy/api/v2/cluster/circuit_breaker.proto\u001a!envoy/api/v2/cluster/filter.proto\u001a,envoy/api/v2/cluster/outlier_detection.proto\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a%envoy/api/v2/core/config_source.proto\u001a$envoy/api/v2/core/health_check.proto\u001a envoy/api/v2/core/protocol.proto\u001a\u001benvoy/api/v2/endpoint.proto\u001a\u0018envoy/type/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00ad.\n\u0007Cluster\u0012L\n\u0018transport_socket_matches\u0018+ \u0003(\u000b2*.envoy.api.v2.Cluster.TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012\u0015\n\ralt_stat_name\u0018\u001c \u0001(\t\u0012=\n\u0004type\u0018\u0002 \u0001(\u000e2#.envoy.api.v2.Cluster.DiscoveryTypeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001H\u0000\u0012?\n\u000ccluster_type\u0018& \u0001(\u000b2\'.envoy.api.v2.Cluster.CustomClusterTypeH\u0000\u0012B\n\u0012eds_cluster_config\u0018\u0003 \u0001(\u000b2&.envoy.api.v2.Cluster.EdsClusterConfig\u0012<\n\u000fconnect_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012G\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012;\n\tlb_policy\u0018\u0006 \u0001(\u000e2\u001e.envoy.api.v2.Cluster.LbPolicyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012-\n\u0005hosts\u0018\u0007 \u0003(\u000b2\u001a.envoy.api.v2.core.AddressB\u0002\u0018\u0001\u0012<\n\u000fload_assignment\u0018! \u0001(\u000b2#.envoy.api.v2.ClusterLoadAssignment\u00125\n\rhealth_checks\u0018\u0008 \u0003(\u000b2\u001e.envoy.api.v2.core.HealthCheck\u0012A\n\u001bmax_requests_per_connection\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012?\n\u0010circuit_breakers\u0018\n \u0001(\u000b2%.envoy.api.v2.cluster.CircuitBreakers\u0012D\n\u000btls_context\u0018\u000b \u0001(\u000b2%.envoy.api.v2.auth.UpstreamTlsContextB\u0008\u0018\u0001\u00b8\u00ee\u00f2\u00d2\u0005\u0001\u0012V\n\u001eupstream_http_protocol_options\u0018. \u0001(\u000b2..envoy.api.v2.core.UpstreamHttpProtocolOptions\u0012L\n\u001ccommon_http_protocol_options\u0018\u001d \u0001(\u000b2&.envoy.api.v2.core.HttpProtocolOptions\u0012F\n\u0015http_protocol_options\u0018\r \u0001(\u000b2\'.envoy.api.v2.core.Http1ProtocolOptions\u0012G\n\u0016http2_protocol_options\u0018\u000e \u0001(\u000b2\'.envoy.api.v2.core.Http2ProtocolOptions\u0012a\n\u001aextension_protocol_options\u0018# \u0003(\u000b23.envoy.api.v2.Cluster.ExtensionProtocolOptionsEntryB\u0008\u0018\u0001\u00b8\u00ee\u00f2\u00d2\u0005\u0001\u0012b\n typed_extension_protocol_options\u0018$ \u0003(\u000b28.envoy.api.v2.Cluster.TypedExtensionProtocolOptionsEntry\u0012A\n\u0010dns_refresh_rate\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000c\u00faB\t\u00aa\u0001\u0006*\u0004\u0010\u00c0\u0084=\u0012C\n\u0018dns_failure_refresh_rate\u0018, \u0001(\u000b2!.envoy.api.v2.Cluster.RefreshRate\u0012\u0017\n\u000frespect_dns_ttl\u0018\' \u0001(\u0008\u0012J\n\u0011dns_lookup_family\u0018\u0011 \u0001(\u000e2%.envoy.api.v2.Cluster.DnsLookupFamilyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u00121\n\rdns_resolvers\u0018\u0012 \u0003(\u000b2\u001a.envoy.api.v2.core.Address\u0012\u001f\n\u0017use_tcp_for_dns_lookups\u0018- \u0001(\u0008\u0012A\n\u0011outlier_detection\u0018\u0013 \u0001(\u000b2&.envoy.api.v2.cluster.OutlierDetection\u0012=\n\u0010cleanup_interval\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012;\n\u0014upstream_bind_config\u0018\u0015 \u0001(\u000b2\u001d.envoy.api.v2.core.BindConfig\u0012>\n\u0010lb_subset_config\u0018\u0016 \u0001(\u000b2$.envoy.api.v2.Cluster.LbSubsetConfig\u0012E\n\u0013ring_hash_lb_config\u0018\u0017 \u0001(\u000b2&.envoy.api.v2.Cluster.RingHashLbConfigH\u0001\u0012K\n\u0016original_dst_lb_config\u0018\" \u0001(\u000b2).envoy.api.v2.Cluster.OriginalDstLbConfigH\u0001\u0012M\n\u0017least_request_lb_config\u0018% \u0001(\u000b2*.envoy.api.v2.Cluster.LeastRequestLbConfigH\u0001\u0012>\n\u0010common_lb_config\u0018\u001b \u0001(\u000b2$.envoy.api.v2.Cluster.CommonLbConfig\u0012<\n\u0010transport_socket\u0018\u0018 \u0001(\u000b2\".envoy.api.v2.core.TransportSocket\u0012-\n\u0008metadata\u0018\u0019 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012J\n\u0012protocol_selection\u0018\u001a \u0001(\u000e2..envoy.api.v2.Cluster.ClusterProtocolSelection\u0012L\n\u001bupstream_connection_options\u0018\u001e \u0001(\u000b2\'.envoy.api.v2.UpstreamConnectionOptions\u00120\n(close_connections_on_host_health_failure\u0018\u001f \u0001(\u0008\u0012P\n!drain_connections_on_host_removal\u0018  \u0001(\u0008B%\u00f2\u0098\u00fe\u008f\u0005\u001f\n\u001dignore_health_on_host_removal\u0012-\n\u0007filters\u0018( \u0003(\u000b2\u001c.envoy.api.v2.cluster.Filter\u0012@\n\u0015load_balancing_policy\u0018) \u0001(\u000b2!.envoy.api.v2.LoadBalancingPolicy\u00123\n\nlrs_server\u0018* \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSource\u0012\u001d\n\u0015track_timeout_budgets\u0018/ \u0001(\u0008\u001a\u0093\u0001\n\u0014TransportSocketMatch\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012&\n\u0005match\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012<\n\u0010transport_socket\u0018\u0003 \u0001(\u000b2\".envoy.api.v2.core.TransportSocket\u001aV\n\u0011CustomClusterType\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012*\n\u000ctyped_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u001a]\n\u0010EdsClusterConfig\u00123\n\neds_config\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSource\u0012\u0014\n\u000cservice_name\u0018\u0002 \u0001(\t\u001a\u00e3\u0005\n\u000eLbSubsetConfig\u0012^\n\u000ffallback_policy\u0018\u0001 \u0001(\u000e2;.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetFallbackPolicyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012/\n\u000edefault_subset\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012O\n\u0010subset_selectors\u0018\u0003 \u0003(\u000b25.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector\u0012\u001d\n\u0015locality_weight_aware\u0018\u0004 \u0001(\u0008\u0012\u001d\n\u0015scale_locality_weight\u0018\u0005 \u0001(\u0008\u0012\u0016\n\u000epanic_mode_any\u0018\u0006 \u0001(\u0008\u0012\u0013\n\u000blist_as_any\u0018\u0007 \u0001(\u0008\u001a\u00b2\u0002\n\u0010LbSubsetSelector\u0012\u000c\n\u0004keys\u0018\u0001 \u0003(\t\u0012w\n\u000ffallback_policy\u0018\u0002 \u0001(\u000e2T.envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u0014fallback_keys_subset\u0018\u0003 \u0003(\t\"y\n\u001eLbSubsetSelectorFallbackPolicy\u0012\u000f\n\u000bNOT_DEFINED\u0010\u0000\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0001\u0012\u0010\n\u000cANY_ENDPOINT\u0010\u0002\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0003\u0012\u000f\n\u000bKEYS_SUBSET\u0010\u0004\"O\n\u0016LbSubsetFallbackPolicy\u0012\u000f\n\u000bNO_FALLBACK\u0010\u0000\u0012\u0010\n\u000cANY_ENDPOINT\u0010\u0001\u0012\u0012\n\u000eDEFAULT_SUBSET\u0010\u0002\u001aS\n\u0014LeastRequestLbConfig\u0012;\n\u000cchoice_count\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0002\u001a\u00a8\u0002\n\u0010RingHashLbConfig\u0012C\n\u0011minimum_ring_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\n\u00faB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\u0012T\n\rhash_function\u0018\u0003 \u0001(\u000e23.envoy.api.v2.Cluster.RingHashLbConfig.HashFunctionB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012C\n\u0011maximum_ring_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\n\u00faB\u00072\u0005\u0018\u0080\u0080\u0080\u0004\".\n\u000cHashFunction\u0012\u000b\n\u0007XX_HASH\u0010\u0000\u0012\u0011\n\rMURMUR_HASH_2\u0010\u0001J\u0004\u0008\u0002\u0010\u0003\u001a.\n\u0013OriginalDstLbConfig\u0012\u0017\n\u000fuse_http_header\u0018\u0001 \u0001(\u0008\u001a\u008c\u0006\n\u000eCommonLbConfig\u00124\n\u0017healthy_panic_threshold\u0018\u0001 \u0001(\u000b2\u0013.envoy.type.Percent\u0012V\n\u0014zone_aware_lb_config\u0018\u0002 \u0001(\u000b26.envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfigH\u0000\u0012d\n\u001blocality_weighted_lb_config\u0018\u0003 \u0001(\u000b2=.envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfigH\u0000\u00126\n\u0013update_merge_window\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\'\n\u001fignore_new_hosts_until_first_hc\u0018\u0005 \u0001(\u0008\u0012,\n$close_connections_on_host_set_change\u0018\u0006 \u0001(\u0008\u0012d\n\u001cconsistent_hashing_lb_config\u0018\u0007 \u0001(\u000b2>.envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig\u001a\u0098\u0001\n\u0011ZoneAwareLbConfig\u0012,\n\u000frouting_enabled\u0018\u0001 \u0001(\u000b2\u0013.envoy.type.Percent\u00126\n\u0010min_cluster_size\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt64Value\u0012\u001d\n\u0015fail_traffic_on_panic\u0018\u0003 \u0001(\u0008\u001a\u001a\n\u0018LocalityWeightedLbConfig\u001a=\n\u0019ConsistentHashingLbConfig\u0012 \n\u0018use_hostname_for_hashing\u0018\u0001 \u0001(\u0008B\u001b\n\u0019locality_config_specifier\u001a\u008e\u0001\n\u000bRefreshRate\u0012@\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000e\u00faB\u000b\u00aa\u0001\u0008\u0008\u0001*\u0004\u0010\u00c0\u0084=\u0012=\n\u000cmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000c\u00faB\t\u00aa\u0001\u0006*\u0004\u0010\u00c0\u0084=\u001aX\n\u001dExtensionProtocolOptionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\u001aZ\n\"TypedExtensionProtocolOptionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001\"W\n\rDiscoveryType\u0012\n\n\u0006STATIC\u0010\u0000\u0012\u000e\n\nSTRICT_DNS\u0010\u0001\u0012\u000f\n\u000bLOGICAL_DNS\u0010\u0002\u0012\u0007\n\u0003EDS\u0010\u0003\u0012\u0010\n\u000cORIGINAL_DST\u0010\u0004\"\u00ac\u0001\n\u0008LbPolicy\u0012\u000f\n\u000bROUND_ROBIN\u0010\u0000\u0012\u0011\n\rLEAST_REQUEST\u0010\u0001\u0012\r\n\tRING_HASH\u0010\u0002\u0012\n\n\u0006RANDOM\u0010\u0003\u0012\u001d\n\u000fORIGINAL_DST_LB\u0010\u0004\u001a\u0008\u0008\u0001\u00a8\u00f7\u00b4\u008b\u0002\u0001\u0012\n\n\u0006MAGLEV\u0010\u0005\u0012\u0014\n\u0010CLUSTER_PROVIDED\u0010\u0006\u0012 \n\u001cLOAD_BALANCING_POLICY_CONFIG\u0010\u0007\"5\n\u000fDnsLookupFamily\u0012\u0008\n\u0004AUTO\u0010\u0000\u0012\u000b\n\u0007V4_ONLY\u0010\u0001\u0012\u000b\n\u0007V6_ONLY\u0010\u0002\"T\n\u0018ClusterProtocolSelection\u0012\u001b\n\u0017USE_CONFIGURED_PROTOCOL\u0010\u0000\u0012\u001b\n\u0017USE_DOWNSTREAM_PROTOCOL\u0010\u0001B\u0018\n\u0016cluster_discovery_typeB\u000b\n\tlb_configJ\u0004\u0008\u000c\u0010\rJ\u0004\u0008\u000f\u0010\u0010\"\u00c2\u0001\n\u0013LoadBalancingPolicy\u0012:\n\u0008policies\u0018\u0001 \u0003(\u000b2(.envoy.api.v2.LoadBalancingPolicy.Policy\u001ao\n\u0006Policy\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012+\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001\u0012*\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any\"H\n\u0012UpstreamBindConfig\u00122\n\u000esource_address\u0018\u0001 \u0001(\u000b2\u001a.envoy.api.v2.core.Address\"S\n\u0019UpstreamConnectionOptions\u00126\n\rtcp_keepalive\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.TcpKeepaliveBS\n\u001aio.envoyproxy.envoy.api.v2B\u000cClusterProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0019\u0012\u0017envoy.config.cluster.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 13
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 14
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0xc

    aput-object v2, v1, v14

    .line 15
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0xd

    aput-object v2, v1, v14

    .line 16
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0xe

    aput-object v2, v1, v14

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0xf

    aput-object v2, v1, v14

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0x10

    aput-object v2, v1, v14

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0x11

    aput-object v2, v1, v14

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v14, 0x12

    aput-object v2, v1, v14

    .line 21
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->O:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v14, "TransportSocketMatches"

    const-string v15, "Name"

    const-string v16, "AltStatName"

    const-string v17, "Type"

    const-string v18, "ClusterType"

    const-string v19, "EdsClusterConfig"

    const-string v20, "ConnectTimeout"

    const-string v21, "PerConnectionBufferLimitBytes"

    const-string v22, "LbPolicy"

    const-string v23, "Hosts"

    const-string v24, "LoadAssignment"

    const-string v25, "HealthChecks"

    const-string v26, "MaxRequestsPerConnection"

    const-string v27, "CircuitBreakers"

    const-string v28, "TlsContext"

    const-string v29, "UpstreamHttpProtocolOptions"

    const-string v30, "CommonHttpProtocolOptions"

    const-string v31, "HttpProtocolOptions"

    const-string v32, "Http2ProtocolOptions"

    const-string v33, "ExtensionProtocolOptions"

    const-string v34, "TypedExtensionProtocolOptions"

    const-string v35, "DnsRefreshRate"

    const-string v36, "DnsFailureRefreshRate"

    const-string v37, "RespectDnsTtl"

    const-string v38, "DnsLookupFamily"

    const-string v39, "DnsResolvers"

    const-string v40, "UseTcpForDnsLookups"

    const-string v41, "OutlierDetection"

    const-string v42, "CleanupInterval"

    const-string v43, "UpstreamBindConfig"

    const-string v44, "LbSubsetConfig"

    const-string v45, "RingHashLbConfig"

    const-string v46, "OriginalDstLbConfig"

    const-string v47, "LeastRequestLbConfig"

    const-string v48, "CommonLbConfig"

    const-string v49, "TransportSocket"

    const-string v50, "Metadata"

    const-string v51, "ProtocolSelection"

    const-string v52, "UpstreamConnectionOptions"

    const-string v53, "CloseConnectionsOnHostHealthFailure"

    const-string v54, "DrainConnectionsOnHostRemoval"

    const-string v55, "Filters"

    const-string v56, "LoadBalancingPolicy"

    const-string v57, "LrsServer"

    const-string v58, "TrackTimeoutBudgets"

    const-string v59, "ClusterDiscoveryType"

    const-string v60, "LbConfig"

    filled-new-array/range {v14 .. v60}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v14, "Name"

    const-string v15, "Match"

    const-string v13, "TransportSocket"

    filled-new-array {v14, v15, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v13, "TypedConfig"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v1, v15}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v15, "EdsConfig"

    const-string v12, "ServiceName"

    filled-new-array {v15, v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v1, v12}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v18, "FallbackPolicy"

    const-string v19, "DefaultSubset"

    const-string v20, "SubsetSelectors"

    const-string v21, "LocalityWeightAware"

    const-string v22, "ScaleLocalityWeight"

    const-string v23, "PanicModeAny"

    const-string v24, "ListAsAny"

    filled-new-array/range {v18 .. v24}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v1, v12}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "Keys"

    const-string v15, "FallbackPolicy"

    const-string v6, "FallbackKeysSubset"

    filled-new-array {v12, v15, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->m:Lcom/google/protobuf/Descriptors$b;

    .line 35
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "ChoiceCount"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 36
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->o:Lcom/google/protobuf/Descriptors$b;

    .line 37
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "MinimumRingSize"

    const-string v7, "HashFunction"

    const-string v8, "MaximumRingSize"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 38
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->q:Lcom/google/protobuf/Descriptors$b;

    .line 39
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "UseHttpHeader"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 40
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->s:Lcom/google/protobuf/Descriptors$b;

    .line 41
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

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 42
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->u:Lcom/google/protobuf/Descriptors$b;

    .line 43
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "RoutingEnabled"

    const-string v8, "MinClusterSize"

    const-string v9, "FailTrafficOnPanic"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 44
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->w:Lcom/google/protobuf/Descriptors$b;

    .line 45
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v6, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 46
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->y:Lcom/google/protobuf/Descriptors$b;

    .line 47
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "UseHostnameForHashing"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 48
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->A:Lcom/google/protobuf/Descriptors$b;

    .line 49
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "BaseInterval"

    const-string v7, "MaxInterval"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 50
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->C:Lcom/google/protobuf/Descriptors$b;

    .line 51
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Key"

    const-string v7, "Value"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 52
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->E:Lcom/google/protobuf/Descriptors$b;

    .line 53
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 54
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->G:Lcom/google/protobuf/Descriptors$b;

    .line 55
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Policies"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 56
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->I:Lcom/google/protobuf/Descriptors$b;

    .line 57
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Config"

    filled-new-array {v14, v2, v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 58
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->K:Lcom/google/protobuf/Descriptors$b;

    .line 59
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SourceAddress"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->L:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 60
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->M:Lcom/google/protobuf/Descriptors$b;

    .line 61
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TcpKeepalive"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->N:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 62
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 63
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 64
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 65
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 66
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 67
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 68
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 69
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->O:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 70
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 71
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 72
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 73
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 74
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 75
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 76
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 77
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 78
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 79
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 80
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 81
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 82
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 83
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 84
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 85
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 86
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 87
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 88
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 89
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->O:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
