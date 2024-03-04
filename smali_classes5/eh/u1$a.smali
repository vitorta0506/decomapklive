.class Leh/u1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lv6/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Leh/u1$a;->a()Lv6/c$d;

    move-result-object v0

    sput-object v0, Leh/u1$a;->a:Lv6/c$d;

    return-void
.end method

.method private static a()Lv6/c$d;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/protobuf/d3;->f()Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/fault/v2/HTTPFault;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBACPerRoute;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/http/router/v2/Router;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/RouteConfiguration;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/clusters/aggregate/v3/ClusterConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/aggregate/v2alpha/ClusterConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;

    move-result-object v0

    :try_start_0
    const-string v1, "io.grpc.lookup.v1.RouteLookupClusterSpecifier"

    .line 24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDescriptor"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/protobuf/d3$b;->a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/d3$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    invoke-static {}, Lv6/c;->e()Lv6/c$d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/d3$b;->d()Lcom/google/protobuf/d3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lv6/c$d;->c(Lcom/google/protobuf/d3;)Lv6/c$d;

    move-result-object v0

    return-object v0
.end method
