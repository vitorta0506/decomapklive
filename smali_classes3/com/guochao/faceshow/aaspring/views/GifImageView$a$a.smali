.class Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/GifImageView$a;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->g:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-virtual {v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->b:Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;->a:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->g:Landroid/graphics/Bitmap;

    return-void
.end method
