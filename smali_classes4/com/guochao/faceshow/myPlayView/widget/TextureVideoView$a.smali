.class Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Matrix;

.field final synthetic b:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$a;->b:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    iput-object p2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$a;->a:Landroid/graphics/Matrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$a;->b:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$a;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
