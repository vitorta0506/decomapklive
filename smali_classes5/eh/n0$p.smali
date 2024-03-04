.class final Leh/n0$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "p"
.end annotation


# instance fields
.field private final a:Leh/j0$d;

.field private final b:Leh/a;

.field private final c:Leh/a$f;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leh/p2$m;",
            ">;"
        }
    .end annotation
.end field

.field private f:Leh/p2$l;

.field private g:Z

.field private h:Lio/grpc/d1$c;

.field private i:Leh/p2$j;

.field final synthetic j:Leh/n0;


# direct methods
.method constructor <init>(Leh/n0;Leh/a$f;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Leh/n0$p;->j:Leh/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Leh/n0;->H(Leh/n0;)Lio/grpc/d1;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 4
    iput-object p2, p0, Leh/n0$p;->c:Leh/a$f;

    .line 5
    iput-object p3, p0, Leh/n0$p;->d:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p3}, Leh/n0$p;->h(Ljava/lang/String;)Leh/j0$d;

    move-result-object p2

    iput-object p2, p0, Leh/n0$p;->a:Leh/j0$d;

    .line 7
    invoke-static {}, Leh/p2$j;->h()Leh/p2$j;

    move-result-object p3

    iput-object p3, p0, Leh/n0$p;->i:Leh/p2$j;

    .line 8
    invoke-static {p1, p2}, Leh/n0;->I(Leh/n0;Leh/j0$d;)V

    .line 9
    invoke-static {p1}, Leh/n0;->y(Leh/n0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/a;

    iput-object p1, p0, Leh/n0$p;->b:Leh/a;

    .line 10
    invoke-virtual {p1}, Leh/a;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Leh/n0$p;->p()V

    return-void
.end method

.method static synthetic a(Leh/n0$p;)Leh/a;
    .locals 0

    iget-object p0, p0, Leh/n0$p;->b:Leh/a;

    return-object p0
.end method

.method static synthetic b(Leh/n0$p;)Leh/p2$l;
    .locals 0

    iget-object p0, p0, Leh/n0$p;->f:Leh/p2$l;

    return-object p0
.end method

.method static synthetic c(Leh/n0$p;)Leh/a$f;
    .locals 0

    iget-object p0, p0, Leh/n0$p;->c:Leh/a$f;

    return-object p0
.end method

.method static synthetic d(Leh/n0$p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/n0$p;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Leh/n0$p;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic f(Leh/n0$p;)Leh/j0$d;
    .locals 0

    iget-object p0, p0, Leh/n0$p;->a:Leh/j0$d;

    return-object p0
.end method

.method private h(Ljava/lang/String;)Leh/j0$d;
    .locals 2

    const-string v0, "xdstp:"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 4
    :cond_0
    iget-object v0, p0, Leh/n0$p;->j:Leh/n0;

    invoke-static {v0}, Leh/n0;->J(Leh/n0;)Leh/j0$b;

    move-result-object v0

    invoke-virtual {v0}, Leh/j0$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j0$a;

    .line 5
    invoke-virtual {p1}, Leh/j0$a;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j0$d;

    return-object p1

    .line 6
    :cond_1
    iget-object p1, p0, Leh/n0$p;->j:Leh/n0;

    invoke-static {p1}, Leh/n0;->J(Leh/n0;)Leh/j0$b;

    move-result-object p1

    invoke-virtual {p1}, Leh/j0$b;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j0$d;

    return-object p1
.end method

.method private j(Leh/p2$m;Leh/p2$l;)V
    .locals 2

    .line 1
    sget-object v0, Leh/n0$e;->j:[I

    iget-object v1, p0, Leh/n0$p;->c:Leh/a$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Leh/p2$d;

    check-cast p2, Leh/p2$e;

    invoke-interface {p1, p2}, Leh/p2$d;->d(Leh/p2$e;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "should never be here"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    check-cast p1, Leh/p2$b;

    check-cast p2, Leh/p2$c;

    invoke-interface {p1, p2}, Leh/p2$b;->f(Leh/p2$c;)V

    goto :goto_0

    .line 5
    :cond_2
    check-cast p1, Leh/p2$h;

    check-cast p2, Leh/p2$i;

    invoke-interface {p1, p2}, Leh/p2$h;->c(Leh/p2$i;)V

    goto :goto_0

    .line 6
    :cond_3
    check-cast p1, Leh/p2$f;

    check-cast p2, Leh/p2$g;

    invoke-interface {p1, p2}, Leh/p2$f;->e(Leh/p2$g;)V

    :goto_0
    return-void
.end method


# virtual methods
.method g(Leh/p2$m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "watcher %s already registered"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Leh/n0$p;->f:Leh/p2$l;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1, v0}, Leh/n0$p;->j(Leh/p2$m;Leh/p2$l;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Leh/n0$p;->g:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Leh/n0$p;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Leh/p2$m;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method k()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/n0$p;->j:Leh/n0;

    invoke-static {v0}, Leh/n0;->x(Leh/n0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/n0$p;->c:Leh/a$f;

    aput-object v4, v2, v3

    iget-object v3, p0, Leh/n0$p;->d:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Conclude {0} resource {1} not exist"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Leh/n0$p;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Leh/n0$p;->f:Leh/p2$l;

    .line 5
    iput-boolean v4, p0, Leh/n0$p;->g:Z

    .line 6
    invoke-static {}, Leh/p2$j;->e()Leh/p2$j;

    move-result-object v0

    iput-object v0, p0, Leh/n0$p;->i:Leh/p2$j;

    .line 7
    iget-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/p2$m;

    .line 8
    iget-object v2, p0, Leh/n0$p;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Leh/p2$m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method l(Leh/n0$n;Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    .line 4
    :cond_0
    invoke-static {p1}, Leh/n0$n;->a(Leh/n0$n;)Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Leh/p2$j;->d(Lcom/google/protobuf/Any;Ljava/lang/String;J)Leh/p2$j;

    move-result-object p2

    iput-object p2, p0, Leh/n0$p;->i:Leh/p2$j;

    .line 5
    iget-object p2, p0, Leh/n0$p;->f:Leh/p2$l;

    .line 6
    invoke-static {p1}, Leh/n0$n;->b(Leh/n0$n;)Leh/p2$l;

    move-result-object p1

    iput-object p1, p0, Leh/n0$p;->f:Leh/p2$l;

    const/4 p3, 0x0

    .line 7
    iput-boolean p3, p0, Leh/n0$p;->g:Z

    .line 8
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leh/p2$m;

    .line 10
    iget-object p3, p0, Leh/n0$p;->f:Leh/p2$l;

    invoke-direct {p0, p2, p3}, Leh/n0$p;->j(Leh/p2$m;Leh/p2$l;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method m(Lio/grpc/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    .line 4
    :cond_0
    iget-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/p2$m;

    .line 5
    invoke-interface {v1, p1}, Leh/p2$m;->a(Lio/grpc/Status;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method n(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/n0$p;->i:Leh/p2$j;

    .line 2
    invoke-static {v0, p1, p2, p3, p4}, Leh/p2$j;->f(Leh/p2$j;Ljava/lang/String;JLjava/lang/String;)Leh/p2$j;

    move-result-object p1

    iput-object p1, p0, Leh/n0$p;->i:Leh/p2$j;

    return-void
.end method

.method o(Leh/p2$m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "watcher %s not registered"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/n0$p;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method p()V
    .locals 7

    .line 1
    iget-object v0, p0, Leh/n0$p;->f:Leh/p2$l;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Leh/n0$p;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Leh/p2$j;->g()Leh/p2$j;

    move-result-object v0

    iput-object v0, p0, Leh/n0$p;->i:Leh/p2$j;

    .line 3
    iget-object v0, p0, Leh/n0$p;->j:Leh/n0;

    invoke-static {v0}, Leh/n0;->H(Leh/n0;)Lio/grpc/d1;

    move-result-object v1

    new-instance v2, Leh/n0$p$a;

    invoke-direct {v2, p0}, Leh/n0$p$a;-><init>(Leh/n0$p;)V

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Leh/n0$p;->j:Leh/n0;

    .line 4
    invoke-static {v0}, Leh/n0;->K(Leh/n0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    iput-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    :cond_1
    :goto_0
    return-void
.end method

.method q()V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leh/n0$p;->h:Lio/grpc/d1$c;

    :cond_0
    return-void
.end method
