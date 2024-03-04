.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final C:Lcom/google/protobuf/Descriptors$b;

.field static final D:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static E:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 29

    const-string v0, "\n)envoy/config/accesslog/v3/accesslog.proto\u0012\u0019envoy.config.accesslog.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a,envoy/config/route/v3/route_components.proto\u001a$envoy/type/matcher/v3/metadata.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00d3\u0001\n\tAccessLog\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012:\n\u0006filter\u0018\u0002 \u0001(\u000b2*.envoy.config.accesslog.v3.AccessLogFilter\u0012,\n\u000ctyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:1\u009a\u00c5\u0088\u001e,\n*envoy.config.filter.accesslog.v2.AccessLogB\r\n\u000bconfig_typeJ\u0004\u0008\u0003\u0010\u0004R\u0006config\"\u00b4\u0007\n\u000fAccessLogFilter\u0012I\n\u0012status_code_filter\u0018\u0001 \u0001(\u000b2+.envoy.config.accesslog.v3.StatusCodeFilterH\u0000\u0012D\n\u000fduration_filter\u0018\u0002 \u0001(\u000b2).envoy.config.accesslog.v3.DurationFilterH\u0000\u0012R\n\u0017not_health_check_filter\u0018\u0003 \u0001(\u000b2/.envoy.config.accesslog.v3.NotHealthCheckFilterH\u0000\u0012F\n\u0010traceable_filter\u0018\u0004 \u0001(\u000b2*.envoy.config.accesslog.v3.TraceableFilterH\u0000\u0012B\n\u000eruntime_filter\u0018\u0005 \u0001(\u000b2(.envoy.config.accesslog.v3.RuntimeFilterH\u0000\u0012:\n\nand_filter\u0018\u0006 \u0001(\u000b2$.envoy.config.accesslog.v3.AndFilterH\u0000\u00128\n\tor_filter\u0018\u0007 \u0001(\u000b2#.envoy.config.accesslog.v3.OrFilterH\u0000\u0012@\n\rheader_filter\u0018\u0008 \u0001(\u000b2\'.envoy.config.accesslog.v3.HeaderFilterH\u0000\u0012M\n\u0014response_flag_filter\u0018\t \u0001(\u000b2-.envoy.config.accesslog.v3.ResponseFlagFilterH\u0000\u0012I\n\u0012grpc_status_filter\u0018\n \u0001(\u000b2+.envoy.config.accesslog.v3.GrpcStatusFilterH\u0000\u0012F\n\u0010extension_filter\u0018\u000b \u0001(\u000b2*.envoy.config.accesslog.v3.ExtensionFilterH\u0000\u0012D\n\u000fmetadata_filter\u0018\u000c \u0001(\u000b2).envoy.config.accesslog.v3.MetadataFilterH\u0000:7\u009a\u00c5\u0088\u001e2\n0envoy.config.filter.accesslog.v2.AccessLogFilterB\u0017\n\u0010filter_specifier\u0012\u0003\u00f8B\u0001\"\u00e4\u0001\n\u0010ComparisonFilter\u0012D\n\u0002op\u0018\u0001 \u0001(\u000e2..envoy.config.accesslog.v3.ComparisonFilter.OpB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u00122\n\u0005value\u0018\u0002 \u0001(\u000b2#.envoy.config.core.v3.RuntimeUInt32\"\u001c\n\u0002Op\u0012\u0006\n\u0002EQ\u0010\u0000\u0012\u0006\n\u0002GE\u0010\u0001\u0012\u0006\n\u0002LE\u0010\u0002:8\u009a\u00c5\u0088\u001e3\n1envoy.config.filter.accesslog.v2.ComparisonFilter\"\u0097\u0001\n\u0010StatusCodeFilter\u0012I\n\ncomparison\u0018\u0001 \u0001(\u000b2+.envoy.config.accesslog.v3.ComparisonFilterB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001:8\u009a\u00c5\u0088\u001e3\n1envoy.config.filter.accesslog.v2.StatusCodeFilter\"\u0093\u0001\n\u000eDurationFilter\u0012I\n\ncomparison\u0018\u0001 \u0001(\u000b2+.envoy.config.accesslog.v3.ComparisonFilterB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001:6\u009a\u00c5\u0088\u001e1\n/envoy.config.filter.accesslog.v2.DurationFilter\"T\n\u0014NotHealthCheckFilter:<\u009a\u00c5\u0088\u001e7\n5envoy.config.filter.accesslog.v2.NotHealthCheckFilter\"J\n\u000fTraceableFilter:7\u009a\u00c5\u0088\u001e2\n0envoy.config.filter.accesslog.v2.TraceableFilter\"\u00c3\u0001\n\rRuntimeFilter\u0012\u001c\n\u000bruntime_key\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u00129\n\u000fpercent_sampled\u0018\u0002 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u0012\"\n\u001ause_independent_randomness\u0018\u0003 \u0001(\u0008:5\u009a\u00c5\u0088\u001e0\n.envoy.config.filter.accesslog.v2.RuntimeFilter\"\u0085\u0001\n\tAndFilter\u0012E\n\u0007filters\u0018\u0001 \u0003(\u000b2*.envoy.config.accesslog.v3.AccessLogFilterB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0002:1\u009a\u00c5\u0088\u001e,\n*envoy.config.filter.accesslog.v2.AndFilter\"\u0083\u0001\n\u0008OrFilter\u0012E\n\u0007filters\u0018\u0002 \u0003(\u000b2*.envoy.config.accesslog.v3.AccessLogFilterB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0002:0\u009a\u00c5\u0088\u001e+\n)envoy.config.filter.accesslog.v2.OrFilter\"\u0084\u0001\n\u000cHeaderFilter\u0012>\n\u0006header\u0018\u0001 \u0001(\u000b2$.envoy.config.route.v3.HeaderMatcherB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001:4\u009a\u00c5\u0088\u001e/\n-envoy.config.filter.accesslog.v2.HeaderFilter\"\u00e3\u0001\n\u0012ResponseFlagFilter\u0012\u0090\u0001\n\u0005flags\u0018\u0001 \u0003(\tB\u0080\u0001\u00faB}\u0092\u0001z\"xrvR\u0002LHR\u0002UHR\u0002UTR\u0002LRR\u0002URR\u0002UFR\u0002UCR\u0002UOR\u0002NRR\u0002DIR\u0002FIR\u0002RLR\u0004UAEXR\u0004RLSER\u0002DCR\u0003URXR\u0002SIR\u0002IHR\u0003DPER\u0005UMSDRR\u0004RFCFR\u0004NFCFR\u0002DTR\u0003UPER\u0002NCR\u0002OM::\u009a\u00c5\u0088\u001e5\n3envoy.config.filter.accesslog.v2.ResponseFlagFilter\"\u00ed\u0003\n\u0010GrpcStatusFilter\u0012S\n\u0008statuses\u0018\u0001 \u0003(\u000e22.envoy.config.accesslog.v3.GrpcStatusFilter.StatusB\r\u00faB\n\u0092\u0001\u0007\"\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u000f\n\u0007exclude\u0018\u0002 \u0001(\u0008\"\u00b8\u0002\n\u0006Status\u0012\u0006\n\u0002OK\u0010\u0000\u0012\u000c\n\u0008CANCELED\u0010\u0001\u0012\u000b\n\u0007UNKNOWN\u0010\u0002\u0012\u0014\n\u0010INVALID_ARGUMENT\u0010\u0003\u0012\u0015\n\u0011DEADLINE_EXCEEDED\u0010\u0004\u0012\r\n\tNOT_FOUND\u0010\u0005\u0012\u0012\n\u000eALREADY_EXISTS\u0010\u0006\u0012\u0015\n\u0011PERMISSION_DENIED\u0010\u0007\u0012\u0016\n\u0012RESOURCE_EXHAUSTED\u0010\u0008\u0012\u0017\n\u0013FAILED_PRECONDITION\u0010\t\u0012\u000b\n\u0007ABORTED\u0010\n\u0012\u0010\n\u000cOUT_OF_RANGE\u0010\u000b\u0012\u0011\n\rUNIMPLEMENTED\u0010\u000c\u0012\u000c\n\u0008INTERNAL\u0010\r\u0012\u000f\n\u000bUNAVAILABLE\u0010\u000e\u0012\r\n\tDATA_LOSS\u0010\u000f\u0012\u0013\n\u000fUNAUTHENTICATED\u0010\u0010:8\u009a\u00c5\u0088\u001e3\n1envoy.config.filter.accesslog.v2.GrpcStatusFilter\"\u00bd\u0001\n\u000eMetadataFilter\u00127\n\u0007matcher\u0018\u0001 \u0001(\u000b2&.envoy.type.matcher.v3.MetadataMatcher\u0012:\n\u0016match_if_key_not_found\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue:6\u009a\u00c5\u0088\u001e1\n/envoy.config.filter.accesslog.v2.MetadataFilter\"\u00a3\u0001\n\u000fExtensionFilter\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:7\u009a\u00c5\u0088\u001e2\n0envoy.config.filter.accesslog.v2.ExtensionFilterB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006configBC\n\'io.envoyproxy.envoy.config.accesslog.v3B\u000eAccesslogProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    .line 11
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v13, "Filter"

    const-string v14, "TypedConfig"

    const-string v15, "ConfigType"

    filled-new-array {v3, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v0, v13}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v16, "StatusCodeFilter"

    const-string v17, "DurationFilter"

    const-string v18, "NotHealthCheckFilter"

    const-string v19, "TraceableFilter"

    const-string v20, "RuntimeFilter"

    const-string v21, "AndFilter"

    const-string v22, "OrFilter"

    const-string v23, "HeaderFilter"

    const-string v24, "ResponseFlagFilter"

    const-string v25, "GrpcStatusFilter"

    const-string v26, "ExtensionFilter"

    const-string v27, "MetadataFilter"

    const-string v28, "FilterSpecifier"

    filled-new-array/range {v16 .. v28}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Op"

    const-string v6, "Value"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Comparison"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->m:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->o:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "RuntimeKey"

    const-string v5, "PercentSampled"

    const-string v6, "UseIndependentRandomness"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->q:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Filters"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->s:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->u:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Header"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->w:Lcom/google/protobuf/Descriptors$b;

    .line 35
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Flags"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->y:Lcom/google/protobuf/Descriptors$b;

    .line 37
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Statuses"

    const-string v4, "Exclude"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->A:Lcom/google/protobuf/Descriptors$b;

    .line 39
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Matcher"

    const-string v4, "MatchIfKeyNotFound"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->C:Lcom/google/protobuf/Descriptors$b;

    .line 41
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3, v14, v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 42
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 43
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

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
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 53
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 54
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 55
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 56
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 57
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->E:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
