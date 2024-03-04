.class final Leh/q0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/q0$b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ldh/d;

.field private c:Lio/grpc/o0;

.field private d:Lio/grpc/ConnectivityState;

.field private e:Lio/grpc/n0$i;

.field private f:Z

.field g:Lio/grpc/d1$c;

.field final synthetic h:Leh/q0;


# direct methods
.method constructor <init>(Leh/q0;Ljava/lang/String;Lio/grpc/o0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Leh/q0$b;->h:Leh/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    iput-object p1, p0, Leh/q0$b;->d:Lio/grpc/ConnectivityState;

    .line 3
    sget-object p1, Leh/t2;->a:Lio/grpc/n0$i;

    iput-object p1, p0, Leh/q0$b;->e:Lio/grpc/n0$i;

    .line 4
    iput-object p2, p0, Leh/q0$b;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Leh/q0$b;->c:Lio/grpc/o0;

    .line 6
    new-instance p1, Ldh/d;

    new-instance p2, Leh/q0$b$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Leh/q0$b$b;-><init>(Leh/q0$b;Leh/q0$a;)V

    invoke-direct {p1, p2}, Ldh/d;-><init>(Lio/grpc/n0$d;)V

    iput-object p1, p0, Leh/q0$b;->b:Ldh/d;

    .line 7
    invoke-virtual {p1, p3}, Ldh/d;->q(Lio/grpc/n0$c;)V

    return-void
.end method

.method static synthetic a(Leh/q0$b;)Ldh/d;
    .locals 0

    iget-object p0, p0, Leh/q0$b;->b:Ldh/d;

    return-object p0
.end method

.method static synthetic b(Leh/q0$b;)Z
    .locals 0

    iget-boolean p0, p0, Leh/q0$b;->f:Z

    return p0
.end method

.method static synthetic c(Leh/q0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/q0$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Leh/q0$b;)Lio/grpc/n0$i;
    .locals 0

    iget-object p0, p0, Leh/q0$b;->e:Lio/grpc/n0$i;

    return-object p0
.end method

.method static synthetic e(Leh/q0$b;Lio/grpc/n0$i;)Lio/grpc/n0$i;
    .locals 0

    iput-object p1, p0, Leh/q0$b;->e:Lio/grpc/n0$i;

    return-object p1
.end method

.method static synthetic f(Leh/q0$b;)Lio/grpc/ConnectivityState;
    .locals 0

    iget-object p0, p0, Leh/q0$b;->d:Lio/grpc/ConnectivityState;

    return-object p0
.end method

.method static synthetic g(Leh/q0$b;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
    .locals 0

    iput-object p1, p0, Leh/q0$b;->d:Lio/grpc/ConnectivityState;

    return-object p1
.end method


# virtual methods
.method h()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Leh/q0$b;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/q0$b;->h:Leh/q0;

    .line 3
    invoke-static {v0}, Leh/q0;->j(Leh/q0;)Lio/grpc/d1;

    move-result-object v1

    new-instance v2, Leh/q0$b$a;

    invoke-direct {v2, p0}, Leh/q0$b$a;-><init>(Leh/q0$b;)V

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Leh/q0$b;->h:Leh/q0;

    .line 4
    invoke-static {v0}, Leh/q0;->i(Leh/q0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    iput-object v0, p0, Leh/q0$b;->g:Lio/grpc/d1$c;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Leh/q0$b;->f:Z

    .line 7
    iget-object v1, p0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v1}, Leh/q0;->k(Leh/q0;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->a:Leh/q2$b;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/q0$b;->a:Ljava/lang/String;

    aput-object v4, v0, v3

    const-string v3, "Child balancer {0} deactivated"

    invoke-virtual {v1, v2, v3, v0}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method i(Lio/grpc/o0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/q0$b;->g:Lio/grpc/d1$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/q0$b;->g:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 3
    iput-boolean v2, p0, Leh/q0$b;->f:Z

    .line 4
    iget-object v0, p0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->k(Leh/q0;)Leh/q2;

    move-result-object v0

    sget-object v3, Leh/q2$b;->a:Leh/q2$b;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Leh/q0$b;->a:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "Child balancer {0} reactivated"

    invoke-virtual {v0, v3, v5, v4}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Leh/q0$b;->c:Lio/grpc/o0;

    invoke-virtual {v0}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->k(Leh/q0;)Leh/q2;

    move-result-object v0

    sget-object v3, Leh/q2$b;->a:Leh/q2$b;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Leh/q0$b;->a:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v2, p0, Leh/q0$b;->c:Lio/grpc/o0;

    .line 7
    invoke-virtual {v2}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Child balancer {0} switching policy from {1} to {2}"

    .line 8
    invoke-virtual {v0, v3, v1, v4}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Leh/q0$b;->b:Ldh/d;

    invoke-virtual {v0, p1}, Ldh/d;->q(Lio/grpc/n0$c;)V

    .line 10
    iput-object p1, p0, Leh/q0$b;->c:Lio/grpc/o0;

    :cond_1
    return-void
.end method

.method j()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/q0$b;->g:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/q0$b;->g:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Leh/q0$b;->b:Ldh/d;

    invoke-virtual {v0}, Ldh/d;->e()V

    .line 4
    iget-object v0, p0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->k(Leh/q0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/q0$b;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Child balancer {0} deleted"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
