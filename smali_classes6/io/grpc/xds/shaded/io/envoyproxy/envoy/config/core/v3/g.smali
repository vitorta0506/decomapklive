.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;
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

.field static final M:Lcom/google/protobuf/Descriptors$b;

.field static final N:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final O:Lcom/google/protobuf/Descriptors$b;

.field static final P:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final Q:Lcom/google/protobuf/Descriptors$b;

.field static final R:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final S:Lcom/google/protobuf/Descriptors$b;

.field static final T:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static U:Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    const-string v0, "\n\u001fenvoy/config/core/v3/base.proto\u0012\u0014envoy.config.core.v3\u001a\"envoy/config/core/v3/address.proto\u001a\"envoy/config/core/v3/backoff.proto\u001a#envoy/config/core/v3/http_uri.proto\u001a\u001benvoy/type/v3/percent.proto\u001a$envoy/type/v3/semantic_version.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a xds/core/v3/context_params.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"]\n\u0008Locality\u0012\u000e\n\u0006region\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004zone\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008sub_zone\u0018\u0003 \u0001(\t:!\u009a\u00c5\u0088\u001e\u001c\n\u001aenvoy.api.v2.core.Locality\"\u0091\u0001\n\u000cBuildVersion\u0012/\n\u0007version\u0018\u0001 \u0001(\u000b2\u001e.envoy.type.v3.SemanticVersion\u0012)\n\u0008metadata\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:%\u009a\u00c5\u0088\u001e \n\u001eenvoy.api.v2.core.BuildVersion\"\u00af\u0001\n\tExtension\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008category\u0018\u0002 \u0001(\t\u0012\u0017\n\u000ftype_descriptor\u0018\u0003 \u0001(\t\u00123\n\u0007version\u0018\u0004 \u0001(\u000b2\".envoy.config.core.v3.BuildVersion\u0012\u0010\n\u0008disabled\u0018\u0005 \u0001(\u0008:\"\u009a\u00c5\u0088\u001e\u001d\n\u001benvoy.api.v2.core.Extension\"\u008a\u0005\n\u0004Node\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007cluster\u0018\u0002 \u0001(\t\u0012)\n\u0008metadata\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012M\n\u0012dynamic_parameters\u0018\u000c \u0003(\u000b21.envoy.config.core.v3.Node.DynamicParametersEntry\u00120\n\u0008locality\u0018\u0004 \u0001(\u000b2\u001e.envoy.config.core.v3.Locality\u0012\u0017\n\u000fuser_agent_name\u0018\u0006 \u0001(\t\u0012\u001c\n\u0012user_agent_version\u0018\u0007 \u0001(\tH\u0000\u0012F\n\u0018user_agent_build_version\u0018\u0008 \u0001(\u000b2\".envoy.config.core.v3.BuildVersionH\u0000\u00123\n\nextensions\u0018\t \u0003(\u000b2\u001f.envoy.config.core.v3.Extension\u0012\u0017\n\u000fclient_features\u0018\n \u0003(\t\u0012G\n\u0013listening_addresses\u0018\u000b \u0003(\u000b2\u001d.envoy.config.core.v3.AddressB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u001aT\n\u0016DynamicParametersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012)\n\u0005value\u0018\u0002 \u0001(\u000b2\u001a.xds.core.v3.ContextParams:\u00028\u0001:\u001d\u009a\u00c5\u0088\u001e\u0018\n\u0016envoy.api.v2.core.NodeB\u0019\n\u0017user_agent_version_typeJ\u0004\u0008\u0005\u0010\u0006R\rbuild_version\"\u00f4\u0002\n\u0008Metadata\u0012K\n\u000ffilter_metadata\u0018\u0001 \u0003(\u000b22.envoy.config.core.v3.Metadata.FilterMetadataEntry\u0012V\n\u0015typed_filter_metadata\u0018\u0002 \u0003(\u000b27.envoy.config.core.v3.Metadata.TypedFilterMetadataEntry\u001aN\n\u0013FilterMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\u001aP\n\u0018TypedFilterMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001:!\u009a\u00c5\u0088\u001e\u001c\n\u001aenvoy.api.v2.core.Metadata\"l\n\rRuntimeUInt32\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\r\u0012\u001c\n\u000bruntime_key\u0018\u0003 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.api.v2.core.RuntimeUInt32\"]\n\u000eRuntimePercent\u0012-\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\"l\n\rRuntimeDouble\u0012\u0015\n\rdefault_value\u0018\u0001 \u0001(\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.api.v2.core.RuntimeDouble\"\u009c\u0001\n\u0012RuntimeFeatureFlag\u0012;\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001:+\u009a\u00c5\u0088\u001e&\n$envoy.api.v2.core.RuntimeFeatureFlag\"s\n\u000bHeaderValue\u0012\u001e\n\u0003key\u0018\u0001 \u0001(\tB\u0011\u00faB\u000er\u000c\u0010\u0001(\u0080\u0080\u0001\u00c0\u0001\u0001\u00c8\u0001\u0000\u0012\u001e\n\u0005value\u0018\u0002 \u0001(\tB\u000f\u00faB\u000cr\n(\u0080\u0080\u0001\u00c0\u0001\u0002\u00c8\u0001\u0000:$\u009a\u00c5\u0088\u001e\u001f\n\u001denvoy.api.v2.core.HeaderValue\"\u00a8\u0001\n\u0011HeaderValueOption\u0012;\n\u0006header\u0018\u0001 \u0001(\u000b2!.envoy.config.core.v3.HeaderValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012*\n\u0006append\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue:*\u009a\u00c5\u0088\u001e%\n#envoy.api.v2.core.HeaderValueOption\"c\n\tHeaderMap\u00122\n\u0007headers\u0018\u0001 \u0003(\u000b2!.envoy.config.core.v3.HeaderValue:\"\u009a\u00c5\u0088\u001e\u001d\n\u001benvoy.api.v2.core.HeaderMap\")\n\u0010WatchedDirectory\u0012\u0015\n\u0004path\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\"\u0091\u0001\n\nDataSource\u0012\u001b\n\u0008filename\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001H\u0000\u0012\u0016\n\u000cinline_bytes\u0018\u0002 \u0001(\u000cH\u0000\u0012\u0017\n\rinline_string\u0018\u0003 \u0001(\tH\u0000:#\u009a\u00c5\u0088\u001e\u001e\n\u001cenvoy.api.v2.core.DataSourceB\u0010\n\tspecifier\u0012\u0003\u00f8B\u0001\"\u00ba\u0001\n\u000bRetryPolicy\u0012=\n\u000eretry_back_off\u0018\u0001 \u0001(\u000b2%.envoy.config.core.v3.BackoffStrategy\u0012F\n\u000bnum_retries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0013\u00f2\u0098\u00fe\u008f\u0005\r\n\u000bmax_retries:$\u009a\u00c5\u0088\u001e\u001f\n\u001denvoy.api.v2.core.RetryPolicy\"\u00ca\u0001\n\u0010RemoteDataSource\u00129\n\u0008http_uri\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.HttpUriB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0017\n\u0006sha256\u0018\u0002 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u00127\n\u000cretry_policy\u0018\u0003 \u0001(\u000b2!.envoy.config.core.v3.RetryPolicy:)\u009a\u00c5\u0088\u001e$\n\"envoy.api.v2.core.RemoteDataSource\"\u00ba\u0001\n\u000fAsyncDataSource\u00121\n\u0005local\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSourceH\u0000\u00128\n\u0006remote\u0018\u0002 \u0001(\u000b2&.envoy.config.core.v3.RemoteDataSourceH\u0000:(\u009a\u00c5\u0088\u001e#\n!envoy.api.v2.core.AsyncDataSourceB\u0010\n\tspecifier\u0012\u0003\u00f8B\u0001\"\u009d\u0001\n\u000fTransportSocket\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:(\u009a\u00c5\u0088\u001e#\n!envoy.api.v2.core.TransportSocketB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006config\"\u00a5\u0001\n\u0018RuntimeFractionalPercent\u0012A\n\rdefault_value\u0018\u0001 \u0001(\u000b2 .envoy.type.v3.FractionalPercentB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bruntime_key\u0018\u0002 \u0001(\t:1\u009a\u00c5\u0088\u001e,\n*envoy.api.v2.core.RuntimeFractionalPercent\"I\n\u000cControlPlane\u0012\u0012\n\nidentifier\u0018\u0001 \u0001(\t:%\u009a\u00c5\u0088\u001e \n\u001eenvoy.api.v2.core.ControlPlane*(\n\u000fRoutingPriority\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u0008\n\u0004HIGH\u0010\u0001*\u0089\u0001\n\rRequestMethod\u0012\u0016\n\u0012METHOD_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003GET\u0010\u0001\u0012\u0008\n\u0004HEAD\u0010\u0002\u0012\u0008\n\u0004POST\u0010\u0003\u0012\u0007\n\u0003PUT\u0010\u0004\u0012\n\n\u0006DELETE\u0010\u0005\u0012\u000b\n\u0007CONNECT\u0010\u0006\u0012\u000b\n\u0007OPTIONS\u0010\u0007\u0012\t\n\u0005TRACE\u0010\u0008\u0012\t\n\u0005PATCH\u0010\t*>\n\u0010TrafficDirection\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012\u000b\n\u0007INBOUND\u0010\u0001\u0012\u000c\n\u0008OUTBOUND\u0010\u0002B9\n\"io.envoyproxy.envoy.config.core.v3B\tBaseProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/h0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v13, 0x9

    aput-object v3, v2, v13

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v14, 0xa

    aput-object v3, v2, v14

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v15, 0xb

    aput-object v3, v2, v15

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v1, 0xc

    aput-object v3, v2, v1

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v1, 0xd

    aput-object v3, v2, v1

    .line 16
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->U:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Region"

    const-string v1, "Zone"

    const-string v15, "SubZone"

    filled-new-array {v3, v1, v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->c:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Version"

    const-string v3, "Metadata"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->e:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v6, "Category"

    const-string v15, "TypeDescriptor"

    const-string v14, "Disabled"

    filled-new-array {v3, v6, v15, v2, v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->g:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v16, "Id"

    const-string v17, "Cluster"

    const-string v18, "Metadata"

    const-string v19, "DynamicParameters"

    const-string v20, "Locality"

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

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->i:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v6, "Value"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->k:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "FilterMetadata"

    const-string v8, "TypedFilterMetadata"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->m:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->o:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->q:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "DefaultValue"

    const-string v5, "RuntimeKey"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->s:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->u:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->w:Lcom/google/protobuf/Descriptors$b;

    .line 40
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->y:Lcom/google/protobuf/Descriptors$b;

    .line 42
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->A:Lcom/google/protobuf/Descriptors$b;

    .line 44
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Header"

    const-string v6, "Append"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 45
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->C:Lcom/google/protobuf/Descriptors$b;

    .line 46
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Headers"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->E:Lcom/google/protobuf/Descriptors$b;

    .line 48
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Path"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->G:Lcom/google/protobuf/Descriptors$b;

    .line 50
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Filename"

    const-string v6, "InlineBytes"

    const-string v7, "InlineString"

    const-string v8, "Specifier"

    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->I:Lcom/google/protobuf/Descriptors$b;

    .line 52
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "RetryBackOff"

    const-string v6, "NumRetries"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 53
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->K:Lcom/google/protobuf/Descriptors$b;

    .line 54
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "HttpUri"

    const-string v6, "Sha256"

    const-string v7, "RetryPolicy"

    filled-new-array {v2, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->L:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 55
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->M:Lcom/google/protobuf/Descriptors$b;

    .line 56
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Local"

    const-string v6, "Remote"

    filled-new-array {v2, v6, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->N:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 57
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->O:Lcom/google/protobuf/Descriptors$b;

    .line 58
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TypedConfig"

    const-string v6, "ConfigType"

    filled-new-array {v3, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->P:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 59
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->Q:Lcom/google/protobuf/Descriptors$b;

    .line 60
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->R:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 61
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->S:Lcom/google/protobuf/Descriptors$b;

    .line 62
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Identifier"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->T:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 63
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 64
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 65
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 66
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 67
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 68
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 69
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 70
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->U:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 71
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 72
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 73
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 74
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/h0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 75
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 76
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 77
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 78
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 79
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 80
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 81
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 82
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 83
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 84
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 85
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->U:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
