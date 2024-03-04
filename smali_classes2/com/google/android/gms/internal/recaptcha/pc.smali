.class final Lcom/google/android/gms/internal/recaptcha/pc;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/google/android/gms/internal/recaptcha/oc;",
        ">;",
        "Ljava/util/concurrent/Executor;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/recaptcha/rc;

.field b:Ljava/util/concurrent/Executor;

.field c:Ljava/lang/Runnable;

.field d:Ljava/lang/Thread;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/lc;)V
    .locals 0

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/oc;->a:Lcom/google/android/gms/internal/recaptcha/oc;

    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/pc;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->a:Lcom/google/android/gms/internal/recaptcha/rc;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/oc;->b:Lcom/google/android/gms/internal/recaptcha/oc;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->b:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->a:Lcom/google/android/gms/internal/recaptcha/rc;

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pc;->d:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pc;->a:Lcom/google/android/gms/internal/recaptcha/rc;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/rc;->a(Lcom/google/android/gms/internal/recaptcha/rc;)Lcom/google/android/gms/internal/recaptcha/qc;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/recaptcha/qc;->a:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/pc;->d:Ljava/lang/Thread;

    if-ne v1, v3, :cond_2

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->a:Lcom/google/android/gms/internal/recaptcha/rc;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/recaptcha/qc;->b:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/z7;->i(Z)V

    iput-object p1, v0, Lcom/google/android/gms/internal/recaptcha/qc;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/pc;->b:Ljava/util/concurrent/Executor;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/google/android/gms/internal/recaptcha/qc;->c:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->b:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pc;->b:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->b:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/pc;->c:Ljava/lang/Runnable;

    .line 9
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->d:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->d:Ljava/lang/Thread;

    .line 12
    throw p1
.end method

.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/pc;->d:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pc;->c:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->c:Ljava/lang/Runnable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/recaptcha/qc;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/recaptcha/qc;-><init>(Lcom/google/android/gms/internal/recaptcha/lc;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/recaptcha/qc;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pc;->a:Lcom/google/android/gms/internal/recaptcha/rc;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/rc;->b(Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/qc;)Lcom/google/android/gms/internal/recaptcha/qc;

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->a:Lcom/google/android/gms/internal/recaptcha/rc;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pc;->c:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/pc;->c:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/internal/recaptcha/qc;->b:Ljava/lang/Runnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v6, v1, Lcom/google/android/gms/internal/recaptcha/qc;->c:Ljava/util/concurrent/Executor;

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    iput-object v2, v1, Lcom/google/android/gms/internal/recaptcha/qc;->b:Ljava/lang/Runnable;

    iput-object v2, v1, Lcom/google/android/gms/internal/recaptcha/qc;->c:Ljava/util/concurrent/Executor;

    .line 7
    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    iput-object v2, v1, Lcom/google/android/gms/internal/recaptcha/qc;->a:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, v1, Lcom/google/android/gms/internal/recaptcha/qc;->a:Ljava/lang/Thread;

    .line 8
    throw v0
.end method
