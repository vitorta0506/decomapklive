.class final Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
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
        "invoke"
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

.field final synthetic this$0:Lcom/tencent/qgame/animplayer/AnimView;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->$fileContainer:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const-string v1, "AnimPlayer.AnimView"

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "AnimView is GONE, can\'t play"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->$fileContainer:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/AnimView;->access$setLastFile$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;->$fileContainer:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "is running can not start"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
