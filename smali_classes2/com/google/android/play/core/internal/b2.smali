.class public final Lcom/google/android/play/core/internal/b2;
.super Lcom/google/android/play/core/internal/r1;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/internal/r1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Z(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/r1;->f()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/play/core/internal/t1;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/t1;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/r1;->D0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/r1;->f()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/play/core/internal/t1;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/r1;->D0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final t0(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/r1;->f()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/play/core/internal/t1;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/r1;->D0(ILandroid/os/Parcel;)V

    return-void
.end method
