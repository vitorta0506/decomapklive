.class Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$b;->a:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$b;->a:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-static {v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$b;->a:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-static {v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$b;->a:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-static {v1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void
.end method
