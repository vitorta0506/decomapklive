.class public abstract Lorg/light/AIDLIExternalAudioProcessor$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/light/AIDLIExternalAudioProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/AIDLIExternalAudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/AIDLIExternalAudioProcessor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.light.AIDLIExternalAudioProcessor"

.field static final TRANSACTION_process:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.light.AIDLIExternalAudioProcessor"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/light/AIDLIExternalAudioProcessor;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.light.AIDLIExternalAudioProcessor"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lorg/light/AIDLIExternalAudioProcessor;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lorg/light/AIDLIExternalAudioProcessor;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/light/AIDLIExternalAudioProcessor$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/light/AIDLIExternalAudioProcessor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    const-string v1, "org.light.AIDLIExternalAudioProcessor"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    sget-object p4, Lorg/light/AudioFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/light/AudioFrame;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-interface {p0, p1, p2}, Lorg/light/AIDLIExternalAudioProcessor;->process(Ljava/lang/String;Lorg/light/AudioFrame;)Lorg/light/AudioFrame;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p1, p3, v0}, Lorg/light/AudioFrame;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0
.end method
