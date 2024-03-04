.class final Lcom/google/android/play/core/assetpacks/m;
.super Lcom/google/android/play/core/assetpacks/k;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    return-void
.end method


# virtual methods
.method public final Z(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;->Z(Landroid/os/Bundle;Landroid/os/Bundle;)V

    const-string p2, "chunk_file_descriptor"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->a:Ld5/o;

    .line 3
    invoke-virtual {p2, p1}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
