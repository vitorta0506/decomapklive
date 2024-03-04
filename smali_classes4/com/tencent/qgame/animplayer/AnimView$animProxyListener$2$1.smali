.class public final Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/inter/IAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->invoke()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u001a\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/tencent/qgame/animplayer/AnimView$animProxyListener$2$1",
        "Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "onFailed",
        "",
        "errorType",
        "",
        "errorMsg",
        "",
        "onVideoComplete",
        "onVideoConfigReady",
        "",
        "config",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
        "onVideoDestroy",
        "onVideoRender",
        "frameIndex",
        "onVideoStart",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$hide(Lcom/tencent/qgame/animplayer/AnimView;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z
    .locals 3
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getScaleTypeUtil$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setVideoSize(II)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/qgame/animplayer/inter/IAnimListener$DefaultImpls;->onVideoConfigReady(Lcom/tencent/qgame/animplayer/inter/IAnimListener;Lcom/tencent/qgame/animplayer/AnimConfig;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onVideoDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$hide(Lcom/tencent/qgame/animplayer/AnimView;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoDestroy()V

    :cond_0
    return-void
.end method

.method public onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V
    .locals 1
    .param p2    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V

    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoStart()V

    :cond_0
    return-void
.end method
