.class final Lcom/google/android/gms/internal/recaptcha/wd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/gms/internal/recaptcha/xd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/xd;Lcom/google/android/gms/internal/recaptcha/vd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/xd;->b(Lcom/google/android/gms/internal/recaptcha/xd;)Ljava/util/Deque;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/xd;->e(Lcom/google/android/gms/internal/recaptcha/xd;)I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_2

    .line 2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/xd;->a(Lcom/google/android/gms/internal/recaptcha/xd;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    .line 4
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/recaptcha/xd;->f(Lcom/google/android/gms/internal/recaptcha/xd;I)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/xd;->b(Lcom/google/android/gms/internal/recaptcha/xd;)Ljava/util/Deque;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/xd;->f(Lcom/google/android/gms/internal/recaptcha/xd;I)I

    .line 7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_2

    .line 8
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-void

    .line 9
    :cond_3
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 10
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    or-int/2addr v2, v0

    const/4 v0, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/wd;->a:Ljava/lang/Runnable;

    .line 11
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->a:Ljava/lang/Runnable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v9, v3

    .line 12
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/xd;->d()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "com.google.common.util.concurrent.SequentialExecutor$QueueWorker"

    const-string v7, "workOnQueue"

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/wd;->a:Ljava/lang/Runnable;

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x23

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Exception while executing runnable "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->a:Ljava/lang/Runnable;

    goto :goto_1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->a:Ljava/lang/Runnable;

    .line 14
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v0

    .line 15
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_3
    if-eqz v2, :cond_4

    .line 16
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 17
    :cond_4
    throw v0
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/xd;->b(Lcom/google/android/gms/internal/recaptcha/xd;)Ljava/util/Deque;

    move-result-object v2

    monitor-enter v2

    :try_start_e
    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    .line 19
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/recaptcha/xd;->f(Lcom/google/android/gms/internal/recaptcha/xd;I)I

    .line 20
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 21
    throw v0

    :catchall_3
    move-exception v0

    .line 22
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->a:Ljava/lang/Runnable;

    const-string v1, "}"

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SequentialExecutorWorker{running="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/wd;->b:Lcom/google/android/gms/internal/recaptcha/xd;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/xd;->e(Lcom/google/android/gms/internal/recaptcha/xd;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "RUNNING"

    goto :goto_0

    :cond_2
    const-string v0, "QUEUED"

    goto :goto_0

    :cond_3
    const-string v0, "QUEUING"

    goto :goto_0

    :cond_4
    const-string v0, "IDLE"

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SequentialExecutorWorker{state="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
