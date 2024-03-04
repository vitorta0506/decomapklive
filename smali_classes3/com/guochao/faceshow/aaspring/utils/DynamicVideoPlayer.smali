.class public Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHE_SIZE:I = 0xa

.field static final GB:J = 0x40000000L

.field private static final PLAYER_POOL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VODPLAYER_POOL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/TXVodPlayer;",
            ">;"
        }
    .end annotation
.end field

.field static sCacheSize:I

.field private static sDynamicVideoPlayer:Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;


# instance fields
.field private mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->PLAYER_POOL:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->VODPLAYER_POOL:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    sput v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sCacheSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoCacheCount()I
    .locals 4

    .line 1
    sget v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sCacheSize:I

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sCacheSize:I

    return v0

    .line 4
    :cond_1
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 6
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x4e800000

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sCacheSize:I

    return v0
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sDynamicVideoPlayer:Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sDynamicVideoPlayer:Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sDynamicVideoPlayer:Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->sDynamicVideoPlayer:Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    return-object v0
.end method

.method private getPlayer()Lcom/tencent/rtmp/TXVodPlayer;
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->VODPLAYER_POOL:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/rtmp/TXVodPlayer;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "ugc_video"

    invoke-virtual {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->createPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cacheVideo(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getPlayer(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->isCaching()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->cache()V

    return-object p1
.end method

.method public createPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXVodPlayer;
    .locals 1

    const-string v0, "ugc_video"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->createPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object p1

    return-object p1
.end method

.method public createPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/rtmp/TXVodPlayer;
    .locals 4

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/rtmp/TXVodPlayer;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setCacheFolderPath(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 7
    invoke-virtual {v1, p1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMaxCacheItems(I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setConfig(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setRenderMode(I)V

    .line 10
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->setMute(Lcom/tencent/rtmp/TXVodPlayer;Z)V

    return-object v0
.end method

.method public createShortVideoPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXVodPlayer;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/rtmp/TXVodPlayer;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/short_videos/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setCacheFolderPath(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 6
    invoke-virtual {v1, p1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMaxCacheItems(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setConfig(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setRenderMode(I)V

    return-object v0
.end method

.method public getPlayer(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;
    .locals 3

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->PLAYER_POOL:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    if-nez v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 10
    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    invoke-direct {v2, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;-><init>(Lcom/tencent/rtmp/TXVodPlayer;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_0
    return-object v1
.end method

.method public getTXVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    return-object v0
.end method

.method public setCurrentPlayer(Lcom/tencent/rtmp/TXVodPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    return-void
.end method

.method public setTXVodPlayer(Lcom/tencent/rtmp/TXVodPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->PLAYER_POOL:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->getTXVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->getTXVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->stop()V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->VODPLAYER_POOL:Ljava/util/List;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->getTXVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->setTXVodPlayer(Lcom/tencent/rtmp/TXVodPlayer;)V

    :cond_0
    return-void
.end method
