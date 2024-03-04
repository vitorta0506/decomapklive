.class public Lcom/guochao/faceshow/views/TimeSeekBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/TimeSeekBar$c;,
        Lcom/guochao/faceshow/views/TimeSeekBar$d;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:J

.field private c:Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

.field private d:J

.field private e:J

.field private f:Landroid/widget/ImageView;

.field private g:J

.field private h:Landroid/view/View;

.field private i:I

.field private j:Lcom/guochao/faceshow/views/t;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/guochao/faceshow/views/TimeSeekBar$d;

.field private n:Lcom/guochao/faceshow/views/TimeSeekBar$c;

.field private o:I

.field p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->p:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->n(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->p:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->n(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->p:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->n(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/TimeSeekBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/TimeSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->i:I

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/TimeSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->o:I

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/TimeSeekBar;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->o:I

    return p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/TimeSeekBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->g:J

    return-wide v0
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/TimeSeekBar;)Lcom/guochao/faceshow/views/TimeSeekBar$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->n:Lcom/guochao/faceshow/views/TimeSeekBar$c;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/views/TimeSeekBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->d:J

    return-wide v0
.end method

.method static synthetic h(Lcom/guochao/faceshow/views/TimeSeekBar;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->d:J

    return-wide p1
.end method

.method static synthetic i(Lcom/guochao/faceshow/views/TimeSeekBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->e:J

    return-wide v0
.end method

.method static synthetic j(Lcom/guochao/faceshow/views/TimeSeekBar;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->e:J

    return-wide p1
.end method

.method static synthetic k(Lcom/guochao/faceshow/views/TimeSeekBar;)Lcom/guochao/faceshow/views/TimeSeekBar$d;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->m:Lcom/guochao/faceshow/views/TimeSeekBar$d;

    return-object p0
.end method

.method private n(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0343

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->a:Landroid/view/View;

    const v0, 0x7f0a0ba0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->c:Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->a:Landroid/view/View;

    const v0, 0x7f0a0854

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->f:Landroid/widget/ImageView;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->a:Landroid/view/View;

    const v0, 0x7f0a071f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->h:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->a:Landroid/view/View;

    const v0, 0x7f0a08d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->l:Landroid/widget/LinearLayout;

    .line 6
    new-instance p1, Lcom/guochao/faceshow/views/t;

    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->f:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->j:Lcom/guochao/faceshow/views/t;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->a:Landroid/view/View;

    const v0, 0x7f0a0785

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->k:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->j:Lcom/guochao/faceshow/views/t;

    new-instance v0, Lcom/guochao/faceshow/views/TimeSeekBar$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/TimeSeekBar$a;-><init>(Lcom/guochao/faceshow/views/TimeSeekBar;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/t;->setOnPositionChangedListener(Lcom/guochao/faceshow/views/t$a;)V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->c:Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public m(JJ)V
    .locals 5

    add-long/2addr p3, p1

    .line 1
    iput-wide p3, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->b:J

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->c:Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

    const-wide/16 v1, 0x64

    mul-long p1, p1, v1

    iget-wide v3, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->g:J

    div-long/2addr p1, v3

    long-to-int p2, p1

    mul-long p3, p3, v1

    div-long/2addr p3, v3

    long-to-int p1, p3

    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->k(II)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->c:Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

    new-instance p2, Lcom/guochao/faceshow/views/TimeSeekBar$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/TimeSeekBar$b;-><init>(Lcom/guochao/faceshow/views/TimeSeekBar;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->setRangeChangeListener(Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;)V

    return-void
.end method

.method public o(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->c:Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

    const-wide/16 v1, 0x64

    mul-long p1, p1, v1

    iget-wide v3, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->g:J

    div-long/2addr p1, v3

    long-to-int p2, p1

    mul-long p3, p3, v1

    div-long/2addr p3, v3

    long-to-int p1, p3

    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->j(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->i:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->c:Lcom/guochao/faceshow/views/ZZTimeRangeSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setCurrentTimeMs(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->i:I

    mul-int p1, p1, v1

    int-to-long v1, p1

    iget-wide v3, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->g:J

    div-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMaxDurationMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->g:J

    return-void
.end method

.method public setProgressChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->p:Z

    return-void
.end method

.method public setProgressChangeListener(Lcom/guochao/faceshow/views/TimeSeekBar$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->n:Lcom/guochao/faceshow/views/TimeSeekBar$c;

    return-void
.end method

.method public setRangeChangeListener(Lcom/guochao/faceshow/views/TimeSeekBar$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar;->m:Lcom/guochao/faceshow/views/TimeSeekBar$d;

    return-void
.end method
