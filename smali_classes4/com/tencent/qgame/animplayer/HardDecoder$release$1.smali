.class final Lcom/tencent/qgame/animplayer/HardDecoder$release$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $decoder:Landroid/media/MediaCodec;

.field final synthetic $extractor:Landroid/media/MediaExtractor;

.field final synthetic this$0:Lcom/tencent/qgame/animplayer/HardDecoder;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/HardDecoder;Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->$decoder:Landroid/media/MediaCodec;

    iput-object p3, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->$extractor:Landroid/media/MediaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "AnimPlayer.HardDecoder"

    .line 1
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/Decoder;->getRender()Lcom/tencent/qgame/animplayer/IRenderListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/IRenderListener;->clearFrame()V

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "release"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->$decoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 5
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->$extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-static {v1}, Lcom/tencent/qgame/animplayer/HardDecoder;->access$getGlTexture$p(Lcom/tencent/qgame/animplayer/HardDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/qgame/animplayer/HardDecoder;->access$setGlTexture$p(Lcom/tencent/qgame/animplayer/HardDecoder;Landroid/graphics/SurfaceTexture;)V

    .line 9
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/Decoder;->getSpeedControlUtil()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->reset()V

    .line 10
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->onRelease()V

    .line 11
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/Decoder;->getRender()Lcom/tencent/qgame/animplayer/IRenderListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/IRenderListener;->releaseTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    sget-object v2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/Decoder;->setRunning(Z)V

    .line 14
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->onVideoComplete()V

    .line 15
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/HardDecoder;->access$getNeedDestroy$p(Lcom/tencent/qgame/animplayer/HardDecoder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/HardDecoder;->access$destroyInner(Lcom/tencent/qgame/animplayer/HardDecoder;)V

    :cond_5
    return-void
.end method
