.class public final Lcom/guochao/pusher/tencent/TencentLivePusher;
.super Lcom/guochao/pusher/base/BaseLivePusher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;,
        Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;,
        Lcom/guochao/pusher/tencent/TencentLivePusher$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001:\u0002_`B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010/\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u0006H\u0016J\u0010\u00103\u001a\u0002012\u0006\u00102\u001a\u00020\u0006H\u0016J\u0010\u00104\u001a\u0002012\u0006\u00105\u001a\u00020\u0006H\u0016J\u0008\u00106\u001a\u000201H\u0016J\u0008\u00107\u001a\u00020\u0006H\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0002J\u0008\u0010;\u001a\u00020\u001fH\u0002J\u0008\u0010<\u001a\u000201H\u0016J\u0008\u0010=\u001a\u000201H\u0016J\u0010\u0010>\u001a\u0002012\u0006\u0010?\u001a\u00020\u000bH\u0016J\u0008\u0010@\u001a\u000201H\u0016J\u0012\u0010A\u001a\u0002012\u0008\u0008\u0001\u0010B\u001a\u00020\u0017H\u0016J\u0010\u0010C\u001a\u0002012\u0006\u0010D\u001a\u00020\u0006H\u0016J\u0010\u0010E\u001a\u0002012\u0006\u0010F\u001a\u00020\u0006H\u0016J\"\u0010G\u001a\u0002012\u0008\u0010H\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u0017H\u0016J\u0012\u0010K\u001a\u0002012\u0008\u0010L\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010M\u001a\u0002012\u0006\u0010N\u001a\u00020OH\u0016J\u0010\u0010M\u001a\u0002012\u0006\u0010N\u001a\u00020PH\u0016J&\u0010Q\u001a\u00020\u00172\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0008\u0010S\u001a\u0004\u0018\u00010\u000b2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0016J\u001c\u0010V\u001a\u0002012\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010W\u001a\u000201H\u0016J\u0008\u0010X\u001a\u000201H\u0016J\u0010\u0010Y\u001a\u0002012\u0006\u0010Z\u001a\u00020\u0006H\u0016J\u0008\u0010[\u001a\u000201H\u0016J\u0008\u0010\\\u001a\u000201H\u0016J\u0008\u0010]\u001a\u000201H\u0002J\u0008\u0010^\u001a\u000201H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020\u000bX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u000e\u0010-\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006a"
    }
    d2 = {
        "Lcom/guochao/pusher/tencent/TencentLivePusher;",
        "Lcom/guochao/pusher/base/BaseLivePusher;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "audioEnabled",
        "",
        "audioMuted",
        "beautyManager",
        "Lcom/guochao/pusher/beauty/XMagicBeautyManager;",
        "currentPushUrl",
        "",
        "deviceBitrate",
        "Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;",
        "frontCamera",
        "handler",
        "Landroid/os/Handler;",
        "isMirror",
        "isPusherFrozen",
        "()Z",
        "setPusherFrozen",
        "(Z)V",
        "lastAudioId",
        "",
        "getLastAudioId",
        "()I",
        "setLastAudioId",
        "(I)V",
        "paused",
        "placeHolderPath",
        "preview",
        "Landroid/view/View;",
        "previewSet",
        "previewStarted",
        "pushSoundLevelListener",
        "Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;",
        "getPushSoundLevelListener",
        "()Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;",
        "setPushSoundLevelListener",
        "(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V",
        "pusher",
        "Lcom/tencent/live2/V2TXLivePusher;",
        "string",
        "getString",
        "()Ljava/lang/String;",
        "thirdBeauty",
        "videoMuted",
        "calBit",
        "enableAudio",
        "",
        "enable",
        "enableCamera",
        "enableThirdBeauty",
        "boolean",
        "freezePusher",
        "isPushing",
        "makeVideoResolution",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;",
        "v2TXLiveVideoEncoderParam",
        "obtainPreviewView",
        "onPause",
        "onResume",
        "playBGM",
        "path",
        "reset",
        "setLiveResolution",
        "liveResolution",
        "setMirror",
        "mirror",
        "setMute",
        "mute",
        "setPauseImage",
        "assetPath",
        "pauseTime",
        "pauseFPS",
        "setSoundLevelListener",
        "listener",
        "startPreview",
        "view",
        "Landroid/view/TextureView;",
        "Landroid/view/ViewGroup;",
        "startPush",
        "cdnPushUrl",
        "streamId",
        "roomInfo",
        "Lcom/guochao/user/RoomInfo;",
        "startPushToRtc",
        "stopAll",
        "stopBGM",
        "stopPreview",
        "clearLastFrame",
        "stopPush",
        "switchCamera",
        "switchToMedia",
        "unfreezePusher",
        "DeviceBitrate",
        "PushObserver",
        "lib_pusher_and_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private audioEnabled:Z

.field private audioMuted:Z

.field private final beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentPushUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final deviceBitrate:Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frontCamera:Z

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isMirror:Z

.field private isPusherFrozen:Z

.field private lastAudioId:I

.field private paused:Z

.field private placeHolderPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final preview:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previewSet:Z

.field private previewStarted:Z

.field private pushSoundLevelListener:Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pusher:Lcom/tencent/live2/V2TXLivePusher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final string:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thirdBeauty:Z

.field private videoMuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/pusher/base/BaseLivePusher;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->handler:Landroid/os/Handler;

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/pusher/tencent/TencentLivePusher;->calBit(Landroid/content/Context;)Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->deviceBitrate:Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    const-string/jumbo v1, "{    \"api\":\"enableAudioANS\",   \"params\":{        \"enable\":0,        \"level\": 100,     }}"

    .line 5
    iput-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->string:Ljava/lang/String;

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->placeHolderPath:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->obtainPreviewView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    .line 8
    sget-object v1, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    invoke-virtual {v1, p1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    .line 9
    new-instance v1, Lcom/tencent/live2/impl/V2TXLivePusherImpl;

    sget-object v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;->TXLiveMode_RTC:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;

    invoke-direct {v1, p1, v2}, Lcom/tencent/live2/impl/V2TXLivePusherImpl;-><init>(Landroid/content/Context;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;)V

    .line 10
    sget-object v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->V2TXLiveAudioQualityDefault:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    invoke-virtual {v1, v2}, Lcom/tencent/live2/impl/V2TXLivePusherImpl;->setAudioQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;)I

    .line 11
    new-instance v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    sget-object v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution960x540:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-direct {v2, v3}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;-><init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)V

    invoke-virtual {v1, v2}, Lcom/tencent/live2/impl/V2TXLivePusherImpl;->setVideoQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)I

    .line 12
    new-instance v2, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;

    invoke-direct {v2, p0}, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;-><init>(Lcom/guochao/pusher/tencent/TencentLivePusher;)V

    invoke-virtual {v1, v2}, Lcom/tencent/live2/impl/V2TXLivePusherImpl;->setObserver(Lcom/tencent/live2/V2TXLivePusherObserver;)V

    .line 13
    invoke-static {p1}, Lcom/tencent/trtc/TRTCCloud;->sharedInstance(Landroid/content/Context;)Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v2}, Lcom/tencent/trtc/TRTCCloud;->setGSensorMode(I)V

    .line 15
    iput-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 16
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    .line 17
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->thirdBeauty:Z

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->lastAudioId:I

    return-void
.end method

.method public static synthetic a(Lcom/guochao/pusher/tencent/TencentLivePusher;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->startPreview$lambda-1(Lcom/guochao/pusher/tencent/TencentLivePusher;)V

    return-void
.end method

.method public static final synthetic access$getBeautyManager$p(Lcom/guochao/pusher/tencent/TencentLivePusher;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .locals 0

    iget-object p0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    return-object p0
.end method

.method private final calBit(Landroid/content/Context;)Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;
    .locals 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    .line 2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float p1, v0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p1, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x44fa0000    # 2000.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 5
    new-instance p1, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    const v0, 0x3f4ccccd    # 0.8f

    const/16 v1, 0xc

    invoke-direct {p1, v0, v1}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;-><init>(FI)V

    goto :goto_0

    :cond_0
    const v0, 0x453b8000    # 3000.0f

    const/16 v1, 0xf

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 6
    new-instance p1, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;-><init>(FI)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p1, v0, v1}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;-><init>(FI)V

    :goto_0
    return-object p1
.end method

.method private final makeVideoResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoResolution:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/guochao/pusher/tencent/TencentLivePusher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 2
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->minVideoBitrate:I

    goto :goto_1

    :cond_1
    const/16 v0, 0xaf0

    goto :goto_1

    :cond_2
    const/16 v0, 0x4b0

    .line 3
    :goto_1
    iget-object v4, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoResolution:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/guochao/pusher/tencent/TencentLivePusher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    :goto_2
    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    .line 4
    iget v1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoBitrate:I

    goto :goto_3

    :cond_4
    const/16 v1, 0xc80

    goto :goto_3

    :cond_5
    const/16 v1, 0x960

    :goto_3
    int-to-float v1, v1

    .line 5
    iget-object v2, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->deviceBitrate:Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    invoke-virtual {v2}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->getCoefficient()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoBitrate:I

    int-to-float v0, v0

    .line 6
    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->deviceBitrate:Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    invoke-virtual {v1}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->getCoefficient()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->minVideoBitrate:I

    .line 7
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->deviceBitrate:Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    invoke-virtual {v0}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->getFps()I

    move-result v0

    iput v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoFps:I

    return-object p1
.end method

.method private final obtainPreviewView()Landroid/view/View;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/guochao/pusher/base/BaseLivePusher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/guochao/pusher/base/BaseLivePusher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final startPreview$lambda-1(Lcom/guochao/pusher/tencent/TencentLivePusher;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 2
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatTexture2D:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    .line 3
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/live2/V2TXLivePusher;->enableCustomVideoProcess(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I

    return-void
.end method

.method private final switchToMedia()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "api"

    const-string v2, "enableAudioANS"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "enable"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "level"

    const/16 v3, 0x64

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "params"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/pusher/base/BaseLivePusher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/trtc/TRTCCloud;->sharedInstance(Landroid/content/Context;)Lcom/tencent/trtc/TRTCCloud;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/trtc/TRTCCloud;->callExperimentalAPI(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableAudio(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->resumeAudio()I

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->pauseAudio()I

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    return-void
.end method

.method public enableCamera(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->videoMuted:Z

    .line 2
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->paused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->resumeVideo()I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->pauseVideo()I

    :goto_0
    return-void
.end method

.method public enableThirdBeauty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->thirdBeauty:Z

    return-void
.end method

.method public freezePusher()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->placeHolderPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/pusher/base/BaseLivePusher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "context.assets.open(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePusher;->startVirtualCamera(Landroid/graphics/Bitmap;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->stopMicrophone()I

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->setPusherFrozen(Z)V

    .line 8
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->pauseAudio()I

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getLastAudioId()I
    .locals 1

    iget v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->lastAudioId:I

    return v0
.end method

.method public final getPushSoundLevelListener()Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pushSoundLevelListener:Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->string:Ljava/lang/String;

    return-object v0
.end method

.method public isPusherFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->isPusherFrozen:Z

    return v0
.end method

.method public isPushing()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->isPushing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->isPusherFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->paused:Z

    .line 3
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->pauseAudio()I

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->videoMuted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->placeHolderPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/pusher/base/BaseLivePusher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->placeHolderPath:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "context.assets.open(placeHolderPath!!)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePusher;->startVirtualCamera(Landroid/graphics/Bitmap;)I

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->isPusherFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->paused:Z

    .line 3
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->resumeAudio()I

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->videoMuted:Z

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->stopVirtualCamera()I

    :cond_2
    return-void
.end method

.method public playBGM(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->getAudioEffectManager()Lcom/tencent/liteav/audio/TXAudioEffectManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->lastAudioId:I

    .line 3
    new-instance v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    invoke-direct {v2, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    .line 5
    invoke-interface {v0, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManager;->startPlayMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/pusher/base/BaseLivePusher;->reset()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->setSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    return-void
.end method

.method public final setLastAudioId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->lastAudioId:I

    return-void
.end method

.method public setLiveResolution(I)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 2
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution480x360:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-direct {v0, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;-><init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->makeVideoResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->setVideoQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 6
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution1920x1080:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-direct {v0, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;-><init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->makeVideoResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->setVideoQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)I

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 10
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution1280x720:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-direct {v0, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;-><init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)V

    .line 11
    invoke-direct {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->makeVideoResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->setVideoQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)I

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 14
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution960x540:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-direct {v0, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;-><init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)V

    .line 15
    invoke-direct {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->makeVideoResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->setVideoQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)I

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 18
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    .line 19
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution480x360:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    .line 20
    invoke-direct {v0, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;-><init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)V

    .line 21
    invoke-direct {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->makeVideoResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->setVideoQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)I

    :goto_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePusher;->setEncoderMirror(Z)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePusher;->setEncoderMirror(Z)I

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->isMirror:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->pauseAudio()I

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->resumeAudio()I

    :goto_0
    return-void
.end method

.method public setPauseImage(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->placeHolderPath:Ljava/lang/String;

    return-void
.end method

.method public final setPushSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V
    .locals 0
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pushSoundLevelListener:Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;

    return-void
.end method

.method public setPusherFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->isPusherFrozen:Z

    return-void
.end method

.method public setSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V
    .locals 1
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pushSoundLevelListener:Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->enableVolumeEvaluation(I)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->enableVolumeEvaluation(I)I

    :goto_0
    return-void
.end method

.method public startPreview(Landroid/view/TextureView;)V
    .locals 4
    .param p1    # Landroid/view/TextureView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    iput-boolean v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewSet:Z

    .line 23
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePusher;->setRenderView(Landroid/view/TextureView;)I

    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    .line 25
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatTexture2D:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    .line 26
    sget-object v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    const/4 v3, 0x1

    .line 27
    invoke-virtual {p1, v3, v0, v2}, Lcom/tencent/live2/V2TXLivePusher;->enableCustomVideoProcess(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I

    .line 28
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePusher;->startCamera(Z)I

    .line 29
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->startMicrophone()I

    .line 30
    iput-boolean v3, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewStarted:Z

    .line 31
    iput-boolean v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewSet:Z

    return-void
.end method

.method public startPreview(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->thirdBeauty:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/pusher/tencent/a;

    invoke-direct {v1, p0}, Lcom/guochao/pusher/tencent/a;-><init>(Lcom/guochao/pusher/tencent/TencentLivePusher;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewSet:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 7
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    .line 8
    instance-of v1, p1, Landroid/view/TextureView;

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {v1, p1}, Lcom/tencent/live2/V2TXLivePusher;->setRenderView(Landroid/view/TextureView;)I

    goto :goto_0

    .line 10
    :cond_4
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {v1, p1}, Lcom/tencent/live2/V2TXLivePusher;->setRenderView(Landroid/view/SurfaceView;)I

    goto :goto_0

    .line 12
    :cond_5
    instance-of v1, p1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    check-cast p1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v1, p1}, Lcom/tencent/live2/V2TXLivePusher;->setRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    .line 14
    :cond_6
    :goto_0
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewSet:Z

    .line 15
    :cond_7
    iget-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewStarted:Z

    if-eqz p1, :cond_8

    return-void

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    iget-boolean v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    invoke-virtual {p1, v1}, Lcom/tencent/live2/V2TXLivePusher;->startCamera(Z)I

    .line 17
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Lcom/tencent/live2/V2TXLivePusher;->enableVolumeEvaluation(I)I

    .line 18
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->startMicrophone()I

    .line 19
    invoke-direct {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->switchToMedia()V

    .line 20
    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewStarted:Z

    return-void
.end method

.method public startPush(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/user/RoomInfo;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/user/RoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->currentPushUrl:Ljava/lang/String;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2}, Lcom/guochao/pusher/tencent/TencentLivePusher;->enableCamera(Z)V

    .line 3
    iget-object p3, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p3, p1}, Lcom/tencent/live2/V2TXLivePusher;->startPush(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-boolean p3, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    if-nez p3, :cond_1

    .line 5
    :cond_0
    iput-boolean p2, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    .line 7
    iget-object p2, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p2}, Lcom/tencent/live2/V2TXLivePusher;->resumeAudio()I

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->switchToMedia()V

    return p1
.end method

.method public startPushToRtc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->currentPushUrl:Ljava/lang/String;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2}, Lcom/guochao/pusher/tencent/TencentLivePusher;->enableCamera(Z)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/guochao/pusher/tencent/TencentLivePusher;->enableAudio(Z)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Lcom/guochao/pusher/tencent/TencentLivePusher;->setMute(Z)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->switchToMedia()V

    .line 6
    iget-object p2, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p2, p1}, Lcom/tencent/live2/V2TXLivePusher;->startPush(Ljava/lang/String;)I

    return-void
.end method

.method public stopAll()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->stopPreview(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->stopBGM()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->stopPush()V

    return-void
.end method

.method public stopBGM()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->lastAudioId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->getAudioEffectManager()Lcom/tencent/liteav/audio/TXAudioEffectManager;

    move-result-object v0

    iget v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->lastAudioId:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManager;->stopPlayMusic(I)V

    :cond_0
    return-void
.end method

.method public stopPreview(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->stopCamera()I

    .line 2
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePusher;->stopMicrophone()I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->previewStarted:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public stopPush()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->stopPush()I

    return-void
.end method

.method public switchCamera()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->getDeviceManager()Lcom/tencent/liteav/device/TXDeviceManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManager;->switchCamera(Z)I

    .line 2
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->frontCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->setMirror(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Lcom/guochao/pusher/tencent/TencentLivePusher;->setMirror(Z)V

    :goto_0
    return-void
.end method

.method public unfreezePusher()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->stopVirtualCamera()I

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->startMicrophone()I

    .line 3
    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->audioMuted:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->pusher:Lcom/tencent/live2/V2TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusher;->resumeAudio()I

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->setPusherFrozen(Z)V

    .line 6
    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher;->preview:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
