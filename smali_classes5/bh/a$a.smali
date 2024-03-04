.class final Lbh/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/n0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh/a$a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Lio/grpc/d1;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lbh/a$c;

.field private final e:Lio/grpc/n0$h;

.field private final f:Lio/grpc/ChannelLogger;

.field private g:Lio/grpc/n0$j;

.field private h:Lbh/a$a$b;

.field private i:Ljava/lang/String;

.field private j:Lio/grpc/internal/k;

.field private k:Lio/grpc/q;

.field private l:Lio/grpc/q;

.field private m:Z

.field private n:Z

.field private o:Lio/grpc/d1$c;

.field final synthetic p:Lbh/a;


# direct methods
.method constructor <init>(Lbh/a;Lbh/a$c;Lio/grpc/n0$h;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lbh/a$a;->p:Lbh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lbh/a$a$a;

    invoke-direct {p1, p0}, Lbh/a$a$a;-><init>(Lbh/a$a;)V

    iput-object p1, p0, Lbh/a$a;->a:Ljava/lang/Runnable;

    .line 3
    sget-object p1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {p1}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v0

    iput-object v0, p0, Lbh/a$a;->k:Lio/grpc/q;

    .line 4
    invoke-static {p1}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object p1

    iput-object p1, p0, Lbh/a$a;->l:Lio/grpc/q;

    const-string p1, "helperImpl"

    .line 5
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbh/a$c;

    iput-object p1, p0, Lbh/a$a;->d:Lbh/a$c;

    const-string p1, "subchannel"

    .line 6
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$h;

    iput-object p1, p0, Lbh/a$a;->e:Lio/grpc/n0$h;

    .line 7
    invoke-virtual {p3}, Lio/grpc/n0$h;->e()Lio/grpc/ChannelLogger;

    move-result-object p1

    const-string p2, "subchannelLogger"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ChannelLogger;

    iput-object p1, p0, Lbh/a$a;->f:Lio/grpc/ChannelLogger;

    const-string p1, "syncContext"

    .line 8
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d1;

    iput-object p1, p0, Lbh/a$a;->b:Lio/grpc/d1;

    const-string p1, "timerService"

    .line 9
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lbh/a$a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic b(Lbh/a$a;)V
    .locals 0

    invoke-direct {p0}, Lbh/a$a;->w()V

    return-void
.end method

.method static synthetic c(Lbh/a$a;)Lio/grpc/q;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->k:Lio/grpc/q;

    return-object p0
.end method

.method static synthetic d(Lbh/a$a;)Z
    .locals 0

    invoke-direct {p0}, Lbh/a$a;->u()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lbh/a$a;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Lbh/a$a;->o:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic f(Lbh/a$a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lbh/a$a;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic h(Lbh/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lbh/a$a;)Lio/grpc/n0$h;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->e:Lio/grpc/n0$h;

    return-object p0
.end method

.method static synthetic j(Lbh/a$a;)Lbh/a$a$b;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->h:Lbh/a$a$b;

    return-object p0
.end method

.method static synthetic k(Lbh/a$a;Lbh/a$a$b;)Lbh/a$a$b;
    .locals 0

    iput-object p1, p0, Lbh/a$a;->h:Lbh/a$a$b;

    return-object p1
.end method

.method static synthetic l(Lbh/a$a;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->b:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic m(Lbh/a$a;)Lio/grpc/internal/k;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->j:Lio/grpc/internal/k;

    return-object p0
.end method

.method static synthetic n(Lbh/a$a;Lio/grpc/internal/k;)Lio/grpc/internal/k;
    .locals 0

    iput-object p1, p0, Lbh/a$a;->j:Lio/grpc/internal/k;

    return-object p1
.end method

.method static synthetic o(Lbh/a$a;)Lio/grpc/ChannelLogger;
    .locals 0

    iget-object p0, p0, Lbh/a$a;->f:Lio/grpc/ChannelLogger;

    return-object p0
.end method

.method static synthetic p(Lbh/a$a;Lio/grpc/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lbh/a$a;->s(Lio/grpc/q;)V

    return-void
.end method

.method static synthetic q(Lbh/a$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbh/a$a;->n:Z

    return p1
.end method

.method private r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbh/a$a;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbh/a$a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbh/a$a;->k:Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-static {v0, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lbh/a$a;->m:Z

    .line 3
    iget-object v0, p0, Lbh/a$a;->h:Lbh/a$a$b;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lbh/a$a;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lbh/a$a;->w()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lbh/a$a;->m:Z

    const-string v0, "Client stops health check"

    .line 6
    invoke-direct {p0, v0}, Lbh/a$a;->x(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lbh/a$a;->j:Lio/grpc/internal/k;

    .line 8
    iget-object v0, p0, Lbh/a$a;->k:Lio/grpc/q;

    invoke-direct {p0, v0}, Lbh/a$a;->s(Lio/grpc/q;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private s(Lio/grpc/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbh/a$a;->e:Lio/grpc/n0$h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "init() not called"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lbh/a$a;->l:Lio/grpc/q;

    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lbh/a$a;->l:Lio/grpc/q;

    .line 4
    iget-object v0, p0, Lbh/a$a;->g:Lio/grpc/n0$j;

    invoke-interface {v0, p1}, Lio/grpc/n0$j;->a(Lio/grpc/q;)V

    :cond_1
    return-void
.end method

.method private u()Z
    .locals 1

    iget-object v0, p0, Lbh/a$a;->o:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbh/a$a;->i:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "serviceName is null"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lbh/a$a;->h:Lbh/a$a$b;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "previous health-checking RPC has not been cleaned up"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lbh/a$a;->e:Lio/grpc/n0$h;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v3, "init() not called"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lbh/a$a;->l:Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v3, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-static {v0, v3}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lbh/a$a;->f:Lio/grpc/ChannelLogger;

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lbh/a$a;->i:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "CONNECTING: Starting health-check for \"{0}\""

    invoke-virtual {v0, v3, v2, v1}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    invoke-static {v0}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lbh/a$a;->s(Lio/grpc/q;)V

    .line 7
    :cond_3
    new-instance v0, Lbh/a$a$b;

    invoke-direct {v0, p0}, Lbh/a$a$b;-><init>(Lbh/a$a;)V

    iput-object v0, p0, Lbh/a$a;->h:Lbh/a$a$b;

    .line 8
    invoke-virtual {v0}, Lbh/a$a$b;->i()V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbh/a$a;->h:Lbh/a$a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lbh/a$a$b;->e(Ljava/lang/String;)V

    .line 3
    iput-object v1, p0, Lbh/a$a;->h:Lbh/a$a$b;

    .line 4
    :cond_0
    iget-object p1, p0, Lbh/a$a;->o:Lio/grpc/d1$c;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lio/grpc/d1$c;->a()V

    .line 6
    iput-object v1, p0, Lbh/a$a;->o:Lio/grpc/d1$c;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lio/grpc/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbh/a$a;->k:Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-static {v0, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lbh/a$a;->n:Z

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    invoke-static {v0, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lbh/a$a;->d:Lbh/a$c;

    iget-object v0, v0, Lbh/a$c;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iput-object p1, p0, Lbh/a$a;->k:Lio/grpc/q;

    .line 7
    invoke-direct {p0}, Lbh/a$a;->r()V

    return-void
.end method

.method t(Lio/grpc/n0$j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbh/a$a;->g:Lio/grpc/n0$j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "init() already called"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const-string v0, "listener"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$j;

    iput-object p1, p0, Lbh/a$a;->g:Lio/grpc/n0$j;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lbh/a$a;->m:Z

    const-string v2, "running"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lbh/a$a;->n:Z

    const-string v2, "disabled"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lbh/a$a;->h:Lbh/a$a$b;

    const-string v2, "activeRpc"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lbh/a$a;->i:Ljava/lang/String;

    const-string v2, "serviceName"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lbh/a$a;->k:Lio/grpc/q;

    const-string v2, "rawState"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lbh/a$a;->l:Lio/grpc/q;

    const-string v2, "concludedState"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbh/a$a;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lbh/a$a;->i:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "Health check disabled by service config"

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to new service name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-direct {p0, p1}, Lbh/a$a;->x(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lbh/a$a;->r()V

    return-void
.end method
