.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static C:Lcom/google/protobuf/Descriptors$FileDescriptor;

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

.field static final w:Lcom/google/protobuf/Descriptors$b;

.field static final x:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final y:Lcom/google/protobuf/Descriptors$b;

.field static final z:Lcom/google/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "\n\'envoy/config/core/v3/grpc_service.proto\u0012\u0014envoy.config.core.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00ec\u001b\n\u000bGrpcService\u0012A\n\nenvoy_grpc\u0018\u0001 \u0001(\u000b2+.envoy.config.core.v3.GrpcService.EnvoyGrpcH\u0000\u0012C\n\u000bgoogle_grpc\u0018\u0002 \u0001(\u000b2,.envoy.config.core.v3.GrpcService.GoogleGrpcH\u0000\u0012*\n\u0007timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012;\n\u0010initial_metadata\u0018\u0005 \u0003(\u000b2!.envoy.config.core.v3.HeaderValue\u001a\u0080\u0001\n\tEnvoyGrpc\u0012\u001d\n\u000ccluster_name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012$\n\tauthority\u0018\u0002 \u0001(\tB\u0011\u00faB\u000er\u000c\u0010\u0000(\u0080\u0080\u0001\u00c0\u0001\u0002\u00c8\u0001\u0000:.\u009a\u00c5\u0088\u001e)\n\'envoy.api.v2.core.GrpcService.EnvoyGrpc\u001a\u00a3\u0018\n\nGoogleGrpc\u0012\u001b\n\ntarget_uri\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\\\n\u0013channel_credentials\u0018\u0002 \u0001(\u000b2?.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials\u0012V\n\u0010call_credentials\u0018\u0003 \u0003(\u000b2<.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials\u0012\u001c\n\u000bstat_prefix\u0018\u0004 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012 \n\u0018credentials_factory_name\u0018\u0005 \u0001(\t\u0012\'\n\u0006config\u0018\u0006 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012C\n\u001dper_stream_buffer_limit_bytes\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012N\n\u000cchannel_args\u0018\u0008 \u0001(\u000b28.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs\u001a\u00fb\u0001\n\u000eSslCredentials\u00124\n\nroot_certs\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012=\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001\u00124\n\ncert_chain\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.DataSource:>\u009a\u00c5\u0088\u001e9\n7envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentials\u001a`\n\u0016GoogleLocalCredentials:F\u009a\u00c5\u0088\u001eA\n?envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentials\u001a\u00e1\u0002\n\u0012ChannelCredentials\u0012V\n\u000fssl_credentials\u0018\u0001 \u0001(\u000b2;.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentialsH\u0000\u00120\n\u000egoogle_default\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012`\n\u0011local_credentials\u0018\u0003 \u0001(\u000b2C.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\u0000:B\u009a\u00c5\u0088\u001e=\n;envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentialsB\u001b\n\u0014credential_specifier\u0012\u0003\u00f8B\u0001\u001a\u00b1\u000c\n\u000fCallCredentials\u0012\u0016\n\u000caccess_token\u0018\u0001 \u0001(\tH\u0000\u00127\n\u0015google_compute_engine\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012\u001e\n\u0014google_refresh_token\u0018\u0003 \u0001(\tH\u0000\u0012\u0085\u0001\n\u001aservice_account_jwt_access\u0018\u0004 \u0001(\u000b2_.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\u0000\u0012g\n\ngoogle_iam\u0018\u0005 \u0001(\u000b2Q.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\u0000\u0012q\n\u000bfrom_plugin\u0018\u0006 \u0001(\u000b2Z.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\u0000\u0012^\n\u000bsts_service\u0018\u0007 \u0001(\u000b2G.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\u0000\u001a\u00ba\u0001\n\"ServiceAccountJWTAccessCredentials\u0012\u0010\n\u0008json_key\u0018\u0001 \u0001(\t\u0012\u001e\n\u0016token_lifetime_seconds\u0018\u0002 \u0001(\u0004:b\u009a\u00c5\u0088\u001e]\n[envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\u001a\u00a5\u0001\n\u0014GoogleIAMCredentials\u0012\u001b\n\u0013authorization_token\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012authority_selector\u0018\u0002 \u0001(\t:T\u009a\u00c5\u0088\u001eO\nMenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\u001a\u00d7\u0001\n\u001dMetadataCredentialsFromPlugin\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:]\u009a\u00c5\u0088\u001eX\nVenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006config\u001a\u00cb\u0002\n\nStsService\u0012\"\n\u001atoken_exchange_service_uri\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008resource\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008audience\u0018\u0003 \u0001(\t\u0012\r\n\u0005scope\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014requested_token_type\u0018\u0005 \u0001(\t\u0012#\n\u0012subject_token_path\u0018\u0006 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012#\n\u0012subject_token_type\u0018\u0007 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012\u0018\n\u0010actor_token_path\u0018\u0008 \u0001(\t\u0012\u0018\n\u0010actor_token_type\u0018\t \u0001(\t:J\u009a\u00c5\u0088\u001eE\nCenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsService:?\u009a\u00c5\u0088\u001e:\n8envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentialsB\u001b\n\u0014credential_specifier\u0012\u0003\u00f8B\u0001\u001a\u009a\u0002\n\u000bChannelArgs\u0012P\n\u0004args\u0018\u0001 \u0003(\u000b2B.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntry\u001aL\n\u0005Value\u0012\u0016\n\u000cstring_value\u0018\u0001 \u0001(\tH\u0000\u0012\u0013\n\tint_value\u0018\u0002 \u0001(\u0003H\u0000B\u0016\n\u000fvalue_specifier\u0012\u0003\u00f8B\u0001\u001ak\n\tArgsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012M\n\u0005value\u0018\u0002 \u0001(\u000b2>.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value:\u00028\u0001:/\u009a\u00c5\u0088\u001e*\n(envoy.api.v2.core.GrpcService.GoogleGrpc:$\u009a\u00c5\u0088\u001e\u001f\n\u001denvoy.api.v2.core.GrpcServiceB\u0017\n\u0010target_specifier\u0012\u0003\u00f8B\u0001J\u0004\u0008\u0004\u0010\u0005B@\n\"io.envoyproxy.envoy.config.core.v3B\u0010GrpcServiceProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v1, v8

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v1, v8

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v1, v8

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v1, v8

    .line 12
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->a:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "EnvoyGrpc"

    const-string v8, "GoogleGrpc"

    const-string v9, "Timeout"

    const-string v10, "InitialMetadata"

    const-string v11, "TargetSpecifier"

    filled-new-array {v2, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->c:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "ClusterName"

    const-string v9, "Authority"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->e:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "TargetUri"

    const-string v9, "ChannelCredentials"

    const-string v10, "CallCredentials"

    const-string v11, "StatPrefix"

    const-string v12, "CredentialsFactoryName"

    const-string v13, "Config"

    const-string v14, "PerStreamBufferLimitBytes"

    const-string v15, "ChannelArgs"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->g:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "RootCerts"

    const-string v9, "PrivateKey"

    const-string v10, "CertChain"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->i:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->k:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "SslCredentials"

    const-string v9, "GoogleDefault"

    const-string v10, "LocalCredentials"

    const-string v11, "CredentialSpecifier"

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->m:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "AccessToken"

    const-string v9, "GoogleComputeEngine"

    const-string v10, "GoogleRefreshToken"

    const-string v11, "ServiceAccountJwtAccess"

    const-string v12, "GoogleIam"

    const-string v13, "FromPlugin"

    const-string v14, "StsService"

    const-string v15, "CredentialSpecifier"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->o:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v8, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "JsonKey"

    const-string v10, "TokenLifetimeSeconds"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->q:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v8, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "AuthorizationToken"

    const-string v10, "AuthoritySelector"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->s:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Name"

    const-string v9, "TypedConfig"

    const-string v10, "ConfigType"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->u:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "TokenExchangeServiceUri"

    const-string v9, "Resource"

    const-string v10, "Audience"

    const-string v11, "Scope"

    const-string v12, "RequestedTokenType"

    const-string v13, "SubjectTokenPath"

    const-string v14, "SubjectTokenType"

    const-string v15, "ActorTokenPath"

    const-string v16, "ActorTokenType"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->w:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Args"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->y:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "StringValue"

    const-string v5, "IntValue"

    const-string v6, "ValueSpecifier"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->A:Lcom/google/protobuf/Descriptors$b;

    .line 40
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 41
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 42
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 43
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 44
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 45
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 46
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 47
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 51
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 53
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 54
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 55
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 56
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 57
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 58
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
