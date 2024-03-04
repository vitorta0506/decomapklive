.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\n$envoy/service/discovery/v2/ads.proto\u0012\u001aenvoy.service.discovery.v2\u001a\u001cenvoy/api/v2/discovery.proto\u001a\u001dudpa/annotations/status.proto\"\n\n\u0008AdsDummy2\u00ed\u0001\n\u001aAggregatedDiscoveryService\u0012b\n\u0019StreamAggregatedResources\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"\u0000(\u00010\u0001\u0012k\n\u0018DeltaAggregatedResources\u0012#.envoy.api.v2.DeltaDiscoveryRequest\u001a$.envoy.api.v2.DeltaDiscoveryResponse\"\u0000(\u00010\u0001BA\n(io.envoyproxy.envoy.service.discovery.v2B\u0008AdsProtoP\u0001\u0088\u0001\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 8
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 9
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
