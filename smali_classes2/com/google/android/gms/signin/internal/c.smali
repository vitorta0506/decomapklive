.class public final Lcom/google/android/gms/signin/internal/c;
.super Lk4/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lk4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final G0(Lcom/google/android/gms/signin/internal/zai;Lr4/c;)V
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
    invoke-static {v0, p1}, Lk4/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lk4/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1, v0}, Lk4/a;->E0(ILandroid/os/Parcel;)V

    return-void
.end method
