.class final Lio/grpc/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/k1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/a0$e;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/g0;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lio/grpc/d1;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Lio/grpc/internal/k1$a;

.field private i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/a0$e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/grpc/Status;

.field private k:Lio/grpc/n0$i;

.field private l:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lio/grpc/d1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lio/grpc/internal/a0;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lio/grpc/g0;->a(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/a0;->a:Lio/grpc/g0;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    .line 6
    iput-object p1, p0, Lio/grpc/internal/a0;->c:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    return-void
.end method

.method static synthetic a(Lio/grpc/internal/a0;)Lio/grpc/internal/k1$a;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0;->h:Lio/grpc/internal/k1$a;

    return-object p0
.end method

.method static synthetic i(Lio/grpc/internal/a0;)Lio/grpc/Status;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0;->j:Lio/grpc/Status;

    return-object p0
.end method

.method static synthetic j(Lio/grpc/internal/a0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic k(Lio/grpc/internal/a0;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l(Lio/grpc/internal/a0;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic m(Lio/grpc/internal/a0;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic n(Lio/grpc/internal/a0;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic o(Lio/grpc/internal/a0;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    return-object p0
.end method

.method private p(Lio/grpc/n0$f;[Lio/grpc/k;)Lio/grpc/internal/a0$e;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/internal/a0$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/grpc/internal/a0$e;-><init>(Lio/grpc/internal/a0;Lio/grpc/n0$f;[Lio/grpc/k;Lio/grpc/internal/a0$a;)V

    .line 2
    iget-object p1, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lio/grpc/internal/a0;->q()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    iget-object p2, p0, Lio/grpc/internal/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Lio/grpc/Status;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/internal/a0;->g(Lio/grpc/Status;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    .line 4
    iget-object v2, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/a0$e;

    .line 10
    new-instance v3, Lio/grpc/internal/f0;

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 11
    invoke-static {v1}, Lio/grpc/internal/a0$e;->x(Lio/grpc/internal/a0$e;)[Lio/grpc/k;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;[Lio/grpc/k;)V

    .line 12
    invoke-virtual {v1, v3}, Lio/grpc/internal/b0;->w(Lio/grpc/internal/q;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    invoke-virtual {p1, v2}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()Lio/grpc/g0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/a0;->a:Lio/grpc/g0;

    return-object v0
.end method

.method public final e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            "[",
            "Lio/grpc/k;",
            ")",
            "Lio/grpc/internal/q;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lio/grpc/internal/t1;

    invoke-direct {v0, p1, p2, p3}, Lio/grpc/internal/t1;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;)V

    const/4 p1, 0x0

    const-wide/16 v1, -0x1

    .line 2
    :goto_0
    iget-object p2, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lio/grpc/internal/a0;->j:Lio/grpc/Status;

    if-eqz v3, :cond_0

    .line 4
    new-instance p1, Lio/grpc/internal/f0;

    iget-object p3, p0, Lio/grpc/internal/a0;->j:Lio/grpc/Status;

    invoke-direct {p1, p3, p4}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;[Lio/grpc/k;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_1
    iget-object p2, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    invoke-virtual {p2}, Lio/grpc/d1;->a()V

    return-object p1

    .line 6
    :cond_0
    :try_start_2
    iget-object v3, p0, Lio/grpc/internal/a0;->k:Lio/grpc/n0$i;

    if-nez v3, :cond_1

    .line 7
    invoke-direct {p0, v0, p4}, Lio/grpc/internal/a0;->p(Lio/grpc/n0$f;[Lio/grpc/k;)Lio/grpc/internal/a0$e;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-wide v4, p0, Lio/grpc/internal/a0;->l:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_2

    .line 9
    invoke-direct {p0, v0, p4}, Lio/grpc/internal/a0;->p(Lio/grpc/n0$f;[Lio/grpc/k;)Lio/grpc/internal/a0$e;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    .line 10
    :cond_2
    iget-wide v1, p0, Lio/grpc/internal/a0;->l:J

    .line 11
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-virtual {v3, v0}, Lio/grpc/n0$i;->a(Lio/grpc/n0$f;)Lio/grpc/n0$e;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Lio/grpc/c;->j()Z

    move-result p2

    .line 14
    invoke-static {p1, p2}, Lio/grpc/internal/GrpcUtil;->l(Lio/grpc/n0$e;Z)Lio/grpc/internal/r;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {v0}, Lio/grpc/n0$f;->c()Lio/grpc/MethodDescriptor;

    move-result-object p2

    invoke-virtual {v0}, Lio/grpc/n0$f;->b()Lio/grpc/s0;

    move-result-object p3

    invoke-virtual {v0}, Lio/grpc/n0$f;->a()Lio/grpc/c;

    move-result-object v0

    .line 16
    invoke-interface {p1, p2, p3, v0, p4}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_3
    move-object p1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 18
    iget-object p2, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    invoke-virtual {p2}, Lio/grpc/d1;->a()V

    throw p1
.end method

.method public final g(Lio/grpc/Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/a0;->j:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/internal/a0;->j:Lio/grpc/Status;

    .line 5
    iget-object v1, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    new-instance v2, Lio/grpc/internal/a0$d;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/a0$d;-><init>(Lio/grpc/internal/a0;Lio/grpc/Status;)V

    invoke-virtual {v1, v2}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p0}, Lio/grpc/internal/a0;->r()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    invoke-virtual {v1, p1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    invoke-virtual {p1}, Lio/grpc/d1;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/internal/a0;->h:Lio/grpc/internal/k1$a;

    .line 2
    new-instance v0, Lio/grpc/internal/a0$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/a0$a;-><init>(Lio/grpc/internal/a0;Lio/grpc/internal/k1$a;)V

    iput-object v0, p0, Lio/grpc/internal/a0;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lio/grpc/internal/a0$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/a0$b;-><init>(Lio/grpc/internal/a0;Lio/grpc/internal/k1$a;)V

    iput-object v0, p0, Lio/grpc/internal/a0;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lio/grpc/internal/a0$c;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/a0$c;-><init>(Lio/grpc/internal/a0;Lio/grpc/internal/k1$a;)V

    iput-object v0, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method

.method final q()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final s(Lio/grpc/n0$i;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/grpc/internal/a0;->k:Lio/grpc/n0$i;

    .line 3
    iget-wide v1, p0, Lio/grpc/internal/a0;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/internal/a0;->l:J

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p0}, Lio/grpc/internal/a0;->r()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/a0$e;

    .line 9
    invoke-static {v2}, Lio/grpc/internal/a0$e;->y(Lio/grpc/internal/a0$e;)Lio/grpc/n0$f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/grpc/n0$i;->a(Lio/grpc/n0$f;)Lio/grpc/n0$e;

    move-result-object v3

    .line 10
    invoke-static {v2}, Lio/grpc/internal/a0$e;->y(Lio/grpc/internal/a0$e;)Lio/grpc/n0$f;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/n0$f;->a()Lio/grpc/c;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Lio/grpc/c;->j()Z

    move-result v5

    .line 12
    invoke-static {v3, v5}, Lio/grpc/internal/GrpcUtil;->l(Lio/grpc/n0$e;Z)Lio/grpc/internal/r;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    iget-object v5, p0, Lio/grpc/internal/a0;->c:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {v4}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v4}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {v2, v3}, Lio/grpc/internal/a0$e;->z(Lio/grpc/internal/a0$e;Lio/grpc/internal/r;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v5, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lio/grpc/internal/a0;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 20
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/internal/a0;->r()Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    monitor-exit p1

    return-void

    .line 22
    :cond_5
    iget-object v1, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v0, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/a0;->i:Ljava/util/Collection;

    .line 25
    :cond_6
    invoke-virtual {p0}, Lio/grpc/internal/a0;->r()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    iget-object v0, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    iget-object v1, p0, Lio/grpc/internal/a0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 27
    iget-object v0, p0, Lio/grpc/internal/a0;->j:Lio/grpc/Status;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 28
    iget-object v1, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    invoke-virtual {v1, v0}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lio/grpc/internal/a0;->g:Ljava/lang/Runnable;

    .line 30
    :cond_7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    iget-object p1, p0, Lio/grpc/internal/a0;->d:Lio/grpc/d1;

    invoke-virtual {p1}, Lio/grpc/d1;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 32
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 33
    :cond_8
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
