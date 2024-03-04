.class Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/media/MediaPlayer;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;->c:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    iput-object p2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;->a:Landroid/media/MediaPlayer;

    iput p3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;->c:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-static {v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;->c:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-static {v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;->a:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;->b:I

    invoke-interface {v0, v1, v2}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_0
    return-void
.end method
