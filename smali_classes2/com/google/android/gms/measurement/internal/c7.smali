.class final Lcom/google/android/gms/measurement/internal/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/x3;->q()Lp4/a;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v2}, Lp4/a;->i(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m6;->C(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x3;->g:Lcom/google/android/gms/measurement/internal/w3;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/w3;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/y7;->H(Lcom/google/android/gms/measurement/internal/y7;)Lp4/e;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/zzq;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/zzq;

    .line 17
    invoke-interface {v2, v3}, Lp4/e;->i0(Lcom/google/android/gms/measurement/internal/zzq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/m6;->C(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v2

    .line 22
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x3;->g:Lcom/google/android/gms/measurement/internal/w3;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/w3;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/y7;->N(Lcom/google/android/gms/measurement/internal/y7;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 25
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    .line 28
    :goto_1
    monitor-exit v0

    return-void

    .line 29
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 30
    throw v1

    :catchall_1
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
