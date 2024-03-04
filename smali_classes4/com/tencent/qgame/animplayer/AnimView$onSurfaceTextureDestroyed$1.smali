.class final Lcom/tencent/qgame/animplayer/AnimView$onSurfaceTextureDestroyed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
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
.field final synthetic this$0:Lcom/tencent/qgame/animplayer/AnimView;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$onSurfaceTextureDestroyed$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$onSurfaceTextureDestroyed$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/AnimView;->access$getInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$onSurfaceTextureDestroyed$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/AnimView;->access$setInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView$onSurfaceTextureDestroyed$1;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method
