.class final Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimPlayer;->startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
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
.field final synthetic $fileContainer:Lcom/tencent/qgame/animplayer/file/IFileContainer;

.field final synthetic this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimPlayer;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->$fileContainer:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->$fileContainer:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getEnableVersion1()Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v3}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getVideoMode()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getDefaultFps()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->parseConfig(Lcom/tencent/qgame/animplayer/file/IFileContainer;ZII)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setStartRunning(Z)V

    .line 3
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getDecoder()Lcom/tencent/qgame/animplayer/Decoder;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/tencent/qgame/animplayer/Constant;->INSTANCE:Lcom/tencent/qgame/animplayer/Constant;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lcom/tencent/qgame/animplayer/Constant;->getErrorMsg$default(Lcom/tencent/qgame/animplayer/Constant;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qgame/animplayer/Decoder;->onFailed(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getDecoder()Lcom/tencent/qgame/animplayer/Decoder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->onVideoComplete()V

    :cond_1
    return-void

    .line 5
    :cond_2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimPlayer"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v3}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getAnimListener()Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3, v1}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$startPlay$1;->$fileContainer:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->access$innerStartPlay(Lcom/tencent/qgame/animplayer/AnimPlayer;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    goto :goto_0

    :cond_4
    const-string v1, "onVideoConfigReady return false"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
