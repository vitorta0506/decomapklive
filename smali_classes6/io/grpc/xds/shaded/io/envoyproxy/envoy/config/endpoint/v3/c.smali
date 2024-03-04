.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
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

.field private static m:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n2envoy/config/endpoint/v3/endpoint_components.proto\u0012\u0018envoy.config.endpoint.v3\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a\'envoy/config/core/v3/health_check.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00c5\u0002\n\u0008Endpoint\u0012.\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.Address\u0012Q\n\u0013health_check_config\u0018\u0002 \u0001(\u000b24.envoy.config.endpoint.v3.Endpoint.HealthCheckConfig\u0012\u0010\n\u0008hostname\u0018\u0003 \u0001(\t\u001a}\n\u0011HealthCheckConfig\u0012\u001d\n\nport_value\u0018\u0001 \u0001(\rB\t\u00faB\u0006*\u0004\u0018\u00ff\u00ff\u0003\u0012\u0010\n\u0008hostname\u0018\u0002 \u0001(\t:7\u009a\u00c5\u0088\u001e2\n0envoy.api.v2.endpoint.Endpoint.HealthCheckConfig:%\u009a\u00c5\u0088\u001e \n\u001eenvoy.api.v2.endpoint.Endpoint\"\u00cc\u0002\n\nLbEndpoint\u00126\n\u0008endpoint\u0018\u0001 \u0001(\u000b2\".envoy.config.endpoint.v3.EndpointH\u0000\u0012\u0017\n\rendpoint_name\u0018\u0005 \u0001(\tH\u0000\u00129\n\rhealth_status\u0018\u0002 \u0001(\u000e2\".envoy.config.core.v3.HealthStatus\u00120\n\u0008metadata\u0018\u0003 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012D\n\u0015load_balancing_weight\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001:\'\u009a\u00c5\u0088\u001e\"\n envoy.api.v2.endpoint.LbEndpointB\u0011\n\u000fhost_identifier\"r\n\u0019LedsClusterLocalityConfig\u00127\n\u000bleds_config\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u001c\n\u0014leds_collection_name\u0018\u0002 \u0001(\t\"\u00e1\u0004\n\u0013LocalityLbEndpoints\u00120\n\u0008locality\u0018\u0001 \u0001(\u000b2\u001e.envoy.config.core.v3.Locality\u0012:\n\u000clb_endpoints\u0018\u0002 \u0003(\u000b2$.envoy.config.endpoint.v3.LbEndpoint\u0012_\n\u0017load_balancer_endpoints\u0018\u0007 \u0001(\u000b2<.envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointListH\u0000\u0012[\n\u001cleds_cluster_locality_config\u0018\u0008 \u0001(\u000b23.envoy.config.endpoint.v3.LedsClusterLocalityConfigH\u0000\u0012D\n\u0015load_balancing_weight\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u0012\u001a\n\u0008priority\u0018\u0005 \u0001(\rB\u0008\u00faB\u0005*\u0003\u0018\u0080\u0001\u0012/\n\tproximity\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001aL\n\u000eLbEndpointList\u0012:\n\u000clb_endpoints\u0018\u0001 \u0003(\u000b2$.envoy.config.endpoint.v3.LbEndpoint:0\u009a\u00c5\u0088\u001e+\n)envoy.api.v2.endpoint.LocalityLbEndpointsB\u000b\n\tlb_configBK\n&io.envoyproxy.envoy.config.endpoint.v3B\u0017EndpointComponentsProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x7

    aput-object v2, v1, v7

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v7, 0x8

    aput-object v2, v1, v7

    .line 11
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Address"

    const-string v7, "HealthCheckConfig"

    const-string v8, "Hostname"

    filled-new-array {v2, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "PortValue"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Endpoint"

    const-string v8, "EndpointName"

    const-string v9, "HealthStatus"

    const-string v10, "Metadata"

    const-string v11, "LoadBalancingWeight"

    const-string v12, "HostIdentifier"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "LedsConfig"

    const-string v4, "LedsCollectionName"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Locality"

    const-string v5, "LbEndpoints"

    const-string v6, "LoadBalancerEndpoints"

    const-string v7, "LedsClusterLocalityConfig"

    const-string v8, "LoadBalancingWeight"

    const-string v9, "Priority"

    const-string v10, "Proximity"

    const-string v11, "LbConfig"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "LbEndpoints"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 25
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
