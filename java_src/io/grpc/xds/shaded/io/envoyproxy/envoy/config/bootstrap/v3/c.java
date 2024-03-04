package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.s;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.t0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Security;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
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
    private static Descriptors.FileDescriptor K = Descriptors.FileDescriptor.s(new String[]{"\n)envoy/config/bootstrap/v3/bootstrap.proto\u0012\u0019envoy.config.bootstrap.v3\u001a)envoy/config/accesslog/v3/accesslog.proto\u001a%envoy/config/cluster/v3/cluster.proto\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a/envoy/config/core/v3/event_service_config.proto\u001a$envoy/config/core/v3/extension.proto\u001a#envoy/config/core/v3/resolver.proto\u001a(envoy/config/core/v3/socket_option.proto\u001a'envoy/config/listener/v3/listener.proto\u001a#envoy/config/metrics/v3/stats.proto\u001a'envoy/config/overload/v3/overload.proto\u001a'envoy/config/trace/v3/http_tracer.proto\u001a6envoy/extensions/transport_sockets/tls/v3/secret.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"¯\u0014\n\tBootstrap\u0012(\n\u0004node\u0018\u0001 \u0001(\u000b2\u001a.envoy.config.core.v3.Node\u0012\u001b\n\u0013node_context_params\u0018\u001a \u0003(\t\u0012N\n\u0010static_resources\u0018\u0002 \u0001(\u000b24.envoy.config.bootstrap.v3.Bootstrap.StaticResources\u0012P\n\u0011dynamic_resources\u0018\u0003 \u0001(\u000b25.envoy.config.bootstrap.v3.Bootstrap.DynamicResources\u0012B\n\u000fcluster_manager\u0018\u0004 \u0001(\u000b2).envoy.config.bootstrap.v3.ClusterManager\u00129\n\nhds_config\u0018\u000e \u0001(\u000b2%.envoy.config.core.v3.ApiConfigSource\u0012\u0012\n\nflags_path\u0018\u0005 \u0001(\t\u00127\n\u000bstats_sinks\u0018\u0006 \u0003(\u000b2\".envoy.config.metrics.v3.StatsSink\u0012:\n\fstats_config\u0018\r \u0001(\u000b2$.envoy.config.metrics.v3.StatsConfig\u0012]\n\u0014stats_flush_interval\u0018\u0007 \u0001(\u000b2\u0019.google.protobuf.DurationB$úB\u000eª\u0001\u000b\u001a\u0003\b¬\u00022\u0004\u0010À\u0084=ò\u0098þ\u008f\u0005\r\u0012\u000bstats_flush\u0012'\n\u0014stats_flush_on_admin\u0018\u001d \u0001(\bB\u0007úB\u0004j\u0002\b\u0001H\u0000\u0012B\n\bwatchdog\u0018\b \u0001(\u000b2#.envoy.config.bootstrap.v3.WatchdogB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u00127\n\twatchdogs\u0018\u001b \u0001(\u000b2$.envoy.config.bootstrap.v3.Watchdogs\u0012<\n\u0007tracing\u0018\t \u0001(\u000b2\u001e.envoy.config.trace.v3.TracingB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012B\n\u000flayered_runtime\u0018\u0011 \u0001(\u000b2).envoy.config.bootstrap.v3.LayeredRuntime\u0012/\n\u0005admin\u0018\f \u0001(\u000b2 .envoy.config.bootstrap.v3.Admin\u0012S\n\u0010overload_manager\u0018\u000f \u0001(\u000b2).envoy.config.overload.v3.OverloadManagerB\u000e\u008a\u0093·*\u0002\b\u0001\u008a\u0093·*\u0002\u0010\u0001\u0012\u001f\n\u0017enable_dispatcher_stats\u0018\u0010 \u0001(\b\u0012\u0015\n\rheader_prefix\u0018\u0012 \u0001(\t\u0012C\n\u001dstats_server_version_override\u0018\u0013 \u0001(\u000b2\u001c.google.protobuf.UInt64Value\u0012,\n\u0017use_tcp_for_dns_lookups\u0018\u0014 \u0001(\bB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012H\n\u0015dns_resolution_config\u0018\u001e \u0001(\u000b2).envoy.config.core.v3.DnsResolutionConfig\u0012M\n\u0019typed_dns_resolver_config\u0018\u001f \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012H\n\u0014bootstrap_extensions\u0018\u0015 \u0003(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012=\n\rfatal_actions\u0018\u001c \u0003(\u000b2&.envoy.config.bootstrap.v3.FatalAction\u0012:\n\u000econfig_sources\u0018\u0016 \u0003(\u000b2\".envoy.config.core.v3.ConfigSource\u0012A\n\u0015default_config_source\u0018\u0017 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012 \n\u0018default_socket_interface\u0018\u0018 \u0001(\t\u0012n\n\u001ecertificate_provider_instances\u0018\u0019 \u0003(\u000b2F.envoy.config.bootstrap.v3.Bootstrap.CertificateProviderInstancesEntry\u0012E\n\u000einline_headers\u0018  \u0003(\u000b2-.envoy.config.bootstrap.v3.CustomInlineHeader\u001aü\u0001\n\u000fStaticResources\u00125\n\tlisteners\u0018\u0001 \u0003(\u000b2\".envoy.config.listener.v3.Listener\u00122\n\bclusters\u0018\u0002 \u0003(\u000b2 .envoy.config.cluster.v3.Cluster\u0012B\n\u0007secrets\u0018\u0003 \u0003(\u000b21.envoy.extensions.transport_sockets.tls.v3.Secret::\u009aÅ\u0088\u001e5\n3envoy.config.bootstrap.v2.Bootstrap.StaticResources\u001a¾\u0002\n\u0010DynamicResources\u00126\n\nlds_config\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u001d\n\u0015lds_resources_locator\u0018\u0005 \u0001(\t\u00126\n\ncds_config\u0018\u0002 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u001d\n\u0015cds_resources_locator\u0018\u0006 \u0001(\t\u00129\n\nads_config\u0018\u0003 \u0001(\u000b2%.envoy.config.core.v3.ApiConfigSource:;\u009aÅ\u0088\u001e6\n4envoy.config.bootstrap.v2.Bootstrap.DynamicResourcesJ\u0004\b\u0004\u0010\u0005\u001ao\n!CertificateProviderInstancesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u00129\n\u0005value\u0018\u0002 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig:\u00028\u0001:*\u009aÅ\u0088\u001e%\n#envoy.config.bootstrap.v2.BootstrapB\r\n\u000bstats_flushJ\u0004\b\n\u0010\u000bJ\u0004\b\u000b\u0010\fR\u0007runtime\"\u0091\u0002\n\u0005Admin\u00128\n\naccess_log\u0018\u0005 \u0003(\u000b2$.envoy.config.accesslog.v3.AccessLog\u0012$\n\u000faccess_log_path\u0018\u0001 \u0001(\tB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012\u0014\n\fprofile_path\u0018\u0002 \u0001(\t\u0012.\n\u0007address\u0018\u0003 \u0001(\u000b2\u001d.envoy.config.core.v3.Address\u0012:\n\u000esocket_options\u0018\u0004 \u0003(\u000b2\".envoy.config.core.v3.SocketOption:&\u009aÅ\u0088\u001e!\n\u001fenvoy.config.bootstrap.v2.Admin\"æ\u0003\n\u000eClusterManager\u0012\u001a\n\u0012local_cluster_name\u0018\u0001 \u0001(\t\u0012U\n\u0011outlier_detection\u0018\u0002 \u0001(\u000b2:.envoy.config.bootstrap.v3.ClusterManager.OutlierDetection\u0012>\n\u0014upstream_bind_config\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.BindConfig\u0012@\n\u0011load_stats_config\u0018\u0004 \u0001(\u000b2%.envoy.config.core.v3.ApiConfigSource\u001a\u00ad\u0001\n\u0010OutlierDetection\u0012\u0016\n\u000eevent_log_path\u0018\u0001 \u0001(\t\u0012?\n\revent_service\u0018\u0002 \u0001(\u000b2(.envoy.config.core.v3.EventServiceConfig:@\u009aÅ\u0088\u001e;\n9envoy.config.bootstrap.v2.ClusterManager.OutlierDetection:/\u009aÅ\u0088\u001e*\n(envoy.config.bootstrap.v2.ClusterManager\"\u008c\u0001\n\tWatchdogs\u0012A\n\u0014main_thread_watchdog\u0018\u0001 \u0001(\u000b2#.envoy.config.bootstrap.v3.Watchdog\u0012<\n\u000fworker_watchdog\u0018\u0002 \u0001(\u000b2#.envoy.config.bootstrap.v3.Watchdog\"»\u0005\n\bWatchdog\u0012C\n\u0007actions\u0018\u0007 \u0003(\u000b22.envoy.config.bootstrap.v3.Watchdog.WatchdogAction\u0012/\n\fmiss_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u00123\n\u0010megamiss_timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012/\n\fkill_timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012D\n\u0017max_kill_timeout_jitter\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u00022\u0000\u00124\n\u0011multikill_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u00123\n\u0013multikill_threshold\u0018\u0005 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u001aö\u0001\n\u000eWatchdogAction\u0012:\n\u0006config\u0018\u0001 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012Y\n\u0005event\u0018\u0002 \u0001(\u000e2@.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.WatchdogEventB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"M\n\rWatchdogEvent\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\b\n\u0004KILL\u0010\u0001\u0012\r\n\tMULTIKILL\u0010\u0002\u0012\f\n\bMEGAMISS\u0010\u0003\u0012\b\n\u0004MISS\u0010\u0004:)\u009aÅ\u0088\u001e$\n\"envoy.config.bootstrap.v2.Watchdog\"I\n\u000bFatalAction\u0012:\n\u0006config\u0018\u0001 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\"¥\u0001\n\u0007Runtime\u0012\u0014\n\fsymlink_root\u0018\u0001 \u0001(\t\u0012\u0014\n\fsubdirectory\u0018\u0002 \u0001(\t\u0012\u001d\n\u0015override_subdirectory\u0018\u0003 \u0001(\t\u0012%\n\u0004base\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct:(\u009aÅ\u0088\u001e#\n!envoy.config.bootstrap.v2.Runtime\"ã\u0005\n\fRuntimeLayer\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012/\n\fstatic_layer\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructH\u0000\u0012G\n\ndisk_layer\u0018\u0003 \u0001(\u000b21.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayerH\u0000\u0012I\n\u000badmin_layer\u0018\u0004 \u0001(\u000b22.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayerH\u0000\u0012G\n\nrtds_layer\u0018\u0005 \u0001(\u000b21.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayerH\u0000\u001a\u0090\u0001\n\tDiskLayer\u0012\u0014\n\fsymlink_root\u0018\u0001 \u0001(\t\u0012\u0014\n\fsubdirectory\u0018\u0003 \u0001(\t\u0012\u001e\n\u0016append_service_cluster\u0018\u0002 \u0001(\b:7\u009aÅ\u0088\u001e2\n0envoy.config.bootstrap.v2.RuntimeLayer.DiskLayer\u001aF\n\nAdminLayer:8\u009aÅ\u0088\u001e3\n1envoy.config.bootstrap.v2.RuntimeLayer.AdminLayer\u001a\u008b\u0001\n\tRtdsLayer\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00127\n\u000brtds_config\u0018\u0002 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource:7\u009aÅ\u0088\u001e2\n0envoy.config.bootstrap.v2.RuntimeLayer.RtdsLayer:-\u009aÅ\u0088\u001e(\n&envoy.config.bootstrap.v2.RuntimeLayerB\u0016\n\u000flayer_specifier\u0012\u0003øB\u0001\"z\n\u000eLayeredRuntime\u00127\n\u0006layers\u0018\u0001 \u0003(\u000b2'.envoy.config.bootstrap.v3.RuntimeLayer:/\u009aÅ\u0088\u001e*\n(envoy.config.bootstrap.v2.LayeredRuntime\"\u008d\u0002\n\u0012CustomInlineHeader\u0012)\n\u0012inline_header_name\u0018\u0001 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012d\n\u0012inline_header_type\u0018\u0002 \u0001(\u000e2>.envoy.config.bootstrap.v3.CustomInlineHeader.InlineHeaderTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"f\n\u0010InlineHeaderType\u0012\u0012\n\u000eREQUEST_HEADER\u0010\u0000\u0012\u0013\n\u000fREQUEST_TRAILER\u0010\u0001\u0012\u0013\n\u000fRESPONSE_HEADER\u0010\u0002\u0012\u0014\n\u0010RESPONSE_TRAILER\u0010\u0003BC\n'io.envoyproxy.envoy.config.bootstrap.v3B\u000eBootstrapProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), l.a(), s.a(), v.a(), t0.a(), d1.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.j.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.d.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.i.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), w.a(), v2.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Security.c(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47524a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47525b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f47526c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f47527d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f47528e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f47529f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f47530g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f47531h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f47532i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f47533j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f47534k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f47535l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f47536m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f47537n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f47538o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f47539p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f47540q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f47541r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f47542s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f47543t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f47544u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f47545v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f47546w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f47547x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f47548y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f47549z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f47524a = bVar;
        f47525b = new GeneratedMessageV3.e(bVar, new String[]{"Node", "NodeContextParams", "StaticResources", "DynamicResources", "ClusterManager", "HdsConfig", "FlagsPath", "StatsSinks", "StatsConfig", "StatsFlushInterval", "StatsFlushOnAdmin", "Watchdog", "Watchdogs", "Tracing", "LayeredRuntime", "Admin", "OverloadManager", "EnableDispatcherStats", "HeaderPrefix", "StatsServerVersionOverride", "UseTcpForDnsLookups", "DnsResolutionConfig", "TypedDnsResolverConfig", "BootstrapExtensions", "FatalActions", "ConfigSources", "DefaultConfigSource", "DefaultSocketInterface", "CertificateProviderInstances", "InlineHeaders", "StatsFlush"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f47526c = bVar2;
        f47527d = new GeneratedMessageV3.e(bVar2, new String[]{"Listeners", "Clusters", "Secrets"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f47528e = bVar3;
        f47529f = new GeneratedMessageV3.e(bVar3, new String[]{"LdsConfig", "LdsResourcesLocator", "CdsConfig", "CdsResourcesLocator", "AdsConfig"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f47530g = bVar4;
        f47531h = new GeneratedMessageV3.e(bVar4, new String[]{"Key", "Value"});
        Descriptors.b bVar5 = a().m().get(1);
        f47532i = bVar5;
        f47533j = new GeneratedMessageV3.e(bVar5, new String[]{"AccessLog", "AccessLogPath", "ProfilePath", "Address", "SocketOptions"});
        Descriptors.b bVar6 = a().m().get(2);
        f47534k = bVar6;
        f47535l = new GeneratedMessageV3.e(bVar6, new String[]{"LocalClusterName", "OutlierDetection", "UpstreamBindConfig", "LoadStatsConfig"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f47536m = bVar7;
        f47537n = new GeneratedMessageV3.e(bVar7, new String[]{"EventLogPath", "EventService"});
        Descriptors.b bVar8 = a().m().get(3);
        f47538o = bVar8;
        f47539p = new GeneratedMessageV3.e(bVar8, new String[]{"MainThreadWatchdog", "WorkerWatchdog"});
        Descriptors.b bVar9 = a().m().get(4);
        f47540q = bVar9;
        f47541r = new GeneratedMessageV3.e(bVar9, new String[]{"Actions", "MissTimeout", "MegamissTimeout", "KillTimeout", "MaxKillTimeoutJitter", "MultikillTimeout", "MultikillThreshold"});
        Descriptors.b bVar10 = bVar9.o().get(0);
        f47542s = bVar10;
        f47543t = new GeneratedMessageV3.e(bVar10, new String[]{"Config", "Event"});
        Descriptors.b bVar11 = a().m().get(5);
        f47544u = bVar11;
        f47545v = new GeneratedMessageV3.e(bVar11, new String[]{"Config"});
        Descriptors.b bVar12 = a().m().get(6);
        f47546w = bVar12;
        f47547x = new GeneratedMessageV3.e(bVar12, new String[]{"SymlinkRoot", "Subdirectory", "OverrideSubdirectory", "Base"});
        Descriptors.b bVar13 = a().m().get(7);
        f47548y = bVar13;
        f47549z = new GeneratedMessageV3.e(bVar13, new String[]{"Name", "StaticLayer", "DiskLayer", "AdminLayer", "RtdsLayer", "LayerSpecifier"});
        Descriptors.b bVar14 = bVar13.o().get(0);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"SymlinkRoot", "Subdirectory", "AppendServiceCluster"});
        Descriptors.b bVar15 = bVar13.o().get(1);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[0]);
        Descriptors.b bVar16 = bVar13.o().get(2);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Name", "RtdsConfig"});
        Descriptors.b bVar17 = a().m().get(8);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Layers"});
        Descriptors.b bVar18 = a().m().get(9);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"InlineHeaderName", "InlineHeaderType"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Migrate.f50818b);
        k10.f(Status.f50839a);
        k10.f(Security.f50833a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(K, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.d.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        l.a();
        s.a();
        v.a();
        t0.a();
        d1.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.j.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.d.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.i.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        w.a();
        v2.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Security.c();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return K;
    }
}
