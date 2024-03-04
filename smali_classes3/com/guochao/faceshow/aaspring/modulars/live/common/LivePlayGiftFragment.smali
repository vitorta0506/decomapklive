.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"


# instance fields
.field private a:Lsa/b;

.field private b:Lsa/b;

.field private c:Lsa/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;)Lsa/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    return-object p0
.end method

.method private S1(Landroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0x7f0a0691

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v0

    mul-double v5, v5, v3

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-double v2, v0

    add-double/2addr v5, v2

    double-to-int v0, v5

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v0

    mul-double v5, v5, v3

    const/high16 v0, 0x432f0000    # 175.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-double v2, v0

    add-double/2addr v5, v2

    double-to-int v0, v5

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 9
    :goto_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public Q1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftTypeId()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getItemBean()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v5

    .line 4
    iget-object v6, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    const-string v0, "2"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "8"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "100"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    const/4 v4, -0x1

    const-string v3, "0"

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lsa/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    const/4 v4, -0x1

    const-string v3, "0"

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lsa/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public R1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftTypeId()Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftId()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftImg:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "1"

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "99"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "100"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "11"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->a:Lsa/b;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lsa/b;->w(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->b:Lsa/b;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lsa/b;->w(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public T1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lsa/a;->r()V

    :cond_0
    return-void
.end method

.method public U1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lsa/a;->s()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->a:Lsa/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lsa/b;->s()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->b:Lsa/b;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lsa/b;->s()V

    :cond_2
    return-void
.end method

.method public V1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftSendList()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getItemBean()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->from(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setGiftSendList(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setIsGiftAllSend(I)V

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    :cond_2
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01af

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    new-instance v6, Lsa/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v0, 0x7f0a0677

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0a06ac

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0a0678

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    const v0, 0x7f0a06ad

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsa/a;-><init>(Landroid/content/Context;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    const v0, 0x7f0a04bb

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v6, v0}, Lsa/a;->t(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;)V

    invoke-virtual {v0, v1}, Lsa/a;->u(Lsa/a$j;)V

    const v0, 0x7f0a0698

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0691

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 11
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->S1(Landroid/view/View;)V

    .line 12
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 16
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result p1

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float p1, p1, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/high16 v2, 0x3f100000    # 0.5625f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    .line 18
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, -0x3dd80000    # -42.0f

    .line 19
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 21
    :cond_2
    new-instance p1, Lsa/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Lsa/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->a:Lsa/b;

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lsa/b;->v(Z)V

    .line 23
    new-instance p1, Lsa/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lsa/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->b:Lsa/b;

    return-void
.end method

.method public onLiveFinish(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onLiveFinish(ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lsa/a;->s()V

    :cond_0
    return-void
.end method

.method public onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "0"

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 2
    invoke-virtual/range {v0 .. v7}, Lsa/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    :cond_0
    return-void
.end method

.method public onPlaySuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onPlaySuccess()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->S1(Landroid/view/View;)V

    return-void
.end method

.method public onQuitLiveRoom(ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onQuitLiveRoom(ZZ)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lsa/a;->s()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->a:Lsa/b;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lsa/b;->s()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->b:Lsa/b;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lsa/b;->s()V

    :cond_2
    return-void
.end method

.method public onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    :cond_0
    return-void
.end method

.method public onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->c:Lsa/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lsa/a;->q()V

    :cond_0
    return-void
.end method
