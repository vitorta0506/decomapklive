.class public abstract Lio/grpc/internal/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/f$h;
.implements Lio/grpc/internal/l1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Lio/grpc/internal/y;

.field private final b:Ljava/lang/Object;

.field private final c:Lio/grpc/internal/i2;

.field private final d:Lio/grpc/internal/p2;

.field private final e:Lio/grpc/internal/l1;

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method protected constructor <init>(ILio/grpc/internal/i2;Lio/grpc/internal/p2;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/d$a;->b:Ljava/lang/Object;

    const-string v0, "statsTraceCtx"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/i2;

    iput-object v0, p0, Lio/grpc/internal/d$a;->c:Lio/grpc/internal/i2;

    const-string v0, "transportTracer"

    .line 4
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/p2;

    iput-object v0, p0, Lio/grpc/internal/d$a;->d:Lio/grpc/internal/p2;

    .line 5
    new-instance v0, Lio/grpc/internal/l1;

    sget-object v3, Lio/grpc/l$b;->a:Lio/grpc/l;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/l1;-><init>(Lio/grpc/internal/l1$b;Lio/grpc/u;ILio/grpc/internal/i2;Lio/grpc/internal/p2;)V

    iput-object v0, p0, Lio/grpc/internal/d$a;->e:Lio/grpc/internal/l1;

    .line 6
    iput-object v0, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    return-void
.end method

.method static synthetic f(Lio/grpc/internal/d$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/d$a;->v(I)V

    return-void
.end method

.method static synthetic g(Lio/grpc/internal/d$a;)Z
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/d$a;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lio/grpc/internal/d$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/d$a;->q(I)V

    return-void
.end method

.method static synthetic i(Lio/grpc/internal/d$a;)Lio/grpc/internal/y;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    return-object p0
.end method

.method private n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/d$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/d$a;->g:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lio/grpc/internal/d$a;->f:I

    const v2, 0x8000

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lio/grpc/internal/d$a;->h:Z

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

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/d$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/d$a;->n()Z

    move-result v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/internal/d$a;->o()Lio/grpc/internal/k2;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k2;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/d$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lio/grpc/internal/d$a;->f:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/grpc/internal/d$a;->f:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private v(I)V
    .locals 2

    .line 1
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object v0

    .line 2
    new-instance v1, Lio/grpc/internal/d$a$a;

    invoke-direct {v1, p0, v0, p1}, Lio/grpc/internal/d$a$a;-><init>(Lio/grpc/internal/d$a;Lqh/b;I)V

    invoke-interface {p0, v1}, Lio/grpc/internal/g$d;->e(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/internal/k2$a;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/d$a;->o()Lio/grpc/internal/k2;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/k2;->a(Lio/grpc/internal/k2$a;)V

    return-void
.end method

.method protected final j(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    invoke-interface {p1}, Lio/grpc/internal/y;->close()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    invoke-interface {p1}, Lio/grpc/internal/y;->j()V

    :goto_0
    return-void
.end method

.method protected final k(Lio/grpc/internal/v1;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    invoke-interface {v0, p1}, Lio/grpc/internal/y;->e(Lio/grpc/internal/v1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-interface {p0, p1}, Lio/grpc/internal/l1$b;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final l()Lio/grpc/internal/i2;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/d$a;->c:Lio/grpc/internal/i2;

    return-object v0
.end method

.method protected m()Lio/grpc/internal/p2;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/d$a;->d:Lio/grpc/internal/p2;

    return-object v0
.end method

.method protected abstract o()Lio/grpc/internal/k2;
.end method

.method public final r(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/internal/d$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/d$a;->g:Z

    const-string v2, "onStreamAllocated was not called, but it seems the stream is active"

    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget v1, p0, Lio/grpc/internal/d$a;->f:I

    const v2, 0x8000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sub-int/2addr v1, p1

    .line 4
    iput v1, p0, Lio/grpc/internal/d$a;->f:I

    if-ge v1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 5
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 6
    invoke-direct {p0}, Lio/grpc/internal/d$a;->p()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected s()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/d$a;->o()Lio/grpc/internal/k2;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/d$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v3, p0, Lio/grpc/internal/d$a;->g:Z

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v3, "Already allocated"

    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iput-boolean v2, p0, Lio/grpc/internal/d$a;->g:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0}, Lio/grpc/internal/d$a;->p()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/d$a;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lio/grpc/internal/d$a;->h:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/d$a;->e:Lio/grpc/internal/l1;

    invoke-virtual {v0, p0}, Lio/grpc/internal/l1;->w(Lio/grpc/internal/l1$b;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/d$a;->e:Lio/grpc/internal/l1;

    iput-object v0, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    return-void
.end method

.method protected final w(Lio/grpc/u;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    invoke-interface {v0, p1}, Lio/grpc/internal/y;->d(Lio/grpc/u;)V

    return-void
.end method

.method protected x(Lio/grpc/internal/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/d$a;->e:Lio/grpc/internal/l1;

    invoke-virtual {v0, p1}, Lio/grpc/internal/l1;->v(Lio/grpc/internal/s0;)V

    .line 2
    new-instance p1, Lio/grpc/internal/f;

    iget-object v0, p0, Lio/grpc/internal/d$a;->e:Lio/grpc/internal/l1;

    invoke-direct {p1, p0, p0, v0}, Lio/grpc/internal/f;-><init>(Lio/grpc/internal/l1$b;Lio/grpc/internal/f$h;Lio/grpc/internal/l1;)V

    iput-object p1, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    return-void
.end method

.method final y(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/d$a;->a:Lio/grpc/internal/y;

    invoke-interface {v0, p1}, Lio/grpc/internal/y;->c(I)V

    return-void
.end method
