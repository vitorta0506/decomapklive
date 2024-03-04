.class Lcom/guochao/faceshow/aaspring/views/GifImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/GifImageView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/GifImageView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->d:J

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    .line 3
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f(Lcom/guochao/faceshow/aaspring/views/GifImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-wide v6, v5, Lcom/guochao/faceshow/aaspring/views/GifImageView;->d:J

    sub-long/2addr v3, v6

    int-to-long v6, v0

    rem-long/2addr v3, v6

    long-to-int v4, v3

    .line 7
    iget-object v3, v5, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {v3, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;->a:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/aaspring/views/GifImageView$a$a;-><init>(Lcom/guochao/faceshow/aaspring/views/GifImageView$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
