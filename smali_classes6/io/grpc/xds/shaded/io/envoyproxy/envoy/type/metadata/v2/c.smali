.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;
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

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static o:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "\n%envoy/type/metadata/v2/metadata.proto\u0012\u0016envoy.type.metadata.v2\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00a3\u0001\n\u000bMetadataKey\u0012\u0014\n\u0003key\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012G\n\u0004path\u0018\u0002 \u0003(\u000b2/.envoy.type.metadata.v2.MetadataKey.PathSegmentB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u001a5\n\u000bPathSegment\u0012\u0016\n\u0003key\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001H\u0000B\u000e\n\u0007segment\u0012\u0003\u00f8B\u0001\"\u00bc\u0002\n\u000cMetadataKind\u0012?\n\u0007request\u0018\u0001 \u0001(\u000b2,.envoy.type.metadata.v2.MetadataKind.RequestH\u0000\u0012;\n\u0005route\u0018\u0002 \u0001(\u000b2*.envoy.type.metadata.v2.MetadataKind.RouteH\u0000\u0012?\n\u0007cluster\u0018\u0003 \u0001(\u000b2,.envoy.type.metadata.v2.MetadataKind.ClusterH\u0000\u00129\n\u0004host\u0018\u0004 \u0001(\u000b2).envoy.type.metadata.v2.MetadataKind.HostH\u0000\u001a\t\n\u0007Request\u001a\u0007\n\u0005Route\u001a\t\n\u0007Cluster\u001a\u0006\n\u0004HostB\u000b\n\u0004kind\u0012\u0003\u00f8B\u0001B]\n$io.envoyproxy.envoy.type.metadata.v2B\rMetadataProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0018\u0012\u0016envoy.type.metadata.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Key"

    const-string v7, "Path"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Segment"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Request"

    const-string v7, "Route"

    const-string v8, "Cluster"

    const-string v9, "Host"

    const-string v10, "Kind"

    filled-new-array {v3, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v7, v4, [Ljava/lang/String;

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v3, v2, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v3, v2, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->m:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 21
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 22
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 23
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 24
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 25
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->o:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
