.class public Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private A:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/guochao/faceshow/aaspring/views/LevelView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field public l:Ljava/lang/String;

.field private m:Z

.field mOnlineInfoArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewOnlineInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewOnlineInfoExtra:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mvpIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/graphics/drawable/AnimationDrawable;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private u:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

.field private v:Lcom/youth/banner/Banner;

.field private w:Lcom/rd/PageIndicatorView;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->l:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->m:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->x:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;-><init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->C:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->x:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)Lcom/rd/PageIndicatorView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->w:Lcom/rd/PageIndicatorView;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, -0x3ee00000    # -10.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v1, 0x41300000    # 11.0f

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41b00000    # 22.0f

    .line 10
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 11
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/high16 v1, 0x41c80000    # 25.0f

    .line 12
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 13
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d045b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const v0, 0x7f0a0d86

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->u:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v0, 0x7f0a0e13

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->A:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v0, 0x7f0a064a

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LevelView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->c:Lcom/guochao/faceshow/aaspring/views/LevelView;

    const v0, 0x7f0a0db6

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0db5

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0dbc

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->d:Landroid/widget/TextView;

    const v0, 0x7f0a02a2

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->B:Landroid/widget/ImageView;

    const v0, 0x7f0a082e

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0dab

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0da8

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0dac

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0daa

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0db0

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0dae

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0da9

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->j:Landroid/widget/TextView;

    const v0, 0x7f0a0da7

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->k:Landroid/widget/TextView;

    const v0, 0x7f0a0dbb

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->z:Landroid/widget/TextView;

    const v0, 0x7f0a06b6

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->q:Landroid/widget/ImageView;

    const v0, 0x7f0a0e24

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->r:Landroid/widget/ImageView;

    const v0, 0x7f0a06b5

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->s:Landroid/view/ViewGroup;

    const v0, 0x7f0a0e1d

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->t:Landroid/view/ViewGroup;

    const v0, 0x7f0a0db8

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->y:Landroid/widget/FrameLayout;

    const v0, 0x7f0a010c

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->v:Lcom/youth/banner/Banner;

    const v0, 0x7f0a0852

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rd/PageIndicatorView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->w:Lcom/rd/PageIndicatorView;

    .line 30
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->c()V

    return-void
.end method


# virtual methods
.method public setInRoom(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineImGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->p:Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->t:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->t:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->t:Landroid/view/ViewGroup;

    new-instance v1, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;-><init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFansClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFollowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHeadClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->u:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLiveClickLister(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnVoiceRoomLiveClickLister(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
