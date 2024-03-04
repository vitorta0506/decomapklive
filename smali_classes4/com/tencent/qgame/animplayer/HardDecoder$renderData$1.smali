.class final Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/HardDecoder;->renderData()V
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
.field final synthetic this$0:Lcom/tencent/qgame/animplayer/HardDecoder;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/HardDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/HardDecoder;->access$getGlTexture$p(Lcom/tencent/qgame/animplayer/HardDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->getRender()Lcom/tencent/qgame/animplayer/IRenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/IRenderListener;->renderFrame()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->onRendering()V

    .line 5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;->this$0:Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->getRender()Lcom/tencent/qgame/animplayer/IRenderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/IRenderListener;->swapBuffers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimPlayer.HardDecoder"

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
