.class final Lt4/f0;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Lv3/e;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lv3/e;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lt4/f0;->b:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lv3/e;

    const-string v0, "TaskOnStopCallback"

    invoke-interface {p1, v0, p0}, Lv3/e;->i(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static l(Landroid/app/Activity;)Lt4/f0;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lv3/e;

    move-result-object p0

    const-class v0, Lt4/f0;

    const-string v1, "TaskOnStopCallback"

    .line 2
    invoke-interface {p0, v1, v0}, Lv3/e;->N(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lt4/f0;

    if-nez v0, :cond_0

    new-instance v0, Lt4/f0;

    .line 3
    invoke-direct {v0, p0}, Lt4/f0;-><init>(Lv3/e;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final k()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/f0;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt4/f0;->b:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/b0;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Lt4/b0;->E()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lt4/f0;->b:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(Lt4/b0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/f0;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt4/f0;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
