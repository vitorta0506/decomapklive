.class final Lcom/google/android/gms/measurement/internal/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzlc;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/zzq;ZLcom/google/android/gms/measurement/internal/zzlc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a7;->d:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/a7;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/a7;->c:Lcom/google/android/gms/measurement/internal/zzlc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->d:Lcom/google/android/gms/measurement/internal/y7;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/y7;->H(Lcom/google/android/gms/measurement/internal/y7;)Lp4/e;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user property"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->d:Lcom/google/android/gms/measurement/internal/y7;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/a7;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->c:Lcom/google/android/gms/measurement/internal/zzlc;

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/y7;->r(Lp4/e;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzq;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->d:Lcom/google/android/gms/measurement/internal/y7;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/y7;->N(Lcom/google/android/gms/measurement/internal/y7;)V

    return-void
.end method
