package io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50206a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50207b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50208c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50209d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50210e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50211f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50212g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50213h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50214i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50215j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50216k = Descriptors.FileDescriptor.s(new String[]{"\n\"envoy/service/status/v3/csds.proto\u0012\u0017envoy.service.status.v3\u001a envoy/admin/v3/config_dump.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a envoy/type/matcher/v3/node.proto\u001a\u001cgoogle/api/annotations.proto\u001a\u0019google/protobuf/any.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"®\u0001\n\u0013ClientStatusRequest\u00129\n\rnode_matchers\u0018\u0001 \u0003(\u000b2\".envoy.type.matcher.v3.NodeMatcher\u0012(\n\u0004node\u0018\u0002 \u0001(\u000b2\u001a.envoy.config.core.v3.Node:2\u009aÅ\u0088\u001e-\n+envoy.service.status.v2.ClientStatusRequest\"\u0094\u0004\n\fPerXdsConfig\u00125\n\u0006status\u0018\u0001 \u0001(\u000e2%.envoy.service.status.v3.ConfigStatus\u0012O\n\rclient_status\u0018\u0007 \u0001(\u000e2+.envoy.service.status.v3.ClientConfigStatusB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012>\n\u000flistener_config\u0018\u0002 \u0001(\u000b2#.envoy.admin.v3.ListenersConfigDumpH\u0000\u0012<\n\u000ecluster_config\u0018\u0003 \u0001(\u000b2\".envoy.admin.v3.ClustersConfigDumpH\u0000\u00128\n\froute_config\u0018\u0004 \u0001(\u000b2 .envoy.admin.v3.RoutesConfigDumpH\u0000\u0012E\n\u0013scoped_route_config\u0018\u0005 \u0001(\u000b2&.envoy.admin.v3.ScopedRoutesConfigDumpH\u0000\u0012>\n\u000fendpoint_config\u0018\u0006 \u0001(\u000b2#.envoy.admin.v3.EndpointsConfigDumpH\u0000:+\u009aÅ\u0088\u001e&\n$envoy.service.status.v2.PerXdsConfigB\u0010\n\u000eper_xds_config\"ù\u0004\n\fClientConfig\u0012(\n\u0004node\u0018\u0001 \u0001(\u000b2\u001a.envoy.config.core.v3.Node\u0012F\n\nxds_config\u0018\u0002 \u0003(\u000b2%.envoy.service.status.v3.PerXdsConfigB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012S\n\u0013generic_xds_configs\u0018\u0003 \u0003(\u000b26.envoy.service.status.v3.ClientConfig.GenericXdsConfig\u001aô\u0002\n\u0010GenericXdsConfig\u0012\u0010\n\btype_url\u0018\u0001 \u0001(\t\u0012\f\n\u0004name\u0018\u0002 \u0001(\t\u0012\u0014\n\fversion_info\u0018\u0003 \u0001(\t\u0012(\n\nxds_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012<\n\rconfig_status\u0018\u0006 \u0001(\u000e2%.envoy.service.status.v3.ConfigStatus\u0012;\n\rclient_status\u0018\u0007 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus\u00127\n\u000berror_state\u0018\b \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012\u001a\n\u0012is_static_resource\u0018\t \u0001(\b:+\u009aÅ\u0088\u001e&\n$envoy.service.status.v2.ClientConfig\"\u0082\u0001\n\u0014ClientStatusResponse\u00125\n\u0006config\u0018\u0001 \u0003(\u000b2%.envoy.service.status.v3.ClientConfig:3\u009aÅ\u0088\u001e.\n,envoy.service.status.v2.ClientStatusResponse*K\n\fConfigStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\n\n\u0006SYNCED\u0010\u0001\u0012\f\n\bNOT_SENT\u0010\u0002\u0012\t\n\u0005STALE\u0010\u0003\u0012\t\n\u0005ERROR\u0010\u0004*c\n\u0012ClientConfigStatus\u0012\u0012\n\u000eCLIENT_UNKNOWN\u0010\u0000\u0012\u0014\n\u0010CLIENT_REQUESTED\u0010\u0001\u0012\u0010\n\fCLIENT_ACKED\u0010\u0002\u0012\u0011\n\rCLIENT_NACKED\u0010\u00032¸\u0002\n\u001cClientStatusDiscoveryService\u0012w\n\u0012StreamClientStatus\u0012,.envoy.service.status.v3.ClientStatusRequest\u001a-.envoy.service.status.v3.ClientStatusResponse\"\u0000(\u00010\u0001\u0012\u009e\u0001\n\u0011FetchClientStatus\u0012,.envoy.service.status.v3.ClientStatusRequest\u001a-.envoy.service.status.v3.ClientStatusResponse\",\u0082Óä\u0093\u0002\u001d\"\u001b/v3/discovery:client_status\u0082Óä\u0093\u0002\u0003:\u0001*B?\n%io.envoyproxy.envoy.service.status.v3B\tCsdsProtoP\u0001\u0088\u0001\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.a(), g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.g.a(), com.google.api.b.a(), com.google.protobuf.g.a(), a3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50206a = bVar;
        f50207b = new GeneratedMessageV3.e(bVar, new String[]{"NodeMatchers", "Node"});
        Descriptors.b bVar2 = a().m().get(1);
        f50208c = bVar2;
        f50209d = new GeneratedMessageV3.e(bVar2, new String[]{"Status", "ClientStatus", "ListenerConfig", "ClusterConfig", "RouteConfig", "ScopedRouteConfig", "EndpointConfig", "PerXdsConfig"});
        Descriptors.b bVar3 = a().m().get(2);
        f50210e = bVar3;
        f50211f = new GeneratedMessageV3.e(bVar3, new String[]{"Node", "XdsConfig", "GenericXdsConfigs"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f50212g = bVar4;
        f50213h = new GeneratedMessageV3.e(bVar4, new String[]{"TypeUrl", "Name", "VersionInfo", "XdsConfig", "LastUpdated", "ConfigStatus", "ClientStatus", "ErrorState", "IsStaticResource"});
        Descriptors.b bVar5 = a().m().get(3);
        f50214i = bVar5;
        f50215j = new GeneratedMessageV3.e(bVar5, new String[]{"Config"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(com.google.api.b.f10941a);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f50216k, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.a();
        g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.g.a();
        com.google.api.b.a();
        com.google.protobuf.g.a();
        a3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50216k;
    }
}
