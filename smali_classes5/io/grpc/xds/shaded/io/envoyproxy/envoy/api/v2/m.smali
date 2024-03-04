.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "\n\u0018envoy/api/v2/route.proto\u0012\u000cenvoy.api.v2\u001a\u001cenvoy/api/v2/core/base.proto\u001a%envoy/api/v2/core/config_source.proto\u001a)envoy/api/v2/route/route_components.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u009f\u0004\n\u0012RouteConfiguration\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00126\n\rvirtual_hosts\u0018\u0002 \u0003(\u000b2\u001f.envoy.api.v2.route.VirtualHost\u0012 \n\u0004vhds\u0018\t \u0001(\u000b2\u0012.envoy.api.v2.Vhds\u0012/\n\u0015internal_only_headers\u0018\u0003 \u0003(\tB\u0010\u00faB\r\u0092\u0001\n\"\u0008r\u0006\u00c0\u0001\u0001\u00c8\u0001\u0000\u0012P\n\u0017response_headers_to_add\u0018\u0004 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\t\u00faB\u0006\u0092\u0001\u0003\u0010\u00e8\u0007\u00124\n\u001aresponse_headers_to_remove\u0018\u0005 \u0003(\tB\u0010\u00faB\r\u0092\u0001\n\"\u0008r\u0006\u00c0\u0001\u0001\u00c8\u0001\u0000\u0012O\n\u0016request_headers_to_add\u0018\u0006 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\t\u00faB\u0006\u0092\u0001\u0003\u0010\u00e8\u0007\u00123\n\u0019request_headers_to_remove\u0018\u0008 \u0003(\tB\u0010\u00faB\r\u0092\u0001\n\"\u0008r\u0006\u00c0\u0001\u0001\u00c8\u0001\u0000\u0012+\n#most_specific_header_mutations_wins\u0018\n \u0001(\u0008\u00125\n\u0011validate_clusters\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"H\n\u0004Vhds\u0012@\n\rconfig_source\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001BO\n\u001aio.envoyproxy.envoy.api.v2B\nRouteProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0017\u0012\u0015envoy.config.route.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    .line 9
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->a:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Name"

    const-string v6, "VirtualHosts"

    const-string v7, "Vhds"

    const-string v8, "InternalOnlyHeaders"

    const-string v9, "ResponseHeadersToAdd"

    const-string v10, "ResponseHeadersToRemove"

    const-string v11, "RequestHeadersToAdd"

    const-string v12, "RequestHeadersToRemove"

    const-string v13, "MostSpecificHeaderMutationsWins"

    const-string v14, "ValidateClusters"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->c:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ConfigSource"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 15
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 16
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 17
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 18
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 23
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/m;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
