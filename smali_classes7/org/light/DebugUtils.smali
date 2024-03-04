.class public Lorg/light/DebugUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DebugUtils"

.field protected static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field protected instanceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/DebugUtils;->instanceId:I

    return-void
.end method

.method private static native nativeSetImageDebugInfo(ZLjava/lang/String;ZZZZZ)V
.end method

.method public static setImageDebugInfo(ZLjava/lang/String;ZZZZZ)V
    .locals 8

    .line 1
    sget-object v0, Lorg/light/DebugUtils;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    :try_start_0
    invoke-interface/range {v0 .. v7}, Lorg/light/ILightSDKServiceInterface;->debugUtilsSetImageDebugInfo(ZLjava/lang/String;ZZZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DebugUtils"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/light/DebugUtils;->nativeSetImageDebugInfo(ZLjava/lang/String;ZZZZZ)V

    :goto_0
    return-void
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/DebugUtils;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method
