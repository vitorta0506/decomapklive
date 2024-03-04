.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final C:Lcom/google/protobuf/Descriptors$b;

.field static final D:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final E:Lcom/google/protobuf/Descriptors$b;

.field static final F:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final G:Lcom/google/protobuf/Descriptors$b;

.field static final H:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final I:Lcom/google/protobuf/Descriptors$b;

.field static final J:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final K:Lcom/google/protobuf/Descriptors$b;

.field static final L:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static M:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 28

    const-string v0, "\n\u001cenvoy/api/v2/core/base.proto\u0012\u0011envoy.api.v2.core\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001fenvoy/api/v2/core/backoff.proto\u001a envoy/api/v2/core/http_uri.proto\u001a\u0018envoy/type/percent.proto\u001a!envoy/type/semantic_version.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\u001a%envoy/api/v2/core/socket_option.proto\":\n\u0008Locality\u0012\u000e\n\u0006region\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004zone\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008sub_zone\u0018\u0003 \u0001(\t\"g\n\u000cBuildVersion\u0012,\n\u0007version\u0018\u0001 \u0001(\u000b2\u001b.envoy.type.SemanticVersion\u0012)\n\u0008metadata\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\"\u0088\u0001\n\tExtension\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008category\u0018\u0002 \u0001(\t\u0012\u0017\n\u000ftype_descriptor\u0018\u0003 \u0001(\t\u00120\n\u0007version\u0018\u0004 \u0001(\u000b2\u001f.envoy.api.v2.core.BuildVersion\u0012\u0010\n\u0008disabled\u0018\u0005 \u0001(\u0008\"\u00b3\u0003\n\u0004Node\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007cluster\u0018\u0002 \u0001(\t\u0012)\n\u0008metadata\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012-\n\u0008locality\u0018\u0004 \u0001(\u000b2\u001b.envoy.api.v2.core.Locality\u0012\u0019\n\rbuild_version\u0018\u0005 \u0001(\tB\u0002\u0018\u0001\u0012\u0017\n\u000fuser_agent_name\u0018\u0006 \u0001(\t\u0012\u001c\n\u0012user_agent_version\u0018\u0007 \u0001(\tH\u0000\u0012C\n\u0018user_agent_build_version\u0018\u0008 \u0001(\u000b2\u001f.envoy.api.v2.core.BuildVersionH\u0000\u00120\n\nextensions\u0018\t \u0003(\u000b2\u001c.envoy.api.v2.core.Extension\u0012\u0017\n\u000fclient_features\u0018\n \u0003(\t\u00127\n\u0013listening_addresses\u0018\u000b \u0003(\u000b2\u001a.envoy.api.v2.core.AddressB\u0019\n\u0017user_agent_version_type\"\u00a4\u0001\n\u0008Metadata\u0012H\n\u000ffilter_metadata\u0018\u0001 \u0003(\u000b2/.envoy.api.v2.core.Metadata.FilterMetadataEntry\u001aN\n\u0013FilterMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\"D\n\rRuntimeUInt32\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\r\u0012\u001c\n\u000bruntime_key\u0018\u0003 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\"D\n\rRuntimeDouble\u0012\u0015\n\rdefault_value\u0018\u0001 \u0001(\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\"o\n\u0012RuntimeFeatureFlag\u0012;\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\"M\n\u000bHeaderValue\u0012\u001e\n\u0003key\u0018\u0001 \u0001(\tB\u0011\u00faB\u000er\u000c \u0001(\u0080\u0080\u0001\u00c0\u0001\u0001\u00c8\u0001\u0000\u0012\u001e\n\u0005value\u0018\u0002 \u0001(\tB\u000f\u00faB\u000cr\n(\u0080\u0080\u0001\u00c0\u0001\u0002\u00c8\u0001\u0000\"y\n\u0011HeaderValueOption\u00128\n\u0006header\u0018\u0001 \u0001(\u000b2\u001e.envoy.api.v2.core.HeaderValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012*\n\u0006append\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"<\n\tHeaderMap\u0012/\n\u0007headers\u0018\u0001 \u0003(\u000b2\u001e.envoy.api.v2.core.HeaderValue\"~\n\nDataSource\u0012\u001b\n\u0008filename\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001H\u0000\u0012\u001f\n\u000cinline_bytes\u0018\u0002 \u0001(\u000cB\u0007\u00faB\u0004z\u0002\u0010\u0001H\u0000\u0012 \n\rinline_string\u0018\u0003 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001H\u0000B\u0010\n\tspecifier\u0012\u0003\u00f8B\u0001\"|\n\u000bRetryPolicy\u0012:\n\u000eretry_back_off\u0018\u0001 \u0001(\u000b2\".envoy.api.v2.core.BackoffStrategy\u00121\n\u000bnum_retries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\"\u0099\u0001\n\u0010RemoteDataSource\u00126\n\u0008http_uri\u0018\u0001 \u0001(\u000b2\u001a.envoy.api.v2.core.HttpUriB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0017\n\u0006sha256\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u00124\n\u000cretry_policy\u0018\u0003 \u0001(\u000b2\u001e.envoy.api.v2.core.RetryPolicy\"\u008a\u0001\n\u000fAsyncDataSource\u0012.\n\u0005local\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceH\u0000\u00125\n\u0006remote\u0018\u0002 \u0001(\u000b2#.envoy.api.v2.core.RemoteDataSourceH\u0000B\u0010\n\tspecifier\u0012\u0003\u00f8B\u0001\"\u0094\u0001\n\u000fTransportSocket\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\"o\n\u0018RuntimeFractionalPercent\u0012>\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u001d.envoy.type.FractionalPercentB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bruntime_key\u0018\u0002 \u0001(\t\"\"\n\u000cControlPlane\u0012\u0012\n\nidentifier\u0018\u0001 \u0001(\t*(\n\u000fRoutingPriority\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u0008\n\u0004HIGH\u0010\u0001*\u0089\u0001\n\rRequestMethod\u0012\u0016\n\u0012METHOD_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003GET\u0010\u0001\u0012\u0008\n\u0004HEAD\u0010\u0002\u0012\u0008\n\u0004POST\u0010\u0003\u0012\u0007\n\u0003PUT\u0010\u0004\u0012\n\n\u0006DELETE\u0010\u0005\u0012\u000b\n\u0007CONNECT\u0010\u0006\u0012\u000b\n\u0007OPTIONS\u0010\u0007\u0012\t\n\u0005TRACE\u0010\u0008\u0012\t\n\u0005PATCH\u0010\t*>\n\u0010TrafficDirection\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012\u000b\n\u0007INBOUND\u0010\u0001\u0012\u000c\n\u0008OUTBOUND\u0010\u0002BR\n\u001fio.envoyproxy.envoy.api.v2.coreB\tBaseProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001P\u000bb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 9
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v13, 0x9

    aput-object v3, v2, v13

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v14, 0xa

    aput-object v3, v2, v14

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v15, 0xb

    aput-object v3, v2, v15

    .line 14
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->M:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Region"

    const-string v1, "Zone"

    const-string v15, "SubZone"

    filled-new-array {v3, v1, v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->c:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Version"

    const-string v3, "Metadata"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->e:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v5, "Category"

    const-string v6, "TypeDescriptor"

    const-string v15, "Disabled"

    filled-new-array {v3, v5, v6, v2, v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->g:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v16, "Id"

    const-string v17, "Cluster"

    const-string v18, "Metadata"

    const-string v19, "Locality"

    const-string v20, "BuildVersion"

    const-string v21, "UserAgentName"

    const-string v22, "UserAgentVersion"

    const-string v23, "UserAgentBuildVersion"

    const-string v24, "Extensions"

    const-string v25, "ClientFeatures"

    const-string v26, "ListeningAddresses"

    const-string v27, "UserAgentVersionType"

    filled-new-array/range {v16 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->i:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "FilterMetadata"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->k:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v4, "Value"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->m:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "DefaultValue"

    const-string v6, "RuntimeKey"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->o:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->q:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->s:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->u:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Header"

    const-string v4, "Append"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->w:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Headers"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->y:Lcom/google/protobuf/Descriptors$b;

    .line 40
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Filename"

    const-string v4, "InlineBytes"

    const-string v7, "InlineString"

    const-string v8, "Specifier"

    filled-new-array {v2, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->A:Lcom/google/protobuf/Descriptors$b;

    .line 42
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "RetryBackOff"

    const-string v4, "NumRetries"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->C:Lcom/google/protobuf/Descriptors$b;

    .line 44
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "HttpUri"

    const-string v4, "Sha256"

    const-string v7, "RetryPolicy"

    filled-new-array {v2, v4, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 45
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->E:Lcom/google/protobuf/Descriptors$b;

    .line 46
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Local"

    const-string v4, "Remote"

    filled-new-array {v2, v4, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->G:Lcom/google/protobuf/Descriptors$b;

    .line 48
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Config"

    const-string v4, "TypedConfig"

    const-string v7, "ConfigType"

    filled-new-array {v3, v2, v4, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->I:Lcom/google/protobuf/Descriptors$b;

    .line 50
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->K:Lcom/google/protobuf/Descriptors$b;

    .line 52
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Identifier"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->L:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 53
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 54
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 55
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 56
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 57
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 58
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->M:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 59
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 60
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 61
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 62
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 63
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 64
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 65
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 66
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 67
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 68
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 69
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 70
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 71
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->M:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
