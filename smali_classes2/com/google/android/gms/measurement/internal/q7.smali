.class final Lcom/google/android/gms/measurement/internal/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic d:Lcom/google/android/gms/internal/measurement/h1;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/q7;->c:Lcom/google/android/gms/measurement/internal/zzq;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/q7;->d:Lcom/google/android/gms/internal/measurement/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/y7;->H(Lcom/google/android/gms/measurement/internal/y7;)Lp4/e;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q7;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/h3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 5
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->d:Lcom/google/android/gms/internal/measurement/h1;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/k9;->E(Lcom/google/android/gms/internal/measurement/h1;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->c:Lcom/google/android/gms/measurement/internal/zzq;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q7;->c:Lcom/google/android/gms/measurement/internal/zzq;

    .line 8
    invoke-interface {v2, v1, v3, v4}, Lp4/e;->s0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/k9;->v(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/y7;->N(Lcom/google/android/gms/measurement/internal/y7;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q7;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/h3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    goto :goto_0

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q7;->d:Lcom/google/android/gms/internal/measurement/h1;

    .line 17
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/k9;->E(Lcom/google/android/gms/internal/measurement/h1;Ljava/util/ArrayList;)V

    .line 18
    throw v1
.end method
