.class public final Lcom/tencent/liteav/audio/earmonitor/h;
.super Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/earmonitor/h$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private b:Lcom/tencent/liteav/audio/earmonitor/h$a;


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;-><init>(J)V

    const-string p1, "audio"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Landroid/media/AudioManager;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setParameters failed. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VivoSystemAudioKit"

    invoke-static {v1, p1, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p0}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifySystemError(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V

    return-void
.end method

.method private a()Z
    .locals 5

    const-string/jumbo v0, "vivo_ktv_mic_type"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "="

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    :catch_0
    return v1

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getParameters failed. "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VivoSystemAudioKit"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final initialize()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/audio/earmonitor/h;->a()Z

    move-result v0

    const-string v1, "VivoSystemAudioKit"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "initialize failed. current device dose not support system ear monitoring."

    .line 2
    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p0, v2}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Landroid/media/AudioManager;

    const-string/jumbo v3, "vivo_ktv_mode=1"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Landroid/media/AudioManager;

    const-string/jumbo v3, "vivo_ktv_rec_source=0"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Landroid/media/AudioManager;

    const-string/jumbo v3, "vivo_ktv_play_source=0"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p0, v0}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "initialize failed. "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/tencent/liteav/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p0, v2}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void
.end method

.method public final setEarMonitoringVolume(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 1
    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result p1

    .line 2
    div-int/lit8 p1, p1, 0x6

    const/16 v0, 0xf

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "vivo_ktv_volume_mic="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/earmonitor/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final startEarMonitoring()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:Lcom/tencent/liteav/audio/earmonitor/h$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "vivo_ktv_play_source=1"

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/earmonitor/h;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/tencent/liteav/audio/earmonitor/h$a;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/earmonitor/h$a;-><init>(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:Lcom/tencent/liteav/audio/earmonitor/h$a;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stopEarMonitoring()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:Lcom/tencent/liteav/audio/earmonitor/h$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "vivo_ktv_play_source=0"

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/earmonitor/h;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:Lcom/tencent/liteav/audio/earmonitor/h$a;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/tencent/liteav/audio/earmonitor/h$a;->a:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:Lcom/tencent/liteav/audio/earmonitor/h$a;

    return-void
.end method

.method public final terminate()V
    .locals 1

    const-string/jumbo v0, "vivo_ktv_mode=0"

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/earmonitor/h;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/earmonitor/h;->stopEarMonitoring()V

    return-void
.end method
