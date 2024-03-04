package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.m;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.o;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class a {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    private static Descriptors.FileDescriptor E = Descriptors.FileDescriptor.s(new String[]{"\nTenvoy/config/filter/network/http_connection_manager/v2/http_connection_manager.proto\u00126envoy.config.filter.network.http_connection_manager.v2\u001a%envoy/api/v2/core/config_source.proto\u001a envoy/api/v2/core/protocol.proto\u001a\u0018envoy/api/v2/route.proto\u001a\u001fenvoy/api/v2/scoped_route.proto\u001a0envoy/config/filter/accesslog/v2/accesslog.proto\u001a'envoy/config/trace/v2/http_tracer.proto\u001a\u0018envoy/type/percent.proto\u001a&envoy/type/tracing/v2/custom_tag.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"ÿ\u001c\n\u0015HttpConnectionManager\u0012u\n\ncodec_type\u0018\u0001 \u0001(\u000e2W.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.CodecTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bstat_prefix\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012J\n\u0003rds\u0018\u0003 \u0001(\u000b2;.envoy.config.filter.network.http_connection_manager.v2.RdsH\u0000\u00128\n\froute_config\u0018\u0004 \u0001(\u000b2 .envoy.api.v2.RouteConfigurationH\u0000\u0012]\n\rscoped_routes\u0018\u001f \u0001(\u000b2D.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutesH\u0000\u0012X\n\fhttp_filters\u0018\u0005 \u0003(\u000b2B.envoy.config.filter.network.http_connection_manager.v2.HttpFilter\u00122\n\u000eadd_user_agent\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012f\n\u0007tracing\u0018\u0007 \u0001(\u000b2U.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing\u0012L\n\u001ccommon_http_protocol_options\u0018# \u0001(\u000b2&.envoy.api.v2.core.HttpProtocolOptions\u0012F\n\u0015http_protocol_options\u0018\b \u0001(\u000b2'.envoy.api.v2.core.Http1ProtocolOptions\u0012G\n\u0016http2_protocol_options\u0018\t \u0001(\u000b2'.envoy.api.v2.core.Http2ProtocolOptions\u0012\u0013\n\u000bserver_name\u0018\n \u0001(\t\u0012\u0098\u0001\n\u001cserver_header_transformation\u0018\" \u0001(\u000e2h.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.ServerHeaderTransformationB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012H\n\u0016max_request_headers_kb\u0018\u001d \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\núB\u0007*\u0005\u0018\u0080@ \u0000\u00129\n\fidle_timeout\u0018\u000b \u0001(\u000b2\u0019.google.protobuf.DurationB\b\u0018\u0001¸îòÒ\u0005\u0001\u00126\n\u0013stream_idle_timeout\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.Duration\u00122\n\u000frequest_timeout\u0018\u001c \u0001(\u000b2\u0019.google.protobuf.Duration\u00120\n\rdrain_timeout\u0018\f \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\u0015delayed_close_timeout\u0018\u001a \u0001(\u000b2\u0019.google.protobuf.Duration\u0012?\n\naccess_log\u0018\r \u0003(\u000b2+.envoy.config.filter.accesslog.v2.AccessLog\u00126\n\u0012use_remote_address\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u001c\n\u0014xff_num_trusted_hops\u0018\u0013 \u0001(\r\u0012\u0084\u0001\n\u0017internal_address_config\u0018\u0019 \u0001(\u000b2c.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig\u0012\u0017\n\u000fskip_xff_append\u0018\u0015 \u0001(\b\u0012\u000b\n\u0003via\u0018\u0016 \u0001(\t\u00127\n\u0013generate_request_id\u0018\u000f \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012$\n\u001cpreserve_external_request_id\u0018  \u0001(\b\u0012\u0095\u0001\n\u001bforward_client_cert_details\u0018\u0010 \u0001(\u000e2f.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.ForwardClientCertDetailsB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0092\u0001\n\u001fset_current_client_cert_details\u0018\u0011 \u0001(\u000b2i.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetails\u0012\u001a\n\u0012proxy_100_continue\u0018\u0012 \u0001(\b\u00129\n1represent_ipv4_remote_address_as_ipv4_mapped_ipv6\u0018\u0014 \u0001(\b\u0012t\n\u000fupgrade_configs\u0018\u0017 \u0003(\u000b2[.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig\u00122\n\u000enormalize_path\u0018\u001e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0015\n\rmerge_slashes\u0018! \u0001(\b\u0012h\n\u0014request_id_extension\u0018$ \u0001(\u000b2J.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension\u001a®\u0004\n\u0007Tracing\u0012\u008d\u0001\n\u000eoperation_name\u0018\u0001 \u0001(\u000e2c.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.Tracing.OperationNameB\u0010\u0018\u0001úB\u0005\u0082\u0001\u0002\u0010\u0001¸îòÒ\u0005\u0001\u0012$\n\u0018request_headers_for_tags\u0018\u0002 \u0003(\tB\u0002\u0018\u0001\u0012,\n\u000fclient_sampling\u0018\u0003 \u0001(\u000b2\u0013.envoy.type.Percent\u0012,\n\u000frandom_sampling\u0018\u0004 \u0001(\u000b2\u0013.envoy.type.Percent\u0012-\n\u0010overall_sampling\u0018\u0005 \u0001(\u000b2\u0013.envoy.type.Percent\u0012\u000f\n\u0007verbose\u0018\u0006 \u0001(\b\u00129\n\u0013max_path_tag_length\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00125\n\u000bcustom_tags\u0018\b \u0003(\u000b2 .envoy.type.tracing.v2.CustomTag\u00125\n\bprovider\u0018\t \u0001(\u000b2#.envoy.config.trace.v2.Tracing.Http\"(\n\rOperationName\u0012\u000b\n\u0007INGRESS\u0010\u0000\u0012\n\n\u0006EGRESS\u0010\u0001\u001a-\n\u0015InternalAddressConfig\u0012\u0014\n\funix_sockets\u0018\u0001 \u0001(\b\u001a\u0087\u0001\n\u001bSetCurrentClientCertDetails\u0012+\n\u0007subject\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\f\n\u0004cert\u0018\u0003 \u0001(\b\u0012\r\n\u0005chain\u0018\u0006 \u0001(\b\u0012\u000b\n\u0003dns\u0018\u0004 \u0001(\b\u0012\u000b\n\u0003uri\u0018\u0005 \u0001(\bJ\u0004\b\u0002\u0010\u0003\u001a§\u0001\n\rUpgradeConfig\u0012\u0014\n\fupgrade_type\u0018\u0001 \u0001(\t\u0012S\n\u0007filters\u0018\u0002 \u0003(\u000b2B.envoy.config.filter.network.http_connection_manager.v2.HttpFilter\u0012+\n\u0007enabled\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"6\n\tCodecType\u0012\b\n\u0004AUTO\u0010\u0000\u0012\t\n\u0005HTTP1\u0010\u0001\u0012\t\n\u0005HTTP2\u0010\u0002\u0012\t\n\u0005HTTP3\u0010\u0003\"S\n\u001aServerHeaderTransformation\u0012\r\n\tOVERWRITE\u0010\u0000\u0012\u0014\n\u0010APPEND_IF_ABSENT\u0010\u0001\u0012\u0010\n\fPASS_THROUGH\u0010\u0002\"y\n\u0018ForwardClientCertDetails\u0012\f\n\bSANITIZE\u0010\u0000\u0012\u0010\n\fFORWARD_ONLY\u0010\u0001\u0012\u0012\n\u000eAPPEND_FORWARD\u0010\u0002\u0012\u0010\n\fSANITIZE_SET\u0010\u0003\u0012\u0017\n\u0013ALWAYS_FORWARD_ONLY\u0010\u0004B\u0016\n\u000froute_specifier\u0012\u0003øB\u0001J\u0004\b\u001b\u0010\u001c\"k\n\u0003Rds\u0012@\n\rconfig_source\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\"\n\u0011route_config_name\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\"v\n\u001dScopedRouteConfigurationsList\u0012U\n\u001bscoped_route_configurations\u0018\u0001 \u0003(\u000b2&.envoy.api.v2.ScopedRouteConfigurationB\búB\u0005\u0092\u0001\u0002\b\u0001\"ø\b\n\fScopedRoutes\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012y\n\u0011scope_key_builder\u0018\u0002 \u0001(\u000b2T.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilderB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012D\n\u0011rds_config_source\u0018\u0003 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0081\u0001\n scoped_route_configurations_list\u0018\u0004 \u0001(\u000b2U.envoy.config.filter.network.http_connection_manager.v2.ScopedRouteConfigurationsListH\u0000\u0012W\n\nscoped_rds\u0018\u0005 \u0001(\u000b2A.envoy.config.filter.network.http_connection_manager.v2.ScopedRdsH\u0000\u001a\u0099\u0005\n\u000fScopeKeyBuilder\u0012\u0081\u0001\n\tfragments\u0018\u0001 \u0003(\u000b2d.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderB\búB\u0005\u0092\u0001\u0002\b\u0001\u001a\u0081\u0004\n\u000fFragmentBuilder\u0012\u009b\u0001\n\u0016header_value_extractor\u0018\u0001 \u0001(\u000b2y.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\u0000\u001aÂ\u0002\n\u0014HeaderValueExtractor\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0019\n\u0011element_separator\u0018\u0002 \u0001(\t\u0012\u000f\n\u0005index\u0018\u0003 \u0001(\rH\u0000\u0012\u0097\u0001\n\u0007element\u0018\u0004 \u0001(\u000b2\u0083\u0001.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\u0000\u001a=\n\tKvElement\u0012\u001a\n\tseparator\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0014\n\u0003key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001B\u000e\n\fextract_typeB\u000b\n\u0004type\u0012\u0003øB\u0001B\u0017\n\u0010config_specifier\u0012\u0003øB\u0001\"X\n\tScopedRds\u0012K\n\u0018scoped_rds_config_source\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001\"\u0095\u0001\n\nHttpFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_typeJ\u0004\b\u0003\u0010\u0004\"@\n\u0012RequestIDExtension\u0012*\n\ftyped_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.AnyB¯\u0001\nDio.envoyproxy.envoy.config.filter.network.http_connection_manager.v2B\u001aHttpConnectionManagerProtoP\u0001ò\u0098þ\u008f\u0005=\u0012;envoy.extensions.filters.network.http_connection_manager.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{l.a(), g0.a(), m.a(), o.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.a(), com.google.protobuf.g.a(), w.a(), v2.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48691a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48692b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48693c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48694d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48695e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48696f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48697g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48698h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48699i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48700j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48701k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48702l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48703m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48704n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48705o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48706p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f48707q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f48708r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f48709s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f48710t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f48711u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f48712v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f48713w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f48714x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f48715y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f48716z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f48691a = bVar;
        f48692b = new GeneratedMessageV3.e(bVar, new String[]{"CodecType", "StatPrefix", "Rds", "RouteConfig", "ScopedRoutes", "HttpFilters", "AddUserAgent", "Tracing", "CommonHttpProtocolOptions", "HttpProtocolOptions", "Http2ProtocolOptions", "ServerName", "ServerHeaderTransformation", "MaxRequestHeadersKb", "IdleTimeout", "StreamIdleTimeout", "RequestTimeout", "DrainTimeout", "DelayedCloseTimeout", "AccessLog", "UseRemoteAddress", "XffNumTrustedHops", "InternalAddressConfig", "SkipXffAppend", "Via", "GenerateRequestId", "PreserveExternalRequestId", "ForwardClientCertDetails", "SetCurrentClientCertDetails", "Proxy100Continue", "RepresentIpv4RemoteAddressAsIpv4MappedIpv6", "UpgradeConfigs", "NormalizePath", "MergeSlashes", "RequestIdExtension", "RouteSpecifier"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f48693c = bVar2;
        f48694d = new GeneratedMessageV3.e(bVar2, new String[]{"OperationName", "RequestHeadersForTags", "ClientSampling", "RandomSampling", "OverallSampling", "Verbose", "MaxPathTagLength", "CustomTags", "Provider"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f48695e = bVar3;
        f48696f = new GeneratedMessageV3.e(bVar3, new String[]{"UnixSockets"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f48697g = bVar4;
        f48698h = new GeneratedMessageV3.e(bVar4, new String[]{"Subject", "Cert", "Chain", "Dns", "Uri"});
        Descriptors.b bVar5 = bVar.o().get(3);
        f48699i = bVar5;
        f48700j = new GeneratedMessageV3.e(bVar5, new String[]{"UpgradeType", "Filters", "Enabled"});
        Descriptors.b bVar6 = a().m().get(1);
        f48701k = bVar6;
        f48702l = new GeneratedMessageV3.e(bVar6, new String[]{"ConfigSource", "RouteConfigName"});
        Descriptors.b bVar7 = a().m().get(2);
        f48703m = bVar7;
        f48704n = new GeneratedMessageV3.e(bVar7, new String[]{"ScopedRouteConfigurations"});
        Descriptors.b bVar8 = a().m().get(3);
        f48705o = bVar8;
        f48706p = new GeneratedMessageV3.e(bVar8, new String[]{"Name", "ScopeKeyBuilder", "RdsConfigSource", "ScopedRouteConfigurationsList", "ScopedRds", "ConfigSpecifier"});
        Descriptors.b bVar9 = bVar8.o().get(0);
        f48707q = bVar9;
        f48708r = new GeneratedMessageV3.e(bVar9, new String[]{"Fragments"});
        Descriptors.b bVar10 = bVar9.o().get(0);
        f48709s = bVar10;
        f48710t = new GeneratedMessageV3.e(bVar10, new String[]{"HeaderValueExtractor", "Type"});
        Descriptors.b bVar11 = bVar10.o().get(0);
        f48711u = bVar11;
        f48712v = new GeneratedMessageV3.e(bVar11, new String[]{"Name", "ElementSeparator", "Index", "Element", "ExtractType"});
        Descriptors.b bVar12 = bVar11.o().get(0);
        f48713w = bVar12;
        f48714x = new GeneratedMessageV3.e(bVar12, new String[]{"Separator", "Key"});
        Descriptors.b bVar13 = a().m().get(4);
        f48715y = bVar13;
        f48716z = new GeneratedMessageV3.e(bVar13, new String[]{"ScopedRdsConfigSource"});
        Descriptors.b bVar14 = a().m().get(5);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar15 = a().m().get(6);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"TypedConfig"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45757a);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(E, k10);
        l.a();
        g0.a();
        m.a();
        o.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a();
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
        return E;
    }
}
