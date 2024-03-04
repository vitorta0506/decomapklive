.class final Leh/v1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/v1$a$c;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Leh/v1$a$c;

.field final c:Ldh/d;

.field final d:Lio/grpc/d1$c;

.field e:Lio/grpc/d1$c;

.field f:Ljava/lang/String;

.field g:Lio/grpc/ConnectivityState;

.field h:Lio/grpc/n0$i;

.field final synthetic i:Leh/v1;


# direct methods
.method constructor <init>(Leh/v1;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iput-object p1, p0, Leh/v1$a;->i:Leh/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Leh/v1$a;->g:Lio/grpc/ConnectivityState;

    .line 3
    sget-object v0, Leh/t2;->a:Lio/grpc/n0$i;

    iput-object v0, p0, Leh/v1$a;->h:Lio/grpc/n0$i;

    .line 4
    iput-object p2, p0, Leh/v1$a;->a:Ljava/lang/String;

    .line 5
    new-instance v0, Leh/v1$a$c;

    invoke-direct {v0, p0, p3}, Leh/v1$a$c;-><init>(Leh/v1$a;Z)V

    iput-object v0, p0, Leh/v1$a;->b:Leh/v1$a$c;

    .line 6
    new-instance p3, Ldh/d;

    invoke-direct {p3, v0}, Ldh/d;-><init>(Lio/grpc/n0$d;)V

    iput-object p3, p0, Leh/v1$a;->c:Ldh/d;

    .line 7
    invoke-static {p1}, Leh/v1;->j(Leh/v1;)Lio/grpc/d1;

    move-result-object v1

    new-instance v2, Leh/v1$a$b;

    invoke-direct {v2, p0, p2}, Leh/v1$a$b;-><init>(Leh/v1$a;Ljava/lang/String;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Leh/v1;->i(Leh/v1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    const-wide/16 v3, 0xa

    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object p3

    iput-object p3, p0, Leh/v1$a;->d:Lio/grpc/d1$c;

    .line 8
    invoke-static {p1}, Leh/v1;->f(Leh/v1;)Leh/q2;

    move-result-object p1

    sget-object p3, Leh/q2$b;->a:Leh/q2$b;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Priority created: {0}"

    invoke-virtual {p1, p3, p2, v0}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .line 1
    iget-object v0, p0, Leh/v1$a;->e:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->j(Leh/v1;)Lio/grpc/d1;

    move-result-object v1

    new-instance v2, Leh/v1$a$a;

    invoke-direct {v2, p0}, Leh/v1$a$a;-><init>(Leh/v1$a;)V

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->i(Leh/v1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    iput-object v0, p0, Leh/v1$a;->e:Lio/grpc/d1$c;

    .line 3
    iget-object v0, p0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->f(Leh/v1;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/v1$a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Priority deactivated: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method b()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/v1$a;->e:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/v1$a;->e:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 3
    iget-object v0, p0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->f(Leh/v1;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/v1$a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Priority reactivated: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/v1$a;->d:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/v1$a;->d:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Leh/v1$a;->e:Lio/grpc/d1$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Leh/v1$a;->e:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 5
    :cond_1
    iget-object v0, p0, Leh/v1$a;->c:Ldh/d;

    invoke-virtual {v0}, Ldh/d;->e()V

    .line 6
    iget-object v0, p0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->f(Leh/v1;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/v1$a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Priority deleted: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method d()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/v1$a;->i:Leh/v1;

    .line 2
    invoke-static {v0}, Leh/v1;->l(Leh/v1;)Lio/grpc/n0$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/w1$a;

    .line 3
    iget-object v0, v0, Leh/w1$a;->a:Ljava/util/Map;

    iget-object v1, p0, Leh/v1$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/w1$a$a;

    iget-object v0, v0, Leh/w1$a$a;->a:Lio/grpc/internal/e2$b;

    .line 4
    invoke-virtual {v0}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Leh/v1$a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iput-object v2, p0, Leh/v1$a;->f:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Leh/v1$a;->c:Ldh/d;

    invoke-virtual {v2, v1}, Ldh/d;->q(Lio/grpc/n0$c;)V

    .line 9
    :cond_0
    iget-object v1, p0, Leh/v1$a;->c:Ldh/d;

    iget-object v2, p0, Leh/v1$a;->i:Leh/v1;

    .line 10
    invoke-static {v2}, Leh/v1;->l(Leh/v1;)Lio/grpc/n0$g;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/n0$g;->e()Lio/grpc/n0$g$a;

    move-result-object v2

    iget-object v3, p0, Leh/v1$a;->i:Leh/v1;

    .line 11
    invoke-static {v3}, Leh/v1;->l(Leh/v1;)Lio/grpc/n0$g;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Leh/v1$a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Leh/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/n0$g$a;->b(Ljava/util/List;)Lio/grpc/n0$g$a;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lio/grpc/internal/e2$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/grpc/n0$g$a;->d(Ljava/lang/Object;)Lio/grpc/n0$g$a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/grpc/n0$g$a;->a()Lio/grpc/n0$g;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Ldh/a;->d(Lio/grpc/n0$g;)V

    return-void
.end method
