.class public Lcom/previewlibrary/wight/SmoothImageView;
.super Luk/co/senab2/photoview2/PhotoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/previewlibrary/wight/SmoothImageView$i;,
        Lcom/previewlibrary/wight/SmoothImageView$j;,
        Lcom/previewlibrary/wight/SmoothImageView$g;,
        Lcom/previewlibrary/wight/SmoothImageView$h;,
        Lcom/previewlibrary/wight/SmoothImageView$Status;
    }
.end annotation


# static fields
.field private static A:Z = false

.field private static y:I = 0x190

.field private static z:Z = false


# instance fields
.field private c:Lcom/previewlibrary/wight/SmoothImageView$Status;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Matrix;

.field private f:Lcom/previewlibrary/wight/SmoothImageView$i;

.field private g:Lcom/previewlibrary/wight/SmoothImageView$i;

.field private h:Lcom/previewlibrary/wight/SmoothImageView$i;

.field private i:Landroid/graphics/Rect;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field n:Landroid/animation/ValueAnimator;

.field private o:F

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Lcom/previewlibrary/wight/SmoothImageView$g;

.field private v:Lcom/previewlibrary/wight/SmoothImageView$h;

.field private w:Lcom/previewlibrary/wight/SmoothImageView$i;

.field private x:Lcom/previewlibrary/wight/SmoothImageView$j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Luk/co/senab2/photoview2/PhotoView;-><init>(Landroid/content/Context;)V

    .line 9
    sget-object p1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_NORMAL:Lcom/previewlibrary/wight/SmoothImageView$Status;

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 10
    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->o:F

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    .line 12
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->s:Z

    .line 13
    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    .line 14
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Luk/co/senab2/photoview2/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_NORMAL:Lcom/previewlibrary/wight/SmoothImageView$Status;

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 3
    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->o:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    .line 5
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->s:Z

    .line 6
    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    .line 7
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->m()V

    return-void
.end method

.method static synthetic c(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$g;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/wight/SmoothImageView;->u:Lcom/previewlibrary/wight/SmoothImageView$g;

    return-object p0
.end method

.method static synthetic d(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$i;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    return-object p0
.end method

.method static synthetic e(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$j;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/wight/SmoothImageView;->x:Lcom/previewlibrary/wight/SmoothImageView$j;

    return-object p0
.end method

.method static synthetic f(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$Status;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    return-object p0
.end method

.method static synthetic g(Lcom/previewlibrary/wight/SmoothImageView;Lcom/previewlibrary/wight/SmoothImageView$Status;)Lcom/previewlibrary/wight/SmoothImageView$Status;
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    return-object p1
.end method

.method public static getDuration()I
    .locals 1

    sget v0, Lcom/previewlibrary/wight/SmoothImageView;->y:I

    return v0
.end method

.method private h()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->o()F

    move-result v0

    iget v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->o:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->p()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->k()V

    .line 4
    sget v0, Lcom/previewlibrary/R$id;->item_image_key:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->v:Lcom/previewlibrary/wight/SmoothImageView$h;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/previewlibrary/wight/SmoothImageView$h;->a()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private i(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->p:I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->q:I

    .line 3
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->n()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->s:Z

    .line 6
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-eqz v0, :cond_1

    .line 7
    iget v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    float-to-int v2, v1

    .line 8
    iget v0, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 9
    iget v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->q:I

    if-lt v1, v2, :cond_1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->s:Z

    .line 11
    :cond_1
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    return-void
.end method

.method private j(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->s:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 5
    iget v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->p:I

    sub-int/2addr v0, v3

    .line 6
    iget v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->q:I

    sub-int/2addr v2, v3

    .line 7
    iget-boolean v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v3, v5, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v5, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    iget-boolean v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->m:Z

    if-eqz v3, :cond_4

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 12
    sget-object p1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_MOVE:Lcom/previewlibrary/wight/SmoothImageView$Status;

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 14
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 15
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->o()F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float v0, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 18
    iput-boolean v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float p1, p1, v3

    sub-float/2addr v2, p1

    mul-float v2, v2, v0

    float-to-int p1, v2

    .line 19
    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 21
    iget p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    if-gez p1, :cond_5

    .line 22
    iput v4, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->u:Lcom/previewlibrary/wight/SmoothImageView$g;

    if-eqz p1, :cond_6

    .line 24
    iget v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    invoke-interface {p1, v0}, Lcom/previewlibrary/wight/SmoothImageView$g;->a(I)V

    :cond_6
    return v1

    .line 25
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/previewlibrary/wight/SmoothImageView$i;->a()Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v1, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    .line 4
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v1, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    .line 5
    iget v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    .line 6
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v1, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v3, v3, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    .line 7
    invoke-virtual {v0}, Lcom/previewlibrary/wight/SmoothImageView$i;->a()Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v1

    iput-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    .line 8
    invoke-virtual {v0}, Lcom/previewlibrary/wight/SmoothImageView$i;->a()Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->e:Landroid/graphics/Matrix;

    .line 5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Luk/co/senab2/photoview2/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    .line 17
    :goto_0
    new-instance v0, Lcom/previewlibrary/wight/SmoothImageView$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/previewlibrary/wight/SmoothImageView$i;-><init>(Lcom/previewlibrary/wight/SmoothImageView;Lcom/previewlibrary/wight/SmoothImageView$a;)V

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    const/4 v2, 0x0

    .line 18
    iput v2, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    .line 19
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    .line 22
    sget-boolean v3, Lcom/previewlibrary/wight/SmoothImageView;->z:Z

    if-eqz v3, :cond_6

    .line 23
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    goto :goto_1

    .line 24
    :cond_6
    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcd/a;->a(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    .line 26
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    .line 27
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 28
    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 29
    iget-object v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    cmpl-float v4, v0, v2

    if-lez v4, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    iput v0, v3, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    .line 30
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 31
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 32
    new-instance v3, Lcom/previewlibrary/wight/SmoothImageView$i;

    invoke-direct {v3, p0, v1}, Lcom/previewlibrary/wight/SmoothImageView$i;-><init>(Lcom/previewlibrary/wight/SmoothImageView;Lcom/previewlibrary/wight/SmoothImageView$a;)V

    iput-object v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    cmpg-float v1, v0, v2

    if-gez v1, :cond_8

    goto :goto_3

    :cond_8
    move v0, v2

    .line 33
    :goto_3
    iput v0, v3, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    const/16 v1, 0xff

    .line 34
    iput v1, v3, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    .line 35
    iget v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 36
    iget v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v3, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    .line 38
    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    .line 39
    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    int-to-float v1, v1

    iput v1, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    int-to-float v0, v0

    .line 40
    iput v0, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    .line 41
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    sget-object v1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_IN:Lcom/previewlibrary/wight/SmoothImageView$Status;

    if-ne v0, v1, :cond_9

    .line 42
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    invoke-virtual {v0}, Lcom/previewlibrary/wight/SmoothImageView$i;->a()Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    goto :goto_4

    .line 43
    :cond_9
    sget-object v1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_OUT:Lcom/previewlibrary/wight/SmoothImageView$Status;

    if-ne v0, v1, :cond_a

    .line 44
    invoke-virtual {v2}, Lcom/previewlibrary/wight/SmoothImageView$i;->a()Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    .line 45
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iput-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    :cond_b
    :goto_5
    return-void
.end method

.method private o()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->n()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->w:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v1, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private p()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    new-instance v4, Lcom/previewlibrary/wight/SmoothImageView$a;

    invoke-direct {v4, p0}, Lcom/previewlibrary/wight/SmoothImageView$a;-><init>(Lcom/previewlibrary/wight/SmoothImageView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v0, [I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    aput v5, v4, v3

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 4
    new-instance v5, Lcom/previewlibrary/wight/SmoothImageView$b;

    invoke-direct {v5, p0}, Lcom/previewlibrary/wight/SmoothImageView$b;-><init>(Lcom/previewlibrary/wight/SmoothImageView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v0, [I

    .line 5
    iget v6, p0, Lcom/previewlibrary/wight/SmoothImageView;->t:I

    aput v6, v5, v3

    const/16 v6, 0xff

    aput v6, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 6
    new-instance v6, Lcom/previewlibrary/wight/SmoothImageView$c;

    invoke-direct {v6, p0}, Lcom/previewlibrary/wight/SmoothImageView$c;-><init>(Lcom/previewlibrary/wight/SmoothImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v0, [F

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v7

    aput v7, v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 8
    new-instance v7, Lcom/previewlibrary/wight/SmoothImageView$d;

    invoke-direct {v7, p0}, Lcom/previewlibrary/wight/SmoothImageView$d;-><init>(Lcom/previewlibrary/wight/SmoothImageView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10
    sget v8, Lcom/previewlibrary/wight/SmoothImageView;->y:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11
    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v1, v8, v3

    aput-object v4, v8, v2

    aput-object v6, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    .line 12
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private r()V
    .locals 15

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->j:Z

    .line 2
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    .line 4
    sget v2, Lcom/previewlibrary/wight/SmoothImageView;->y:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    sget-object v2, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_IN:Lcom/previewlibrary/wight/SmoothImageView$Status;

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x6

    const-string v7, "animHeight"

    const-string v8, "animWidth"

    const-string v9, "animTop"

    const-string v10, "animLeft"

    const-string v11, "animAlpha"

    const-string v12, "animScale"

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v1, v2, :cond_1

    new-array v1, v14, [F

    .line 7
    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v2, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    aput v2, v1, v0

    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v2, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    aput v2, v1, v13

    invoke-static {v12, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v14, [I

    .line 8
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    aput v12, v2, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    aput v12, v2, v13

    invoke-static {v11, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v11, v14, [F

    .line 9
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    aput v12, v11, v13

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    new-array v11, v14, [F

    .line 10
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    aput v12, v11, v13

    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    new-array v11, v14, [F

    .line 11
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    aput v12, v11, v13

    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v11, v14, [F

    .line 12
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    aput v12, v11, v13

    invoke-static {v7, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 13
    iget-object v11, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v0

    aput-object v2, v6, v13

    aput-object v10, v6, v14

    aput-object v9, v6, v5

    aput-object v8, v6, v4

    aput-object v7, v6, v3

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    sget-object v2, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_OUT:Lcom/previewlibrary/wight/SmoothImageView$Status;

    if-ne v1, v2, :cond_2

    new-array v1, v14, [F

    .line 15
    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v2, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    aput v2, v1, v0

    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v2, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    aput v2, v1, v13

    invoke-static {v12, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v14, [I

    .line 16
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    aput v12, v2, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    aput v12, v2, v13

    invoke-static {v11, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v11, v14, [F

    .line 17
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    aput v12, v11, v13

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    new-array v11, v14, [F

    .line 18
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    aput v12, v11, v13

    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    new-array v11, v14, [F

    .line 19
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    aput v12, v11, v13

    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v11, v14, [F

    .line 20
    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    aput v12, v11, v0

    iget-object v12, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v12, v12, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    aput v12, v11, v13

    invoke-static {v7, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 21
    iget-object v11, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v0

    aput-object v2, v6, v13

    aput-object v10, v6, v14

    aput-object v9, v6, v5

    aput-object v8, v6, v4

    aput-object v7, v6, v3

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 22
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/previewlibrary/wight/SmoothImageView$e;

    invoke-direct {v1, p0}, Lcom/previewlibrary/wight/SmoothImageView$e;-><init>(Lcom/previewlibrary/wight/SmoothImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/previewlibrary/wight/SmoothImageView$f;

    invoke-direct {v1, p0}, Lcom/previewlibrary/wight/SmoothImageView$f;-><init>(Lcom/previewlibrary/wight/SmoothImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static setDuration(I)V
    .locals 0

    sput p0, Lcom/previewlibrary/wight/SmoothImageView;->y:I

    return-void
.end method

.method public static setFullscreen(Z)V
    .locals 0

    sput-boolean p0, Lcom/previewlibrary/wight/SmoothImageView;->z:Z

    return-void
.end method

.method public static setIsScale(Z)V
    .locals 0

    sput-boolean p0, Lcom/previewlibrary/wight/SmoothImageView;->A:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/previewlibrary/wight/SmoothImageView;->A:Z

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    .line 3
    invoke-virtual {p0}, Luk/co/senab2/photoview2/PhotoView;->getScale()F

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/previewlibrary/wight/SmoothImageView;->j(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->h()Z

    move-result p1

    return p1

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/previewlibrary/wight/SmoothImageView;->i(Landroid/view/MotionEvent;)V

    .line 8
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    iget-boolean v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    if-eqz v0, :cond_6

    .line 10
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->h()Z

    move-result p1

    return p1

    .line 11
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_9

    goto :goto_2

    .line 12
    :cond_8
    invoke-direct {p0, p1}, Lcom/previewlibrary/wight/SmoothImageView;->j(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 13
    :cond_9
    iget-boolean v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->r:Z

    if-eqz v0, :cond_b

    .line 14
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->h()Z

    move-result p1

    return p1

    .line 15
    :cond_a
    invoke-direct {p0, p1}, Lcom/previewlibrary/wight/SmoothImageView;->i(Landroid/view/MotionEvent;)V

    .line 16
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public l()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Luk/co/senab2/photoview2/PhotoView;->getScale()F

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v2, v1}, Luk/co/senab2/photoview2/PhotoView;->b(FZ)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Luk/co/senab2/photoview2/PhotoView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    .line 3
    iput v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    .line 5
    sput-boolean v0, Lcom/previewlibrary/wight/SmoothImageView;->z:Z

    .line 6
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    .line 9
    iput-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->n:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    sget-object v1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_OUT:Lcom/previewlibrary/wight/SmoothImageView$Status;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_IN:Lcom/previewlibrary/wight/SmoothImageView$Status;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_MOVE:Lcom/previewlibrary/wight/SmoothImageView$Status;

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 9
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->f:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->g:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-nez v0, :cond_5

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->n()V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    if-nez v0, :cond_6

    .line 13
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    iget v0, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->e:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v2, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 18
    iget v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->k:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v3, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    mul-float v1, v1, v3

    iget v4, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    sub-float/2addr v1, v4

    neg-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 19
    iget v5, p0, Lcom/previewlibrary/wight/SmoothImageView;->l:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    iget v2, v2, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    sub-float/2addr v5, v2

    neg-float v2, v5

    div-float/2addr v2, v4

    .line 20
    iget-object v3, p0, Lcom/previewlibrary/wight/SmoothImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 21
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v2, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    iget v1, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->h:Lcom/previewlibrary/wight/SmoothImageView$i;

    iget v2, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    iget v1, v1, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 23
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 26
    iget-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->j:Z

    if-eqz p1, :cond_7

    .line 27
    invoke-direct {p0}, Lcom/previewlibrary/wight/SmoothImageView;->r()V

    :cond_7
    :goto_1
    return-void
.end method

.method public q(ZF)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->m:Z

    .line 2
    iput p2, p0, Lcom/previewlibrary/wight/SmoothImageView;->o:F

    return-void
.end method

.method public s(Lcom/previewlibrary/wight/SmoothImageView$j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/previewlibrary/wight/SmoothImageView;->setOnTransformListener(Lcom/previewlibrary/wight/SmoothImageView$j;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->j:Z

    .line 3
    sget-object p1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_IN:Lcom/previewlibrary/wight/SmoothImageView$Status;

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setAlphaChangeListener(Lcom/previewlibrary/wight/SmoothImageView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->u:Lcom/previewlibrary/wight/SmoothImageView$g;

    return-void
.end method

.method public setOnTransformListener(Lcom/previewlibrary/wight/SmoothImageView$j;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->x:Lcom/previewlibrary/wight/SmoothImageView$j;

    return-void
.end method

.method public setThumbRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public setTransformOutListener(Lcom/previewlibrary/wight/SmoothImageView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->v:Lcom/previewlibrary/wight/SmoothImageView$h;

    return-void
.end method

.method public t(Lcom/previewlibrary/wight/SmoothImageView$j;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lcom/previewlibrary/wight/SmoothImageView;->setOnTransformListener(Lcom/previewlibrary/wight/SmoothImageView$j;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->j:Z

    .line 10
    sget-object p1, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_OUT:Lcom/previewlibrary/wight/SmoothImageView$Status;

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView;->c:Lcom/previewlibrary/wight/SmoothImageView$Status;

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
