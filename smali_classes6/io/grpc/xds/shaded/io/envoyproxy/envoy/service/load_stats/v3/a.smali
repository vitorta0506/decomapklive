.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$d;
    }
.end annotation


# static fields
.field private static volatile a:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsRequest;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsRequest;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a;->a:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a;->a:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 5
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v2, "envoy.service.load_stats.v3.LoadReportingService"

    const-string v3, "StreamLoadStats"

    .line 6
    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->e(Z)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsRequest;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsRequest;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    new-instance v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$c;

    const-string v3, "StreamLoadStats"

    invoke-direct {v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$c;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->f(Ljava/lang/Object;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a;->a:Lio/grpc/MethodDescriptor;

    .line 14
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b(Lio/grpc/d;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$d;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$a;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lio/grpc/stub/a;->f(Lio/grpc/stub/b$a;Lio/grpc/d;)Lio/grpc/stub/b;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/a$d;

    return-object p0
.end method
