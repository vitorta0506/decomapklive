.class public Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;,
        Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;,
        Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$b;
    }
.end annotation


# static fields
.field private static n:F = 0.15f


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

.field private g:Landroid/view/ViewParent;

.field private h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

.field private i:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$b;

.field private j:F

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c:I

    .line 3
    sget v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->n:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j:F

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->k:F

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l:F

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m:F

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c:I

    .line 11
    sget p2, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->n:F

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d:F

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j:F

    .line 13
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->k:F

    .line 14
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l:F

    .line 15
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m:F

    .line 16
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c:I

    .line 19
    sget p2, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->n:F

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d:F

    const/4 p2, 0x0

    .line 20
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j:F

    .line 21
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->k:F

    .line 22
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l:F

    .line 23
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m:F

    .line 24
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->a:I

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c:I

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d:F

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m()V

    return-void
.end method

.method private getScrollableParent()Landroid/view/ViewGroup;
    .locals 2

    move-object v0, p0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :catch_0
    return-object v1
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v6, v2, v0

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v7, v3, v1

    add-float v8, v2, v0

    add-float v9, v3, v1

    const/high16 v0, 0x41200000    # 10.0f

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v10, v1

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b:Landroid/graphics/Paint;

    move-object v5, p1

    .line 7
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 2

    const-string v0, "#FF417D"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->a:I

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b:Landroid/graphics/Paint;

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method private synthetic l(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "error"

    const-string v1, "This drag indicator view can not set custom background"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected h()Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;
    .locals 6

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->a:I

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->a:I

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinimumHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    return-object v0
.end method

.method protected k(FF)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801ee

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;Landroid/widget/ImageView;FF)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 9
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->resetAniming()V

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/f;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/views/f;-><init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;Landroid/widget/ImageView;)V

    add-int/lit8 v2, v2, 0x14

    int-to-long v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->i:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$b;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$b;->a(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)V

    :cond_1
    const/16 p1, 0x8

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->i(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->isAniming()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    new-instance v3, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;-><init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    .line 6
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j:F

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->k:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c:I

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b(FFFFF)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h()Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l:F

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m:F

    sub-float/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->d(FF)V

    goto/16 :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    if-eqz v0, :cond_5

    iget v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->k(FF)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->h:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    if-eqz v0, :cond_7

    .line 21
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 23
    iget p1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->l:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_6

    .line 24
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c()V

    goto :goto_0

    .line 25
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m()V

    .line 26
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->g:Landroid/view/ViewParent;

    if-eqz p1, :cond_b

    .line 27
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->g:Landroid/view/ViewParent;

    if-nez v0, :cond_9

    .line 29
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->getScrollableParent()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->g:Landroid/view/ViewParent;

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->g:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 31
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l:F

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m:F

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->l:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    shr-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->j:F

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->m:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    shr-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->k:F

    :cond_b
    :goto_1
    return v2
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->n()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->n()V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->n()V

    return-void
.end method

.method public setDrawColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->a:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setOnDismissAction(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->i:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$b;

    return-void
.end method
