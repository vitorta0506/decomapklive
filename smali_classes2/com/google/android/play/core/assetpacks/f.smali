.class final Lcom/google/android/play/core/assetpacks/f;
.super Lcom/google/android/play/core/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ld5/o;

.field final synthetic g:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;ILjava/lang/String;Ljava/lang/String;ILd5/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/f;->g:Lcom/google/android/play/core/assetpacks/s;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/f;->b:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/f;->d:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/f;->e:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/f;->f:Ld5/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/h;-><init>(Ld5/o;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f;->g:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->r(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/s;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f;->g:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->t(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/f;->b:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/f;->d:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/play/core/assetpacks/f;->e:I

    .line 2
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/s;->l(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->n()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/p;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/f;->g:Lcom/google/android/play/core/assetpacks/s;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/f;->f:Ld5/o;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/p;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/internal/w1;->G(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/y1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyChunkTransferred"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
