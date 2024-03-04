.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;
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
    .locals 15

    const-string v0, "\n\u001cenvoy/api/v2/discovery.proto\u0012\u000cenvoy.api.v2\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u0019google/protobuf/any.proto\u001a\u0017google/rpc/status.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\"\u00bb\u0001\n\u0010DiscoveryRequest\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012%\n\u0004node\u0018\u0002 \u0001(\u000b2\u0017.envoy.api.v2.core.Node\u0012\u0016\n\u000eresource_names\u0018\u0003 \u0003(\t\u0012\u0010\n\u0008type_url\u0018\u0004 \u0001(\t\u0012\u0016\n\u000eresponse_nonce\u0018\u0005 \u0001(\t\u0012(\n\u000cerror_detail\u0018\u0006 \u0001(\u000b2\u0012.google.rpc.Status\"\u00bb\u0001\n\u0011DiscoveryResponse\u0012\u0014\n\u000cversion_info\u0018\u0001 \u0001(\t\u0012\'\n\tresources\u0018\u0002 \u0003(\u000b2\u0014.google.protobuf.Any\u0012\u000e\n\u0006canary\u0018\u0003 \u0001(\u0008\u0012\u0010\n\u0008type_url\u0018\u0004 \u0001(\t\u0012\r\n\u0005nonce\u0018\u0005 \u0001(\t\u00126\n\rcontrol_plane\u0018\u0006 \u0001(\u000b2\u001f.envoy.api.v2.core.ControlPlane\"\u00fd\u0002\n\u0015DeltaDiscoveryRequest\u0012%\n\u0004node\u0018\u0001 \u0001(\u000b2\u0017.envoy.api.v2.core.Node\u0012\u0010\n\u0008type_url\u0018\u0002 \u0001(\t\u0012 \n\u0018resource_names_subscribe\u0018\u0003 \u0003(\t\u0012\"\n\u001aresource_names_unsubscribe\u0018\u0004 \u0003(\t\u0012c\n\u0019initial_resource_versions\u0018\u0005 \u0003(\u000b2@.envoy.api.v2.DeltaDiscoveryRequest.InitialResourceVersionsEntry\u0012\u0016\n\u000eresponse_nonce\u0018\u0006 \u0001(\t\u0012(\n\u000cerror_detail\u0018\u0007 \u0001(\u000b2\u0012.google.rpc.Status\u001a>\n\u001cInitialResourceVersionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u009c\u0001\n\u0016DeltaDiscoveryResponse\u0012\u001b\n\u0013system_version_info\u0018\u0001 \u0001(\t\u0012)\n\tresources\u0018\u0002 \u0003(\u000b2\u0016.envoy.api.v2.Resource\u0012\u0010\n\u0008type_url\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011removed_resources\u0018\u0006 \u0003(\t\u0012\r\n\u0005nonce\u0018\u0005 \u0001(\t\"b\n\u0008Resource\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007aliases\u0018\u0004 \u0003(\t\u0012\u000f\n\u0007version\u0018\u0001 \u0001(\t\u0012&\n\u0008resource\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.AnyBX\n\u001aio.envoyproxy.envoy.api.v2B\u000eDiscoveryProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u001c\u0012\u001aenvoy.service.discovery.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "VersionInfo"

    const-string v9, "Node"

    const-string v10, "ResourceNames"

    const-string v11, "TypeUrl"

    const-string v12, "ResponseNonce"

    const-string v13, "ErrorDetail"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->c:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "VersionInfo"

    const-string v9, "Resources"

    const-string v10, "Canary"

    const-string v11, "TypeUrl"

    const-string v12, "Nonce"

    const-string v13, "ControlPlane"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->e:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Node"

    const-string v9, "TypeUrl"

    const-string v10, "ResourceNamesSubscribe"

    const-string v11, "ResourceNamesUnsubscribe"

    const-string v12, "InitialResourceVersions"

    const-string v13, "ResponseNonce"

    const-string v14, "ErrorDetail"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->g:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->i:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SystemVersionInfo"

    const-string v3, "Resources"

    const-string v4, "TypeUrl"

    const-string v5, "RemovedResources"

    const-string v6, "Nonce"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->k:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v3, "Aliases"

    const-string v4, "Version"

    const-string v5, "Resource"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

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
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
