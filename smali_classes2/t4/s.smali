.class final Lt4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/b0;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lt4/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lt4/b;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt4/s;->b:Ljava/lang/Object;

    iput-object p1, p0, Lt4/s;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lt4/s;->c:Lt4/b;

    return-void
.end method

.method static bridge synthetic a(Lt4/s;)Lt4/b;
    .locals 0

    iget-object p0, p0, Lt4/s;->c:Lt4/b;

    return-object p0
.end method

.method static bridge synthetic b(Lt4/s;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lt4/s;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final E()V
    .locals 2

    iget-object v0, p0, Lt4/s;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lt4/s;->c:Lt4/b;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Lt4/g;)V
    .locals 1
    .param p1    # Lt4/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lt4/g;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lt4/s;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lt4/s;->c:Lt4/b;

    if-nez v0, :cond_0

    .line 2
    monitor-exit p1

    return-void

    .line 3
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lt4/s;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lt4/r;

    invoke-direct {v0, p0}, Lt4/r;-><init>(Lt4/s;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method
