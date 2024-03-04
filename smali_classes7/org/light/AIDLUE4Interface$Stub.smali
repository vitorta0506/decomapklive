.class public abstract Lorg/light/AIDLUE4Interface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/light/AIDLUE4Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/AIDLUE4Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/AIDLUE4Interface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.light.AIDLUE4Interface"

.field static final TRANSACTION_bindUERenderTexture:I = 0x5

.field static final TRANSACTION_callLua:I = 0x1

.field static final TRANSACTION_mountPak:I = 0x2

.field static final TRANSACTION_openLevel:I = 0x3

.field static final TRANSACTION_releaseGraphicBuffers:I = 0x6

.field static final TRANSACTION_setExternalTexture:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.light.AIDLUE4Interface"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/light/AIDLUE4Interface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.light.AIDLUE4Interface"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lorg/light/AIDLUE4Interface;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lorg/light/AIDLUE4Interface;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/light/AIDLUE4Interface$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/light/AIDLUE4Interface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "org.light.AIDLUE4Interface"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lorg/light/AIDLUE4Interface;->releaseGraphicBuffers()V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9
    invoke-interface {p0, p1, p4, p2}, Lorg/light/AIDLUE4Interface;->bindUERenderTexture(III)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 11
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 16
    invoke-interface {p0, p1, p4, v0, p2}, Lorg/light/AIDLUE4Interface;->setExternalTexture(IIII)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 18
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-interface {p0, p1}, Lorg/light/AIDLUE4Interface;->openLevel(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 22
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-interface {p0, p1, p2}, Lorg/light/AIDLUE4Interface;->mountPak(Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 27
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lorg/light/LuaResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/LuaResultCallback;

    move-result-object p2

    .line 31
    invoke-interface {p0, p1, p4, p2}, Lorg/light/AIDLUE4Interface;->callLua(Ljava/lang/String;Ljava/lang/String;Lorg/light/LuaResultCallback;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 33
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
