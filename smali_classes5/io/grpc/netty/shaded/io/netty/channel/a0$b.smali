.class Lio/grpc/netty/shaded/io/netty/channel/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field private final b:Lio/grpc/netty/shaded/io/netty/channel/k;

.field c:Z


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/k;

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/channel/a0$b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/k;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/k;->E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".handlerRemoved() has thrown an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->B(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public F()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method public J()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    return-object v0
.end method

.method public L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public N()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method public P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    return-object v0
.end method

.method public Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->e()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/a0$b$a;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/a0$b$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a0$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public close()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    return-object v0
.end method

.method public f0()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public flush()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public k()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public m()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->m()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public m0()Lug/j;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v0

    return-object v0
.end method

.method public n0()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->n0()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public q()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->q()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public read()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public u(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->u(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public w()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->w()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public x()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->x()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public y()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->y()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public z()Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    return-object v0
.end method
