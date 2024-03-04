.class public final Lio/grpc/alts/internal/e0;
.super Lpg/a;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/t;


# static fields
.field private static final o:Ljava/util/logging/Logger;


# instance fields
.field private l:Lio/grpc/alts/internal/f0;

.field private m:Lio/grpc/netty/shaded/io/netty/channel/u0;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/alts/internal/e0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/e0;->o:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/grpc/alts/internal/f0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpg/a;-><init>()V

    const-string v0, "protector"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/f0;

    iput-object p1, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    return-void
.end method

.method private M()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/u0;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string v3, "Pending write on teardown of TSI handler"

    invoke-direct {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/u0;->g(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :cond_0
    iput-object v0, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    .line 4
    iget-object v1, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v1}, Lio/grpc/alts/internal/f0;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iput-object v0, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    throw v1

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception v1

    .line 7
    iput-object v0, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    throw v1
.end method

.method private N(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/grpc/alts/internal/e0;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/alts/internal/e0;->n:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/e0;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/grpc/alts/internal/e0;->M()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    sget-object v0, Lio/grpc/alts/internal/e0;->o:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Ignored error on flush before close"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 7
    :goto_2
    invoke-direct {p0}, Lio/grpc/alts/internal/e0;->M()V

    throw p1
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/l;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/u0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    iput-object v0, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    return-void
.end method

.method public I(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/alts/internal/e0;->M()V

    return-void
.end method

.method public V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/v;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "write() called after close()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    .line 3
    :cond_0
    check-cast p2, Lkg/j;

    .line 4
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-virtual {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/u0;->a(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/e0;->N(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/e0;->N(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "flush() called after close()"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lio/grpc/alts/internal/y;

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/channel/u0;->j()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/alts/internal/y;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;I)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/u0;->j()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :goto_1
    iget-object v2, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/u0;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iget-object v2, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/u0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkg/j;

    .line 8
    invoke-virtual {v2}, Lkg/j;->T1()Lkg/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lio/grpc/alts/internal/e0;->m:Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/u0;->f()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/alts/internal/y;->n0(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    new-instance v3, Lio/grpc/alts/internal/e0$a;

    invoke-direct {v3, p0, p1, v0}, Lio/grpc/alts/internal/e0$a;-><init>(Lio/grpc/alts/internal/e0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/alts/internal/y;)V

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p1

    invoke-interface {v2, v1, v3, p1}, Lio/grpc/alts/internal/f0;->b(Ljava/util/List;Lio/grpc/alts/internal/f0$a;Lkg/k;)V

    .line 11
    invoke-virtual {v0}, Lio/grpc/alts/internal/y;->t0()Lio/grpc/netty/shaded/io/netty/channel/y;

    :cond_3
    :goto_2
    return-void
.end method

.method public o(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method protected x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
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

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "decode() called after close()"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/e0;->l:Lio/grpc/alts/internal/f0;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p1

    invoke-interface {v0, p2, p3, p1}, Lio/grpc/alts/internal/f0;->a(Lkg/j;Ljava/util/List;Lkg/k;)V

    return-void
.end method
