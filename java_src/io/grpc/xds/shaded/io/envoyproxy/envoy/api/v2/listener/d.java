package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.k;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46977a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46978b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46979c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46980d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46981e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46982f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46983g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46984h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46985i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46986j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46987k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46988l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46989m = Descriptors.FileDescriptor.s(new String[]{"\n/envoy/api/v2/listener/listener_components.proto\u0012\u0015envoy.api.v2.listener\u001a\u001benvoy/api/v2/auth/tls.proto\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u0016envoy/type/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0091\u0001\n\u0006Filter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_typeJ\u0004\b\u0003\u0010\u0004\"Å\u0004\n\u0010FilterChainMatch\u0012C\n\u0010destination_port\u0018\b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000búB\b*\u0006\u0018ÿÿ\u0003(\u0001\u00123\n\rprefix_ranges\u0018\u0003 \u0003(\u000b2\u001c.envoy.api.v2.core.CidrRange\u0012\u0016\n\u000eaddress_suffix\u0018\u0004 \u0001(\t\u00120\n\nsuffix_len\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012[\n\u000bsource_type\u0018\f \u0001(\u000e2<.envoy.api.v2.listener.FilterChainMatch.ConnectionSourceTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012:\n\u0014source_prefix_ranges\u0018\u0006 \u0003(\u000b2\u001c.envoy.api.v2.core.CidrRange\u0012&\n\fsource_ports\u0018\u0007 \u0003(\rB\u0010úB\r\u0092\u0001\n\"\b*\u0006\u0018ÿÿ\u0003(\u0001\u0012\u0014\n\fserver_names\u0018\u000b \u0003(\t\u0012\u001a\n\u0012transport_protocol\u0018\t \u0001(\t\u0012\u001d\n\u0015application_protocols\u0018\n \u0003(\t\"U\n\u0014ConnectionSourceType\u0012\u0007\n\u0003ANY\u0010\u0000\u0012&\n\u0005LOCAL\u0010\u0001\u001a\u001bò\u0098þ\u008f\u0005\u0015\n\u0013SAME_IP_OR_LOOPBACK\u0012\f\n\bEXTERNAL\u0010\u0002J\u0004\b\u0001\u0010\u0002\"ô\u0002\n\u000bFilterChain\u0012C\n\u0012filter_chain_match\u0018\u0001 \u0001(\u000b2'.envoy.api.v2.listener.FilterChainMatch\u0012@\n\u000btls_context\u0018\u0002 \u0001(\u000b2'.envoy.api.v2.auth.DownstreamTlsContextB\u0002\u0018\u0001\u0012.\n\u0007filters\u0018\u0003 \u0003(\u000b2\u001d.envoy.api.v2.listener.Filter\u00123\n\u000fuse_proxy_proto\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012-\n\bmetadata\u0018\u0005 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012<\n\u0010transport_socket\u0018\u0006 \u0001(\u000b2\".envoy.api.v2.core.TransportSocket\u0012\f\n\u0004name\u0018\u0007 \u0001(\t\"å\u0003\n!ListenerFilterChainMatchPredicate\u0012U\n\bor_match\u0018\u0001 \u0001(\u000b2A.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012V\n\tand_match\u0018\u0002 \u0001(\u000b2A.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSetH\u0000\u0012M\n\tnot_match\u0018\u0003 \u0001(\u000b28.envoy.api.v2.listener.ListenerFilterChainMatchPredicateH\u0000\u0012\u001c\n\tany_match\u0018\u0004 \u0001(\bB\u0007úB\u0004j\u0002\b\u0001H\u0000\u00128\n\u0016destination_port_range\u0018\u0005 \u0001(\u000b2\u0016.envoy.type.Int32RangeH\u0000\u001a]\n\bMatchSet\u0012Q\n\u0005rules\u0018\u0001 \u0003(\u000b28.envoy.api.v2.listener.ListenerFilterChainMatchPredicateB\búB\u0005\u0092\u0001\u0002\b\u0002B\u000b\n\u0004rule\u0012\u0003øB\u0001\"æ\u0001\n\u000eListenerFilter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000\u0012Q\n\u000ffilter_disabled\u0018\u0004 \u0001(\u000b28.envoy.api.v2.listener.ListenerFilterChainMatchPredicateB\r\n\u000bconfig_typeB\u009c\u0001\n#io.envoyproxy.envoy.api.v2.listenerB\u0017ListenerComponentsProtoP\u0001ª\u0002\u0017Envoy.Api.V2.ListenerNSê\u0002\u0017Envoy.Api.V2.ListenerNSò\u0098þ\u008f\u0005\u001a\u0012\u0018envoy.config.listener.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{k.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.h.a(), com.google.protobuf.g.a(), v2.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46977a = bVar;
        f46978b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar2 = a().m().get(1);
        f46979c = bVar2;
        f46980d = new GeneratedMessageV3.e(bVar2, new String[]{"DestinationPort", "PrefixRanges", "AddressSuffix", "SuffixLen", "SourceType", "SourcePrefixRanges", "SourcePorts", "ServerNames", "TransportProtocol", "ApplicationProtocols"});
        Descriptors.b bVar3 = a().m().get(2);
        f46981e = bVar3;
        f46982f = new GeneratedMessageV3.e(bVar3, new String[]{"FilterChainMatch", "TlsContext", "Filters", "UseProxyProto", "Metadata", "TransportSocket", "Name"});
        Descriptors.b bVar4 = a().m().get(3);
        f46983g = bVar4;
        f46984h = new GeneratedMessageV3.e(bVar4, new String[]{"OrMatch", "AndMatch", "NotMatch", "AnyMatch", "DestinationPortRange", "Rule"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f46985i = bVar5;
        f46986j = new GeneratedMessageV3.e(bVar5, new String[]{"Rules"});
        Descriptors.b bVar6 = a().m().get(4);
        f46987k = bVar6;
        f46988l = new GeneratedMessageV3.e(bVar6, new String[]{"Name", "Config", "TypedConfig", "FilterDisabled", "ConfigType"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50820d);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46989m, k10);
        k.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.h.a();
        com.google.protobuf.g.a();
        v2.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46989m;
    }
}
