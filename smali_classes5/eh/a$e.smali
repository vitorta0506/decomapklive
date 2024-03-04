.class final Leh/a$e;
.super Leh/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private h:Lio/grpc/stub/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/h<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Leh/a;


# direct methods
.method private constructor <init>(Leh/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Leh/a$e;->i:Leh/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leh/a$c;-><init>(Leh/a;Leh/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Leh/a;Leh/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leh/a$e;-><init>(Leh/a;)V

    return-void
.end method


# virtual methods
.method h(Leh/a$f;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/a$f;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leh/a$e;->h:Lio/grpc/stub/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "ADS stream has not been started"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->t0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p2

    iget-object v0, p0, Leh/a$e;->i:Leh/a;

    .line 4
    invoke-static {v0}, Leh/a;->l(Leh/a;)Leh/a1$c;

    move-result-object v0

    invoke-virtual {v0}, Leh/a1$c;->c()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->W(Ljava/lang/Iterable;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->r0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->q0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 8
    invoke-static {}, Lcom/google/rpc/Status;->newBuilder()Lcom/google/rpc/Status$b;

    move-result-object p2

    const/4 p3, 0x3

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/rpc/Status$b;->k0(I)Lcom/google/rpc/Status$b;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p5}, Lcom/google/rpc/Status$b;->m0(Ljava/lang/String;)Lcom/google/rpc/Status$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/rpc/Status$b;->X()Lcom/google/rpc/Status;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->m0(Lcom/google/rpc/Status;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object p1

    .line 14
    iget-object p2, p0, Leh/a$e;->h:Lio/grpc/stub/h;

    invoke-interface {p2, p1}, Lio/grpc/stub/h;->onNext(Ljava/lang/Object;)V

    .line 15
    iget-object p2, p0, Leh/a$e;->i:Leh/a;

    invoke-static {p2}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object p2

    sget-object p3, Leh/q2$b;->a:Leh/q2$b;

    invoke-virtual {p2, p3}, Leh/q2;->a(Leh/q2$b;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    iget-object p2, p0, Leh/a$e;->i:Leh/a;

    invoke-static {p2}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object p2

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Leh/u1;->a(Lcom/google/protobuf/r1;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    const-string p1, "Sent DiscoveryRequest\n{0}"

    invoke-virtual {p2, p3, p1, p4}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method j(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Leh/a$e;->h:Lio/grpc/stub/h;

    invoke-interface {v0, p1}, Lio/grpc/stub/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method k()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/a$e;->i:Leh/a;

    .line 2
    invoke-static {v0}, Leh/a;->q(Leh/a;)Lio/grpc/q0;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/b;->b(Lio/grpc/d;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/b$d;

    move-result-object v0

    .line 3
    new-instance v1, Leh/a$e$a;

    invoke-direct {v1, p0}, Leh/a$e$a;-><init>(Leh/a$e;)V

    .line 4
    invoke-virtual {v0}, Lio/grpc/stub/b;->e()Lio/grpc/stub/b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/b$d;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/b$d;->i(Lio/grpc/stub/h;)Lio/grpc/stub/h;

    move-result-object v0

    iput-object v0, p0, Leh/a$e;->h:Lio/grpc/stub/h;

    return-void
.end method
