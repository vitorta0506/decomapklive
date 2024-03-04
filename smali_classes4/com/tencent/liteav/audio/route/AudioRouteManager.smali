.class public Lcom/tencent/liteav/audio/route/AudioRouteManager;
.super Lcom/tencent/liteav/audio/route/o$a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SCO_RECONNECT_INTERVAL:I = 0x3e8

.field private static final IN_CALL_DETECTION_TIME:J = 0x1f4L

.field private static final RECORDING_CONFIGS_LIMIT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AudioRouteManager"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private final mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

.field private final mBroadcastReceiver:Lcom/tencent/liteav/audio/route/o;

.field private mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

.field private mCurrentRouteConfig:Ljava/lang/String;

.field private mCurrentRouteType:Lcom/tencent/liteav/audio/route/b$a;

.field private mExpectedAudioIOScene:Lcom/tencent/liteav/audio/route/a;

.field private final mForceUpdateRouteRunnable:Ljava/lang/Runnable;

.field private mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private mIsServiceStarted:Z

.field private final mNativeAudioRouteManager:J

.field private mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

.field private mSwitcherListener:Lcom/tencent/liteav/audio/route/n$a$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/o$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    .line 4
    sget-object v1, Lcom/tencent/liteav/audio/route/a;->a:Lcom/tencent/liteav/audio/route/a;

    iput-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    .line 5
    iput-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mExpectedAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    .line 6
    sget-object v1, Lcom/tencent/liteav/audio/route/b$a;->a:Lcom/tencent/liteav/audio/route/b$a;

    iput-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteType:Lcom/tencent/liteav/audio/route/b$a;

    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteConfig:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    .line 10
    invoke-static {p0}, Lcom/tencent/liteav/audio/route/c;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mForceUpdateRouteRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;-><init>(Lcom/tencent/liteav/audio/route/AudioRouteManager;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcherListener:Lcom/tencent/liteav/audio/route/n$a$a;

    .line 12
    iput-wide p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mNativeAudioRouteManager:J

    .line 13
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/tencent/liteav/audio/route/m;

    invoke-direct {p2}, Lcom/tencent/liteav/audio/route/m;-><init>()V

    iput-object p2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    const-string p2, "audio"

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    .line 16
    new-instance p2, Lcom/tencent/liteav/audio/route/o;

    invoke-direct {p2, p1, p0}, Lcom/tencent/liteav/audio/route/o;-><init>(Landroid/content/Context;Lcom/tencent/liteav/audio/route/o$a;)V

    iput-object p2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mBroadcastReceiver:Lcom/tencent/liteav/audio/route/o;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/audio/route/AudioRouteManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mNativeAudioRouteManager:J

    return-wide v0
.end method

.method static synthetic access$100(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->nativeNotifyAudioRouteChangedFromJava(JI)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/liteav/audio/route/AudioRouteManager;)Lcom/tencent/liteav/audio/route/m;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->autoCheckRouteUpdate(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/liteav/audio/route/AudioRouteManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/liteav/audio/route/AudioRouteManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->handleRecordingConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/liteav/audio/route/AudioRouteManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->stopInternal()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/tencent/liteav/audio/route/AudioRouteManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->notifyAudioIOSceneChangedInternal()V

    return-void
.end method

.method private autoCheckRouteUpdate(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    sget-object v1, Lcom/tencent/liteav/audio/route/a;->a:Lcom/tencent/liteav/audio/route/a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/tencent/liteav/audio/route/b$a;->a:Lcom/tencent/liteav/audio/route/b$a;

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteType:Lcom/tencent/liteav/audio/route/b$a;

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->destroySwitcher()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    .line 5
    iget-boolean v1, v0, Lcom/tencent/liteav/audio/route/m;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AudioRouteSupervisor"

    const-string v3, "err in getHighestPriorityRoute(), it\'s not been initialized yet"

    .line 6
    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v2

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/audio/route/b;

    if-eqz v3, :cond_2

    .line 9
    iget-boolean v4, v3, Lcom/tencent/liteav/audio/route/b;->b:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    .line 10
    iget v4, v3, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 11
    iget v5, v1, Lcom/tencent/liteav/audio/route/b;->c:I

    if-lt v4, v5, :cond_2

    :cond_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 12
    iget-object v0, v1, Lcom/tencent/liteav/audio/route/b;->a:Lcom/tencent/liteav/audio/route/b$a;

    goto :goto_2

    .line 13
    :cond_5
    :goto_1
    sget-object v0, Lcom/tencent/liteav/audio/route/m;->a:Lcom/tencent/liteav/audio/route/b$a;

    .line 14
    :goto_2
    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteType:Lcom/tencent/liteav/audio/route/b$a;

    if-ne v1, v0, :cond_6

    if-eqz p1, :cond_b

    .line 15
    :cond_6
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteType:Lcom/tencent/liteav/audio/route/b$a;

    .line 16
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->destroySwitcher()V

    .line 17
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v3, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    .line 18
    sget-object v4, Lcom/tencent/liteav/audio/route/n$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    const/4 v4, 0x4

    if-eq v0, v4, :cond_7

    goto :goto_3

    .line 19
    :cond_7
    new-instance v2, Lcom/tencent/liteav/audio/route/n$b;

    invoke-direct {v2, p1, v1, v3}, Lcom/tencent/liteav/audio/route/n$b;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;Lcom/tencent/liteav/audio/route/a;)V

    goto :goto_3

    .line 20
    :cond_8
    new-instance v2, Lcom/tencent/liteav/audio/route/n$e;

    invoke-direct {v2, p1, v1, v3}, Lcom/tencent/liteav/audio/route/n$e;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;Lcom/tencent/liteav/audio/route/a;)V

    goto :goto_3

    .line 21
    :cond_9
    new-instance v2, Lcom/tencent/liteav/audio/route/n$d;

    invoke-direct {v2, p1, v1, v3}, Lcom/tencent/liteav/audio/route/n$d;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;Lcom/tencent/liteav/audio/route/a;)V

    goto :goto_3

    .line 22
    :cond_a
    new-instance v2, Lcom/tencent/liteav/audio/route/n$c;

    invoke-direct {v2, p1, v1, v3}, Lcom/tencent/liteav/audio/route/n$c;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;Lcom/tencent/liteav/audio/route/a;)V

    .line 23
    :goto_3
    iput-object v2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

    .line 24
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcherListener:Lcom/tencent/liteav/audio/route/n$a$a;

    invoke-virtual {v2, p1}, Lcom/tencent/liteav/audio/route/n$a;->a(Lcom/tencent/liteav/audio/route/n$a$a;)V

    .line 25
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/route/n$a;->a()V

    :cond_b
    return-void
.end method

.method private buildAudioRecordingCallback()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/liteav/audio/route/AudioRouteManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager$2;-><init>(Lcom/tencent/liteav/audio/route/AudioRouteManager;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    return-void
.end method

.method private destroySwitcher()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/route/n$a;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

    return-void
.end method

.method private handleBluetoothHeadsetChangedInternal(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AudioRouteManager"

    const-string v1, "ignore bluetooth headset changing, AudioRouteManager is not started"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    sget-object v2, Lcom/tencent/liteav/audio/route/b$a;->e:Lcom/tencent/liteav/audio/route/b$a;

    invoke-virtual {v0, v2, p1}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->autoCheckRouteUpdate(Z)V

    :cond_1
    return-void
.end method

.method private handleBluetoothSCOChangedInternal(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/route/n$a;->a(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mForceUpdateRouteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->removeCallbacksOnWorkThread(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    sget-object v0, Lcom/tencent/liteav/audio/route/a;->a:Lcom/tencent/liteav/audio/route/a;

    if-eq p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mForceUpdateRouteRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private handleRecordingConfigChanged(Ljava/util/List;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array v1, v0, [Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    new-instance v4, Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;

    invoke-direct {v4}, Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;-><init>()V

    aput-object v4, v1, v3

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioRecordingConfiguration;

    .line 6
    aget-object v5, v1, v3

    invoke-virtual {v4}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v6

    .line 7
    iput v6, v5, Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;->a:I

    .line 8
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v5

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_1

    .line 9
    aget-object v5, v1, v3

    invoke-virtual {v4}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v4

    .line 10
    iput-boolean v4, v5, Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;->b:Z

    goto :goto_1

    .line 11
    :cond_1
    aget-object v4, v1, v3

    .line 12
    iput-boolean v2, v4, Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;->b:Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-wide v2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mNativeAudioRouteManager:J

    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->nativeNotifyAudioRecordingConfigChangedFromJava(J[Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;)V

    return-void
.end method

.method private handleWiredHeadsetChangedInternal(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AudioRouteManager"

    const-string v1, "ignore wired headset changing, AudioRouteManager is not started"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    sget-object v2, Lcom/tencent/liteav/audio/route/b$a;->d:Lcom/tencent/liteav/audio/route/b$a;

    invoke-virtual {v0, v2, p1}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->autoCheckRouteUpdate(Z)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/tencent/liteav/audio/route/AudioRouteManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->autoCheckRouteUpdate(Z)V

    return-void
.end method

.method static synthetic lambda$notifyAudioIOSceneChanged$2(Lcom/tencent/liteav/audio/route/AudioRouteManager;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tencent/liteav/audio/route/a;->a(I)Lcom/tencent/liteav/audio/route/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mExpectedAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->notifyAudioIOSceneChangedInternal()V

    return-void
.end method

.method static synthetic lambda$onBluetoothConnectionChanged$5(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->handleBluetoothHeadsetChangedInternal(Z)V

    return-void
.end method

.method static synthetic lambda$onBluetoothSCOConnected$6(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->handleBluetoothSCOChangedInternal(Z)V

    return-void
.end method

.method static synthetic lambda$onWiredHeadsetConnectionChanged$4(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->handleWiredHeadsetChangedInternal(Z)V

    return-void
.end method

.method static synthetic lambda$setHandFreeModeEnabled$3(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->setHandFreeModeEnabledInternal(Z)V

    return-void
.end method

.method static synthetic lambda$start$1(Lcom/tencent/liteav/audio/route/AudioRouteManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->startInternal(Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeNotifyAudioRecordingConfigChangedFromJava(J[Lcom/tencent/liteav/audio/route/AudioRouteManager$RecordingConfig;)V
.end method

.method private static native nativeNotifyAudioRouteChangedFromJava(JI)V
.end method

.method private notifyAudioIOSceneChangedInternal()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mExpectedAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "AudioRouteManager"

    const-string v1, "notify audio io scene changed, %s -> %s"

    .line 2
    invoke-static {v0, v1, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-static {p0}, Lcom/tencent/liteav/audio/route/k;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;J)V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mExpectedAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/route/a;->a(Lcom/tencent/liteav/audio/route/a;)I

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "setMode to "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string v2, "set communication mode repeatedly, maybe can\'t be the mode owner"

    new-array v3, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "AudioManager setMode failed, ignore it"

    .line 10
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mExpectedAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mSwitcher:Lcom/tencent/liteav/audio/route/n$a;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/audio/route/n$a;->a(Lcom/tencent/liteav/audio/route/a;)V

    return-void

    .line 14
    :cond_3
    invoke-direct {p0, v4}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->autoCheckRouteUpdate(Z)V

    return-void
.end method

.method private registerAudioRecordingCallback()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->buildAudioRecordingCallback()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private removeCallbacksOnWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private runOnWorkThreadAndWaitDone(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setHandFreeModeEnabledInternal(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AudioRouteManager"

    const-string v1, "set handfree mode failed, AudioRouteManager is not started"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    .line 4
    iget-boolean v2, v0, Lcom/tencent/liteav/audio/route/m;->c:Z

    const-string v3, "AudioRouteSupervisor"

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "error in setHandFreeModeEnabled(), it\'s not been initialized yet"

    .line 5
    invoke-static {v3, v0, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_4

    .line 6
    :cond_1
    iget-object v2, v0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    sget-object v4, Lcom/tencent/liteav/audio/route/b$a;->c:Lcom/tencent/liteav/audio/route/b$a;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/audio/route/b;

    .line 7
    iget-object v0, v0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    sget-object v4, Lcom/tencent/liteav/audio/route/b$a;->b:Lcom/tencent/liteav/audio/route/b$a;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/route/b;

    if-eqz v2, :cond_5

    if-nez v0, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget v3, v2, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 9
    iget v4, v0, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    iget v4, v2, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 12
    iget v5, v0, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    .line 14
    :goto_1
    iput v5, v2, Lcom/tencent/liteav/audio/route/b;->c:I

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    .line 15
    :goto_2
    iput v3, v0, Lcom/tencent/liteav/audio/route/b;->c:I

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "setHandFreeModeEnabled failed, speakerphone or earphone not existed"

    .line 16
    invoke-static {v3, v0, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :goto_4
    if-eqz p1, :cond_6

    .line 17
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->autoCheckRouteUpdate(Z)V

    :cond_6
    return-void
.end method

.method private startInternal(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    const-string v1, "AudioRouteManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteConfig:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "AudioRouteManager\'s been started, stop it first"

    .line 3
    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->stopInternal()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    .line 6
    iget-boolean v3, v0, Lcom/tencent/liteav/audio/route/m;->c:Z

    const-string v4, "AudioRouteSupervisor"

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "error in initialize(), it\'s already intialized"

    .line 7
    invoke-static {v4, v3, v0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 8
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "initialize from string: "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v6}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "[\n\r]"

    const-string v6, ""

    .line 10
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_5

    goto :goto_0

    :cond_5
    const-string v6, ";"

    .line 12
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 13
    array-length v6, v3

    if-gtz v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    .line 14
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_c

    .line 15
    aget-object v7, v3, v6

    invoke-static {v7}, Lcom/tencent/liteav/audio/route/b$a;->a(Ljava/lang/String;)Lcom/tencent/liteav/audio/route/b$a;

    move-result-object v7

    .line 16
    sget-object v8, Lcom/tencent/liteav/audio/route/b$a;->a:Lcom/tencent/liteav/audio/route/b$a;

    if-ne v7, v8, :cond_7

    .line 17
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "error, unknown route name: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v7, 0x0

    goto :goto_5

    .line 18
    :cond_7
    iget-object v8, v0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 19
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "error, existed route name: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_8
    sget-object v8, Lcom/tencent/liteav/audio/route/b$a;->b:Lcom/tencent/liteav/audio/route/b$a;

    if-eq v7, v8, :cond_a

    sget-object v8, Lcom/tencent/liteav/audio/route/b$a;->c:Lcom/tencent/liteav/audio/route/b$a;

    if-ne v7, v8, :cond_9

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v8, 0x1

    .line 21
    :goto_4
    new-instance v9, Lcom/tencent/liteav/audio/route/b;

    invoke-direct {v9, v7, v6, v8}, Lcom/tencent/liteav/audio/route/b;-><init>(Lcom/tencent/liteav/audio/route/b$a;IZ)V

    .line 22
    iget-object v8, v0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v2

    const-string v7, "add audio route, name: %s"

    .line 23
    invoke-static {v4, v7, v8}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    :goto_5
    if-nez v7, :cond_b

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 24
    :cond_c
    iput-boolean v5, v0, Lcom/tencent/liteav/audio/route/m;->c:Z

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_d

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AudioRouteManager start failed"

    .line 25
    invoke-static {v1, v0, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 26
    :cond_d
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mBroadcastReceiver:Lcom/tencent/liteav/audio/route/o;

    .line 27
    iget-object v1, v0, Lcom/tencent/liteav/audio/route/o;->b:Lcom/tencent/liteav/audio/route/o$b;

    if-nez v1, :cond_e

    .line 28
    new-instance v1, Lcom/tencent/liteav/audio/route/o$b;

    iget-object v2, v0, Lcom/tencent/liteav/audio/route/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/liteav/audio/route/o$b;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tencent/liteav/audio/route/o;->b:Lcom/tencent/liteav/audio/route/o$b;

    .line 29
    :cond_e
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v2, v0, Lcom/tencent/liteav/audio/route/o;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->updateAudioRouteStatus()V

    .line 36
    iput-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteConfig:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->registerAudioRecordingCallback()V

    .line 38
    iput-boolean v5, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    return-void
.end method

.method private stopInternal()V
    .locals 6

    const-string v0, "AudioRouteManager"

    const-string/jumbo v1, "stopInternal"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1
    invoke-static {v0, v1, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    if-nez v0, :cond_0

    const-string v0, "AudioRouteManager"

    const-string v1, "AudioRouteManager is not started"

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->unregisterAudioRecordingCallback()V

    .line 5
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->destroySwitcher()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AudioRouteManager"

    const-string v1, "AudioManager setMode failed, ignore it"

    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, v1, v3}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->a:Lcom/tencent/liteav/audio/route/b$a;

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteType:Lcom/tencent/liteav/audio/route/b$a;

    .line 9
    sget-object v0, Lcom/tencent/liteav/audio/route/a;->a:Lcom/tencent/liteav/audio/route/a;

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mExpectedAudioIOScene:Lcom/tencent/liteav/audio/route/a;

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mBroadcastReceiver:Lcom/tencent/liteav/audio/route/o;

    .line 12
    iget-object v1, v0, Lcom/tencent/liteav/audio/route/o;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 13
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 14
    :goto_1
    iget-object v1, v0, Lcom/tencent/liteav/audio/route/o;->b:Lcom/tencent/liteav/audio/route/o$b;

    if-eqz v1, :cond_2

    .line 15
    iget-object v3, v1, Lcom/tencent/liteav/audio/route/o$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 16
    :try_start_2
    iget-object v4, v1, Lcom/tencent/liteav/audio/route/o$b;->a:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {v1}, Lcom/tencent/liteav/audio/route/o$b;->b()V

    .line 18
    iput-object v5, v1, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    .line 19
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    iput-object v5, v0, Lcom/tencent/liteav/audio/route/o;->b:Lcom/tencent/liteav/audio/route/o$b;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 21
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 22
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    .line 23
    iget-boolean v1, v0, Lcom/tencent/liteav/audio/route/m;->c:Z

    if-nez v1, :cond_3

    const-string v0, "AudioRouteSupervisor"

    const-string v1, "error in uninitialize(), it\'s not been initialized yet"

    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v0, v1, v3}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 25
    :cond_3
    iget-object v1, v0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 26
    iput-boolean v2, v0, Lcom/tencent/liteav/audio/route/m;->c:Z

    :goto_3
    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mCurrentRouteConfig:Ljava/lang/String;

    .line 28
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mIsServiceStarted:Z

    return-void
.end method

.method private unregisterAudioRecordingCallback()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    return-void
.end method

.method private updateAudioRouteStatus()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mBroadcastReceiver:Lcom/tencent/liteav/audio/route/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    sget-object v2, Lcom/tencent/liteav/audio/route/b$a;->e:Lcom/tencent/liteav/audio/route/b$a;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    sget-object v3, Lcom/tencent/liteav/audio/route/b$a;->e:Lcom/tencent/liteav/audio/route/b$a;

    .line 4
    iget-object v0, v0, Lcom/tencent/liteav/audio/route/o;->b:Lcom/tencent/liteav/audio/route/o$b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/route/o$b;->a()Z

    move-result v0

    .line 6
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    sget-object v2, Lcom/tencent/liteav/audio/route/b$a;->d:Lcom/tencent/liteav/audio/route/b$a;

    iget-object v3, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioManager:Landroid/media/AudioManager;

    .line 8
    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    sget-object v2, Lcom/tencent/liteav/audio/route/b$a;->c:Lcom/tencent/liteav/audio/route/b$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mAudioRouteSupervisor:Lcom/tencent/liteav/audio/route/m;

    sget-object v2, Lcom/tencent/liteav/audio/route/b$a;->b:Lcom/tencent/liteav/audio/route/b$a;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    .line 12
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->autoCheckRouteUpdate(Z)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioRouteManagerLooper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method public notifyAudioIOSceneChanged(IJ)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/route/f;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThreadAndWaitDone(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onBluetoothConnectionChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/route/i;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBluetoothSCOConnected(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/route/j;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWiredHeadsetConnectionChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/route/h;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHandFreeModeEnabled(Z)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/route/g;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/route/d;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/tencent/liteav/audio/route/e;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uninitialize()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
