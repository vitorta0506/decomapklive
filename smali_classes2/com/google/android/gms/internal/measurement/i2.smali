.class final Lcom/google/android/gms/internal/measurement/i2;
.super Lcom/google/android/gms/internal/measurement/l2;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/internal/measurement/m2;

.field final synthetic f:Lcom/google/android/gms/internal/measurement/w2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/m2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/i2;->f:Lcom/google/android/gms/internal/measurement/w2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/i2;->e:Lcom/google/android/gms/internal/measurement/m2;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i2;->f:Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w2;->t(Lcom/google/android/gms/internal/measurement/w2;)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/i2;->e:Lcom/google/android/gms/internal/measurement/m2;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/e1;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/k1;)V

    return-void
.end method
