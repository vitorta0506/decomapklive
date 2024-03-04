.class Lio/grpc/internal/a0$e;
.super Lio/grpc/internal/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final j:Lio/grpc/n0$f;

.field private final k:Lio/grpc/r;

.field private final l:[Lio/grpc/k;

.field final synthetic m:Lio/grpc/internal/a0;


# direct methods
.method private constructor <init>(Lio/grpc/internal/a0;Lio/grpc/n0$f;[Lio/grpc/k;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-direct {p0}, Lio/grpc/internal/b0;-><init>()V

    .line 3
    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/a0$e;->k:Lio/grpc/r;

    .line 4
    iput-object p2, p0, Lio/grpc/internal/a0$e;->j:Lio/grpc/n0$f;

    .line 5
    iput-object p3, p0, Lio/grpc/internal/a0$e;->l:[Lio/grpc/k;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/a0;Lio/grpc/n0$f;[Lio/grpc/k;Lio/grpc/internal/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/a0$e;-><init>(Lio/grpc/internal/a0;Lio/grpc/n0$f;[Lio/grpc/k;)V

    return-void
.end method

.method private A(Lio/grpc/internal/r;)Ljava/lang/Runnable;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a0$e;->k:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/a0$e;->j:Lio/grpc/n0$f;

    .line 3
    invoke-virtual {v1}, Lio/grpc/n0$f;->c()Lio/grpc/MethodDescriptor;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/a0$e;->j:Lio/grpc/n0$f;

    invoke-virtual {v2}, Lio/grpc/n0$f;->b()Lio/grpc/s0;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/a0$e;->j:Lio/grpc/n0$f;

    invoke-virtual {v3}, Lio/grpc/n0$f;->a()Lio/grpc/c;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/a0$e;->l:[Lio/grpc/k;

    .line 4
    invoke-interface {p1, v1, v2, v3, v4}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lio/grpc/internal/a0$e;->k:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    .line 6
    invoke-virtual {p0, p1}, Lio/grpc/internal/b0;->w(Lio/grpc/internal/q;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    iget-object v1, p0, Lio/grpc/internal/a0$e;->k:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw p1
.end method

.method static synthetic x(Lio/grpc/internal/a0$e;)[Lio/grpc/k;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0$e;->l:[Lio/grpc/k;

    return-object p0
.end method

.method static synthetic y(Lio/grpc/internal/a0$e;)Lio/grpc/n0$f;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/a0$e;->j:Lio/grpc/n0$f;

    return-object p0
.end method

.method static synthetic z(Lio/grpc/internal/a0$e;Lio/grpc/internal/r;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/a0$e;->A(Lio/grpc/internal/r;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Lio/grpc/Status;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio/grpc/internal/b0;->e(Lio/grpc/Status;)V

    .line 2
    iget-object p1, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {p1}, Lio/grpc/internal/a0;->j(Lio/grpc/internal/a0;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {v0}, Lio/grpc/internal/a0;->k(Lio/grpc/internal/a0;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {v0}, Lio/grpc/internal/a0;->m(Lio/grpc/internal/a0;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-virtual {v1}, Lio/grpc/internal/a0;->r()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {v0}, Lio/grpc/internal/a0;->o(Lio/grpc/internal/a0;)Lio/grpc/d1;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {v1}, Lio/grpc/internal/a0;->n(Lio/grpc/internal/a0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {v0}, Lio/grpc/internal/a0;->i(Lio/grpc/internal/a0;)Lio/grpc/Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {v0}, Lio/grpc/internal/a0;->o(Lio/grpc/internal/a0;)Lio/grpc/d1;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {v1}, Lio/grpc/internal/a0;->k(Lio/grpc/internal/a0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/a0;->l(Lio/grpc/internal/a0;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 10
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lio/grpc/internal/a0$e;->m:Lio/grpc/internal/a0;

    invoke-static {p1}, Lio/grpc/internal/a0;->o(Lio/grpc/internal/a0;)Lio/grpc/d1;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/d1;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public l(Lio/grpc/internal/x0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a0$e;->j:Lio/grpc/n0$f;

    invoke-virtual {v0}, Lio/grpc/n0$f;->a()Lio/grpc/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wait_for_ready"

    .line 2
    invoke-virtual {p1, v0}, Lio/grpc/internal/x0;->a(Ljava/lang/Object;)Lio/grpc/internal/x0;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/internal/b0;->l(Lio/grpc/internal/x0;)V

    return-void
.end method

.method protected u(Lio/grpc/Status;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a0$e;->l:[Lio/grpc/k;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lio/grpc/c1;->i(Lio/grpc/Status;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
