.class public final Lio/grpc/internal/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/n0$d;

.field private b:Lio/grpc/n0;

.field private c:Lio/grpc/o0;

.field final synthetic d:Lio/grpc/internal/j;


# direct methods
.method constructor <init>(Lio/grpc/internal/j;Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/grpc/internal/j$b;->d:Lio/grpc/internal/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/internal/j$b;->a:Lio/grpc/n0$d;

    .line 3
    invoke-static {p1}, Lio/grpc/internal/j;->b(Lio/grpc/internal/j;)Lio/grpc/p0;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/internal/j;->a(Lio/grpc/internal/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/j$b;->c:Lio/grpc/o0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lio/grpc/n0$c;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find policy \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/grpc/internal/j;->a(Lio/grpc/internal/j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()Lio/grpc/n0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    return-object v0
.end method

.method b(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/j$b;->a()Lio/grpc/n0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    return-void
.end method

.method d(Lio/grpc/n0$g;)Lio/grpc/Status;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$g;->b()Lio/grpc/a;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/e2$b;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/j$b;->d:Lio/grpc/internal/j;

    invoke-static {v2}, Lio/grpc/internal/j;->a(Lio/grpc/internal/j;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "using default policy"

    invoke-static {v2, v4, v5}, Lio/grpc/internal/j;->c(Lio/grpc/internal/j;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v2
    :try_end_0
    .catch Lio/grpc/internal/j$f; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v4, Lio/grpc/internal/e2$b;

    invoke-direct {v4, v2, v3}, Lio/grpc/internal/e2$b;-><init>(Lio/grpc/o0;Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/grpc/internal/j$b;->a:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/internal/j$d;

    invoke-direct {v2, p1}, Lio/grpc/internal/j$d;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 8
    iget-object p1, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    invoke-virtual {p1}, Lio/grpc/n0;->e()V

    .line 9
    iput-object v3, p0, Lio/grpc/internal/j$b;->c:Lio/grpc/o0;

    .line 10
    new-instance p1, Lio/grpc/internal/j$e;

    invoke-direct {p1, v3}, Lio/grpc/internal/j$e;-><init>(Lio/grpc/internal/j$a;)V

    iput-object p1, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    .line 11
    sget-object p1, Lio/grpc/Status;->f:Lio/grpc/Status;

    return-object p1

    .line 12
    :cond_0
    :goto_0
    iget-object v4, p0, Lio/grpc/internal/j$b;->c:Lio/grpc/o0;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v2, Lio/grpc/internal/e2$b;->a:Lio/grpc/o0;

    .line 13
    invoke-virtual {v4}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lio/grpc/internal/j$b;->c:Lio/grpc/o0;

    invoke-virtual {v7}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    :cond_1
    iget-object v4, p0, Lio/grpc/internal/j$b;->a:Lio/grpc/n0$d;

    sget-object v7, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v8, Lio/grpc/internal/j$c;

    invoke-direct {v8, v3}, Lio/grpc/internal/j$c;-><init>(Lio/grpc/internal/j$a;)V

    invoke-virtual {v4, v7, v8}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 15
    iget-object v3, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    invoke-virtual {v3}, Lio/grpc/n0;->e()V

    .line 16
    iget-object v3, v2, Lio/grpc/internal/e2$b;->a:Lio/grpc/o0;

    iput-object v3, p0, Lio/grpc/internal/j$b;->c:Lio/grpc/o0;

    .line 17
    iget-object v4, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    .line 18
    iget-object v7, p0, Lio/grpc/internal/j$b;->a:Lio/grpc/n0$d;

    invoke-virtual {v3, v7}, Lio/grpc/n0$c;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    .line 19
    iget-object v3, p0, Lio/grpc/internal/j$b;->a:Lio/grpc/n0$d;

    invoke-virtual {v3}, Lio/grpc/n0$d;->d()Lio/grpc/ChannelLogger;

    move-result-object v3

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    iget-object v4, p0, Lio/grpc/internal/j$b;->b:Lio/grpc/n0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    const-string v4, "Load balancer changed from {0} to {1}"

    .line 21
    invoke-virtual {v3, v7, v4, v8}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_2
    iget-object v3, v2, Lio/grpc/internal/e2$b;->b:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 23
    iget-object v4, p0, Lio/grpc/internal/j$b;->a:Lio/grpc/n0$d;

    invoke-virtual {v4}, Lio/grpc/n0$d;->d()Lio/grpc/ChannelLogger;

    move-result-object v4

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v2, v2, Lio/grpc/internal/e2$b;->b:Ljava/lang/Object;

    aput-object v2, v5, v6

    const-string v2, "Load-balancing config: {0}"

    invoke-virtual {v4, v7, v2, v5}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_3
    invoke-virtual {p0}, Lio/grpc/internal/j$b;->a()Lio/grpc/n0;

    move-result-object v2

    .line 25
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 26
    invoke-virtual {v2}, Lio/grpc/n0;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 27
    sget-object p1, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attrs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    return-object p1

    .line 28
    :cond_4
    invoke-static {}, Lio/grpc/n0$g;->d()Lio/grpc/n0$g$a;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/n0$g$a;->b(Ljava/util/List;)Lio/grpc/n0$g$a;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v1}, Lio/grpc/n0$g$a;->c(Lio/grpc/a;)Lio/grpc/n0$g$a;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v3}, Lio/grpc/n0$g$a;->d(Ljava/lang/Object;)Lio/grpc/n0$g$a;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lio/grpc/n0$g$a;->a()Lio/grpc/n0$g;

    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Lio/grpc/n0;->d(Lio/grpc/n0$g;)V

    .line 34
    sget-object p1, Lio/grpc/Status;->f:Lio/grpc/Status;

    return-object p1
.end method
