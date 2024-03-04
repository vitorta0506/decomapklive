.class public Lcom/guochao/faceshow/views/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/s$e;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/views/VideoProgressView;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Z

.field private d:I

.field private e:F

.field private f:J

.field private g:J

.field private h:F

.field private i:F

.field private j:I

.field private k:Lcom/guochao/faceshow/views/s$e;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/views/RangeSliderViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/guochao/faceshow/views/ColorfulProgress;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/views/SliderViewContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/guochao/faceshow/views/s;->g:J

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/views/s;->v()V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/s;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/views/s;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/s;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/views/s;->m:Z

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/s;->m:Z

    return p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/s;->c:Z

    return p1
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/s$e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/s;->k:Lcom/guochao/faceshow/views/s$e;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/views/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/s;->f:J

    return-wide v0
.end method

.method static synthetic h(Lcom/guochao/faceshow/views/s;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/s;->f:J

    return-wide p1
.end method

.method static synthetic i(Lcom/guochao/faceshow/views/s;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/s;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/ColorfulProgress;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/s;->n:Lcom/guochao/faceshow/views/ColorfulProgress;

    return-object p0
.end method

.method static synthetic k(Lcom/guochao/faceshow/views/s;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/s;->e:F

    return p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/views/s;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/s;->e:F

    return p1
.end method

.method static synthetic m(Lcom/guochao/faceshow/views/s;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/s;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n(Lcom/guochao/faceshow/views/s;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/s;->d:I

    return p0
.end method

.method static synthetic o(Lcom/guochao/faceshow/views/s;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/s;->d:I

    return p1
.end method

.method static synthetic p(Lcom/guochao/faceshow/views/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/s;->g:J

    return-wide v0
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->n:Lcom/guochao/faceshow/views/ColorfulProgress;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/s;->s()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->n:Lcom/guochao/faceshow/views/ColorfulProgress;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/s;->g:J

    return-wide v0
.end method

.method public B(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/guochao/faceshow/views/s;->f:J

    long-to-float p1, p1

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/views/s;->g:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/s;->z()F

    move-result p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/guochao/faceshow/views/s;->e:F

    sub-float/2addr p1, p2

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/views/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/s;->m:Z

    return-void
.end method

.method public D(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/views/s;->i:F

    return-void
.end method

.method public E(Lcom/guochao/faceshow/views/s$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/s;->k:Lcom/guochao/faceshow/views/s$e;

    return-void
.end method

.method public F(Lcom/guochao/faceshow/views/VideoProgressView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/s;->a:Lcom/guochao/faceshow/views/VideoProgressView;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/VideoProgressView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/views/s$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/s$c;-><init>(Lcom/guochao/faceshow/views/s;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/views/s$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/s$d;-><init>(Lcom/guochao/faceshow/views/s;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public q(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->l:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/s;->l:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->a:Lcom/guochao/faceshow/views/VideoProgressView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/VideoProgressView;->getParentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/s;->a:Lcom/guochao/faceshow/views/VideoProgressView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    new-instance v0, Lcom/guochao/faceshow/views/s$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/views/s$a;-><init>(Lcom/guochao/faceshow/views/s;Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public r(Lcom/guochao/faceshow/views/SliderViewContainer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->o:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/s;->o:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/views/SliderViewContainer;->setVideoProgressControlloer(Lcom/guochao/faceshow/views/s;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->a:Lcom/guochao/faceshow/views/VideoProgressView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/VideoProgressView;->getParentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/views/s$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/views/s$b;-><init>(Lcom/guochao/faceshow/views/s;Lcom/guochao/faceshow/views/SliderViewContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method s()I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/views/s;->i:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/views/s;->e:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method t(Lcom/guochao/faceshow/views/SliderViewContainer;)I
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/views/s;->i:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->getStartTimeMs()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/guochao/faceshow/views/s;->x(J)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/guochao/faceshow/views/s;->e:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method u(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/s;->i:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->getStartView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->getStartTimeUs()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/guochao/faceshow/views/s;->x(J)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/guochao/faceshow/views/s;->e:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method w(F)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/s;->z()F

    move-result v0

    div-float/2addr p1, v0

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/views/s;->g:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    float-to-long v0, v0

    return-wide v0
.end method

.method public x(J)I
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/views/s;->g:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/s;->z()F

    move-result p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public y()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/s;->f:J

    return-wide v0
.end method

.method public z()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/s;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/s;->a:Lcom/guochao/faceshow/views/VideoProgressView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/VideoProgressView;->getThumbnailCount()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/s;->j:I

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/s;->a:Lcom/guochao/faceshow/views/VideoProgressView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/VideoProgressView;->getSingleThumbnailWidth()F

    move-result v1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/guochao/faceshow/views/s;->h:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/views/s;->h:F

    return v0
.end method
