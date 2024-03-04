.class public final Lt3/r;
.super Lj4/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lj4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E0(Lt3/q;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj4/a;->f()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lj4/d;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lj4/d;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x67

    .line 4
    invoke-virtual {p0, p1, v0}, Lj4/a;->D0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final F0(Lt3/q;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj4/a;->f()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lj4/d;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lj4/d;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x66

    .line 4
    invoke-virtual {p0, p1, v0}, Lj4/a;->D0(ILandroid/os/Parcel;)V

    return-void
.end method
