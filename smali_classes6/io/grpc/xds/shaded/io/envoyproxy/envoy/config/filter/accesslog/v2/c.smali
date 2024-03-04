.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;
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
    .locals 28

    const-string v0, "\n0envoy/config/filter/accesslog/v2/accesslog.proto\u0012 envoy.config.filter.accesslog.v2\u001a\u001cenvoy/api/v2/core/base.proto\u001a)envoy/api/v2/route/route_components.proto\u001a\u0018envoy/type/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00c8\u0001\n\tAccessLog\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012A\n\u0006filter\u0018\u0002 \u0001(\u000b21.envoy.config.filter.accesslog.v2.AccessLogFilter\u0012-\n\u0006config\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\"\u0082\u0007\n\u000fAccessLogFilter\u0012P\n\u0012status_code_filter\u0018\u0001 \u0001(\u000b22.envoy.config.filter.accesslog.v2.StatusCodeFilterH\u0000\u0012K\n\u000fduration_filter\u0018\u0002 \u0001(\u000b20.envoy.config.filter.accesslog.v2.DurationFilterH\u0000\u0012Y\n\u0017not_health_check_filter\u0018\u0003 \u0001(\u000b26.envoy.config.filter.accesslog.v2.NotHealthCheckFilterH\u0000\u0012M\n\u0010traceable_filter\u0018\u0004 \u0001(\u000b21.envoy.config.filter.accesslog.v2.TraceableFilterH\u0000\u0012I\n\u000eruntime_filter\u0018\u0005 \u0001(\u000b2/.envoy.config.filter.accesslog.v2.RuntimeFilterH\u0000\u0012A\n\nand_filter\u0018\u0006 \u0001(\u000b2+.envoy.config.filter.accesslog.v2.AndFilterH\u0000\u0012?\n\tor_filter\u0018\u0007 \u0001(\u000b2*.envoy.config.filter.accesslog.v2.OrFilterH\u0000\u0012G\n\rheader_filter\u0018\u0008 \u0001(\u000b2..envoy.config.filter.accesslog.v2.HeaderFilterH\u0000\u0012T\n\u0014response_flag_filter\u0018\t \u0001(\u000b24.envoy.config.filter.accesslog.v2.ResponseFlagFilterH\u0000\u0012P\n\u0012grpc_status_filter\u0018\n \u0001(\u000b22.envoy.config.filter.accesslog.v2.GrpcStatusFilterH\u0000\u0012M\n\u0010extension_filter\u0018\u000b \u0001(\u000b21.envoy.config.filter.accesslog.v2.ExtensionFilterH\u0000B\u0017\n\u0010filter_specifier\u0012\u0003\u00f8B\u0001\"\u00ae\u0001\n\u0010ComparisonFilter\u0012K\n\u0002op\u0018\u0001 \u0001(\u000e25.envoy.config.filter.accesslog.v2.ComparisonFilter.OpB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012/\n\u0005value\u0018\u0002 \u0001(\u000b2 .envoy.api.v2.core.RuntimeUInt32\"\u001c\n\u0002Op\u0012\u0006\n\u0002EQ\u0010\u0000\u0012\u0006\n\u0002GE\u0010\u0001\u0012\u0006\n\u0002LE\u0010\u0002\"d\n\u0010StatusCodeFilter\u0012P\n\ncomparison\u0018\u0001 \u0001(\u000b22.envoy.config.filter.accesslog.v2.ComparisonFilterB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\"b\n\u000eDurationFilter\u0012P\n\ncomparison\u0018\u0001 \u0001(\u000b22.envoy.config.filter.accesslog.v2.ComparisonFilterB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\"\u0016\n\u0014NotHealthCheckFilter\"\u0011\n\u000fTraceableFilter\"\u0089\u0001\n\rRuntimeFilter\u0012\u001c\n\u000bruntime_key\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u00126\n\u000fpercent_sampled\u0018\u0002 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u0012\"\n\u001ause_independent_randomness\u0018\u0003 \u0001(\u0008\"Y\n\tAndFilter\u0012L\n\u0007filters\u0018\u0001 \u0003(\u000b21.envoy.config.filter.accesslog.v2.AccessLogFilterB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0002\"X\n\u0008OrFilter\u0012L\n\u0007filters\u0018\u0002 \u0003(\u000b21.envoy.config.filter.accesslog.v2.AccessLogFilterB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0002\"K\n\u000cHeaderFilter\u0012;\n\u0006header\u0018\u0001 \u0001(\u000b2!.envoy.api.v2.route.HeaderMatcherB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\"\u0081\u0001\n\u0012ResponseFlagFilter\u0012k\n\u0005flags\u0018\u0001 \u0003(\tB\\\u00faBY\u0092\u0001V\"TrRR\u0002LHR\u0002UHR\u0002UTR\u0002LRR\u0002URR\u0002UFR\u0002UCR\u0002UOR\u0002NRR\u0002DIR\u0002FIR\u0002RLR\u0004UAEXR\u0004RLSER\u0002DCR\u0003URXR\u0002SIR\u0002IHR\u0003DPE\"\u00ba\u0003\n\u0010GrpcStatusFilter\u0012Z\n\u0008statuses\u0018\u0001 \u0003(\u000e29.envoy.config.filter.accesslog.v2.GrpcStatusFilter.StatusB\r\u00faB\n\u0092\u0001\u0007\"\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u000f\n\u0007exclude\u0018\u0002 \u0001(\u0008\"\u00b8\u0002\n\u0006Status\u0012\u0006\n\u0002OK\u0010\u0000\u0012\u000c\n\u0008CANCELED\u0010\u0001\u0012\u000b\n\u0007UNKNOWN\u0010\u0002\u0012\u0014\n\u0010INVALID_ARGUMENT\u0010\u0003\u0012\u0015\n\u0011DEADLINE_EXCEEDED\u0010\u0004\u0012\r\n\tNOT_FOUND\u0010\u0005\u0012\u0012\n\u000eALREADY_EXISTS\u0010\u0006\u0012\u0015\n\u0011PERMISSION_DENIED\u0010\u0007\u0012\u0016\n\u0012RESOURCE_EXHAUSTED\u0010\u0008\u0012\u0017\n\u0013FAILED_PRECONDITION\u0010\t\u0012\u000b\n\u0007ABORTED\u0010\n\u0012\u0010\n\u000cOUT_OF_RANGE\u0010\u000b\u0012\u0011\n\rUNIMPLEMENTED\u0010\u000c\u0012\u000c\n\u0008INTERNAL\u0010\r\u0012\u000f\n\u000bUNAVAILABLE\u0010\u000e\u0012\r\n\tDATA_LOSS\u0010\u000f\u0012\u0013\n\u000fUNAUTHENTICATED\u0010\u0010\"\u008b\u0001\n\u000fExtensionFilter\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_typeBk\n.io.envoyproxy.envoy.config.filter.accesslog.v2B\u000eAccesslogProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u001b\u0012\u0019envoy.config.accesslog.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    .line 10
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v12, "Filter"

    const-string v13, "Config"

    const-string v14, "TypedConfig"

    const-string v15, "ConfigType"

    filled-new-array {v3, v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v0, v12}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 14
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

    const-string v27, "FilterSpecifier"

    filled-new-array/range {v16 .. v27}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Op"

    const-string v6, "Value"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Comparison"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->m:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->o:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "RuntimeKey"

    const-string v5, "PercentSampled"

    const-string v6, "UseIndependentRandomness"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->q:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Filters"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->s:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->u:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Header"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->w:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Flags"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->y:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Statuses"

    const-string v4, "Exclude"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->A:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 40
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 41
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 42
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 43
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 44
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 46
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 53
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
