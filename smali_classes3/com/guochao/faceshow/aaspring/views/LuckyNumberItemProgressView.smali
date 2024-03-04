.class public Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Path;

.field d:Landroid/graphics/PathMeasure;

.field e:I

.field f:Landroid/graphics/Path;

.field g:Landroid/animation/ValueAnimator;

.field h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a:Z

    const/16 p1, 0xa

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->e:I

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a:Z

    return p1
.end method

.method private e(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->f()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr p1, v3

    sub-float p1, v2, p1

    const/4 v3, 0x0

    aput p1, v1, v3

    aput v2, v1, v0

    .line 3
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->g:Landroid/animation/ValueAnimator;

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a:Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->f()V

    return-void
.end method

.method c()V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->e:I

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b:Landroid/graphics/Paint;

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 8
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->f:Landroid/graphics/Path;

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->e(I)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->d:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->d:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->h:F

    sub-float/2addr v3, v4

    mul-float v0, v0, v3

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->f:Landroid/graphics/Path;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    const/high16 p3, 0x40800000    # 4.0f

    .line 3
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    int-to-float p3, p3

    .line 4
    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->e:I

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    int-to-float v4, p1

    div-float v2, v4, v0

    int-to-float v3, p2

    sub-float p1, v3, p4

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    sub-float v0, v4, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    sub-float v1, v4, p4

    sub-float v5, v3, p3

    invoke-virtual {p2, v4, v3, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p2, v4, v1, v0, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p2, v1, v1, p4, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p2, p4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p2, v1, v3, p3, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 p2, 0x3

    new-array v6, p2, [I

    const-string p3, "#FFF693"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    aput p3, v6, p4

    const-string p3, "#F04E86"

    .line 16
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x1

    aput p3, v6, v0

    const-string p3, "#FF680A"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x2

    aput p3, v6, v0

    new-array v7, p2, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->d:Landroid/graphics/PathMeasure;

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->c:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
