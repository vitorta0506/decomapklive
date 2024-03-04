package io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes5.dex */
public final class b {
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
    private static Descriptors.FileDescriptor S = Descriptors.FileDescriptor.s(new String[]{"\n envoy/admin/v3/config_dump.proto\u0012\u000eenvoy.admin.v3\u001a)envoy/config/bootstrap/v3/bootstrap.proto\u001a\u0019google/protobuf/any.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"Z\n\nConfigDump\u0012%\n\u0007configs\u0018\u0001 \u0003(\u000b2\u0014.google.protobuf.Any:%\u009aÅ\u0088\u001e \n\u001eenvoy.admin.v2alpha.ConfigDump\"×\u0001\n\u0012UpdateFailureState\u00122\n\u0014failed_configuration\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00127\n\u0013last_update_attempt\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000f\n\u0007details\u0018\u0003 \u0001(\t\u0012\u0014\n\fversion_info\u0018\u0004 \u0001(\t:-\u009aÅ\u0088\u001e(\n&envoy.admin.v2alpha.UpdateFailureState\"°\u0001\n\u0013BootstrapConfigDump\u00127\n\tbootstrap\u0018\u0001 \u0001(\u000b2$.envoy.config.bootstrap.v3.Bootstrap\u00120\n\flast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:.\u009aÅ\u0088\u001e)\n'envoy.admin.v2alpha.BootstrapConfigDump\"¾\b\n\u0013ListenersConfigDump\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012L\n\u0010static_listeners\u0018\u0002 \u0003(\u000b22.envoy.admin.v3.ListenersConfigDump.StaticListener\u0012N\n\u0011dynamic_listeners\u0018\u0003 \u0003(\u000b23.envoy.admin.v3.ListenersConfigDump.DynamicListener\u001a©\u0001\n\u000eStaticListener\u0012&\n\blistener\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:=\u009aÅ\u0088\u001e8\n6envoy.admin.v2alpha.ListenersConfigDump.StaticListener\u001aË\u0001\n\u0014DynamicListenerState\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012&\n\blistener\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp:C\u009aÅ\u0088\u001e>\n<envoy.admin.v2alpha.ListenersConfigDump.DynamicListenerState\u001aÈ\u0003\n\u000fDynamicListener\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012N\n\factive_state\u0018\u0002 \u0001(\u000b28.envoy.admin.v3.ListenersConfigDump.DynamicListenerState\u0012O\n\rwarming_state\u0018\u0003 \u0001(\u000b28.envoy.admin.v3.ListenersConfigDump.DynamicListenerState\u0012P\n\u000edraining_state\u0018\u0004 \u0001(\u000b28.envoy.admin.v3.ListenersConfigDump.DynamicListenerState\u00127\n\u000berror_state\u0018\u0005 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0006 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:>\u009aÅ\u0088\u001e9\n7envoy.admin.v2alpha.ListenersConfigDump.DynamicListener:.\u009aÅ\u0088\u001e)\n'envoy.admin.v2alpha.ListenersConfigDump\"«\u0006\n\u0012ClustersConfigDump\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012I\n\u000fstatic_clusters\u0018\u0002 \u0003(\u000b20.envoy.admin.v3.ClustersConfigDump.StaticCluster\u0012R\n\u0017dynamic_active_clusters\u0018\u0003 \u0003(\u000b21.envoy.admin.v3.ClustersConfigDump.DynamicCluster\u0012S\n\u0018dynamic_warming_clusters\u0018\u0004 \u0003(\u000b21.envoy.admin.v3.ClustersConfigDump.DynamicCluster\u001a¥\u0001\n\rStaticCluster\u0012%\n\u0007cluster\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:;\u009aÅ\u0088\u001e6\n4envoy.admin.v2alpha.ClustersConfigDump.StaticCluster\u001a³\u0002\n\u000eDynamicCluster\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012%\n\u0007cluster\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0004 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0005 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:<\u009aÅ\u0088\u001e7\n5envoy.admin.v2alpha.ClustersConfigDump.DynamicCluster:-\u009aÅ\u0088\u001e(\n&envoy.admin.v2alpha.ClustersConfigDump\"Ù\u0005\n\u0010RoutesConfigDump\u0012P\n\u0014static_route_configs\u0018\u0002 \u0003(\u000b22.envoy.admin.v3.RoutesConfigDump.StaticRouteConfig\u0012R\n\u0015dynamic_route_configs\u0018\u0003 \u0003(\u000b23.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig\u001a°\u0001\n\u0011StaticRouteConfig\u0012*\n\froute_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp:=\u009aÅ\u0088\u001e8\n6envoy.admin.v2alpha.RoutesConfigDump.StaticRouteConfig\u001a¾\u0002\n\u0012DynamicRouteConfig\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012*\n\froute_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0004 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0005 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:>\u009aÅ\u0088\u001e9\n7envoy.admin.v2alpha.RoutesConfigDump.DynamicRouteConfig:+\u009aÅ\u0088\u001e&\n$envoy.admin.v2alpha.RoutesConfigDump\"á\u0006\n\u0016ScopedRoutesConfigDump\u0012d\n\u001binline_scoped_route_configs\u0018\u0001 \u0003(\u000b2?.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs\u0012f\n\u001cdynamic_scoped_route_configs\u0018\u0002 \u0003(\u000b2@.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs\u001aÚ\u0001\n\u0018InlineScopedRouteConfigs\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00122\n\u0014scoped_route_configs\u0018\u0002 \u0003(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp:J\u009aÅ\u0088\u001eE\nCenvoy.admin.v2alpha.ScopedRoutesConfigDump.InlineScopedRouteConfigs\u001aè\u0002\n\u0019DynamicScopedRouteConfigs\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0014\n\fversion_info\u0018\u0002 \u0001(\t\u00122\n\u0014scoped_route_configs\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0005 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0006 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus:K\u009aÅ\u0088\u001eF\nDenvoy.admin.v2alpha.ScopedRoutesConfigDump.DynamicScopedRouteConfigs:1\u009aÅ\u0088\u001e,\n*envoy.admin.v2alpha.ScopedRoutesConfigDump\"\u009e\u0006\n\u0011SecretsConfigDump\u0012F\n\u000estatic_secrets\u0018\u0001 \u0003(\u000b2..envoy.admin.v3.SecretsConfigDump.StaticSecret\u0012O\n\u0016dynamic_active_secrets\u0018\u0002 \u0003(\u000b2/.envoy.admin.v3.SecretsConfigDump.DynamicSecret\u0012P\n\u0017dynamic_warming_secrets\u0018\u0003 \u0003(\u000b2/.envoy.admin.v3.SecretsConfigDump.DynamicSecret\u001a½\u0002\n\rDynamicSecret\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0014\n\fversion_info\u0018\u0002 \u0001(\t\u00120\n\flast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012$\n\u0006secret\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.Any\u00127\n\u000berror_state\u0018\u0005 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0006 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus::\u009aÅ\u0088\u001e5\n3envoy.admin.v2alpha.SecretsConfigDump.DynamicSecret\u001a¯\u0001\n\fStaticSecret\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00120\n\flast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012$\n\u0006secret\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any:9\u009aÅ\u0088\u001e4\n2envoy.admin.v2alpha.SecretsConfigDump.StaticSecret:,\u009aÅ\u0088\u001e'\n%envoy.admin.v2alpha.SecretsConfigDump\"Í\u0004\n\u0013EndpointsConfigDump\u0012Y\n\u0017static_endpoint_configs\u0018\u0002 \u0003(\u000b28.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig\u0012[\n\u0018dynamic_endpoint_configs\u0018\u0003 \u0003(\u000b29.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig\u001aw\n\u0014StaticEndpointConfig\u0012-\n\u000fendpoint_config\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u001a\u0084\u0002\n\u0015DynamicEndpointConfig\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012-\n\u000fendpoint_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u00120\n\flast_updated\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00127\n\u000berror_state\u0018\u0004 \u0001(\u000b2\".envoy.admin.v3.UpdateFailureState\u0012;\n\rclient_status\u0018\u0005 \u0001(\u000e2$.envoy.admin.v3.ClientResourceStatus*]\n\u0014ClientResourceStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\r\n\tREQUESTED\u0010\u0001\u0012\u0012\n\u000eDOES_NOT_EXIST\u0010\u0002\u0012\t\n\u0005ACKED\u0010\u0003\u0012\n\n\u0006NACKED\u0010\u0004B9\n\u001cio.envoyproxy.envoy.admin.v3B\u000fConfigDumpProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.a(), com.google.protobuf.g.a(), a3.a(), Status.c(), Versioning.c()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45896a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45897b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45898c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45899d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f45900e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f45901f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f45902g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f45903h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f45904i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f45905j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f45906k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f45907l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f45908m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f45909n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f45910o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f45911p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f45912q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f45913r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f45914s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f45915t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f45916u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f45917v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f45918w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f45919x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f45920y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f45921z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f45896a = bVar;
        f45897b = new GeneratedMessageV3.e(bVar, new String[]{"Configs"});
        Descriptors.b bVar2 = a().m().get(1);
        f45898c = bVar2;
        f45899d = new GeneratedMessageV3.e(bVar2, new String[]{"FailedConfiguration", "LastUpdateAttempt", "Details", "VersionInfo"});
        Descriptors.b bVar3 = a().m().get(2);
        f45900e = bVar3;
        f45901f = new GeneratedMessageV3.e(bVar3, new String[]{"Bootstrap", "LastUpdated"});
        Descriptors.b bVar4 = a().m().get(3);
        f45902g = bVar4;
        f45903h = new GeneratedMessageV3.e(bVar4, new String[]{"VersionInfo", "StaticListeners", "DynamicListeners"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f45904i = bVar5;
        f45905j = new GeneratedMessageV3.e(bVar5, new String[]{"Listener", "LastUpdated"});
        Descriptors.b bVar6 = bVar4.o().get(1);
        f45906k = bVar6;
        f45907l = new GeneratedMessageV3.e(bVar6, new String[]{"VersionInfo", "Listener", "LastUpdated"});
        Descriptors.b bVar7 = bVar4.o().get(2);
        f45908m = bVar7;
        f45909n = new GeneratedMessageV3.e(bVar7, new String[]{"Name", "ActiveState", "WarmingState", "DrainingState", "ErrorState", "ClientStatus"});
        Descriptors.b bVar8 = a().m().get(4);
        f45910o = bVar8;
        f45911p = new GeneratedMessageV3.e(bVar8, new String[]{"VersionInfo", "StaticClusters", "DynamicActiveClusters", "DynamicWarmingClusters"});
        Descriptors.b bVar9 = bVar8.o().get(0);
        f45912q = bVar9;
        f45913r = new GeneratedMessageV3.e(bVar9, new String[]{"Cluster", "LastUpdated"});
        Descriptors.b bVar10 = bVar8.o().get(1);
        f45914s = bVar10;
        f45915t = new GeneratedMessageV3.e(bVar10, new String[]{"VersionInfo", "Cluster", "LastUpdated", "ErrorState", "ClientStatus"});
        Descriptors.b bVar11 = a().m().get(5);
        f45916u = bVar11;
        f45917v = new GeneratedMessageV3.e(bVar11, new String[]{"StaticRouteConfigs", "DynamicRouteConfigs"});
        Descriptors.b bVar12 = bVar11.o().get(0);
        f45918w = bVar12;
        f45919x = new GeneratedMessageV3.e(bVar12, new String[]{"RouteConfig", "LastUpdated"});
        Descriptors.b bVar13 = bVar11.o().get(1);
        f45920y = bVar13;
        f45921z = new GeneratedMessageV3.e(bVar13, new String[]{"VersionInfo", "RouteConfig", "LastUpdated", "ErrorState", "ClientStatus"});
        Descriptors.b bVar14 = a().m().get(6);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"InlineScopedRouteConfigs", "DynamicScopedRouteConfigs"});
        Descriptors.b bVar15 = bVar14.o().get(0);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Name", "ScopedRouteConfigs", "LastUpdated"});
        Descriptors.b bVar16 = bVar14.o().get(1);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Name", "VersionInfo", "ScopedRouteConfigs", "LastUpdated", "ErrorState", "ClientStatus"});
        Descriptors.b bVar17 = a().m().get(7);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"StaticSecrets", "DynamicActiveSecrets", "DynamicWarmingSecrets"});
        Descriptors.b bVar18 = bVar17.o().get(0);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"Name", "VersionInfo", "LastUpdated", "Secret", "ErrorState", "ClientStatus"});
        Descriptors.b bVar19 = bVar17.o().get(1);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"Name", "LastUpdated", "Secret"});
        Descriptors.b bVar20 = a().m().get(8);
        M = bVar20;
        N = new GeneratedMessageV3.e(bVar20, new String[]{"StaticEndpointConfigs", "DynamicEndpointConfigs"});
        Descriptors.b bVar21 = bVar20.o().get(0);
        O = bVar21;
        P = new GeneratedMessageV3.e(bVar21, new String[]{"EndpointConfig", "LastUpdated"});
        Descriptors.b bVar22 = bVar20.o().get(1);
        Q = bVar22;
        R = new GeneratedMessageV3.e(bVar22, new String[]{"VersionInfo", "EndpointConfig", "LastUpdated", "ErrorState", "ClientStatus"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(S, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.a();
        com.google.protobuf.g.a();
        a3.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return S;
    }
}
