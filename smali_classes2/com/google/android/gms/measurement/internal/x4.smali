.class final Lcom/google/android/gms/measurement/internal/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/f5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f5;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/f5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x4;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x4;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->g()V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/p;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->zzv:Ljava/lang/String;

    invoke-static {v2}, Lp4/a;->b(Ljava/lang/String;)Lp4/a;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/d9;->V(Ljava/lang/String;)Lp4/a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const-string v6, "Setting consent, package, consent"

    .line 10
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/h3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/d9;->A(Ljava/lang/String;Lp4/a;)V

    .line 13
    invoke-virtual {v2, v3}, Lp4/a;->k(Lp4/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d9;->v(Lcom/google/android/gms/measurement/internal/zzq;)V

    :cond_0
    return-void
.end method
