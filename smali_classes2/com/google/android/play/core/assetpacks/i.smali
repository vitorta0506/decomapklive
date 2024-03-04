.class final Lcom/google/android/play/core/assetpacks/i;
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

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->g:Lcom/google/android/play/core/assetpacks/s;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/i;->b:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/i;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/i;->d:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/i;->e:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/i;->f:Ld5/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/h;-><init>(Ld5/o;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i;->g:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->r(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/s;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i;->g:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->t(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/i;->b:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/i;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->d:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/play/core/assetpacks/i;->e:I

    .line 2
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/s;->l(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->n()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/m;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/i;->g:Lcom/google/android/play/core/assetpacks/s;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/i;->f:Ld5/o;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/m;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/internal/w1;->p0(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/y1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/play/core/assetpacks/i;->e:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/play/core/assetpacks/i;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 7
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/internal/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i;->f:Ld5/o;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ld5/o;->d(Ljava/lang/Exception;)Z

    return-void
.end method
