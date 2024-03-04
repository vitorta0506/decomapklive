.class public abstract Lcom/google/android/play/core/internal/e;
.super Lcom/google/android/play/core/internal/s1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback"

    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/s1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final b(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/core/internal/t1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/play/core/internal/f;->A0(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
