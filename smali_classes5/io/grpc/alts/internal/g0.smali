.class public final Lio/grpc/alts/internal/g0;
.super Lpg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/g0$b;
    }
.end annotation


# instance fields
.field private final l:Lio/grpc/alts/internal/w;

.field private final m:Lio/grpc/alts/internal/g0$b;

.field private final n:Lio/grpc/netty/shaded/io/netty/channel/k;

.field private final o:Lio/grpc/alts/internal/n;

.field private p:Lig/f0;

.field private q:Z

.field private final r:Lio/grpc/ChannelLogger;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/alts/internal/w;Lio/grpc/alts/internal/g0$b;Lio/grpc/alts/internal/n;Lio/grpc/ChannelLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpg/a;-><init>()V

    const-string v0, "handshaker"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/alts/internal/w;

    iput-object p2, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    const-string p2, "handshakeValidator"

    .line 3
    invoke-static {p3, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/alts/internal/g0$b;

    iput-object p2, p0, Lio/grpc/alts/internal/g0;->m:Lio/grpc/alts/internal/g0$b;

    const-string p2, "next"

    .line 4
    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/k;

    iput-object p1, p0, Lio/grpc/alts/internal/g0;->n:Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 5
    iput-object p4, p0, Lio/grpc/alts/internal/g0;->o:Lio/grpc/alts/internal/n;

    .line 6
    iput-object p5, p0, Lio/grpc/alts/internal/g0;->r:Lio/grpc/ChannelLogger;

    return-void
.end method

.method static synthetic M(Lio/grpc/alts/internal/g0;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/alts/internal/g0;->R()V

    return-void
.end method

.method static synthetic N(Lio/grpc/alts/internal/g0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/alts/internal/g0;->q:Z

    return p1
.end method

.method static synthetic O(Lio/grpc/alts/internal/g0;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/alts/internal/g0;->S(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method private P(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/alts/internal/j0;Ljava/lang/Object;Lio/grpc/alts/internal/g0$b$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/g0;->p:Lig/f0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "negotiation not yet complete"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/g0;->r:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "TsiHandshake finished"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/g0;->p:Lig/f0;

    .line 4
    invoke-static {v0}, Lig/q;->a(Lig/f0;)Lio/grpc/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v1

    sget-object v2, Lio/grpc/alts/internal/k;->c:Lio/grpc/a$c;

    .line 5
    invoke-virtual {v1, v2, p2}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object p2

    sget-object v1, Lio/grpc/alts/internal/k;->d:Lio/grpc/a$c;

    .line 6
    invoke-virtual {p2, v1, p3}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object p2

    sget-object p3, Lio/grpc/internal/r0;->a:Lio/grpc/a$c;

    .line 7
    invoke-virtual {p4}, Lio/grpc/alts/internal/g0$b$a;->b()Lio/grpc/SecurityLevel;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object p2

    invoke-static {v0, p2}, Lig/q;->b(Lig/f0;Lio/grpc/a;)Lig/f0;

    move-result-object p2

    .line 9
    invoke-virtual {p4}, Lio/grpc/alts/internal/g0$b$a;->a()Lio/grpc/c0$c;

    move-result-object p3

    invoke-static {p2, p3}, Lig/q;->c(Lig/f0;Lio/grpc/c0$c;)Lig/f0;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method private Q(Lio/grpc/netty/shaded/io/netty/channel/m;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/g0;->o:Lio/grpc/alts/internal/n;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->m()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/n;->a(Lio/grpc/netty/shaded/io/netty/channel/m;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/g0;->o:Lio/grpc/alts/internal/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/alts/internal/n;->b()V

    :cond_0
    return-void
.end method

.method private S(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    const/16 v1, 0x400

    invoke-interface {v0, v1}, Lkg/k;->l(I)Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-virtual {v2, v0}, Lio/grpc/alts/internal/w;->f(Lkg/j;)V

    .line 3
    invoke-virtual {v0}, Lkg/j;->j1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v2

    sget-object v3, Lio/grpc/netty/shaded/io/netty/channel/j;->j3:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/s;->release(I)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/s;->release(I)Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "TsiHandshakeHandler encountered exception"

    invoke-direct {v2, v3, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/s;->release(I)Z

    throw p1
.end method


# virtual methods
.method protected I(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/grpc/alts/internal/g0;->q:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/g0;->R()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lio/grpc/alts/internal/g0;->q:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-virtual {p1}, Lio/grpc/alts/internal/w;->b()V

    return-void
.end method

.method public X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lig/f0;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/g0;->p:Lig/f0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "negotiation already started"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    check-cast p2, Lig/f0;

    iput-object p2, p0, Lio/grpc/alts/internal/g0;->p:Lig/f0;

    .line 4
    iget-object p2, p0, Lio/grpc/alts/internal/g0;->r:Lio/grpc/ChannelLogger;

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "TsiHandshake started"

    invoke-virtual {p2, v0, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/g0;->Q(Lio/grpc/netty/shaded/io/netty/channel/m;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Lug/q;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lio/grpc/alts/internal/g0;->q:Z

    .line 8
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/g0;->S(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lio/grpc/alts/internal/g0$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/alts/internal/g0$a;-><init>(Lio/grpc/alts/internal/g0;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_1

    .line 10
    :cond_2
    invoke-super {p0, p1, p2}, Lpg/a;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 6
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
    iget-object p3, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-virtual {p3, p2}, Lio/grpc/alts/internal/w;->h(Lkg/j;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-virtual {p2}, Lio/grpc/alts/internal/w;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/g0;->S(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-virtual {p2}, Lio/grpc/alts/internal/w;->g()Z

    move-result p2

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-virtual {p2}, Lio/grpc/alts/internal/w;->d()Lio/grpc/alts/internal/j0;

    move-result-object p2

    .line 5
    iget-object p3, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-virtual {p3}, Lio/grpc/alts/internal/w;->e()Ljava/lang/Object;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lio/grpc/alts/internal/g0;->m:Lio/grpc/alts/internal/g0$b;

    invoke-virtual {v0, p3}, Lio/grpc/alts/internal/g0$b;->a(Ljava/lang/Object;)Lio/grpc/alts/internal/g0$b$a;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/grpc/alts/internal/g0;->l:Lio/grpc/alts/internal/w;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/w;->c(Lkg/k;)Lio/grpc/alts/internal/f0;

    move-result-object v1

    .line 8
    :try_start_0
    new-instance v2, Lio/grpc/alts/internal/e0;

    invoke-direct {v2, v1}, Lio/grpc/alts/internal/e0;-><init>(Lio/grpc/alts/internal/f0;)V

    .line 9
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v3

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->x0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 10
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v3

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v4

    invoke-interface {v4, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->W0(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lio/grpc/alts/internal/g0;->n:Lio/grpc/netty/shaded/io/netty/channel/k;

    invoke-interface {v3, v2, v5, v4}, Lio/grpc/netty/shaded/io/netty/channel/w;->x0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 11
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/w;->remove(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/alts/internal/g0;->P(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/alts/internal/j0;Ljava/lang/Object;Lio/grpc/alts/internal/g0$b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v1}, Lio/grpc/alts/internal/f0;->destroy()V

    :cond_1
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method protected y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 0
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

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/alts/internal/g0;->x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    return-void
.end method
