.class public Lorg/light/UEUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UEUtil"

.field private static isUE4Ready:Z = false

.field protected static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface; = null

.field private static mAIDLUE4Interface:Lorg/light/AIDLUE4Interface; = null

.field private static mCallLuaInterface:Lorg/light/AIDLICallLuaInterface; = null

.field private static mMountPakInterface:Lorg/light/MountPakInterface; = null

.field private static mOpenLevelInterface:Lorg/light/OpenLevelInterface; = null

.field private static mSurface:Landroid/view/Surface; = null

.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture; = null

.field private static mUEMultiProc:Z = true

.field private static mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _checkUE4Ready()Z
    .locals 1

    sget-boolean v0, Lorg/light/UEUtil;->isUE4Ready:Z

    return v0
.end method

.method public static _initUEInterface(Landroid/content/Context;Lorg/light/listener/AIDLOnBindServiceListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/UEUtil;->nativeInitMethods()V

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    new-instance v1, Lorg/light/UEUtil$5;

    invoke-direct {v1, p1}, Lorg/light/UEUtil$5;-><init>(Lorg/light/listener/AIDLOnBindServiceListener;)V

    invoke-virtual {v0, p0, v1}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->initHelper(Landroid/content/Context;Lcom/tencent/zplan/engine/ZPlanBindServiceListener;)Z

    return-void
.end method

.method public static _initUENativeFunctions()V
    .locals 0

    invoke-static {}, Lorg/light/UEUtil;->nativeInitMethods()V

    return-void
.end method

.method public static _setOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 1

    new-instance v0, Lorg/light/UEUtil$1;

    invoke-direct {v0, p0}, Lorg/light/UEUtil$1;-><init>(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    invoke-static {v0}, Lcom/epicgames/ue4/UE4;->setCMShowEngineInitFinishListener(Lcom/epicgames/ue4/GameActivityThunk$CMShowEngineInitFinishListener;)V

    return-void
.end method

.method public static _setUEMultiProc(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/light/UEUtil;->nativeInitMethods()V

    .line 2
    sput-boolean p0, Lorg/light/UEUtil;->mUEMultiProc:Z

    return-void
.end method

.method public static _startUE4(JLandroid/content/Context;IILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/epicgames/ue4/UE4;->loadLibraries(ZZ)V

    .line 2
    invoke-static {p0, p1}, Lcom/epicgames/ue4/GameActivityNative;->SetEGLShareContext(J)V

    .line 3
    new-instance p0, Lorg/light/UEUtil$2;

    invoke-direct {p0}, Lorg/light/UEUtil$2;-><init>()V

    sput-object p0, Lcom/epicgames/ue4/GameActivityBase;->singletonListener:Lcom/epicgames/ue4/GameActivityBase$SingletonListener;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/epicgames/ue4/UE4;->initEngine(Landroid/content/Context;Landroid/os/Bundle;Z)V

    .line 5
    invoke-static {p5}, Lorg/light/UEUtil;->_setOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    .line 6
    new-instance p0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object p0, Lorg/light/UEUtil;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 7
    invoke-virtual {p0, p3, p4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 8
    new-instance p0, Landroid/view/Surface;

    sget-object p1, Lorg/light/UEUtil;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p0, Lorg/light/UEUtil;->mSurface:Landroid/view/Surface;

    .line 9
    invoke-static {p0}, Lcom/epicgames/ue4/UE4;->initWindow(Landroid/view/Surface;)V

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/epicgames/ue4/UE4;->resumeEngine(Landroid/content/Context;)V

    return-void
.end method

.method public static _stopUE4(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/epicgames/ue4/UE4;->pauseEngine(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/epicgames/ue4/UE4;->stopEngine(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/epicgames/ue4/UE4;->destroyEngine()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lorg/light/UEUtil;->isUE4Ready:Z

    return p0
.end method

.method static synthetic access$100(JZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/light/UEUtil;->nativeRunCallback(JZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/light/UEUtil;->nativeRunEvent(JLjava/lang/String;)V

    return-void
.end method

.method private static bindUERenderTexture(III)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->bindUERenderTexture(III)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->bindUERenderTexture(III)V

    :goto_0
    return-void
.end method

.method private static callLua(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->getLuaCaller()Lcom/tencent/zplan/luabridge/ILuaCaller;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {v0}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->getLuaCaller()Lcom/tencent/zplan/luabridge/ILuaCaller;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lorg/light/UEUtil$3;

    invoke-direct {v1, p2, p3}, Lorg/light/UEUtil$3;-><init>(J)V

    invoke-interface {v0, p0, p1, v1, p4}, Lcom/tencent/zplan/luabridge/ILuaCaller;->callLua(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/zplan/luabridge/ILuaCaller$IOnLuaResult;Z)V

    :cond_1
    return-void
.end method

.method public static checkUE4Ready()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilCheckUE4Ready()Z

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

    const-string v1, "UEUtil"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    sget-boolean v0, Lorg/light/UEUtil;->isUE4Ready:Z

    return v0
.end method

.method public static clearUEFaceStr()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilClearUEFaceStr()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    const-string v1, "UEUtil"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/UEUtil;->nativeClearUEFaceStr()V

    :goto_0
    return-void
.end method

.method public static createUEPlayer(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilCreateUEPlayer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UEUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/UEUtil;->nativeCreateUEPlayer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static debugSaveInUETexture(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->debugSaveInUETexture(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {p2, p0, p1, v1}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->debugSaveInUETexture(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static debugSaveOutUERenderTexture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->debugSaveOutUETexture(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {p1, p0}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->debugSaveOutUETexture(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static initUE4(JLandroid/content/Context;IILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 6

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    move-wide v1, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lorg/light/ILightSDKServiceInterface;->ueUtilStartUE4(JIILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
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

    const-string p1, "UEUtil"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static/range {p0 .. p5}, Lorg/light/UEUtil;->_startUE4(JLandroid/content/Context;IILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    :goto_0
    return-void
.end method

.method public static initUEAIDLInterface(Landroid/content/Context;Lorg/light/UEBindServiceListener;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/light/UEUtil$6;

    invoke-direct {v0, p1}, Lorg/light/UEUtil$6;-><init>(Lorg/light/UEBindServiceListener;)V

    .line 2
    sget-object p1, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilInitUEInterface(Lorg/light/listener/AIDLOnBindServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UEUtil"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, v0}, Lorg/light/UEUtil;->_initUEInterface(Landroid/content/Context;Lorg/light/listener/AIDLOnBindServiceListener;)V

    :goto_0
    return-void
.end method

.method public static initUENativeFunctions()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilInitUENativeFunctions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    const-string v1, "UEUtil"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/UEUtil;->_initUENativeFunctions()V

    :goto_0
    return-void
.end method

.method public static isUE4ServiceReady()Z
    .locals 1

    sget-object v0, Lcom/tencent/zplan/engine/ZPlanServiceHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanServiceHelper;

    invoke-virtual {v0}, Lcom/tencent/zplan/engine/ZPlanServiceHelper;->isEngineReady()Z

    move-result v0

    return v0
.end method

.method private static mountPak(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->mountPak(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->mountPak(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private static native nativeClearUEFaceStr()V
.end method

.method private static native nativeCreateUEPlayer(Ljava/lang/String;)V
.end method

.method private static native nativeInitMethods()V
.end method

.method private static native nativeRunCallback(JZLjava/lang/String;)V
.end method

.method private static native nativeRunEvent(JLjava/lang/String;)V
.end method

.method private static native nativeSetUEFaceStr(Ljava/lang/String;)V
.end method

.method private static openLevel(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0, p0}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->openLevel(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {v0, p0}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->openLevel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static registerLuaEvent(Ljava/lang/String;J)V
    .locals 1

    .line 1
    new-instance v0, Lorg/light/UEUtil$4;

    invoke-direct {v0, p1, p2}, Lorg/light/UEUtil$4;-><init>(J)V

    .line 2
    sget-boolean p1, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {p1, p0, v0}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->observeLuaEvent(Ljava/lang/String;Lcom/tencent/zplan/IOnRemoteLuaEvent;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {p1, p0, v0}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->observeLuaEvent(Ljava/lang/String;Lcom/tencent/zplan/IOnRemoteLuaEvent;)V

    :goto_0
    return-void
.end method

.method private static releaseGraphicBuffers()V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->releaseGraphicBuffers()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {v0}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->releaseGraphicBuffers()V

    :goto_0
    return-void
.end method

.method private static setExternalTexture(IIII)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/light/UEUtil;->mUEMultiProc:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanIPCHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/zplan/engine/ZPlanIPCHelper;->setExternalTexture(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->INSTANCE:Lcom/tencent/zplan/engine/ZPlanNormalHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/zplan/engine/ZPlanNormalHelper;->setExternalTexture(IIII)V

    :goto_0
    return-void
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method

.method public static setOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilSetOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UEUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/UEUtil;->_setOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    :goto_0
    return-void
.end method

.method public static setUEFaceStr(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilSetUEFaceStr(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UEUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/UEUtil;->nativeSetUEFaceStr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setUEMultiProc(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilSetMultiProc(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UEUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/UEUtil;->_setUEMultiProc(Z)V

    :goto_0
    return-void
.end method

.method public static stopUE4(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/UEUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilStopUE4()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UEUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/UEUtil;->_stopUE4(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
