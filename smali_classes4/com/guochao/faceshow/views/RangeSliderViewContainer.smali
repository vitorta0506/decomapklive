.class public Lcom/guochao/faceshow/views/RangeSliderViewContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field private k:Lcom/guochao/faceshow/views/t;

.field private l:Lcom/guochao/faceshow/views/t;

.field private m:Lcom/guochao/faceshow/views/s;

.field private n:Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->o(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->o(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->o(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->m:Lcom/guochao/faceshow/views/s;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g:J

    return-wide v0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g:J

    return-wide v0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->f:J

    return-wide v0
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->f:J

    return-wide p1
.end method

.method static synthetic g(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->n:Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->h:J

    return-wide v0
.end method

.method static synthetic k(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->h:J

    return-wide p1
.end method

.method static synthetic l(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->i:J

    return-wide v0
.end method

.method private o(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0322

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->b:Landroid/view/View;

    const v0, 0x7f0a05dc

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->c:Landroid/view/View;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->b:Landroid/view/View;

    const v0, 0x7f0a05a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->d:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->b:Landroid/view/View;

    const v0, 0x7f0a0785

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e:Landroid/view/View;

    .line 6
    new-instance p1, Lcom/guochao/faceshow/views/t;

    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->c:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->k:Lcom/guochao/faceshow/views/t;

    .line 7
    new-instance p1, Lcom/guochao/faceshow/views/t;

    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->d:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->l:Lcom/guochao/faceshow/views/t;

    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->k:Lcom/guochao/faceshow/views/t;

    new-instance v1, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;-><init>(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/t;->setOnPositionChangedListener(Lcom/guochao/faceshow/views/t$a;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->l:Lcom/guochao/faceshow/views/t;

    new-instance v1, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;-><init>(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/t;->setOnPositionChangedListener(Lcom/guochao/faceshow/views/t$a;)V

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g:J

    return-wide v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->d:Landroid/view/View;

    return-object v0
.end method

.method public getStartTimeUs()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->f:J

    return-wide v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->c:Landroid/view/View;

    return-object v0
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->m:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/views/s;->u(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public n(Lcom/guochao/faceshow/views/s;JJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->m:Lcom/guochao/faceshow/views/s;

    .line 2
    iput-wide p2, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->f:J

    .line 3
    iput-wide p4, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g:J

    .line 4
    iput-wide p6, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->i:J

    add-long/2addr p2, p4

    .line 5
    iput-wide p2, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->h:J

    .line 6
    invoke-virtual {p1, p4, p5}, Lcom/guochao/faceshow/views/s;->x(J)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603ce

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->setMiddleRangeColor(I)V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->p()V

    return-void
.end method

.method public setDurationChangeListener(Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->n:Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;

    return-void
.end method

.method public setMiddleRangeColor(I)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e:Landroid/view/View;

    const v0, 0x7f080467

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
