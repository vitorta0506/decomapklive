.class public Lcom/guochao/faceshow/aaspring/views/ImageCropView;
.super Lcom/guochao/faceshow/aaspring/views/GifImageView;
.source "SourceFile"


# instance fields
.field h:Landroid/graphics/Paint;

.field i:I

.field j:Landroid/graphics/PorterDuffXfermode;

.field k:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/GifImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->j:Landroid/graphics/PorterDuffXfermode;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->j:Landroid/graphics/PorterDuffXfermode;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->j:Landroid/graphics/PorterDuffXfermode;

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->k:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->k:Landroid/graphics/Bitmap;

    .line 5
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->k:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    const-string v4, "#1a000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v7, v3

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->j:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->i:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ImageCropView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
