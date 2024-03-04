.class public Lcom/guochao/faceshow/aaspring/views/RatingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;,
        Lcom/guochao/faceshow/aaspring/views/RatingBar$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/guochao/faceshow/aaspring/views/RatingBar$b;

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    sget-object v1, Lcom/guochao/faceshow/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/high16 v1, 0x41a00000    # 20.0f

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->d:F

    const/4 v1, 0x6

    const/high16 v2, 0x41200000    # 10.0f

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->e:F

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->f:F

    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->fromStep(I)Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->j:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    .line 8
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->b:I

    const/4 p2, 0x2

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->g:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x3

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->h:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x4

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->i:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->a:Z

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    :goto_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->b:I

    if-ge v0, p1, :cond_0

    .line 15
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->e(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;-><init>(Lcom/guochao/faceshow/aaspring/views/RatingBar;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->f:F

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setStar(F)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/RatingBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/RatingBar;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->f:F

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/RatingBar;)Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->j:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/RatingBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private e(I)Landroid/widget/ImageView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->d:F

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->d:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq p1, v2, :cond_0

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->e:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 8
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xa

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    return-object v0
.end method


# virtual methods
.method public getStart()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->f:F

    return v0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->a:Z

    return-void
.end method

.method public setOnRatingChangeListener(Lcom/guochao/faceshow/aaspring/views/RatingBar$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->c:Lcom/guochao/faceshow/aaspring/views/RatingBar$b;

    return-void
.end method

.method public setStar(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->c:Lcom/guochao/faceshow/aaspring/views/RatingBar$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar$b;->a(F)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->f:F

    float-to-int v0, p1

    .line 4
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 8
    :goto_1
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->b:I

    if-ge v1, v2, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setStarEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarFillDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarHalfDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarImageSize(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->d:F

    return-void
.end method

.method public setStepSize(Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar;->j:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    return-void
.end method
