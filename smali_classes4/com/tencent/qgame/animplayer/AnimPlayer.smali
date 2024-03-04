.class public final Lcom/tencent/qgame/animplayer/AnimPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/AnimPlayer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 [2\u00020\u0001:\u0001[B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u0002J\u0006\u0010O\u001a\u00020$J\u0016\u0010P\u001a\u00020L2\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u001eJ\u0006\u0010S\u001a\u00020LJ\u0016\u0010T\u001a\u00020L2\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u001eJ\u0008\u0010U\u001a\u00020LH\u0002J\u000e\u0010V\u001a\u00020L2\u0006\u0010M\u001a\u00020NJ\u0006\u0010W\u001a\u00020LJ\u0010\u0010X\u001a\u00020L2\u0008\u0010Y\u001a\u0004\u0018\u00010ZR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R$\u0010*\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\u001e@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010 \"\u0004\u0008,\u0010\"R\u001a\u0010-\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010&\"\u0004\u0008.\u0010(R\u001a\u0010/\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010&\"\u0004\u00080\u0010(R\u001a\u00101\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010&\"\u0004\u00082\u0010(R\u001a\u00103\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010&\"\u0004\u00084\u0010(R\u001a\u00105\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010&\"\u0004\u00087\u0010(R$\u00108\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\u001e@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010 \"\u0004\u0008:\u0010\"R\u0011\u0010;\u001a\u00020<\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001a\u0010E\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010&\"\u0004\u0008G\u0010(R\u001a\u0010H\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010 \"\u0004\u0008J\u0010\"\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "",
        "animView",
        "Lcom/tencent/qgame/animplayer/IAnimView;",
        "(Lcom/tencent/qgame/animplayer/IAnimView;)V",
        "animListener",
        "Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "getAnimListener",
        "()Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "setAnimListener",
        "(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V",
        "getAnimView",
        "()Lcom/tencent/qgame/animplayer/IAnimView;",
        "audioPlayer",
        "Lcom/tencent/qgame/animplayer/AudioPlayer;",
        "getAudioPlayer",
        "()Lcom/tencent/qgame/animplayer/AudioPlayer;",
        "setAudioPlayer",
        "(Lcom/tencent/qgame/animplayer/AudioPlayer;)V",
        "configManager",
        "Lcom/tencent/qgame/animplayer/AnimConfigManager;",
        "getConfigManager",
        "()Lcom/tencent/qgame/animplayer/AnimConfigManager;",
        "decoder",
        "Lcom/tencent/qgame/animplayer/Decoder;",
        "getDecoder",
        "()Lcom/tencent/qgame/animplayer/Decoder;",
        "setDecoder",
        "(Lcom/tencent/qgame/animplayer/Decoder;)V",
        "defaultFps",
        "",
        "getDefaultFps",
        "()I",
        "setDefaultFps",
        "(I)V",
        "enableVersion1",
        "",
        "getEnableVersion1",
        "()Z",
        "setEnableVersion1",
        "(Z)V",
        "value",
        "fps",
        "getFps",
        "setFps",
        "isDetachedFromWindow",
        "setDetachedFromWindow",
        "isMute",
        "setMute",
        "isStartRunning",
        "setStartRunning",
        "isSurfaceAvailable",
        "setSurfaceAvailable",
        "maskEdgeBlurBoolean",
        "getMaskEdgeBlurBoolean",
        "setMaskEdgeBlurBoolean",
        "playLoop",
        "getPlayLoop",
        "setPlayLoop",
        "pluginManager",
        "Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;",
        "getPluginManager",
        "()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;",
        "startRunnable",
        "Ljava/lang/Runnable;",
        "getStartRunnable",
        "()Ljava/lang/Runnable;",
        "setStartRunnable",
        "(Ljava/lang/Runnable;)V",
        "supportMaskBoolean",
        "getSupportMaskBoolean",
        "setSupportMaskBoolean",
        "videoMode",
        "getVideoMode",
        "setVideoMode",
        "innerStartPlay",
        "",
        "fileContainer",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "isRunning",
        "onSurfaceTextureAvailable",
        "width",
        "height",
        "onSurfaceTextureDestroyed",
        "onSurfaceTextureSizeChanged",
        "prepareDecoder",
        "startPlay",
        "stopPlay",
        "updateMaskConfig",
        "maskConfig",
        "Lcom/tencent/qgame/animplayer/mask/MaskConfig;",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/AnimPlayer$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.AnimPlayer"


# instance fields
.field private animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final animView:Lcom/tencent/qgame/animplayer/IAnimView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private decoder:Lcom/tencent/qgame/animplayer/Decoder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private defaultFps:I

.field private enableVersion1:Z

.field private fps:I

.field private isDetachedFromWindow:Z

.field private isMute:Z

.field private isStartRunning:Z

.field private isSurfaceAvailable:Z

.field private maskEdgeBlurBoolean:Z

.field private playLoop:I

.field private final pluginManager:Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private supportMaskBoolean:Z

.field private videoMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/AnimPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/AnimPlayer;->Companion:Lcom/tencent/qgame/animplayer/AnimPlayer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/IAnimView;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/IAnimView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->animView:Lcom/tencent/qgame/animplayer/IAnimView;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->videoMode:I

    .line 3
    new-instance p1, Lcom/tencent/qgame/animplayer/AnimConfigManager;

    invoke-direct {p1, p0}, Lcom/tencent/qgame/animplayer/AnimConfigManager;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;

    .line 4
    new-instance p1, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    invoke-direct {p1, p0}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->pluginManager:Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    return-void
.end method

.method public static final synthetic access$innerStartPlay(Lcom/tencent/qgame/animplayer/AnimPlayer;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->innerStartPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    return-void
.end method

.method private final innerStartPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qgame/animplayer/AnimPlayer;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isSurfaceAvailable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isStartRunning:Z

    .line 4
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/tencent/qgame/animplayer/Decoder;->start(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isMute:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/tencent/qgame/animplayer/AudioPlayer;->start(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$$inlined$synchronized$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$$inlined$synchronized$lambda$1;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->startRunnable:Ljava/lang/Runnable;

    .line 8
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->animView:Lcom/tencent/qgame/animplayer/IAnimView;

    invoke-interface {p1}, Lcom/tencent/qgame/animplayer/IAnimView;->prepareTextureView()V

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final prepareDecoder()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/HardDecoder;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    .line 3
    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->playLoop:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/Decoder;->setPlayLoop(I)V

    .line 4
    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->fps:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/Decoder;->setFps(I)V

    .line 5
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/tencent/qgame/animplayer/AudioPlayer;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/AudioPlayer;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    .line 8
    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->playLoop:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/AudioPlayer;->setPlayLoop(I)V

    .line 9
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAnimListener()Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-object v0
.end method

.method public final getAnimView()Lcom/tencent/qgame/animplayer/IAnimView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->animView:Lcom/tencent/qgame/animplayer/IAnimView;

    return-object v0
.end method

.method public final getAudioPlayer()Lcom/tencent/qgame/animplayer/AudioPlayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    return-object v0
.end method

.method public final getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;

    return-object v0
.end method

.method public final getDecoder()Lcom/tencent/qgame/animplayer/Decoder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    return-object v0
.end method

.method public final getDefaultFps()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->defaultFps:I

    return v0
.end method

.method public final getEnableVersion1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->enableVersion1:Z

    return v0
.end method

.method public final getFps()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->fps:I

    return v0
.end method

.method public final getMaskEdgeBlurBoolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->maskEdgeBlurBoolean:Z

    return v0
.end method

.method public final getPlayLoop()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->playLoop:I

    return v0
.end method

.method public final getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->pluginManager:Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    return-object v0
.end method

.method public final getStartRunnable()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->startRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getSupportMaskBoolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->supportMaskBoolean:Z

    return v0
.end method

.method public final getVideoMode()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->videoMode:I

    return v0
.end method

.method public final isDetachedFromWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isDetachedFromWindow:Z

    return v0
.end method

.method public final isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isMute:Z

    return v0
.end method

.method public final isRunning()Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isStartRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->isRunning()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isStartRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isStartRunning:Z

    return v0
.end method

.method public final isSurfaceAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isSurfaceAvailable:Z

    return v0
.end method

.method public final onSurfaceTextureAvailable(II)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isSurfaceAvailable:Z

    .line 2
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->startRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->startRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final onSurfaceTextureDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isSurfaceAvailable:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->destroy()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AudioPlayer;->destroy()V

    :cond_1
    return-void
.end method

.method public final onSurfaceTextureSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qgame/animplayer/Decoder;->onSurfaceSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public final setAnimListener(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/inter/IAnimListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-void
.end method

.method public final setAudioPlayer(Lcom/tencent/qgame/animplayer/AudioPlayer;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/AudioPlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    return-void
.end method

.method public final setDecoder(Lcom/tencent/qgame/animplayer/Decoder;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/Decoder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    return-void
.end method

.method public final setDefaultFps(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->defaultFps:I

    return-void
.end method

.method public final setDetachedFromWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isDetachedFromWindow:Z

    return-void
.end method

.method public final setEnableVersion1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->enableVersion1:Z

    return-void
.end method

.method public final setFps(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/Decoder;->setFps(I)V

    .line 2
    :cond_0
    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->fps:I

    return-void
.end method

.method public final setMaskEdgeBlurBoolean(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->maskEdgeBlurBoolean:Z

    return-void
.end method

.method public final setMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isMute:Z

    return-void
.end method

.method public final setPlayLoop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/Decoder;->setPlayLoop(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AudioPlayer;->setPlayLoop(I)V

    .line 3
    :cond_1
    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->playLoop:I

    return-void
.end method

.method public final setStartRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->startRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setStartRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isStartRunning:Z

    return-void
.end method

.method public final setSupportMaskBoolean(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->supportMaskBoolean:Z

    return-void
.end method

.method public final setSurfaceAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isSurfaceAvailable:Z

    return-void
.end method

.method public final setVideoMode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->videoMode:I

    return-void
.end method

.method public final startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 2
    .param p1    # Lcom/tencent/qgame/animplayer/file/IFileContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isStartRunning:Z

    .line 2
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->prepareDecoder()V

    .line 3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->prepareThread()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->isStartRunning:Z

    .line 5
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz p1, :cond_0

    const/16 v0, 0x2713

    const-string v1, "0x3 thread create fail"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/Decoder;->onFailed(ILjava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/Decoder;->onVideoComplete()V

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->getRenderThread()Lcom/tencent/qgame/animplayer/HandlerHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final stopPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->decoder:Lcom/tencent/qgame/animplayer/Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->stop()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->audioPlayer:Lcom/tencent/qgame/animplayer/AudioPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AudioPlayer;->stop()V

    :cond_1
    return-void
.end method

.method public final updateMaskConfig(Lcom/tencent/qgame/animplayer/mask/MaskConfig;)V
    .locals 3
    .param p1    # Lcom/tencent/qgame/animplayer/mask/MaskConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setMaskConfig(Lcom/tencent/qgame/animplayer/mask/MaskConfig;)V

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getAlphaMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->safeSetMaskBitmapAndReleasePre(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getMaskPositionPair()Lkotlin/Pair;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->setMaskPositionPair(Lkotlin/Pair;)V

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer;->configManager:Lcom/tencent/qgame/animplayer/AnimConfigManager;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getMaskTexPair()Lkotlin/Pair;

    move-result-object v1

    :cond_6
    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->setMaskTexPair(Lkotlin/Pair;)V

    :cond_7
    return-void
.end method
