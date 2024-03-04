.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;
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

.field private static q:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "\n#envoy/config/metrics/v3/stats.proto\u0012\u0017envoy.config.metrics.v3\u001a\"envoy/config/core/v3/address.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u008e\u0001\n\tStatsSink\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:(\u009a\u00c5\u0088\u001e#\n!envoy.config.metrics.v2.StatsSinkB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006config\"\u00c1\u0002\n\u000bStatsConfig\u00129\n\nstats_tags\u0018\u0001 \u0003(\u000b2%.envoy.config.metrics.v3.TagSpecifier\u00128\n\u0014use_all_default_tags\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012<\n\rstats_matcher\u0018\u0003 \u0001(\u000b2%.envoy.config.metrics.v3.StatsMatcher\u0012S\n\u0019histogram_bucket_settings\u0018\u0004 \u0003(\u000b20.envoy.config.metrics.v3.HistogramBucketSettings:*\u009a\u00c5\u0088\u001e%\n#envoy.config.metrics.v2.StatsConfig\"\u00ef\u0001\n\u000cStatsMatcher\u0012\u0014\n\nreject_all\u0018\u0001 \u0001(\u0008H\u0000\u0012B\n\u000eexclusion_list\u0018\u0002 \u0001(\u000b2(.envoy.type.matcher.v3.ListStringMatcherH\u0000\u0012B\n\u000einclusion_list\u0018\u0003 \u0001(\u000b2(.envoy.type.matcher.v3.ListStringMatcherH\u0000:+\u009a\u00c5\u0088\u001e&\n$envoy.config.metrics.v2.StatsMatcherB\u0014\n\rstats_matcher\u0012\u0003\u00f8B\u0001\"\u008c\u0001\n\u000cTagSpecifier\u0012\u0010\n\u0008tag_name\u0018\u0001 \u0001(\t\u0012\u0019\n\u0005regex\u0018\u0002 \u0001(\tB\u0008\u00faB\u0005r\u0003(\u0080\u0008H\u0000\u0012\u0015\n\u000bfixed_value\u0018\u0003 \u0001(\tH\u0000:+\u009a\u00c5\u0088\u001e&\n$envoy.config.metrics.v2.TagSpecifierB\u000b\n\ttag_value\"\u0082\u0001\n\u0017HistogramBucketSettings\u0012=\n\u0005match\u0018\u0001 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012(\n\u0007buckets\u0018\u0002 \u0003(\u0001B\u0017\u00faB\u0014\u0092\u0001\u0011\u0008\u0001\u0018\u0001\"\u000b\u0012\t!\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\"\u00ae\u0001\n\nStatsdSink\u00120\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.AddressH\u0000\u0012\u001a\n\u0010tcp_cluster_name\u0018\u0002 \u0001(\tH\u0000\u0012\u000e\n\u0006prefix\u0018\u0003 \u0001(\t:)\u009a\u00c5\u0088\u001e$\n\"envoy.config.metrics.v2.StatsdSinkB\u0017\n\u0010statsd_specifier\u0012\u0003\u00f8B\u0001\"\u00e9\u0001\n\rDogStatsdSink\u00120\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.AddressH\u0000\u0012\u000e\n\u0006prefix\u0018\u0003 \u0001(\t\u0012E\n\u0016max_bytes_per_datagram\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\u0007\u00faB\u00042\u0002 \u0000:,\u009a\u00c5\u0088\u001e\'\n%envoy.config.metrics.v2.DogStatsdSinkB\u001b\n\u0014dog_statsd_specifier\u0012\u0003\u00f8B\u0001J\u0004\u0008\u0002\u0010\u0003\"N\n\u000bHystrixSink\u0012\u0013\n\u000bnum_buckets\u0018\u0001 \u0001(\u0003:*\u009a\u00c5\u0088\u001e%\n#envoy.config.metrics.v2.HystrixSinkB=\n%io.envoyproxy.envoy.config.metrics.v3B\nStatsProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 9
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v4, "TypedConfig"

    const-string v11, "ConfigType"

    filled-new-array {v3, v4, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->c:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "StatsTags"

    const-string v4, "UseAllDefaultTags"

    const-string v5, "StatsMatcher"

    const-string v11, "HistogramBucketSettings"

    filled-new-array {v3, v4, v5, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->e:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "RejectAll"

    const-string v4, "ExclusionList"

    const-string v6, "InclusionList"

    filled-new-array {v3, v4, v6, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->g:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "TagName"

    const-string v4, "Regex"

    const-string v5, "FixedValue"

    const-string v6, "TagValue"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->i:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Match"

    const-string v4, "Buckets"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->k:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Address"

    const-string v4, "TcpClusterName"

    const-string v5, "Prefix"

    const-string v6, "StatsdSpecifier"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->m:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "MaxBytesPerDatagram"

    const-string v6, "DogStatsdSpecifier"

    filled-new-array {v3, v5, v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->o:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "NumBuckets"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/d;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
