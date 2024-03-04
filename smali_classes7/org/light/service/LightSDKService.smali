.class public Lorg/light/service/LightSDKService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/service/LightSDKService$SDKServiceLogger;,
        Lorg/light/service/LightSDKService$LoadSOResult;,
        Lorg/light/service/LightSDKService$LightSDKServiceBinder;
    }
.end annotation


# static fields
.field public static final DATA_KEY_NATIVE_SO_PATHS:Ljava/lang/String; = "DATA_KEY_NATIVE_SO_PATHS"

.field public static final DATA_KEY_SO_PATHS:Ljava/lang/String; = "DATA_KEY_SO_PATHS"

.field private static final TAG:Ljava/lang/String; = "LightSDKService"


# instance fields
.field private final cameraInputBuffer:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/light/NativeBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originTextureMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final renderEglSurfaceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/opengl/EGLSurface;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceOutBuffer:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/light/NativeBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private taskEglCore:Lorg/light/gles/EglCore;

.field private taskHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/light/service/LightSDKService;->instanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/light/service/LightSDKService;->renderEglSurfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/light/service/LightSDKService;->cameraInputBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/light/service/LightSDKService;->surfaceOutBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/light/service/LightSDKService;->originTextureMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/light/service/LightSDKService;->taskHandler:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Lorg/light/service/LightSDKService;->taskEglCore:Lorg/light/gles/EglCore;

    return-void
.end method

.method static synthetic access$000(Lorg/light/service/LightSDKService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService;->taskHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$002(Lorg/light/service/LightSDKService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService;->taskHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService;->taskEglCore:Lorg/light/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService;->renderEglSurfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$102(Lorg/light/service/LightSDKService;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService;->taskEglCore:Lorg/light/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/light/service/LightSDKService;->runTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService;->surfaceOutBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lorg/light/service/LightSDKService;)Z
    .locals 0

    invoke-direct {p0}, Lorg/light/service/LightSDKService;->checkProcessPriority()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService;->instanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService;->runTaskSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4200(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService;->runTaskAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/light/service/LightSDKService;->runTaskSyncRenderThread(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService;->originTextureMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService;->cameraInputBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private checkProcessPriority()Z
    .locals 5

    const-string v0, "LightSDKService"

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 2
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/oom_adj"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process pid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oom_adj:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read process oom_adj exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static loadSo(Landroid/os/Bundle;)Lorg/light/service/LightSDKService$LoadSOResult;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v0, "DATA_KEY_SO_PATHS"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "DATA_KEY_NATIVE_SO_PATHS"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_7

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Lorg/light/service/LightSDKService;->loadSoInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    sget-object p0, Lorg/light/service/LightSDKService$LoadSOResult;->LoadFailed:Lorg/light/service/LightSDKService$LoadSOResult;

    return-object p0

    :cond_4
    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->loadSoInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    sget-object p0, Lorg/light/service/LightSDKService$LoadSOResult;->LoadFailed:Lorg/light/service/LightSDKService$LoadSOResult;

    return-object p0

    :cond_6
    const-string p0, "LightSDKService"

    const-string v0, "loadSo success"

    .line 12
    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p0, Lorg/light/service/LightSDKService$LoadSOResult;->LoadSuccess:Lorg/light/service/LightSDKService$LoadSOResult;

    return-object p0

    .line 14
    :cond_7
    :goto_1
    sget-object p0, Lorg/light/service/LightSDKService$LoadSOResult;->NotNeedToLoad:Lorg/light/service/LightSDKService$LoadSOResult;

    return-object p0
.end method

.method private static loadSoInternal(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSoInternal(), loadNativeSo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightSDKService"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/light/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSoInternal() failed:\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private runTask(Ljava/lang/Runnable;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/light/service/LightSDKService;->runTask(Ljava/lang/Runnable;ZLandroid/opengl/EGLSurface;)V

    return-void
.end method

.method private runTask(Ljava/lang/Runnable;ZLandroid/opengl/EGLSurface;)V
    .locals 9

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lorg/light/Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/light/Lock;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v7, p0, Lorg/light/service/LightSDKService;->taskHandler:Landroid/os/Handler;

    new-instance v8, Lorg/light/service/LightSDKService$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$1;-><init>(Lorg/light/service/LightSDKService;Landroid/opengl/EGLSurface;Ljava/lang/Runnable;ZLorg/light/Lock;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/light/Lock;->acquire()V

    :cond_1
    return-void
.end method

.method private runTaskAsync(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/light/service/LightSDKService;->runTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private runTaskSync(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/light/service/LightSDKService;->runTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private runTaskSyncRenderThread(ILjava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService;->renderEglSurfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/opengl/EGLSurface;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, v0, p1}, Lorg/light/service/LightSDKService;->runTask(Ljava/lang/Runnable;ZLandroid/opengl/EGLSurface;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lorg/light/service/LightSDKService;->loadSo(Landroid/os/Bundle;)Lorg/light/service/LightSDKService$LoadSOResult;

    move-result-object p1

    sget-object v0, Lorg/light/service/LightSDKService$LoadSOResult;->LoadFailed:Lorg/light/service/LightSDKService$LoadSOResult;

    if-eq p1, v0, :cond_0

    new-instance p1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-direct {p1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;-><init>(Lorg/light/service/LightSDKService;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "LightSDKService"

    const-string v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "LightSDKService"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/light/service/LightSDKService;->taskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService;->taskEglCore:Lorg/light/gles/EglCore;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/light/gles/EglCore;->release()V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/light/service/LightSDKService;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
