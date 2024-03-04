.class Leh/r1$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r1$f$a;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

.field final synthetic b:Leh/r1$f$a;


# direct methods
.method constructor <init>(Leh/r1$f$a;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;)V
    .locals 0

    iput-object p1, p0, Leh/r1$f$a$a;->b:Leh/r1$f$a;

    iput-object p2, p0, Leh/r1$f$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/r1$f$a$a;->b:Leh/r1$f$a;

    iget-object v0, v0, Leh/r1$f$a;->a:Leh/r1$f;

    iget-object v0, v0, Leh/r1$f;->i:Leh/r1;

    invoke-static {v0}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leh/r1$f$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Received LRS response:\n{0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/r1$f$a$a;->b:Leh/r1$f$a;

    iget-object v0, v0, Leh/r1$f$a;->a:Leh/r1$f;

    iget-object v1, p0, Leh/r1$f$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;->getClustersList()Lcom/google/protobuf/i2;

    move-result-object v1

    iget-object v2, p0, Leh/r1$f$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;->getSendAllClusters()Z

    move-result v2

    iget-object v3, p0, Leh/r1$f$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

    .line 3
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;->getLoadReportingInterval()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v3}, Lv6/a;->h(Lcom/google/protobuf/Duration;)J

    move-result-wide v3

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Leh/r1$d;->g(Ljava/util/List;ZJ)V

    return-void
.end method
