.class public Lcom/guochao/faceshow/fragment/TCTimeFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/tencent/ugc/TXVideoEditer;

.field private h:Lcom/guochao/faceshow/views/s;

.field private i:Lcom/guochao/faceshow/views/SliderViewContainer;

.field private j:Lcom/guochao/faceshow/views/SliderViewContainer;

.field private k:Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;

.field private l:J

.field private m:Lcom/guochao/faceshow/views/RangeSliderViewContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/fragment/TCTimeFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    return p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->X1()V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)Lcom/tencent/ugc/TXVideoEditer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)Lcom/guochao/faceshow/views/s;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/fragment/TCTimeFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e2(J)V

    return-void
.end method

.method private V1()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setRepeatPlay(Ljava/util/List;)V

    return-void
.end method

.method private W1()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setReverse(Z)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->setReverse(Z)V

    return-void
.end method

.method private X1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->W1()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->V1()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->Y1()V

    :goto_0
    return-void
.end method

.method private Y1()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setSpeedList(Ljava/util/List;)V

    return-void
.end method

.method private Z1()V
    .locals 11

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->m:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/views/s;

    iget-wide v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->l:J

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/s;-><init>(J)V

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->m:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    iget-object v4, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    const-wide/16 v5, 0x0

    iget-wide v9, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->l:J

    move-wide v7, v9

    invoke-virtual/range {v3 .. v10}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->n(Lcom/guochao/faceshow/views/s;JJJ)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    iget-object v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->m:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/s;->q(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V

    return-void
.end method

.method private a2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/s;->y()J

    move-result-wide v2

    .line 3
    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e2(J)V

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/views/s;->B(J)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/SliderViewContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/views/SliderViewContainer;->setStartTimeMs(J)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    new-instance v1, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;-><init>(Lcom/guochao/faceshow/fragment/TCTimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/SliderViewContainer;->setOnStartTimeChangedListener(Lcom/guochao/faceshow/views/SliderViewContainer$b;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    iget-object v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/s;->r(Lcom/guochao/faceshow/views/SliderViewContainer;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/s;->y()J

    move-result-wide v2

    .line 11
    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e2(J)V

    .line 12
    iput v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/views/SliderViewContainer;->setStartTimeMs(J)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/views/s;->B(J)V

    :goto_0
    return-void
.end method

.method private b2(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0ba6

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0ba3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->c:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0ba7

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a0ba4

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0ba5

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->f:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->k:Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "\u89c6\u9891\u5904\u7406\u4e2d..."

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->P1(Ljava/lang/String;)Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->k:Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->Q1(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->k:Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->R1(I)V

    return-void
.end method

.method private d2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/s;->y()J

    move-result-wide v4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;

    invoke-direct {v6}, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;-><init>()V

    .line 5
    iput-wide v4, v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->startTime:J

    add-long/2addr v2, v4

    .line 6
    iput-wide v2, v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->endTime:J

    .line 7
    iput v1, v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->repeatTimes:I

    .line 8
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setRepeatPlay(Ljava/util/List;)V

    .line 10
    new-instance v0, Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/SliderViewContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    .line 11
    invoke-virtual {v0, v4, v5}, Lcom/guochao/faceshow/views/SliderViewContainer;->setStartTimeMs(J)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    new-instance v1, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;-><init>(Lcom/guochao/faceshow/fragment/TCTimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/SliderViewContainer;->setOnStartTimeChangedListener(Lcom/guochao/faceshow/views/SliderViewContainer$b;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    iget-object v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/s;->r(Lcom/guochao/faceshow/views/SliderViewContainer;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/s;->y()J

    move-result-wide v4

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;

    invoke-direct {v6}, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;-><init>()V

    .line 18
    iput-wide v4, v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->startTime:J

    add-long/2addr v2, v4

    .line 19
    iput-wide v2, v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->endTime:J

    .line 20
    iput v1, v6, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->repeatTimes:I

    .line 21
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setRepeatPlay(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0, v4, v5}, Lcom/guochao/faceshow/views/SliderViewContainer;->setStartTimeMs(J)V

    :goto_0
    return-void
.end method

.method private e2(J)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    invoke-direct {v1}, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;-><init>()V

    .line 3
    iput-wide p1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p1

    .line 4
    iput-wide v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    const/4 v4, 0x1

    .line 5
    iput v4, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    invoke-direct {v1}, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;-><init>()V

    .line 8
    iput-wide v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, p1

    .line 9
    iput-wide v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    const/4 v5, 0x0

    .line 10
    iput v5, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    invoke-direct {v1}, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;-><init>()V

    .line 13
    iput-wide v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr p1, v2

    .line 14
    iput-wide p1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    .line 15
    iput v4, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setSpeedList(Ljava/util/List;)V

    return-void
.end method

.method private f2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->b:Landroid/widget/TextView;

    const-string v1, "\u65e0\u7279\u6548"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private g2()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d2()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f1209d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    return-void
.end method

.method private h2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f1209d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private i2()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a2()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f1209cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2
    :pswitch_1
    iget p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->X1()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i2()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S1()V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->U1(Z)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->X1()V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h2()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setReverse(Z)V

    .line 11
    iput v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->setReverse(Z)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S1()V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->U1(Z)V

    goto :goto_0

    .line 15
    :pswitch_3
    iget p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    return-void

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->X1()V

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g2()V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S1()V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->U1(Z)V

    goto :goto_0

    .line 20
    :pswitch_4
    iget p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    return-void

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->X1()V

    .line 22
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->f2()V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S1()V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->U1(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0ba3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d01dc

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->i:Lcom/guochao/faceshow/views/SliderViewContainer;

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->j:Lcom/guochao/faceshow/views/SliderViewContainer;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getEditer()Lcom/tencent/ugc/TXVideoEditer;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->g:Lcom/tencent/ugc/TXVideoEditer;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D1()Lcom/guochao/faceshow/views/s;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->h:Lcom/guochao/faceshow/views/s;

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getTXVideoInfo()Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object p2

    iget-wide v0, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    iput-wide v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment;->l:J

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->b2(Landroid/view/View;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->f2()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->c2()V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->Z1()V

    return-void
.end method
