.class public final Lcom/google/android/gms/common/internal/h0;
.super Lk4/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-direct {p0, p1, v0}, Lk4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final G0(Lh4/a;Lcom/google/android/gms/common/internal/zax;)Lh4/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk4/a;->f()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lk4/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lk4/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lk4/a;->D0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lh4/a$a;->f(Landroid/os/IBinder;)Lh4/a;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
