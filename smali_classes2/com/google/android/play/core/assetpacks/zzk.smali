.class final Lcom/google/android/play/core/assetpacks/zzk;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ld5/o;

.field final synthetic b:Lcom/google/android/play/core/assetpacks/p3;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->a:Ld5/o;

    new-instance p2, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/16 v0, -0x64

    invoke-direct {p2, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-virtual {p1, p2}, Ld5/o;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->a:Ld5/o;

    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->a:Ld5/o;

    const/4 p2, -0x1

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ld5/o;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->b:Lcom/google/android/play/core/assetpacks/p3;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/p3;->a(Lcom/google/android/play/core/assetpacks/p3;)Lcom/google/android/play/core/assetpacks/r0;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/play/core/assetpacks/r0;->a(Landroid/app/PendingIntent;)V

    return-void
.end method
