.class final Lcom/google/android/play/core/appupdate/zzd;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ld5/o;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->a:Ld5/o;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->a:Ld5/o;

    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->a:Ld5/o;

    const/4 p2, -0x1

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
