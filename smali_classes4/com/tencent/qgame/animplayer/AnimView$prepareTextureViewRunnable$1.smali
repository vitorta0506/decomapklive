.class final Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/tencent/qgame/animplayer/AnimView;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    new-instance v7, Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->$context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v1}, Lcom/tencent/qgame/animplayer/AnimView;->access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;->setPlayer(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v7, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 5
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {v7, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v1}, Lcom/tencent/qgame/animplayer/AnimView;->access$getScaleTypeUtil$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getLayoutParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-static {v0, v7}, Lcom/tencent/qgame/animplayer/AnimView;->access$setInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
