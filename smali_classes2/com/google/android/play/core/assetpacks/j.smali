.class final Lcom/google/android/play/core/assetpacks/j;
.super Lcom/google/android/play/core/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic b:Ld5/o;

.field final synthetic c:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;Ld5/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/j;->c:Lcom/google/android/play/core/assetpacks/s;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/j;->b:Ld5/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/h;-><init>(Ld5/o;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->s(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/s;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->t(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->n()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/assetpacks/o;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/j;->c:Lcom/google/android/play/core/assetpacks/s;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/j;->b:Ld5/o;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/assetpacks/o;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/w1;->Q(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/y1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "keepAlive"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
