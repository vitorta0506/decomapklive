.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static g:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\n\u001fenvoy/api/v2/scoped_route.proto\u0012\u000cenvoy.api.v2\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00a8\u0002\n\u0018ScopedRouteConfiguration\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012)\n\u0018route_configuration_name\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012A\n\u0003key\u0018\u0003 \u0001(\u000b2*.envoy.api.v2.ScopedRouteConfiguration.KeyB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u001a\u0086\u0001\n\u0003Key\u0012P\n\tfragments\u0018\u0001 \u0003(\u000b23.envoy.api.v2.ScopedRouteConfiguration.Key.FragmentB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u001a-\n\u0008Fragment\u0012\u0014\n\nstring_key\u0018\u0001 \u0001(\tH\u0000B\u000b\n\u0004type\u0012\u0003\u00f8B\u0001BU\n\u001aio.envoyproxy.envoy.api.v2B\u0010ScopedRouteProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0017\u0012\u0015envoy.config.route.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 5
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v4, "RouteConfigurationName"

    const-string v5, "Key"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->c:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Fragments"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->e:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "StringKey"

    const-string v3, "Type"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 13
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 14
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 15
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 16
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 17
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/o;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
