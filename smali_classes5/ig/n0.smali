.class final Lig/n0;
.super Lio/grpc/netty/shaded/io/netty/channel/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/n0$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lig/n0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/grpc/netty/shaded/io/netty/channel/k;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lig/n0;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lig/n0;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lig/n0;->b:Ljava/util/Queue;

    const-string v0, "next"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/k;

    iput-object p1, p0, Lig/n0;->c:Lio/grpc/netty/shaded/io/netty/channel/k;

    return-void
.end method

.method static synthetic s()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lig/n0;->g:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic u(Lig/n0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lig/n0;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method private v(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lig/n0;->f:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lig/n0;->f:Ljava/lang/Throwable;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lig/n0;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Ignoring duplicate failure"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lig/n0;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lig/n0;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lig/n0$c;

    .line 6
    iget-object v1, v0, Lig/n0$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 7
    iget-object v0, v0, Lig/n0$c;->a:Ljava/lang/Object;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lig/n0;->c:Lio/grpc/netty/shaded/io/netty/channel/k;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->J0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 2
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/l;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    sget-object v0, Lig/f0;->c:Lig/f0;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method

.method public E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/n0;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v1, "Buffer removed before draining writes"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-direct {p0, v0}, Lig/n0;->v(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/l;->E(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/g;->V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 2
    new-instance p1, Lig/n0$a;

    invoke-direct {p1, p0}, Lig/n0$a;-><init>(Lig/n0;)V

    invoke-interface {p4, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method

.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lig/n0;->f:Ljava/lang/Throwable;

    .line 2
    invoke-static {p2}, Lig/m0;->s(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel Pipeline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->names()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p2

    invoke-direct {p0, p2}, Lig/n0;->v(Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    new-instance p2, Lig/n0$b;

    invoke-direct {p2, p0}, Lig/n0$b;-><init>(Lig/n0;)V

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :cond_0
    return-void
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lig/n0;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 3
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p2, Lig/i;

    if-nez v0, :cond_1

    instance-of v0, p2, Lig/h;

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 6
    :cond_2
    iget-object p1, p0, Lig/n0;->b:Ljava/util/Queue;

    new-instance v0, Lig/n0$c;

    invoke-direct {v0, p2, p3}, Lig/n0$c;-><init>(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lig/n0;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    instance-of v2, p2, Lkg/j;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lkg/j;

    invoke-static {v2}, Lkg/n;->v(Lkg/j;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const-string v3, "Unexpected channelRead()->{0} reached end of pipeline {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/channel/w;->names()Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v2

    .line 4
    invoke-virtual {v0, v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelRead() missed by ProtocolNegotiator handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lig/n0;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closing while performing protocol negotiation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->names()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-direct {p0, v0}, Lig/n0;->v(Ljava/lang/Throwable;)V

    .line 5
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/g;->l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lig/n0;->e:Z

    return-void
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closed while performing protocol negotiation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/w;->names()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-direct {p0, p1}, Lig/n0;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method final w(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lig/n0;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lig/n0;->d:Z

    .line 3
    :goto_0
    iget-object v0, p0, Lig/n0;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lig/n0;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lig/n0$c;

    .line 5
    iget-object v1, v0, Lig/n0$c;->a:Ljava/lang/Object;

    iget-object v0, v0, Lig/n0$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lig/n0;->e:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 8
    :cond_2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/w;->O0(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :cond_3
    :goto_1
    return-void
.end method
