.class public Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;,
        Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;,
        Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/view/animation/Interpolator;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Random;

.field private f:I

.field private g:I

.field h:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

.field i:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;",
            ">;"
        }
    .end annotation
.end field

.field l:Z

.field m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->a:Landroid/view/animation/Interpolator;

    .line 3
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->b:Landroid/view/animation/Interpolator;

    .line 4
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->c:Landroid/view/animation/Interpolator;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->d:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$a;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->h:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->k:Ljava/util/List;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->l:Z

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->m:Z

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->a:Landroid/view/animation/Interpolator;

    .line 13
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->b:Landroid/view/animation/Interpolator;

    .line 14
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->c:Landroid/view/animation/Interpolator;

    .line 15
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->d:Ljava/util/List;

    .line 16
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$a;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->h:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->k:Ljava/util/List;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->l:Z

    .line 19
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->m:Z

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->a:Landroid/view/animation/Interpolator;

    .line 23
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->b:Landroid/view/animation/Interpolator;

    .line 24
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->c:Landroid/view/animation/Interpolator;

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->d:Ljava/util/List;

    .line 26
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$a;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->h:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->k:Ljava/util/List;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->l:Z

    .line 29
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->m:Z

    .line 30
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;I)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->i(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->f:I

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->g:I

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->b:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->c:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private i(I)Landroid/graphics/PointF;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->f:I

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v3

    .line 3
    :goto_0
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->g:I

    if-gt v4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, -0x64

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    div-int/2addr v1, p1

    int-to-float p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private j()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e:Ljava/util/Random;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0108

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 9
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->m:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->i:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->i:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->i:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;->b(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;

    move-result-object v0

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e:Ljava/util/Random;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->l:Z

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->l:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->m:Z

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->k:Ljava/util/List;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_2

    .line 7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;

    .line 8
    invoke-virtual {v7, p1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->b(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->i:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$d;->a(Ljava/util/List;)V

    .line 13
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x6

    cmp-long p1, v0, v3

    if-lez p1, :cond_4

    const/4 v2, 0x1

    .line 15
    :cond_4
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->m:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->g:I

    return-void
.end method
