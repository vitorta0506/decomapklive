.class public abstract Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl"

.field static final TRANSACTION_checkResourceStatus:I = 0x12

.field static final TRANSACTION_clearCache:I = 0x11

.field static final TRANSACTION_getClipPlayUrl:I = 0x6

.field static final TRANSACTION_getNativeInfo:I = 0x10

.field static final TRANSACTION_getPlayErrorCodeStr:I = 0x7

.field static final TRANSACTION_getPlayUrl:I = 0x5

.field static final TRANSACTION_getResourceSize:I = 0x13

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_pauseDownload:I = 0x9

.field static final TRANSACTION_pushEvent:I = 0x14

.field static final TRANSACTION_resumeDownload:I = 0xa

.field static final TRANSACTION_setClipInfo:I = 0x4

.field static final TRANSACTION_setMaxStorageSizeMB:I = 0x16

.field static final TRANSACTION_setPlayState:I = 0x15

.field static final TRANSACTION_setUserData:I = 0xf

.field static final TRANSACTION_startClipPlay:I = 0x3

.field static final TRANSACTION_startClipPreload:I = 0xc

.field static final TRANSACTION_startPlay:I = 0x2

.field static final TRANSACTION_startPreload:I = 0xb

.field static final TRANSACTION_startTask:I = 0xe

.field static final TRANSACTION_stopPlay:I = 0x8

.field static final TRANSACTION_stopPreload:I = 0xd

.field static final TRANSACTION_updateTaskInfo:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 5
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->updateTaskInfo(ILjava/util/Map;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 8
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 10
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->setMaxStorageSizeMB(J)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 12
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 15
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->setPlayState(II)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 17
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 19
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->pushEvent(I)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 21
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->getResourceSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 31
    invoke-interface {p0, p1, p4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->checkResourceStatus(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 34
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 38
    invoke-interface {p0, p1, p4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->clearCache(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 41
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 43
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->getNativeInfo(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 46
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->setUserData(Ljava/util/Map;)V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 51
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->startTask(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 55
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 57
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->stopPreload(I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 59
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    move-result-object p2

    .line 63
    invoke-interface {p0, p1, p4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->startClipPreload(Ljava/lang/String;ILcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;)I

    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 66
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 69
    sget-object p4, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    move-result-object p2

    .line 71
    invoke-interface {p0, p1, v0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;)I

    move-result p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 74
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 76
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->resumeDownload(I)I

    move-result p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 79
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->pauseDownload(I)I

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 84
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 86
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->stopPlay(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 88
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 90
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->getPlayErrorCodeStr(I)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 93
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 97
    invoke-interface {p0, p1, p4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->getClipPlayUrl(III)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 100
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 103
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->getPlayUrl(II)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 106
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    .line 112
    :cond_1
    invoke-interface {p0, p1, p4, v2, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->setClipInfo(IILjava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;)Z

    move-result p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 115
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    move-result-object p2

    .line 119
    invoke-interface {p0, p1, p4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->startClipPlay(Ljava/lang/String;ILcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;)I

    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 122
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 125
    sget-object p4, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    .line 126
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    move-result-object p2

    .line 127
    invoke-interface {p0, p1, v0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->startPlay(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;)I

    move-result p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 130
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;->init(Ljava/lang/String;)I

    move-result p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 135
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
