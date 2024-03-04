.class Lio/grpc/internal/l$a;
.super Lio/grpc/internal/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/u;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile d:Lio/grpc/Status;

.field private e:Lio/grpc/Status;

.field private f:Lio/grpc/Status;

.field private final g:Lio/grpc/internal/n1$a;

.field final synthetic h:Lio/grpc/internal/l;


# direct methods
.method constructor <init>(Lio/grpc/internal/l;Lio/grpc/internal/u;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/internal/l$a;->h:Lio/grpc/internal/l;

    invoke-direct {p0}, Lio/grpc/internal/l0;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, -0x7fffffff

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance p1, Lio/grpc/internal/l$a$a;

    invoke-direct {p1, p0}, Lio/grpc/internal/l$a$a;-><init>(Lio/grpc/internal/l$a;)V

    iput-object p1, p0, Lio/grpc/internal/l$a;->g:Lio/grpc/internal/n1$a;

    const-string p1, "delegate"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/u;

    iput-object p1, p0, Lio/grpc/internal/l$a;->a:Lio/grpc/internal/u;

    const-string p1, "authority"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/l$a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic i(Lio/grpc/internal/l$a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic j(Lio/grpc/internal/l$a;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/l$a;->m()V

    return-void
.end method

.method static synthetic k(Lio/grpc/internal/l$a;)Lio/grpc/internal/u;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/l$a;->a:Lio/grpc/internal/u;

    return-object p0
.end method

.method static synthetic l(Lio/grpc/internal/l$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/l$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/l$a;->e:Lio/grpc/Status;

    .line 5
    iget-object v1, p0, Lio/grpc/internal/l$a;->f:Lio/grpc/Status;

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lio/grpc/internal/l$a;->e:Lio/grpc/Status;

    .line 7
    iput-object v2, p0, Lio/grpc/internal/l$a;->f:Lio/grpc/Status;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 9
    invoke-super {p0, v0}, Lio/grpc/internal/l0;->g(Lio/grpc/Status;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 10
    invoke-super {p0, v1}, Lio/grpc/internal/l0;->b(Lio/grpc/Status;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()Lio/grpc/internal/u;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/l$a;->a:Lio/grpc/internal/u;

    return-object v0
.end method

.method public b(Lio/grpc/Status;)V
    .locals 2

    const-string v0, "status"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    iput-object p1, p0, Lio/grpc/internal/l$a;->d:Lio/grpc/Status;

    .line 5
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/l$a;->f:Lio/grpc/Status;

    if-eqz v0, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iput-object p1, p0, Lio/grpc/internal/l$a;->f:Lio/grpc/Status;

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-super {p0, p1}, Lio/grpc/internal/l0;->b(Lio/grpc/Status;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
    .locals 9
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
    invoke-virtual {p3}, Lio/grpc/c;->c()Lio/grpc/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/l$a;->h:Lio/grpc/internal/l;

    invoke-static {v0}, Lio/grpc/internal/l;->a(Lio/grpc/internal/l;)Lio/grpc/b;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/l$a;->h:Lio/grpc/internal/l;

    invoke-static {v1}, Lio/grpc/internal/l;->a(Lio/grpc/internal/l;)Lio/grpc/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lio/grpc/m;

    iget-object v2, p0, Lio/grpc/internal/l$a;->h:Lio/grpc/internal/l;

    invoke-static {v2}, Lio/grpc/internal/l;->a(Lio/grpc/internal/l;)Lio/grpc/b;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/grpc/m;-><init>(Lio/grpc/b;Lio/grpc/b;)V

    move-object v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 5
    new-instance v8, Lio/grpc/internal/n1;

    iget-object v2, p0, Lio/grpc/internal/l$a;->a:Lio/grpc/internal/u;

    iget-object v6, p0, Lio/grpc/internal/l$a;->g:Lio/grpc/internal/n1$a;

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/grpc/internal/n1;-><init>(Lio/grpc/internal/r;Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;Lio/grpc/internal/n1$a;[Lio/grpc/k;)V

    .line 6
    iget-object p2, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    if-lez p2, :cond_2

    .line 7
    iget-object p1, p0, Lio/grpc/internal/l$a;->g:Lio/grpc/internal/n1$a;

    invoke-interface {p1}, Lio/grpc/internal/n1$a;->onComplete()V

    .line 8
    new-instance p1, Lio/grpc/internal/f0;

    iget-object p2, p0, Lio/grpc/internal/l$a;->d:Lio/grpc/Status;

    invoke-direct {p1, p2, p4}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;[Lio/grpc/k;)V

    return-object p1

    .line 9
    :cond_2
    new-instance p2, Lio/grpc/internal/l$a$b;

    invoke-direct {p2, p0, p1, p3}, Lio/grpc/internal/l$a$b;-><init>(Lio/grpc/internal/l$a;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V

    .line 10
    :try_start_0
    invoke-virtual {p3}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p3, p0, Lio/grpc/internal/l$a;->h:Lio/grpc/internal/l;

    invoke-static {p3}, Lio/grpc/internal/l;->b(Lio/grpc/internal/l;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 11
    invoke-virtual {v0, p2, p1, v8}, Lio/grpc/b;->a(Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    sget-object p2, Lio/grpc/Status;->n:Lio/grpc/Status;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    .line 13
    invoke-virtual {p2, p3}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 15
    invoke-virtual {v8, p1}, Lio/grpc/internal/n1;->b(Lio/grpc/Status;)V

    .line 16
    :goto_1
    invoke-virtual {v8}, Lio/grpc/internal/n1;->d()Lio/grpc/internal/q;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_4

    .line 18
    new-instance p1, Lio/grpc/internal/f0;

    iget-object p2, p0, Lio/grpc/internal/l$a;->d:Lio/grpc/Status;

    invoke-direct {p1, p2, p4}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;[Lio/grpc/k;)V

    return-object p1

    .line 19
    :cond_4
    iget-object v0, p0, Lio/grpc/internal/l$a;->a:Lio/grpc/internal/u;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1

    return-object p1
.end method

.method public g(Lio/grpc/Status;)V
    .locals 2

    const-string v0, "status"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    iput-object p1, p0, Lio/grpc/internal/l$a;->d:Lio/grpc/Status;

    .line 5
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 6
    iget-object v0, p0, Lio/grpc/internal/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p1, p0, Lio/grpc/internal/l$a;->e:Lio/grpc/Status;

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-super {p0, p1}, Lio/grpc/internal/l0;->g(Lio/grpc/Status;)V

    return-void

    .line 11
    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
