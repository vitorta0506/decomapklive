.class public abstract Lio/grpc/netty/shaded/io/netty/channel/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/netty/shaded/io/netty/channel/t0;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/c;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/c;->d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/t0;->c(Lio/grpc/netty/shaded/io/netty/channel/e;)Lio/grpc/netty/shaded/io/netty/channel/t0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->b:Lio/grpc/netty/shaded/io/netty/channel/t0;

    return-void
.end method

.method private d(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/j;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c;->l(I)V

    return-void
.end method

.method private k(I)V
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->b:Lio/grpc/netty/shaded/io/netty/channel/t0;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 3
    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/t0;->a(J)V

    :cond_0
    return-void
.end method

.method private l(I)V
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    add-int v1, v0, p1

    if-lt v1, v0, :cond_1

    .line 2
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->b:Lio/grpc/netty/shaded/io/netty/channel/t0;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/t0;->b(J)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer queue length overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 3
    :cond_1
    :try_start_0
    instance-of v2, v1, Lkg/j;

    if-eqz v2, :cond_2

    .line 4
    check-cast v1, Lkg/j;

    .line 5
    invoke-virtual {v1}, Lkg/j;->P1()I

    move-result v2

    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/channel/c;->k(I)V

    .line 6
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_2
    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v1, p1}, Lug/r;->e(Lug/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 8
    :cond_3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/c;->d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Throwable being suppressed because Throwable {} is already pending"

    invoke-interface {v2, v3, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static u(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/j;
    .locals 1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/i;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/k0;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/k0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lkg/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->b(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/j;)V

    return-void
.end method

.method public final b(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c;->l(I)V

    return-void
.end method

.method public final c(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->u(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/j;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->b(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/j;)V

    return-void
.end method

.method public final e(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->u(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->d(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/j;)V

    return-void
.end method

.method protected abstract f(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;
.end method

.method protected g(Lkg/k;Lkg/j;)Lkg/j;
    .locals 0

    return-object p2
.end method

.method protected final h(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c;->t()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v0}, Lkg/k;->m(I)Lkg/o;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, v0, p2}, Lkg/o;->I3(ZLkg/j;)Lkg/o;

    .line 3
    invoke-virtual {p1, v0, p3}, Lkg/o;->I3(ZLkg/j;)Lkg/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 4
    invoke-virtual {p1}, Lkg/e;->release()Z

    .line 5
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 6
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method protected final i(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    invoke-virtual {p3}, Lkg/j;->P1()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lkg/k;->d(I)Lkg/j;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    move-result-object v0

    invoke-virtual {v0, p3}, Lkg/j;->x2(Lkg/j;)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 4
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 7
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object p1
.end method

.method public final j(Lio/grpc/netty/shaded/io/netty/channel/c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    invoke-direct {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->l(I)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    return v0
.end method

.method public final p(Lio/grpc/netty/shaded/io/netty/channel/v;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->B(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c;->o(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method public final q(Lkg/k;ILio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;
    .locals 5

    const-string v0, "bytes"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const-string v0, "aggregatePromise"

    .line 2
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c;->r()Lkg/j;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    move v1, p2

    move-object v2, v0

    .line 6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    instance-of v4, v3, Lio/grpc/netty/shaded/io/netty/channel/j;

    if-eqz v4, :cond_2

    .line 8
    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {p3, v3}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_0

    .line 9
    :cond_2
    check-cast v3, Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {v3}, Lkg/j;->P1()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 11
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    if-lez v1, :cond_6

    .line 12
    invoke-virtual {v3, v1}, Lkg/j;->I1(I)Lkg/j;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 13
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->g(Lkg/k;Lkg/j;)Lkg/j;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0, p1, v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->f(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move-object v2, p1

    const/4 v1, 0x0

    goto :goto_3

    .line 15
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lkg/j;->P1()I

    move-result v4

    sub-int/2addr v1, v4

    if-nez v2, :cond_5

    .line 16
    invoke-virtual {p0, p1, v3}, Lio/grpc/netty/shaded/io/netty/channel/c;->g(Lkg/k;Lkg/j;)Lkg/j;

    move-result-object v2

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0, p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/c;->f(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 18
    :goto_2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 19
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 20
    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 21
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    sub-int/2addr p2, v1

    .line 22
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->k(I)V

    return-object v2
.end method

.method protected abstract r()Lkg/j;
.end method

.method public final s(Lio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    check-cast v0, Lkg/j;

    .line 3
    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v1

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/c;->k(I)V

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lio/grpc/netty/shaded/io/netty/channel/j;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 7
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final t()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " buffers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c;->t()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lkg/j;->P1()I

    move-result v3

    invoke-direct {p0, v3}, Lio/grpc/netty/shaded/io/netty/channel/c;->k(I)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 5
    :cond_2
    :try_start_1
    instance-of v4, v3, Lkg/j;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Lkg/j;->P1()I

    move-result v4

    invoke-direct {p0, v4}, Lio/grpc/netty/shaded/io/netty/channel/c;->k(I)V

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 8
    :cond_3
    check-cast v3, Lkg/j;

    move-object v1, v3

    goto :goto_0

    .line 9
    :cond_4
    instance-of v4, v3, Lio/grpc/netty/shaded/io/netty/channel/y;

    if-eqz v4, :cond_5

    .line 10
    invoke-virtual {v1}, Lkg/j;->P1()I

    move-result v4

    invoke-direct {p0, v4}, Lio/grpc/netty/shaded/io/netty/channel/c;->k(I)V

    .line 11
    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {p1, v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v1}, Lkg/j;->P1()I

    move-result v4

    invoke-direct {p0, v4}, Lio/grpc/netty/shaded/io/netty/channel/c;->k(I)V

    .line 13
    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v4

    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v4, v3}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_0

    .line 14
    :cond_6
    sget-object v4, Lio/grpc/netty/shaded/io/netty/channel/c;->d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Throwable being suppressed because Throwable {} is already pending"

    invoke-interface {v4, v5, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
