.class public Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/Bitmap;

.field h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->d:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->e:I

    const/16 p1, 0x28

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->h:I

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 7
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->d:I

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->e:I

    const/16 p1, 0x28

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->h:I

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->d:I

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->e:I

    const/16 p1, 0x28

    .line 14
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->h:I

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->b:Landroid/graphics/Paint;

    const-string v1, "#331B8DF1"

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->h:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0244

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->f:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0243

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->g:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->c:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->c:Landroid/graphics/RectF;

    .line 5
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->h:I

    div-int/lit8 v2, v2, 0x2

    :cond_1
    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->d:I

    return-void
.end method

.method public setWave(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
