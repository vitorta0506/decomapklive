.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;
    }
.end annotation


# instance fields
.field private final p:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;

.field private final q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;-><init>(I)V

    const-string p3, "sourceCodec"

    .line 2
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->p:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;

    const-string p1, "upgradeCodec"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;

    return-void
.end method

.method private static h0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/w;->remove(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/k;

    return-void
.end method

.method private i0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->s0:Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;->protocol()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;

    invoke-interface {v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->Z:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->s:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->d(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method


# virtual methods
.method public V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/v;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->r:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to write HTTP request with upgrade in progress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->r:Z

    .line 6
    move-object v0, p2

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->i0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V

    .line 7
    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 8
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_ISSUED:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method protected g0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->r:Z

    if-eqz v1, :cond_5

    .line 2
    instance-of v1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p2

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    .line 4
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_REJECTED:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    invoke-interface {p1, p3}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->h0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 7
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void

    .line 8
    :cond_0
    instance-of v1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    if-eqz v1, :cond_1

    .line 9
    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;->retain()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    .line 11
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v0, p2

    goto :goto_1

    :catchall_0
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    goto :goto_3

    .line 12
    :cond_1
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lpg/k;->u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V

    .line 13
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 14
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    goto :goto_0

    .line 15
    :goto_1
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p2

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->s0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->F(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;->protocol()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Lio/grpc/netty/shaded/io/netty/util/c;->l(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching Protocols response with unexpected UPGRADE protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 18
    :cond_4
    :goto_2
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->p:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;->i(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 19
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;

    invoke-interface {p2, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;->b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;)V

    .line 20
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_SUCCESSFUL:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 21
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->p:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;->f(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 22
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 23
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 24
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->h0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_4

    .line 25
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Read HTTP response without requesting protocol switch"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 26
    :goto_3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 28
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->h0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :goto_4
    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public o(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method protected bridge synthetic u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;->g0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;Ljava/util/List;)V

    return-void
.end method
