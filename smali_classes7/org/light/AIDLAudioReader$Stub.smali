.class public abstract Lorg/light/AIDLAudioReader$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/light/AIDLAudioReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/AIDLAudioReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/AIDLAudioReader$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.light.AIDLAudioReader"

.field static final TRANSACTION_copyNextFrame:I = 0x1

.field static final TRANSACTION_copyNextFrameSyncEnable:I = 0x2

.field static final TRANSACTION_duration:I = 0x5

.field static final TRANSACTION_release:I = 0x6

.field static final TRANSACTION_seek:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.light.AIDLAudioReader"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/light/AIDLAudioReader;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.light.AIDLAudioReader"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lorg/light/AIDLAudioReader;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lorg/light/AIDLAudioReader;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/light/AIDLAudioReader$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/light/AIDLAudioReader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "org.light.AIDLAudioReader"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lorg/light/AIDLAudioReader;->release()V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lorg/light/AIDLAudioReader;->duration()J

    move-result-wide p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 9
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 11
    invoke-interface {p0, p1}, Lorg/light/AIDLAudioReader;->setVolume(F)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 13
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 15
    invoke-interface {p0, p1, p2}, Lorg/light/AIDLAudioReader;->seek(J)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 17
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-interface {p0, p1}, Lorg/light/AIDLAudioReader;->copyNextFrameSyncEnable(Z)Lorg/light/AudioFrame;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {p1, p3, v1}, Lorg/light/AudioFrame;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 24
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lorg/light/AIDLAudioReader;->copyNextFrame()Lorg/light/AudioFrame;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {p1, p3, v1}, Lorg/light/AudioFrame;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 30
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
