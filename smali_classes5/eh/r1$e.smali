.class final Leh/r1$e;
.super Leh/r1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field h:Lio/grpc/stub/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/h<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Leh/r1;


# direct methods
.method private constructor <init>(Leh/r1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Leh/r1$e;->i:Leh/r1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leh/r1$d;-><init>(Leh/r1;Leh/r1$a;)V

    return-void
.end method

.method synthetic constructor <init>(Leh/r1;Leh/r1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leh/r1$e;-><init>(Leh/r1;)V

    return-void
.end method

.method private n(Leh/g2;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats;
    .locals 6

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Leh/g2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;->q0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Leh/g2;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Leh/g2;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;->r0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;

    .line 5
    :cond_0
    invoke-virtual {p1}, Leh/g2;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/i2;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v3

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v4

    .line 8
    invoke-virtual {v2}, Leh/i2;->b()Leh/t1;

    move-result-object v5

    invoke-virtual {v5}, Leh/t1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->j0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v4

    .line 9
    invoke-virtual {v2}, Leh/i2;->b()Leh/t1;

    move-result-object v5

    invoke-virtual {v5}, Leh/t1;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->m0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Leh/i2;->b()Leh/t1;

    move-result-object v5

    invoke-virtual {v5}, Leh/t1;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->k0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v4

    .line 11
    invoke-virtual {v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Leh/i2;->f()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;->u0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v3

    .line 13
    invoke-virtual {v2}, Leh/i2;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;->r0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v3

    .line 14
    invoke-virtual {v2}, Leh/i2;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;->t0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v3

    .line 15
    invoke-virtual {v2}, Leh/i2;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;->s0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;->Y(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Leh/g2;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/h2;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$DroppedRequests;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$DroppedRequests$b;

    move-result-object v3

    .line 19
    invoke-virtual {v2}, Leh/h2;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$DroppedRequests$b;->i0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$DroppedRequests$b;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Leh/h2;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$DroppedRequests$b;->j0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$DroppedRequests$b;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;->W(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$DroppedRequests$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p1}, Leh/g2;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;->u0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Leh/g2;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Lv6/a;->d(J)Lcom/google/protobuf/Duration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;->t0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method j(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Leh/r1$e;->h:Lio/grpc/stub/h;

    invoke-interface {v0, p1}, Lio/grpc/stub/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/g2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest$b;

    move-result-object v0

    iget-object v1, p0, Leh/r1$e;->i:Leh/r1;

    .line 2
    invoke-static {v1}, Leh/r1;->g(Leh/r1;)Leh/a1$c;

    move-result-object v1

    invoke-virtual {v1}, Leh/a1$c;->d()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest$b;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest$b;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/g2;

    .line 4
    invoke-direct {p0, v1}, Leh/r1$e;->n(Leh/g2;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest$b;->W(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/ClusterStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest$b;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest;

    move-result-object p1

    .line 6
    iget-object v1, p0, Leh/r1$e;->h:Lio/grpc/stub/h;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/LoadStatsRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/grpc/stub/h;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Leh/r1$e;->i:Leh/r1;

    invoke-static {v0}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Sent LoadStatsRequest\n{0}"

    invoke-virtual {v0, v1, p1, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method m()V
    .locals 3

    .line 1
    new-instance v0, Leh/r1$e$a;

    invoke-direct {v0, p0}, Leh/r1$e$a;-><init>(Leh/r1$e;)V

    .line 2
    iget-object v1, p0, Leh/r1$e;->i:Leh/r1;

    .line 3
    invoke-static {v1}, Leh/r1;->f(Leh/r1;)Lio/grpc/d;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/a;->b(Lio/grpc/d;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/a$d;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lio/grpc/stub/b;->e()Lio/grpc/stub/b;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/a$d;

    invoke-virtual {v1, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v2/a$d;->i(Lio/grpc/stub/h;)Lio/grpc/stub/h;

    move-result-object v0

    iput-object v0, p0, Leh/r1$e;->h:Lio/grpc/stub/h;

    .line 6
    iget-object v0, p0, Leh/r1$e;->i:Leh/r1;

    invoke-static {v0}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const-string v2, "Sending initial LRS request"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Leh/r1$e;->l(Ljava/util/List;)V

    return-void
.end method
