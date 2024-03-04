.class public final Li4/d;
.super Li4/a;
.source "SourceFile"

# interfaces
.implements Li4/f;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-direct {p0, p1, v0}, Li4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li4/a;->f()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Li4/a;->D0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final o(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li4/a;->f()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Li4/c;->a(Landroid/os/Parcel;Z)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, p1}, Li4/a;->D0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 4
    invoke-static {p1}, Li4/c;->b(Landroid/os/Parcel;)Z

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method
