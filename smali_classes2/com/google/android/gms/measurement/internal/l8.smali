.class final Lcom/google/android/gms/measurement/internal/l8;
.super Lcom/google/android/gms/measurement/internal/n;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/m8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m8;Lcom/google/android/gms/measurement/internal/i5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l8;->e:Lcom/google/android/gms/measurement/internal/m8;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/i5;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l8;->e:Lcom/google/android/gms/measurement/internal/m8;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Le4/d;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/m8;->d(ZZJ)Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->y()Lcom/google/android/gms/measurement/internal/x1;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Le4/d;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/x1;->n(J)V

    return-void
.end method
