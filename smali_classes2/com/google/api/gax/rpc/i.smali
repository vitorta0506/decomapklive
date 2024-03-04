.class public Lcom/google/api/gax/rpc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/util/Collection;Lcom/google/api/gax/retrying/RetrySettings;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;",
            "Lcom/google/api/gax/retrying/RetrySettings;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxAttempts()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxAttempts()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getTotalTimeout()Lorg/threeten/bp/Duration;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/Duration;->isZero()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static b(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lcom/google/api/gax/rpc/r;)Lcom/google/api/gax/rpc/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            "MetadataT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;",
            "Ln5/b;",
            ">;",
            "Lcom/google/api/gax/rpc/s<",
            "TRequestT;TResponseT;TMetadataT;>;",
            "Lcom/google/api/gax/rpc/j;",
            "Lcom/google/api/gax/rpc/r;",
            ")",
            "Lcom/google/api/gax/rpc/t<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/api/gax/rpc/i;->c(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lcom/google/api/gax/rpc/r;)Lcom/google/api/gax/rpc/u;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lcom/google/api/gax/rpc/r;)Lcom/google/api/gax/rpc/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            "MetadataT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;",
            "Ln5/b;",
            ">;",
            "Lcom/google/api/gax/rpc/s<",
            "TRequestT;TResponseT;TMetadataT;>;",
            "Lcom/google/api/gax/rpc/j;",
            "Lcom/google/api/gax/rpc/r;",
            ")",
            "Lcom/google/api/gax/rpc/u<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo5/e;

    new-instance v1, Ln5/a;

    invoke-direct {v1}, Ln5/a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/s;->c()Lo5/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo5/e;-><init>(Lo5/c;Lo5/h;)V

    .line 3
    new-instance v1, Lo5/g;

    .line 4
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->h()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lo5/g;-><init>(Lo5/e;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 5
    new-instance p2, Lcom/google/api/gax/rpc/u;

    invoke-direct {p2, p0, v1, p3, p1}, Lcom/google/api/gax/rpc/u;-><init>(Lcom/google/api/gax/rpc/k0;Lo5/f;Lcom/google/api/gax/rpc/r;Lcom/google/api/gax/rpc/s;)V

    return-object p2
.end method

.method public static d(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/v;)Lcom/google/api/gax/rpc/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            "Paged",
            "ListResponseT:Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/v<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;)",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/w;

    invoke-virtual {p1}, Lcom/google/api/gax/rpc/v;->g()Lcom/google/api/gax/rpc/y;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/api/gax/rpc/w;-><init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/y;)V

    return-object v0
.end method

.method public static e(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/j0<",
            "**>;",
            "Lcom/google/api/gax/rpc/j;",
            ")",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/gax/rpc/i;->a(Ljava/util/Collection;Lcom/google/api/gax/retrying/RetrySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0;->e()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getTotalTimeout()Lorg/threeten/bp/Duration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/api/gax/rpc/j0$a;->g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object p1

    .line 5
    :cond_0
    new-instance v0, Lo5/e;

    new-instance v1, Lcom/google/api/gax/rpc/c;

    invoke-direct {v1}, Lcom/google/api/gax/rpc/c;-><init>()V

    new-instance v2, Lo5/b;

    .line 6
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->c()Lk5/a;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lo5/b;-><init>(Lcom/google/api/gax/retrying/RetrySettings;Lk5/a;)V

    invoke-direct {v0, v1, v2}, Lo5/e;-><init>(Lo5/d;Lo5/i;)V

    .line 7
    new-instance p1, Lo5/g;

    .line 8
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->h()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo5/g;-><init>(Lo5/e;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 9
    new-instance v0, Lcom/google/api/gax/rpc/c0;

    .line 10
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->e()Lcom/google/api/gax/rpc/a;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lcom/google/api/gax/rpc/c0;-><init>(Lcom/google/api/gax/rpc/a;Lcom/google/api/gax/rpc/k0;Lo5/f;)V

    return-object v0
.end method
