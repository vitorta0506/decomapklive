.class public Lcom/guochao/faceshow/views/SliderViewContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/SliderViewContainer$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:J

.field private e:Lcom/guochao/faceshow/views/s;

.field private f:Lcom/guochao/faceshow/views/t;

.field private g:Lcom/guochao/faceshow/views/SliderViewContainer$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->f(Landroid/content/Context;)V

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
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->f(Landroid/content/Context;)V

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
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/SliderViewContainer;)Lcom/guochao/faceshow/views/s;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->e:Lcom/guochao/faceshow/views/s;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/SliderViewContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/SliderViewContainer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->d:J

    return-wide p1
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/SliderViewContainer;)Lcom/guochao/faceshow/views/SliderViewContainer$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->g:Lcom/guochao/faceshow/views/SliderViewContainer$b;

    return-object p0
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0332

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->b:Landroid/view/View;

    const v0, 0x7f0a05db

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->c:Landroid/view/View;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/views/t;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/views/t;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->f:Lcom/guochao/faceshow/views/t;

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/SliderViewContainer;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->f:Lcom/guochao/faceshow/views/t;

    new-instance v1, Lcom/guochao/faceshow/views/SliderViewContainer$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/SliderViewContainer$a;-><init>(Lcom/guochao/faceshow/views/SliderViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/t;->setOnPositionChangedListener(Lcom/guochao/faceshow/views/t$a;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->e:Lcom/guochao/faceshow/views/s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->e:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/views/s;->t(Lcom/guochao/faceshow/views/SliderViewContainer;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getSliderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->c:Landroid/view/View;

    return-object v0
.end method

.method public getStartTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->d:J

    return-wide v0
.end method

.method public setOnStartTimeChangedListener(Lcom/guochao/faceshow/views/SliderViewContainer$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->g:Lcom/guochao/faceshow/views/SliderViewContainer$b;

    return-void
.end method

.method public setStartTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->d:J

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/SliderViewContainer;->e()V

    return-void
.end method

.method public setVideoProgressControlloer(Lcom/guochao/faceshow/views/s;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer;->e:Lcom/guochao/faceshow/views/s;

    return-void
.end method
