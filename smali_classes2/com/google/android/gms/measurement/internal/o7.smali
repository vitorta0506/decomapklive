.class final Lcom/google/android/gms/measurement/internal/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzac;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzac;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;ZLcom/google/android/gms/measurement/internal/zzq;ZLcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/o7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/o7;->b:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/o7;->c:Lcom/google/android/gms/measurement/internal/zzac;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/o7;->d:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o7;->e:Lcom/google/android/gms/measurement/internal/y7;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/y7;->H(Lcom/google/android/gms/measurement/internal/y7;)Lp4/e;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o7;->e:Lcom/google/android/gms/measurement/internal/y7;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/o7;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o7;->c:Lcom/google/android/gms/measurement/internal/zzac;

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/o7;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/y7;->r(Lp4/e;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzq;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o7;->e:Lcom/google/android/gms/measurement/internal/y7;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/y7;->N(Lcom/google/android/gms/measurement/internal/y7;)V

    return-void
.end method
