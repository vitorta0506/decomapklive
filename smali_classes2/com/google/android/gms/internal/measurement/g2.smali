.class final Lcom/google/android/gms/internal/measurement/g2;
.super Lcom/google/android/gms/internal/measurement/l2;
.source "SourceFile"


# instance fields
.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/internal/measurement/w2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/w2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g2;->f:Lcom/google/android/gms/internal/measurement/w2;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/g2;->e:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l2;-><init>(Lcom/google/android/gms/internal/measurement/w2;Z)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g2;->f:Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w2;->t(Lcom/google/android/gms/internal/measurement/w2;)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/g2;->e:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/e1;->setDataCollectionEnabled(Z)V

    return-void
.end method
