package eh;

import com.google.protobuf.Descriptors;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.d3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.Cluster;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.ClusterLoadAssignment;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.clusters.aggregate.v3.ClusterConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.HTTPFault;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBACPerRoute;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContext;
import v6.c;
/* loaded from: classes5.dex */
final class u1 {

    /* loaded from: classes5.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        static final c.d f39344a = a();

        private static c.d a() {
            d3.b a10 = d3.f().a(Listener.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.getDescriptor()).a(HttpConnectionManager.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.getDescriptor()).a(HTTPFault.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault.getDescriptor()).a(RBAC.getDescriptor()).a(RBACPerRoute.getDescriptor()).a(Router.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.router.v2.Router.getDescriptor()).a(UpstreamTlsContext.getDescriptor()).a(DownstreamTlsContext.getDescriptor()).a(RouteConfiguration.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration.getDescriptor()).a(Cluster.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Cluster.getDescriptor()).a(ClusterConfig.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.aggregate.v2alpha.ClusterConfig.getDescriptor()).a(ClusterLoadAssignment.getDescriptor()).a(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.getDescriptor());
            try {
                a10.a((Descriptors.b) Class.forName("io.grpc.lookup.v1.RouteLookupClusterSpecifier").getDeclaredMethod("getDescriptor", new Class[0]).invoke(null, new Object[0]));
            } catch (Exception unused) {
            }
            return v6.c.e().c(a10.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(com.google.protobuf.r1 r1Var) {
        try {
            return a.f39344a.b(r1Var);
        } catch (InvalidProtocolBufferException e10) {
            return r1Var + " (failed to pretty-print: " + e10 + ")";
        }
    }
}
