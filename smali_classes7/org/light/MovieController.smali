.class public Lorg/light/MovieController;
.super Lorg/light/Controller;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieController"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/light/MovieController;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/light/Controller;-><init>()V

    return-void
.end method

.method private native nativeDuration()J
.end method

.method private native nativeGetBoundsTrackTimeRanges()[Lorg/light/TimeRange;
.end method

.method private native nativeGetClipInfos()[[Lorg/light/ClipInfo;
.end method

.method private native nativeGetClipPlaceHolders()[Lorg/light/ClipPlaceHolder;
.end method

.method private native nativeGetLUTPlaceHolders()[Lorg/light/LUTPlaceHolder;
.end method

.method private native nativeGetOriginVolume()F
.end method

.method private native nativeGetTextTimeRanges()[Lorg/light/TimeRange;
.end method

.method private native nativeHasAudio()Z
.end method

.method private static native nativeInit()V
.end method

.method private native nativeRegisterClipSourceFactory(Lorg/light/ClipSourceFactory;)V
.end method

.method private native nativeReplaceLUTAsset(Ljava/lang/String;Lorg/light/LUTAsset;)V
.end method

.method private native nativeSetClipAssets([Lorg/light/ClipAsset;Ljava/lang/String;Z)V
.end method

.method private native nativeSetOriginVolume(F)V
.end method


# virtual methods
.method public duration()J
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerDuration(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/MovieController;->nativeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBoundsTrackTimeRanges()[Lorg/light/TimeRange;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetBoundsTrackTimeRanges(I)[Lorg/light/TimeRange;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/MovieController;->nativeGetBoundsTrackTimeRanges()[Lorg/light/TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public getClipInfos()[[Lorg/light/ClipInfo;
    .locals 4

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetClipInfos(I)[Lorg/light/ClipInfoArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    new-array v1, v1, [[Lorg/light/ClipInfo;

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 5
    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/light/ClipInfoArray;->infoArray:[Lorg/light/ClipInfo;

    aput-object v3, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_2
    invoke-direct {p0}, Lorg/light/MovieController;->nativeGetClipInfos()[[Lorg/light/ClipInfo;

    move-result-object v0

    return-object v0
.end method

.method public getClipPlaceHolders()[Lorg/light/ClipPlaceHolder;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetClipPlaceHolders(I)[Lorg/light/ClipPlaceHolder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/MovieController;->nativeGetClipPlaceHolders()[Lorg/light/ClipPlaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getLUTPlaceHolders()[Lorg/light/LUTPlaceHolder;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetLUTPlaceHolders(I)[Lorg/light/LUTPlaceHolder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/MovieController;->nativeGetLUTPlaceHolders()[Lorg/light/LUTPlaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getMediasTotalDurationLimitationStatus()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetMediasTotalDurationLimitationStatus(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/light/MovieController;->nativeGetMediasTotalDurationLimitationStatus()Z

    move-result v0

    return v0
.end method

.method public getOriginVolume()F
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetOriginVolume(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/MovieController;->nativeGetOriginVolume()F

    move-result v0

    return v0
.end method

.method public getTextTimeRanges()[Lorg/light/TimeRange;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetTextTimeRanges(I)[Lorg/light/TimeRange;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/MovieController;->nativeGetTextTimeRanges()[Lorg/light/TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public hasAudio()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerHasAudio(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/MovieController;->nativeHasAudio()Z

    move-result v0

    return v0
.end method

.method public native nativeGetMediasTotalDurationLimitationStatus()Z
.end method

.method public native nativeSetRenderMediaSize(II)V
.end method

.method public native nativeSetupMediasTotalDurationLimitationStatus(Z)V
.end method

.method public registerClipSourceFactory(Lorg/light/ClipSourceFactory;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/MovieController$1;

    invoke-direct {v2, p0, p1}, Lorg/light/MovieController$1;-><init>(Lorg/light/MovieController;Lorg/light/ClipSourceFactory;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->movieControllerRegisterClipSourceFactory(ILorg/light/AIDLClipSourceFactory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MovieController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/MovieController;->nativeRegisterClipSourceFactory(Lorg/light/ClipSourceFactory;)V

    :goto_1
    return-void
.end method

.method public replaceLUTAsset(Ljava/lang/String;Lorg/light/LUTAsset;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->movieControllerReplaceLUTAsset(ILjava/lang/String;Lorg/light/LUTAsset;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MovieController"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/MovieController;->nativeReplaceLUTAsset(Ljava/lang/String;Lorg/light/LUTAsset;)V

    :goto_0
    return-void
.end method

.method public setClipAssets([Lorg/light/ClipAsset;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/light/MovieController;->setClipAssets([Lorg/light/ClipAsset;Ljava/lang/String;Z)V

    return-void
.end method

.method public setClipAssets([Lorg/light/ClipAsset;Ljava/lang/String;Z)V
    .locals 2

    .line 2
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ClipAsset"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5
    :cond_0
    sget-object p1, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {p1, v1, v0, p2, p3}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetClipAssets(ILandroid/os/Bundle;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MovieController"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/light/MovieController;->nativeSetClipAssets([Lorg/light/ClipAsset;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setOriginVolume(F)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetOriginVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MovieController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/MovieController;->nativeSetOriginVolume(F)V

    :goto_0
    return-void
.end method

.method public setRenderMediaSize(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetRenderMediaSize(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRenderMediaSize RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MovieController"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/light/MovieController;->nativeSetRenderMediaSize(II)V

    :goto_0
    return-void
.end method

.method public setupMediasTotalDurationLimitationStatus(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    .line 3
    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetupMediasTotalDurationLimitationStatus(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediasTotalDurationLimitationStatus RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MovieController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/light/MovieController;->nativeSetupMediasTotalDurationLimitationStatus(Z)V

    :goto_0
    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
