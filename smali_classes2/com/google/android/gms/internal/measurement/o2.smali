.class final Lcom/google/android/gms/internal/measurement/o2;
.super Lcom/google/android/gms/internal/measurement/l2;
.source "SourceFile"


# instance fields
.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/google/android/gms/internal/measurement/v2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o2;->f:Lcom/google/android/gms/internal/measurement/v2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o2;->e:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l2;-><init>(Lcom/google/android/gms/internal/measurement/w2;Z)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o2;->f:Lcom/google/android/gms/internal/measurement/v2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w2;->t(Lcom/google/android/gms/internal/measurement/w2;)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/o2;->e:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/l2;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/e1;->onActivityStarted(Lh4/a;J)V

    return-void
.end method
