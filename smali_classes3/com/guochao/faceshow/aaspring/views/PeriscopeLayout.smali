.class public Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/view/animation/Interpolator;

.field private d:[Landroid/view/animation/Interpolator;

.field private e:I

.field private f:I

.field private g:Landroid/widget/RelativeLayout$LayoutParams;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Random;

.field private j:I

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->a:Landroid/view/animation/Interpolator;

    .line 3
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->b:Landroid/view/animation/Interpolator;

    .line 4
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->c:Landroid/view/animation/Interpolator;

    .line 5
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->i:Ljava/util/Random;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->m:Z

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->a:Landroid/view/animation/Interpolator;

    .line 10
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->b:Landroid/view/animation/Interpolator;

    .line 11
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->c:Landroid/view/animation/Interpolator;

    .line 12
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->i:Ljava/util/Random;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->m:Z

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->a:Landroid/view/animation/Interpolator;

    .line 17
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->b:Landroid/view/animation/Interpolator;

    .line 18
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->c:Landroid/view/animation/Interpolator;

    .line 19
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->i:Ljava/util/Random;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->m:Z

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->a()V

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->l:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->h:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0108

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 9
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->h:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->h:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->h:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->h:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->j:I

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->k:I

    .line 17
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->k:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->j:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->g:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    const/4 v2, -0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->g:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    .line 20
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->d:[Landroid/view/animation/Interpolator;

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->a:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->b:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->c:Landroid/view/animation/Interpolator;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/PeriscopeLayout;->e:I

    return-void
.end method
