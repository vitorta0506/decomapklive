.class public Lorg/light/MovieConfig;
.super Lorg/light/Config;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/light/Config;-><init>()V

    return-void
.end method

.method public static make()Lorg/light/MovieConfig;
    .locals 5

    const-string v0, "MovieConfig"

    .line 1
    sget-object v1, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-interface {v1}, Lorg/light/ILightSDKServiceInterface;->movieConfigMake()Lorg/light/service/InstanceId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Lorg/light/MovieConfig;

    invoke-direct {v3}, Lorg/light/MovieConfig;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget v1, v1, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v3, v1}, Lorg/light/Config;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "MovieConfig:%x init success"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 7
    :cond_1
    invoke-static {}, Lorg/light/MovieConfig;->nativeMake()Lorg/light/MovieConfig;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeMake()Lorg/light/MovieConfig;
.end method
