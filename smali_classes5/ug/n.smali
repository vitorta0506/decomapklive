.class public Lug/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->j()I

    move-result v0

    sput v0, Lug/n;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->j()I

    move-result v0

    iput v0, p0, Lug/n;->a:I

    return-void
.end method

.method private static a(Lio/grpc/netty/shaded/io/netty/util/internal/k;Lug/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/k;",
            "Lug/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget v0, Lug/n;->b:I

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v1, Ljava/util/Set;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->o(ILjava/lang/Object;)Z

    .line 6
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f(Lio/grpc/netty/shaded/io/netty/util/internal/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/k;",
            ")TV;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lug/n;->e()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lug/n;->a:I

    invoke-virtual {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->o(ILjava/lang/Object;)Z

    .line 4
    invoke-static {p1, p0}, Lug/n;->a(Lio/grpc/netty/shaded/io/netty/util/internal/k;Lug/n;)V

    return-object v0
.end method

.method public static j()V
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->f()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget v1, Lug/n;->b:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 4
    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    new-array v3, v2, [Lug/n;

    .line 5
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lug/n;

    .line 6
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 7
    invoke-virtual {v4, v0}, Lug/n;->i(Lio/grpc/netty/shaded/io/netty/util/internal/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->l()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->l()V

    .line 9
    throw v0
.end method

.method private static k(Lio/grpc/netty/shaded/io/netty/util/internal/k;Lug/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/k;",
            "Lug/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget v0, Lug/n;->b:I

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p0, Ljava/util/Set;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private n(Lio/grpc/netty/shaded/io/netty/util/internal/k;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/k;",
            "TV;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lug/n;->a:I

    invoke-virtual {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->o(ILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1, p0}, Lug/n;->a(Lio/grpc/netty/shaded/io/netty/util/internal/k;Lug/n;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    .line 2
    iget v1, p0, Lug/n;->a:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lug/n;->f(Lio/grpc/netty/shaded/io/netty/util/internal/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lio/grpc/netty/shaded/io/netty/util/internal/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/k;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lug/n;->a:I

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lug/n;->f(Lio/grpc/netty/shaded/io/netty/util/internal/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->f()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lug/n;->a:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final h()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->f()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lug/n;->i(Lio/grpc/netty/shaded/io/netty/util/internal/k;)V

    return-void
.end method

.method public final i(Lio/grpc/netty/shaded/io/netty/util/internal/k;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lug/n;->a:I

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->m(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {p1, p0}, Lug/n;->k(Lio/grpc/netty/shaded/io/netty/util/internal/k;Lug/n;)V

    .line 3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lug/n;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Lio/grpc/netty/shaded/io/netty/util/internal/k;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/k;",
            "TV;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lug/n;->n(Lio/grpc/netty/shaded/io/netty/util/internal/k;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lug/n;->i(Lio/grpc/netty/shaded/io/netty/util/internal/k;)V

    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lug/n;->n(Lio/grpc/netty/shaded/io/netty/util/internal/k;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lug/n;->h()V

    :goto_0
    return-void
.end method
