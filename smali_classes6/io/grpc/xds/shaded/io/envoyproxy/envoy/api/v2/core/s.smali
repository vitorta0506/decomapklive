.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;
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

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/google/protobuf/Descriptors$b;

.field static final t:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final u:Lcom/google/protobuf/Descriptors$b;

.field static final v:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static w:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "\n$envoy/api/v2/core/grpc_service.proto\u0012\u0011envoy.api.v2.core\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001eudpa/annotations/migrate.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u008f\u0012\n\u000bGrpcService\u0012>\n\nenvoy_grpc\u0018\u0001 \u0001(\u000b2(.envoy.api.v2.core.GrpcService.EnvoyGrpcH\u0000\u0012@\n\u000bgoogle_grpc\u0018\u0002 \u0001(\u000b2).envoy.api.v2.core.GrpcService.GoogleGrpcH\u0000\u0012*\n\u0007timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\u0010initial_metadata\u0018\u0005 \u0003(\u000b2\u001e.envoy.api.v2.core.HeaderValue\u001a*\n\tEnvoyGrpc\u0012\u001d\n\u000ccluster_name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u001a\u00cc\u000f\n\nGoogleGrpc\u0012\u001b\n\ntarget_uri\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012Y\n\u0013channel_credentials\u0018\u0002 \u0001(\u000b2<.envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentials\u0012S\n\u0010call_credentials\u0018\u0003 \u0003(\u000b29.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials\u0012\u001c\n\u000bstat_prefix\u0018\u0004 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012 \n\u0018credentials_factory_name\u0018\u0005 \u0001(\t\u0012\'\n\u0006config\u0018\u0006 \u0001(\u000b2\u0017.google.protobuf.Struct\u001a\u00b2\u0001\n\u000eSslCredentials\u00121\n\nroot_certs\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012:\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001\u00121\n\ncert_chain\u0018\u0003 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u001a\u0018\n\u0016GoogleLocalCredentials\u001a\u0097\u0002\n\u0012ChannelCredentials\u0012S\n\u000fssl_credentials\u0018\u0001 \u0001(\u000b28.envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentialsH\u0000\u00120\n\u000egoogle_default\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012]\n\u0011local_credentials\u0018\u0003 \u0001(\u000b2@.envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\u0000B\u001b\n\u0014credential_specifier\u0012\u0003\u00f8B\u0001\u001a\u009e\t\n\u000fCallCredentials\u0012\u0016\n\u000caccess_token\u0018\u0001 \u0001(\tH\u0000\u00127\n\u0015google_compute_engine\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012\u001e\n\u0014google_refresh_token\u0018\u0003 \u0001(\tH\u0000\u0012\u0082\u0001\n\u001aservice_account_jwt_access\u0018\u0004 \u0001(\u000b2\\.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\u0000\u0012d\n\ngoogle_iam\u0018\u0005 \u0001(\u000b2N.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\u0000\u0012n\n\u000bfrom_plugin\u0018\u0006 \u0001(\u000b2W.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\u0000\u0012[\n\u000bsts_service\u0018\u0007 \u0001(\u000b2D.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\u0000\u001aV\n\"ServiceAccountJWTAccessCredentials\u0012\u0010\n\u0008json_key\u0018\u0001 \u0001(\t\u0012\u001e\n\u0016token_lifetime_seconds\u0018\u0002 \u0001(\u0004\u001aO\n\u0014GoogleIAMCredentials\u0012\u001b\n\u0013authorization_token\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012authority_selector\u0018\u0002 \u0001(\t\u001a\u0099\u0001\n\u001dMetadataCredentialsFromPlugin\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\u001a\u00ff\u0001\n\nStsService\u0012\"\n\u001atoken_exchange_service_uri\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008resource\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008audience\u0018\u0003 \u0001(\t\u0012\r\n\u0005scope\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014requested_token_type\u0018\u0005 \u0001(\t\u0012#\n\u0012subject_token_path\u0018\u0006 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012#\n\u0012subject_token_type\u0018\u0007 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012\u0018\n\u0010actor_token_path\u0018\u0008 \u0001(\t\u0012\u0018\n\u0010actor_token_type\u0018\t \u0001(\tB\u001b\n\u0014credential_specifier\u0012\u0003\u00f8B\u0001B\u0017\n\u0010target_specifier\u0012\u0003\u00f8B\u0001J\u0004\u0008\u0004\u0010\u0005BY\n\u001fio.envoyproxy.envoy.api.v2.coreB\u0010GrpcServiceProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

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
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->w:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->a:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "EnvoyGrpc"

    const-string v7, "GoogleGrpc"

    const-string v8, "Timeout"

    const-string v9, "InitialMetadata"

    const-string v10, "TargetSpecifier"

    filled-new-array {v2, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->c:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "ClusterName"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->e:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "TargetUri"

    const-string v8, "ChannelCredentials"

    const-string v9, "CallCredentials"

    const-string v10, "StatPrefix"

    const-string v11, "CredentialsFactoryName"

    const-string v12, "Config"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->g:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "RootCerts"

    const-string v8, "PrivateKey"

    const-string v9, "CertChain"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v2, v1, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->k:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "SslCredentials"

    const-string v8, "GoogleDefault"

    const-string v9, "LocalCredentials"

    const-string v10, "CredentialSpecifier"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->m:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "AccessToken"

    const-string v8, "GoogleComputeEngine"

    const-string v9, "GoogleRefreshToken"

    const-string v10, "ServiceAccountJwtAccess"

    const-string v11, "GoogleIam"

    const-string v12, "FromPlugin"

    const-string v13, "StsService"

    const-string v14, "CredentialSpecifier"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->o:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "JsonKey"

    const-string v7, "TokenLifetimeSeconds"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->q:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "AuthorizationToken"

    const-string v4, "AuthoritySelector"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->s:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v4, "Config"

    const-string v5, "TypedConfig"

    const-string v7, "ConfigType"

    filled-new-array {v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->u:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TokenExchangeServiceUri"

    const-string v3, "Resource"

    const-string v4, "Audience"

    const-string v5, "Scope"

    const-string v6, "RequestedTokenType"

    const-string v7, "SubjectTokenPath"

    const-string v8, "SubjectTokenType"

    const-string v9, "ActorTokenPath"

    const-string v10, "ActorTokenType"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 35
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 36
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 37
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 38
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 39
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 40
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->w:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->w:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
