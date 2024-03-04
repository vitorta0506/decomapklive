.class final Lcom/google/android/play/core/assetpacks/o;
.super Lcom/google/android/play/core/assetpacks/k;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/o;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    return-void
.end method


# virtual methods
.method public final S(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;->S(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/o;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->w(Lcom/google/android/play/core/assetpacks/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Expected keepingAlive to be true, but was false."

    .line 3
    invoke-virtual {p2, v1, v0}, Lcom/google/android/play/core/internal/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const-string p2, "keep_alive"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/o;->c:Lcom/google/android/play/core/assetpacks/s;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/s;->b()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->s(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k;->a:Ld5/o;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/s;->s(Ld5/o;)V

    const-string v0, "error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->a:Ld5/o;

    new-instance v1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    .line 4
    invoke-direct {v1, p1}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-virtual {v0, v1}, Ld5/o;->d(Ljava/lang/Exception;)Z

    return-void
.end method
