.class final Lcom/google/android/play/core/assetpacks/d;
.super Lcom/google/android/play/core/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ld5/o;

.field final synthetic d:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;Ljava/util/List;Ld5/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d;->d:Lcom/google/android/play/core/assetpacks/s;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/d;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/d;->c:Ld5/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/h;-><init>(Ld5/o;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->u(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d;->d:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->r(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/internal/s;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/w1;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/d;->d:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/s;->t(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->n()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/l;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/d;->d:Lcom/google/android/play/core/assetpacks/s;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/d;->c:Ld5/o;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/l;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    .line 4
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/internal/w1;->v0(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/y1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/d;->b:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "cancelDownloads(%s)"

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
