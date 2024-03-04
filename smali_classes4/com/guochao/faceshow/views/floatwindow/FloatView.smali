.class public Lcom/guochao/faceshow/views/floatwindow/FloatView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final A:Landroid/view/View$OnLayoutChangeListener;

.field private B:Z

.field private final C:Landroid/view/View$OnTouchListener;

.field private final D:Landroid/view/View$OnTouchListener;

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lkb/b;

.field private q:Lkb/a;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:I

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h:I

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->i:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->j:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->k:Z

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->l:I

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->m:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    const v1, 0x3fdd70a4    # 1.73f

    .line 10
    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->v:F

    .line 11
    new-instance v1, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;-><init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    iput-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->A:Landroid/view/View$OnLayoutChangeListener;

    .line 12
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->B:Z

    .line 13
    new-instance v0, Lcom/guochao/faceshow/views/floatwindow/FloatView$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView$c;-><init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->C:Landroid/view/View$OnTouchListener;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;-><init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->D:Landroid/view/View$OnTouchListener;

    .line 15
    iput-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->z:Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkb/b;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g:I

    .line 19
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h:I

    .line 20
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->i:Z

    .line 21
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->j:Z

    .line 22
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->k:Z

    .line 23
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->l:I

    .line 24
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->m:I

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    const v1, 0x3fdd70a4    # 1.73f

    .line 26
    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->v:F

    .line 27
    new-instance v1, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;-><init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    iput-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->A:Landroid/view/View$OnLayoutChangeListener;

    .line 28
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->B:Z

    .line 29
    new-instance v0, Lcom/guochao/faceshow/views/floatwindow/FloatView$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView$c;-><init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->C:Landroid/view/View$OnTouchListener;

    .line 30
    new-instance v0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;-><init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->D:Landroid/view/View$OnTouchListener;

    .line 31
    iput-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->z:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    .line 33
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Lkb/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->q:Lkb/a;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g:I

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/floatwindow/FloatView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->v(I)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/floatwindow/FloatView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g:I

    return p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h:I

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/floatwindow/FloatView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h:I

    return p1
.end method

.method static synthetic g(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->w:I

    return p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Lkb/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/views/floatwindow/FloatView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->i:Z

    return p1
.end method

.method static synthetic k(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->u()V

    return-void
.end method

.method static synthetic l(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->t:I

    return p0
.end method

.method static synthetic m(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->u:I

    return p0
.end method

.method private n(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->u:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->t:I

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private o()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->q()V

    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->z:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    iget v1, v0, Lkb/b;->k:I

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->w:I

    .line 3
    iget v1, v0, Lkb/b;->f:I

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->r:I

    .line 4
    iget v1, v0, Lkb/b;->g:I

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->s:I

    .line 5
    iget v1, v0, Lkb/b;->i:I

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->u:I

    .line 6
    iget v1, v0, Lkb/b;->h:I

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->t:I

    .line 7
    iget v1, v0, Lkb/b;->j:F

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->v:F

    .line 8
    iget v1, v0, Lkb/b;->c:I

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->l:I

    .line 9
    iget v2, v0, Lkb/b;->d:I

    iput v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->m:I

    .line 10
    iget v3, v0, Lkb/b;->a:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g:I

    .line 11
    iget v0, v0, Lkb/b;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h:I

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02cd

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->x:Landroid/view/View;

    const v1, 0x7f0a0dfe

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->x:Landroid/view/View;

    const v1, 0x7f0a04ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->n:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->x:Landroid/view/View;

    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->y:Landroid/widget/ImageView;

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->floatIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->C:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->A:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->y:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/views/floatwindow/FloatView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView$a;-><init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    iget v0, v0, Lkb/b;->e:I

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->z:Landroid/content/Context;

    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->w(II)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->x:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->z:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->e:F

    iget v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->c:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->f:F

    iget v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->d:F

    sub-float/2addr v1, v2

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private t(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    iput p1, v0, Lkb/b;->c:I

    .line 2
    iput p2, v0, Lkb/b;->d:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g:I

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/widget/RelativeLayout;->layout(IIII)V

    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->j:Z

    :cond_0
    return-void
.end method

.method private v(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->n(I)I

    move-result p1

    int-to-float v0, p1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->v:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->w(II)V

    return-void
.end method

.method private w(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    iput p1, v0, Lkb/b;->a:I

    .line 7
    iput p2, v0, Lkb/b;->b:I

    :cond_0
    return-void
.end method

.method private declared-synchronized x()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->c:F

    iget v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->a:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->d:F

    iget v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->b:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->w:I

    neg-int v3, v2

    if-gt v0, v3, :cond_0

    neg-int v0, v2

    :cond_0
    neg-int v3, v2

    if-gt v1, v3, :cond_1

    neg-int v1, v2

    .line 4
    :cond_1
    iget v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->r:I

    iget-object v3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_2

    move v0, v2

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    const/16 v4, 0x64

    const/16 v5, 0xc8

    if-le v3, v4, :cond_3

    if-ge v3, v5, :cond_3

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_3
    if-le v3, v5, :cond_4

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_4

    add-int/lit16 v3, v3, -0x96

    goto :goto_0

    :cond_4
    sub-int/2addr v3, v5

    .line 6
    :goto_0
    iget v4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->s:I

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_5

    move v1, v4

    :cond_5
    if-lt v0, v2, :cond_6

    add-int/lit8 v0, v2, -0x1

    .line 7
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->t(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getContentViewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->t:I

    :goto_0
    return v0
.end method

.method public getParams()Lkb/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    invoke-virtual {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->getContentViewWidth()I

    move-result v1

    iput v1, v0, Lkb/b;->e:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    return-object v0
.end method

.method public getVideoViewWrap()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->k:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->o:Landroid/widget/RelativeLayout;

    iget p2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->l:I

    iget p3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->m:I

    iget-object p4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->p:Lkb/b;

    iget p5, p4, Lkb/b;->a:I

    add-int/2addr p5, p2

    iget p4, p4, Lkb/b;->b:I

    add-int/2addr p4, p3

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->k:Z

    :cond_0
    return-void
.end method

.method public s(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->u()V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->c:F

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->d:F

    .line 6
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->B:Z

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->r()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->B:Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->x()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->q:Lkb/a;

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p1}, Lkb/a;->a()V

    .line 12
    :cond_4
    iput-boolean v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->B:Z

    goto :goto_0

    .line 13
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->u()V

    .line 14
    iput-boolean v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->B:Z

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->a:F

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->b:F

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->x:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    iget v3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->a:F

    float-to-int v3, v3

    iget v4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->b:F

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 20
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->e:F

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->f:F

    .line 22
    iget v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->e:F

    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->c:F

    .line 23
    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->d:F

    :goto_0
    return v1
.end method

.method public setFloatViewListener(Lkb/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView;->q:Lkb/a;

    return-void
.end method
