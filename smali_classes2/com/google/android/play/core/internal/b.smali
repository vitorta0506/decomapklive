.class public final Lcom/google/android/play/core/internal/b;
.super Lcom/google/android/play/core/internal/r1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/d;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/internal/r1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final W(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/f;)V
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
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/t1;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/t1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/r1;->D0(ILandroid/os/Parcel;)V

    return-void
.end method
