.class final Lcom/google/android/gms/measurement/internal/k8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/j8;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/o8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o8;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/measurement/internal/j8;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Le4/d;->a()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/j8;-><init>(Lcom/google/android/gms/measurement/internal/k8;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/k8;->a:Lcom/google/android/gms/measurement/internal/j8;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o8;->o(Lcom/google/android/gms/measurement/internal/o8;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/k8;->a:Lcom/google/android/gms/measurement/internal/j8;

    const-wide/16 v0, 0x7d0

    .line 3
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final b()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->a:Lcom/google/android/gms/measurement/internal/j8;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o8;->o(Lcom/google/android/gms/measurement/internal/o8;)Landroid/os/Handler;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x3;->q:Lcom/google/android/gms/measurement/internal/r3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/r3;->a(Z)V

    return-void
.end method
