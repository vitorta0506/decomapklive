.class Leh/s0$c$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/s0$c$c$b;->a(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Leh/s0$c$c$b;


# direct methods
.method constructor <init>(Leh/s0$c$c$b;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iput-object p2, p0, Leh/s0$c$c$b$a;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-boolean v1, v0, Leh/s0$c$a;->h:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Leh/s0$c$c$b$a;->a:Lio/grpc/Status;

    iput-object v1, v0, Leh/s0$c$a;->e:Lio/grpc/Status;

    .line 3
    iget-boolean v1, v0, Leh/s0$c$a;->f:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4
    iput-boolean v2, v0, Leh/s0$c$a;->f:Z

    .line 5
    iget-object v0, v0, Leh/s0$c$c;->p:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->g(Leh/s0$c;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Leh/s0$c$c;->p:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->h(Leh/s0$c;)V

    .line 7
    :goto_0
    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    invoke-static {v0}, Leh/s0$c$c;->i(Leh/s0$c$c;)Lio/grpc/d1$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    invoke-static {v0}, Leh/s0$c$c;->i(Leh/s0$c$c;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    invoke-static {v0}, Leh/s0$c$c;->l(Leh/s0$c$c;)Lio/grpc/internal/k;

    move-result-object v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v1, v0, Leh/s0$c$c;->p:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->n(Leh/s0;)Lio/grpc/internal/k$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/k$a;->get()Lio/grpc/internal/k;

    move-result-object v1

    invoke-static {v0, v1}, Leh/s0$c$c;->m(Leh/s0$c$c;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 10
    :cond_3
    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    invoke-static {v0}, Leh/s0$c$c;->l(Leh/s0$c$c;)Lio/grpc/internal/k;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k;->a()J

    move-result-wide v5

    .line 11
    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v0, v0, Leh/s0$c$c;->p:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v7, v7, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v7, v7, Leh/s0$c$a;->a:Ljava/lang/String;

    aput-object v7, v3, v4

    iget-object v4, p0, Leh/s0$c$c$b$a;->a:Lio/grpc/Status;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Logical DNS resolver for cluster {0} encountered name resolution error: {1}, scheduling DNS resolution backoff for {2} ns"

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v1, v0, Leh/s0$c$c;->p:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    .line 15
    invoke-static {v1}, Leh/s0;->j(Leh/s0;)Lio/grpc/d1;

    move-result-object v3

    new-instance v4, Leh/s0$c$c$a;

    iget-object v1, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v1, v1, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Leh/s0$c$c$a;-><init>(Leh/s0$c$c;Leh/s0$a;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Leh/s0$c$c$b$a;->b:Leh/s0$c$c$b;

    iget-object v1, v1, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v1, v1, Leh/s0$c$c;->p:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    .line 16
    invoke-static {v1}, Leh/s0;->o(Leh/s0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 17
    invoke-virtual/range {v3 .. v8}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Leh/s0$c$c;->j(Leh/s0$c$c;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    return-void
.end method
