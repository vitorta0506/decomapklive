.class public Lcom/guochao/faceshow/aaspring/views/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/TabLayout$d;,
        Lcom/guochao/faceshow/aaspring/views/TabLayout$c;,
        Lcom/guochao/faceshow/aaspring/views/TabLayout$e;,
        Lcom/guochao/faceshow/aaspring/views/TabLayout$f;,
        Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/TabLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroidx/viewpager/widget/ViewPager;

.field private q:Landroidx/viewpager2/widget/ViewPager2;

.field private r:Lcom/guochao/faceshow/aaspring/views/TabLayout$d;

.field private s:F

.field private t:F

.field private u:I

.field private v:Lcom/guochao/faceshow/aaspring/views/TabLayout$c;

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->c:Ljava/util/List;

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d:Ljava/util/List;

    const/16 p3, 0x32

    .line 7
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->e:I

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->u:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->y:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->z:Z

    .line 11
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->A:I

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->A(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private A(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->e:I

    .line 3
    sget-object v1, Lcom/guochao/lib_base/R$styleable;->TabLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_selectedTextColor:I

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->g:I

    .line 5
    sget v2, Lcom/guochao/lib_base/R$styleable;->TabLayout_textColor:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->h:I

    .line 6
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_indicatorDrawable:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/guochao/lib_base/R$drawable;->indicator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_0
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_indicatorColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->o:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/guochao/lib_base/R$color;->color_app_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->o:Landroid/content/res/ColorStateList;

    .line 10
    :cond_1
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_indicatorBottomGap:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->k:I

    .line 11
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_textSize:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->i:F

    .line 12
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_selectedTextSize:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->j:F

    .line 13
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_indicatorWidth:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->s:F

    .line 14
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_indicatorHeight:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->t:F

    .line 15
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_mode:I

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->u:I

    .line 16
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_tabMargin:I

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->B:F

    .line 17
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_textStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->w:I

    .line 18
    sget v1, Lcom/guochao/lib_base/R$styleable;->TabLayout_textUnSelectStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->x:I

    .line 19
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_showBadge:I

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->y:Z

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->y:Z

    .line 20
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_showMargin:I

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->z:Z

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->z:Z

    .line 21
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_tabSelectDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 22
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_tabunSelectDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 23
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_tabPaddingTopGravity:I

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C:F

    .line 24
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_tabPaddingBottomGravity:I

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->D:F

    .line 25
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_tabPaddingStartGravity:I

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->E:F

    .line 26
    sget v0, Lcom/guochao/lib_base/R$styleable;->TabLayout_tabPaddingEndGravity:I

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->F:F

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    .line 29
    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->e(Lcom/guochao/faceshow/aaspring/views/TabLayout;)V

    .line 30
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    .line 31
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {p0, p2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x60000

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFocusableInTouchMode(Z)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p2, v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tabs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->y()V

    .line 39
    invoke-virtual {p0, p1, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->p:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->s:F

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->t:F

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->k:I

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->j:F

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->i:F

    return p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->w:I

    return p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->m:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->x:I

    return p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->E:F

    return p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->q:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C:F

    return p0
.end method

.method static synthetic n(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->F:F

    return p0
.end method

.method static synthetic o(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->D:F

    return p0
.end method

.method static synthetic p(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->g:I

    return p0
.end method

.method static synthetic q(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->h:I

    return p0
.end method

.method static synthetic r(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->u:I

    return p0
.end method

.method static synthetic s(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->f:I

    return p0
.end method

.method static synthetic t(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->A:I

    return p0
.end method

.method static synthetic u(Lcom/guochao/faceshow/aaspring/views/TabLayout;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->A:I

    return p1
.end method

.method static synthetic v(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->e:I

    return p0
.end method

.method static synthetic w(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic x(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->B:F

    return p0
.end method

.method private y()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 4
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->z(Ljava/lang/CharSequence;)I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->c:Ljava/util/List;

    add-int/lit8 v5, v3, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->e:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int v1, v1, v3

    add-int/2addr v2, v1

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->f:I

    const/4 v1, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->y:Z

    invoke-direct {v2, v3, p0, v4}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/views/TabLayout;Z)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->B(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/views/TabLayout$e;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->c(Lcom/guochao/faceshow/aaspring/views/TabLayout$f;)V

    .line 12
    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->b(Z)V

    .line 13
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->f(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4, v5}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 15
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b(Lcom/guochao/faceshow/aaspring/views/TabLayout$e;)V

    .line 16
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    .line 17
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    .line 18
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 19
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->B:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 20
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 21
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->B:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 22
    :cond_1
    iget-boolean v5, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->z:Z

    if-eqz v5, :cond_2

    .line 23
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->e:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 24
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->e:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    :cond_2
    const/high16 v5, 0x40a00000    # 5.0f

    .line 25
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 26
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->a()Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;-><init>(Lcom/guochao/faceshow/aaspring/views/TabLayout;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private z(Ljava/lang/CharSequence;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->i:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->j:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public B(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/views/TabLayout$e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;-><init>(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/views/TabLayout$a;)V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->d(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Lcom/guochao/faceshow/aaspring/views/TabLayout$e;

    move-result-object p1

    return-object p1
.end method

.method public C(IZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->b(Z)V

    if-ne v1, p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v3

    .line 8
    invoke-virtual {p0, v2, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->v:Lcom/guochao/faceshow/aaspring/views/TabLayout$c;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;

    invoke-interface {v2, p0, v3, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$c;->a(Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout$e;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public D(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no tab view at position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabLayout"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c()V

    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->d()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public F(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no tab view at position"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TabLayout"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e(Z)V

    return-void
.end method

.method public G(Landroidx/viewpager2/widget/ViewPager2;Lcom/guochao/faceshow/aaspring/views/TabLayout$d;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->r:Lcom/guochao/faceshow/aaspring/views/TabLayout$d;

    .line 3
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {p2, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout$d;->a(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->y()V

    .line 8
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->onPageSelected(I)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->a(Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 11
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/TabLayout$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$a;-><init>(Lcom/guochao/faceshow/aaspring/views/TabLayout;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public H(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no tab view at position"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TabLayout"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->g(I)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    return-void
.end method

.method public setIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->o:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->s:F

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/guochao/faceshow/aaspring/views/TabLayout$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->v:Lcom/guochao/faceshow/aaspring/views/TabLayout$c;

    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->g:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->h:I

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->p:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->p:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->p:Landroidx/viewpager/widget/ViewPager;

    const-string v0, "TabLayout"

    if-nez p1, :cond_1

    const-string p1, "viewPager is null"

    .line 5
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "viewPager adapter is null"

    .line 7
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->y()V

    .line 14
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->onPageSelected(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 17
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public setupWithViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/views/TabLayout$d;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout$d;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->G(Landroidx/viewpager2/widget/ViewPager2;Lcom/guochao/faceshow/aaspring/views/TabLayout$d;)V

    :cond_0
    return-void
.end method
