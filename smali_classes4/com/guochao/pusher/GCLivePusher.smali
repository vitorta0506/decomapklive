.class public final Lcom/guochao/pusher/GCLivePusher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/pusher/base/ILivePusher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/pusher/GCLivePusher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 ?2\u00020\u0001:\u0001?B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\rH\u0016J\u0008\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u001f\u001a\u00020\rH\u0016J\u0012\u0010 \u001a\u00020\r2\u0008\u0008\u0001\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0005H\u0016J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0005H\u0016J\"\u0010\'\u001a\u00020\r2\u0008\u0010(\u001a\u0004\u0018\u00010\u001d2\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0012\u0010+\u001a\u00020\r2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u000201H\u0016J&\u00102\u001a\u00020\"2\u0008\u00103\u001a\u0004\u0018\u00010\u001d2\u0008\u00104\u001a\u0004\u0018\u00010\u001d2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u001c\u00107\u001a\u00020\r2\u0008\u00103\u001a\u0004\u0018\u00010\u001d2\u0008\u00104\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u00108\u001a\u00020\rH\u0016J\u0008\u00109\u001a\u00020\rH\u0016J\u0010\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020\u0005H\u0016J\u0008\u0010<\u001a\u00020\rH\u0016J\u0008\u0010=\u001a\u00020\rH\u0016J\u0008\u0010>\u001a\u00020\rH\u0016R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006@"
    }
    d2 = {
        "Lcom/guochao/pusher/GCLivePusher;",
        "Lcom/guochao/pusher/base/ILivePusher;",
        "pusher",
        "(Lcom/guochao/pusher/base/ILivePusher;)V",
        "value",
        "",
        "isPusherFrozen",
        "()Z",
        "setPusherFrozen",
        "(Z)V",
        "getPusher",
        "()Lcom/guochao/pusher/base/ILivePusher;",
        "addPushEventListener",
        "",
        "pushEventListener",
        "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;",
        "enableAudio",
        "enable",
        "enableCamera",
        "enableThirdBeauty",
        "boolean",
        "freezePusher",
        "getBeautyManager",
        "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;",
        "isPushing",
        "onPause",
        "onResume",
        "playBGM",
        "path",
        "",
        "removePushEventListener",
        "reset",
        "setLiveResolution",
        "liveResolution",
        "",
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
        "Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;",
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
        "unfreezePusher",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/pusher/GCLivePusher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_TENCENT:I = 0x1

.field public static final TYPE_ZEGO:I = 0x2


# instance fields
.field private final pusher:Lcom/guochao/pusher/base/ILivePusher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/pusher/GCLivePusher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/pusher/GCLivePusher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/pusher/GCLivePusher;->Companion:Lcom/guochao/pusher/GCLivePusher$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/guochao/pusher/base/ILivePusher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/guochao/pusher/base/ILivePusher;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/pusher/GCLivePusher;-><init>(Lcom/guochao/pusher/base/ILivePusher;)V

    return-void
.end method

.method public static final createPusher(Landroid/content/Context;I)Lcom/guochao/pusher/GCLivePusher;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/pusher/GCLivePusher;->Companion:Lcom/guochao/pusher/GCLivePusher$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/pusher/GCLivePusher$Companion;->createPusher(Landroid/content/Context;I)Lcom/guochao/pusher/GCLivePusher;

    move-result-object p0

    return-object p0
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/pusher/GCLivePusher;->Companion:Lcom/guochao/pusher/GCLivePusher$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/pusher/GCLivePusher$Companion;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addPushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V
    .locals 1
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pushEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->addPushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    return-void
.end method

.method public enableAudio(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->enableAudio(Z)V

    return-void
.end method

.method public enableCamera(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->enableCamera(Z)V

    return-void
.end method

.method public enableThirdBeauty(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->enableThirdBeauty(Z)V

    return-void
.end method

.method public freezePusher()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->freezePusher()V

    return-void
.end method

.method public getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    return-object v0
.end method

.method public final getPusher()Lcom/guochao/pusher/base/ILivePusher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    return-object v0
.end method

.method public isPusherFrozen()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->isPusherFrozen()Z

    move-result v0

    return v0
.end method

.method public isPushing()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->isPushing()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->onResume()V

    return-void
.end method

.method public playBGM(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->playBGM(Ljava/lang/String;)V

    return-void
.end method

.method public removePushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V
    .locals 1
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pushEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->removePushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->reset()V

    return-void
.end method

.method public setLiveResolution(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->setLiveResolution(I)V

    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->setMirror(Z)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->setMute(Z)V

    return-void
.end method

.method public setPauseImage(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1, p2, p3}, Lcom/guochao/pusher/base/ILivePusher;->setPauseImage(Ljava/lang/String;II)V

    return-void
.end method

.method public setPusherFrozen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->setPusherFrozen(Z)V

    return-void
.end method

.method public setSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V
    .locals 1
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->setSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V

    return-void
.end method

.method public startPreview(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->startPreview(Landroid/view/TextureView;)V

    return-void
.end method

.method public startPreview(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->startPreview(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startPush(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/user/RoomInfo;)I
    .locals 1
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

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1, p2, p3}, Lcom/guochao/pusher/base/ILivePusher;->startPush(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/user/RoomInfo;)I

    move-result p1

    return p1
.end method

.method public startPushToRtc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1, p2}, Lcom/guochao/pusher/base/ILivePusher;->startPushToRtc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopAll()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->stopAll()V

    return-void
.end method

.method public stopBGM()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->stopBGM()V

    return-void
.end method

.method public stopPreview(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher;->stopPreview(Z)V

    return-void
.end method

.method public stopPush()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->stopPush()V

    return-void
.end method

.method public switchCamera()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->switchCamera()V

    return-void
.end method

.method public unfreezePusher()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/GCLivePusher;->pusher:Lcom/guochao/pusher/base/ILivePusher;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher;->unfreezePusher()V

    return-void
.end method
