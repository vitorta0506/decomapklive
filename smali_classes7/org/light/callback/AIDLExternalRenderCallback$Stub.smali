.class public abstract Lorg/light/callback/AIDLExternalRenderCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/light/callback/AIDLExternalRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/callback/AIDLExternalRenderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/callback/AIDLExternalRenderCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.light.callback.AIDLExternalRenderCallback"

.field static final TRANSACTION_afterRender:I = 0x3

.field static final TRANSACTION_getInputSurface:I = 0x1

.field static final TRANSACTION_onRender:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.light.callback.AIDLExternalRenderCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/light/callback/AIDLExternalRenderCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.light.callback.AIDLExternalRenderCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lorg/light/callback/AIDLExternalRenderCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lorg/light/callback/AIDLExternalRenderCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/light/callback/AIDLExternalRenderCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/light/callback/AIDLExternalRenderCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "org.light.callback.AIDLExternalRenderCallback"

    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lorg/light/bean/Texture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/bean/Texture;

    goto :goto_0

    :cond_2
    move-object p1, v4

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 7
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/view/Surface;

    .line 8
    :cond_3
    invoke-interface {p0, p1, v4}, Lorg/light/callback/AIDLExternalRenderCallback;->afterRender(Lorg/light/bean/Texture;Landroid/view/Surface;)V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 10
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    sget-object p1, Lorg/light/bean/Texture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/bean/Texture;

    goto :goto_1

    :cond_5
    move-object p1, v4

    .line 13
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    sget-object v3, Lorg/light/bean/Texture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/light/bean/Texture;

    .line 17
    :cond_6
    invoke-interface {p0, p1, p4, v2, v4}, Lorg/light/callback/AIDLExternalRenderCallback;->onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)Lorg/light/bean/Texture;

    move-result-object p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    invoke-virtual {p1, p3, v1}, Lorg/light/bean/Texture;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 22
    :cond_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 25
    invoke-interface {p0, p1, p2}, Lorg/light/callback/AIDLExternalRenderCallback;->getInputSurface(II)Landroid/view/Surface;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 27
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {p1, p3, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 29
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1
.end method
