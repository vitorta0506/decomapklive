package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48837a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48838b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48839c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48840d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48841e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48842f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48843g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48844h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48845i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48846j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48847k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48848l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48849m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48850n;

    /* renamed from: o  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48851o = Descriptors.FileDescriptor.s(new String[]{"\n2envoy/config/listener/v3/listener_components.proto\u0012\u0018envoy.config.listener.v3\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a\u0019envoy/type/v3/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"Þ\u0001\n\u0006Filter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012G\n\u0010config_discovery\u0018\u0005 \u0001(\u000b2+.envoy.config.core.v3.ExtensionConfigSourceH\u0000:#\u009aÅ\u0088\u001e\u001e\n\u001cenvoy.api.v2.listener.FilterB\r\n\u000bconfig_typeJ\u0004\b\u0003\u0010\u0004J\u0004\b\u0002\u0010\u0003R\u0006config\"´\u0005\n\u0010FilterChainMatch\u0012C\n\u0010destination_port\u0018\b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000búB\b*\u0006\u0018ÿÿ\u0003(\u0001\u00126\n\rprefix_ranges\u0018\u0003 \u0003(\u000b2\u001f.envoy.config.core.v3.CidrRange\u0012\u0016\n\u000eaddress_suffix\u0018\u0004 \u0001(\t\u00120\n\nsuffix_len\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012D\n\u001bdirect_source_prefix_ranges\u0018\r \u0003(\u000b2\u001f.envoy.config.core.v3.CidrRange\u0012^\n\u000bsource_type\u0018\f \u0001(\u000e2?.envoy.config.listener.v3.FilterChainMatch.ConnectionSourceTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012=\n\u0014source_prefix_ranges\u0018\u0006 \u0003(\u000b2\u001f.envoy.config.core.v3.CidrRange\u0012&\n\fsource_ports\u0018\u0007 \u0003(\rB\u0010úB\r\u0092\u0001\n\"\b*\u0006\u0018ÿÿ\u0003(\u0001\u0012\u0014\n\fserver_names\u0018\u000b \u0003(\t\u0012\u001a\n\u0012transport_protocol\u0018\t \u0001(\t\u0012\u001d\n\u0015application_protocols\u0018\n \u0003(\t\"F\n\u0014ConnectionSourceType\u0012\u0007\n\u0003ANY\u0010\u0000\u0012\u0017\n\u0013SAME_IP_OR_LOOPBACK\u0010\u0001\u0012\f\n\bEXTERNAL\u0010\u0002:-\u009aÅ\u0088\u001e(\n&envoy.api.v2.listener.FilterChainMatchJ\u0004\b\u0001\u0010\u0002\"ø\u0004\n\u000bFilterChain\u0012F\n\u0012filter_chain_match\u0018\u0001 \u0001(\u000b2*.envoy.config.listener.v3.FilterChainMatch\u00121\n\u0007filters\u0018\u0003 \u0003(\u000b2 .envoy.config.listener.v3.Filter\u0012@\n\u000fuse_proxy_proto\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u00120\n\bmetadata\u0018\u0005 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012?\n\u0010transport_socket\u0018\u0006 \u0001(\u000b2%.envoy.config.core.v3.TransportSocket\u0012C\n transport_socket_connect_timeout\u0018\t \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\f\n\u0004name\u0018\u0007 \u0001(\t\u0012\\\n\u0017on_demand_configuration\u0018\b \u0001(\u000b2;.envoy.config.listener.v3.FilterChain.OnDemandConfiguration\u001aK\n\u0015OnDemandConfiguration\u00122\n\u000frebuild_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.listener.FilterChainJ\u0004\b\u0002\u0010\u0003R\u000btls_context\"þ\u0004\n!ListenerFilterChainMatchPredicate\u0012X\n\bor_match\u0018\u0001 \u0001(\u000b2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012Y\n\tand_match\u0018\u0002 \u0001(\u000b2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012P\n\tnot_match\u0018\u0003 \u0001(\u000b2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateH\u0000\u0012\u001c\n\tany_match\u0018\u0004 \u0001(\bB\u0007úB\u0004j\u0002\b\u0001H\u0000\u0012;\n\u0016destination_port_range\u0018\u0005 \u0001(\u000b2\u0019.envoy.type.v3.Int32RangeH\u0000\u001a©\u0001\n\bMatchSet\u0012T\n\u0005rules\u0018\u0001 \u0003(\u000b2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateB\búB\u0005\u0092\u0001\u0002\b\u0002:G\u009aÅ\u0088\u001eB\n@envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet:>\u009aÅ\u0088\u001e9\n7envoy.api.v2.listener.ListenerFilterChainMatchPredicateB\u000b\n\u0004rule\u0012\u0003øB\u0001\"õ\u0001\n\u000eListenerFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012T\n\u000ffilter_disabled\u0018\u0004 \u0001(\u000b2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicate:+\u009aÅ\u0088\u001e&\n$envoy.api.v2.listener.ListenerFilterB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006configBK\n&io.envoyproxy.envoy.config.listener.v3B\u0017ListenerComponentsProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), v.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a(), com.google.protobuf.g.a(), w.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48837a = bVar;
        f48838b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "TypedConfig", "ConfigDiscovery", "ConfigType"});
        Descriptors.b bVar2 = a().m().get(1);
        f48839c = bVar2;
        f48840d = new GeneratedMessageV3.e(bVar2, new String[]{"DestinationPort", "PrefixRanges", "AddressSuffix", "SuffixLen", "DirectSourcePrefixRanges", "SourceType", "SourcePrefixRanges", "SourcePorts", "ServerNames", "TransportProtocol", "ApplicationProtocols"});
        Descriptors.b bVar3 = a().m().get(2);
        f48841e = bVar3;
        f48842f = new GeneratedMessageV3.e(bVar3, new String[]{"FilterChainMatch", "Filters", "UseProxyProto", "Metadata", "TransportSocket", "TransportSocketConnectTimeout", "Name", "OnDemandConfiguration"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f48843g = bVar4;
        f48844h = new GeneratedMessageV3.e(bVar4, new String[]{"RebuildTimeout"});
        Descriptors.b bVar5 = a().m().get(3);
        f48845i = bVar5;
        f48846j = new GeneratedMessageV3.e(bVar5, new String[]{"OrMatch", "AndMatch", "NotMatch", "AnyMatch", "DestinationPortRange", "Rule"});
        Descriptors.b bVar6 = bVar5.o().get(0);
        f48847k = bVar6;
        f48848l = new GeneratedMessageV3.e(bVar6, new String[]{"Rules"});
        Descriptors.b bVar7 = a().m().get(4);
        f48849m = bVar7;
        f48850n = new GeneratedMessageV3.e(bVar7, new String[]{"Name", "TypedConfig", "FilterDisabled", "ConfigType"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48851o, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        v.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a();
        com.google.protobuf.g.a();
        w.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48851o;
    }
}
