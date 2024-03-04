.class final Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;
.super Lcom/tencent/live2/V2TXLivePusherObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/pusher/tencent/TencentLivePusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PushObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J$\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000cH\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0010H\u0016J\u001c\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016J&\u0010\u001d\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010 \u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010!\u001a\u00020\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020\u000c2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J$\u0010\'\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006("
    }
    d2 = {
        "Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;",
        "Lcom/tencent/live2/V2TXLivePusherObserver;",
        "hostPusher",
        "Lcom/guochao/pusher/tencent/TencentLivePusher;",
        "(Lcom/guochao/pusher/tencent/TencentLivePusher;)V",
        "beautyManager",
        "Lcom/guochao/pusher/beauty/XMagicBeautyManager;",
        "getBeautyManager",
        "()Lcom/guochao/pusher/beauty/XMagicBeautyManager;",
        "getHostPusher",
        "()Lcom/guochao/pusher/tencent/TencentLivePusher;",
        "onCaptureFirstAudioFrame",
        "",
        "onCaptureFirstVideoFrame",
        "onError",
        "code",
        "",
        "msg",
        "",
        "extraInfo",
        "Landroid/os/Bundle;",
        "onGLContextCreated",
        "onGLContextDestroyed",
        "onMicrophoneVolumeUpdate",
        "volume",
        "onProcessVideoFrame",
        "srcFrame",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;",
        "dstFrame",
        "onPushStatusUpdate",
        "status",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;",
        "onSetMixTranscodingConfig",
        "onSnapshotComplete",
        "image",
        "Landroid/graphics/Bitmap;",
        "onStatisticsUpdate",
        "statistics",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;",
        "onWarning",
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
.field private final beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/pusher/tencent/TencentLivePusher;)V
    .locals 1
    .param p1    # Lcom/guochao/pusher/tencent/TencentLivePusher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hostPusher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/tencent/live2/V2TXLivePusherObserver;-><init>()V

    iput-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    .line 2
    invoke-static {p1}, Lcom/guochao/pusher/tencent/TencentLivePusher;->access$getBeautyManager$p(Lcom/guochao/pusher/tencent/TencentLivePusher;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    return-void
.end method


# virtual methods
.method public final getBeautyManager()Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    return-object v0
.end method

.method public final getHostPusher()Lcom/guochao/pusher/tencent/TencentLivePusher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    return-object v0
.end method

.method public onCaptureFirstAudioFrame()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onCaptureFirstAudioFrame()V

    return-void
.end method

.method public onCaptureFirstVideoFrame()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onCaptureFirstVideoFrame()V

    return-void
.end method

.method public onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePusherObserver;->onError(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onGLContextCreated()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onGLContextCreated()V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->isPusherFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->glContextCreated()V

    return-void
.end method

.method public onGLContextDestroyed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onGLContextDestroyed()V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->isPusherFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-virtual {v1}, Lcom/guochao/pusher/base/BaseLivePusher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnGLThread()V

    return-void
.end method

.method public onMicrophoneVolumeUpdate(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onMicrophoneVolumeUpdate(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->getPushSoundLevelListener()Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 3
    invoke-interface {v0, p1}, Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;->onSoundLevel(F)V

    :cond_0
    return-void
.end method

.method public onProcessVideoFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)I
    .locals 5
    .param p1    # Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->isPusherFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    .line 3
    iget-object v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->beautyManager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    iget v2, v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->textureId:I

    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    iget v4, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->process(III)I

    move-result v1

    .line 4
    iput v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->textureId:I

    .line 5
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePusherObserver;->onProcessVideoFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)I

    move-result p1

    return p1
.end method

.method public onPushStatusUpdate(Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePusherObserver;->onPushStatusUpdate(Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;Ljava/lang/String;Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-virtual {p1}, Lcom/guochao/pusher/base/BaseLivePusher;->getPushEventListeners()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/pusher/base/ILivePusher$PushEventListener;

    .line 5
    iget-object p3, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;->hostPusher:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-interface {p2, p3}, Lcom/guochao/pusher/base/ILivePusher$PushEventListener;->onPushSuccess(Lcom/guochao/pusher/base/ILivePusher;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSetMixTranscodingConfig(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePusherObserver;->onSetMixTranscodingConfig(ILjava/lang/String;)V

    return-void
.end method

.method public onSnapshotComplete(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onSnapshotComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onStatisticsUpdate(Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;)V
    .locals 0
    .param p1    # Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onStatisticsUpdate(Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;)V

    return-void
.end method

.method public onWarning(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePusherObserver;->onWarning(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
