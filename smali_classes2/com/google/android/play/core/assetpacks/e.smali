.class final Lcom/google/android/play/core/assetpacks/e;
.super Lcom/google/android/play/core/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ld5/o;

.field final synthetic d:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;Ljava/util/Map;Ld5/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e;->d:Lcom/google/android/play/core/assetpacks/s;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/e;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/e;->c:Ld5/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/h;-><init>(Ld5/o;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e;->d:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->r(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/s;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e;->d:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->t(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e;->b:Ljava/util/Map;

    .line 2
    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/s;->o(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/assetpacks/n;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/e;->d:Lcom/google/android/play/core/assetpacks/s;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/e;->c:Ld5/o;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/assetpacks/n;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/w1;->k0(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/y1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "syncPacks"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e;->c:Ld5/o;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ld5/o;->d(Ljava/lang/Exception;)Z

    return-void
.end method
