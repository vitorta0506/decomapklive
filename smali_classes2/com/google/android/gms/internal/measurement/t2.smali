.class final Lcom/google/android/gms/internal/measurement/t2;
.super Lcom/google/android/gms/internal/measurement/l2;
.source "SourceFile"


# instance fields
.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/google/android/gms/internal/measurement/a1;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/v2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t2;->g:Lcom/google/android/gms/internal/measurement/v2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t2;->e:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/t2;->f:Lcom/google/android/gms/internal/measurement/a1;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l2;-><init>(Lcom/google/android/gms/internal/measurement/w2;Z)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t2;->g:Lcom/google/android/gms/internal/measurement/v2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w2;->t(Lcom/google/android/gms/internal/measurement/w2;)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t2;->e:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/t2;->f:Lcom/google/android/gms/internal/measurement/a1;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/l2;->b:J

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/e1;->onActivitySaveInstanceState(Lh4/a;Lcom/google/android/gms/internal/measurement/h1;J)V

    return-void
.end method
