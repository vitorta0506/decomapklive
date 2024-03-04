.class final Lhg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhg/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg/b$c;,
        Lhg/b$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/grpc/x;",
            "Lhg/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/n0$d;

.field private c:Lhg/k$a;


# direct methods
.method public constructor <init>(Lio/grpc/n0$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhg/b;->a:Ljava/util/HashMap;

    const-string v0, "helper"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Lhg/b;->b:Lio/grpc/n0$d;

    return-void
.end method

.method static synthetic d(Lhg/b;Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lhg/b;->g(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method

.method static synthetic e(Lhg/b;)Lhg/k$a;
    .locals 0

    iget-object p0, p0, Lhg/b;->c:Lhg/k$a;

    return-object p0
.end method

.method static synthetic f(Lhg/b;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lhg/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private g(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/grpc/n0$h;->b()Lio/grpc/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg/b$c;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lhg/b$c;->a:Lio/grpc/n0$h;

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p2, v0, Lhg/b$c;->c:Lio/grpc/q;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/grpc/x;Lio/grpc/a;)Lio/grpc/n0$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg/b$c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lhg/b;->b:Lio/grpc/n0$d;

    .line 3
    invoke-static {}, Lio/grpc/n0$b;->c()Lio/grpc/n0$b$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lio/grpc/n0$b$a;->d(Lio/grpc/x;)Lio/grpc/n0$b$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lio/grpc/n0$b$a;->f(Lio/grpc/a;)Lio/grpc/n0$b$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object p1

    .line 8
    new-instance p2, Lhg/b$a;

    invoke-direct {p2, p0, p1}, Lhg/b$a;-><init>(Lhg/b;Lio/grpc/n0$h;)V

    invoke-virtual {p1, p2}, Lio/grpc/n0$h;->i(Lio/grpc/n0$j;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, v0, Lhg/b$c;->a:Lio/grpc/n0$h;

    .line 10
    iget-object p2, v0, Lhg/b$c;->b:Lio/grpc/d1$c;

    invoke-virtual {p2}, Lio/grpc/d1$c;->a()V

    .line 11
    iget-object p2, p0, Lhg/b;->b:Lio/grpc/n0$d;

    invoke-virtual {p2}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object p2

    new-instance v1, Lhg/b$b;

    invoke-direct {v1, p0, p1, v0}, Lhg/b$b;-><init>(Lhg/b;Lio/grpc/n0$h;Lhg/b$c;)V

    invoke-virtual {p2, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p1
.end method

.method public b(Lhg/k$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhg/k$a;

    iput-object p1, p0, Lhg/b;->c:Lhg/k$a;

    return-void
.end method

.method public c(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lhg/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/grpc/n0$h;->b()Lio/grpc/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg/b$c;

    if-eqz v0, :cond_1

    .line 2
    iget-object p2, v0, Lhg/b$c;->a:Lio/grpc/n0$h;

    if-eq p2, p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/grpc/n0$h;->h()V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v1, Lhg/b$d;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lhg/b$d;-><init>(Lhg/b;Lio/grpc/n0$h;Lhg/b$a;)V

    .line 5
    iget-object v0, p0, Lhg/b;->b:Lio/grpc/n0$d;

    .line 6
    invoke-virtual {v0}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object v0

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lhg/b;->b:Lio/grpc/n0$d;

    .line 7
    invoke-virtual {v5}, Lio/grpc/n0$d;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    .line 9
    new-instance v1, Lhg/b$c;

    invoke-direct {v1, p1, v0, p2}, Lhg/b$c;-><init>(Lio/grpc/n0$h;Lio/grpc/d1$c;Lio/grpc/q;)V

    .line 10
    iget-object p2, p0, Lhg/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/grpc/n0$h;->b()Lio/grpc/x;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhg/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhg/b$c;

    .line 2
    iget-object v2, v1, Lhg/b$c;->b:Lio/grpc/d1$c;

    invoke-virtual {v2}, Lio/grpc/d1$c;->a()V

    .line 3
    iget-object v1, v1, Lhg/b$c;->a:Lio/grpc/n0$h;

    invoke-virtual {v1}, Lio/grpc/n0$h;->h()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lhg/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
