.class final Lcom/google/android/gms/measurement/internal/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic b:Lcom/google/android/gms/internal/measurement/h1;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/d7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/d7;->b:Lcom/google/android/gms/internal/measurement/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x3;->q()Lp4/a;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v3}, Lp4/a;->i(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/m6;->C(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x3;->g:Lcom/google/android/gms/measurement/internal/w3;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/w3;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 11
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->b:Lcom/google/android/gms/internal/measurement/h1;

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/k9;->J(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/y7;->H(Lcom/google/android/gms/measurement/internal/y7;)Lp4/e;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    goto :goto_0

    .line 15
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 17
    invoke-interface {v3, v2}, Lp4/e;->i0(Lcom/google/android/gms/measurement/internal/zzq;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/m6;->C(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v2

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x3;->g:Lcom/google/android/gms/measurement/internal/w3;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/w3;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/y7;->N(Lcom/google/android/gms/measurement/internal/y7;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 23
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    goto :goto_0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/d7;->b:Lcom/google/android/gms/internal/measurement/h1;

    .line 28
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/k9;->J(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    .line 29
    throw v0
.end method
