.class public Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic P1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->c2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;)V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->b2()V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->d2(I)V

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->Z1(I)V

    return-void
.end method

.method static synthetic X1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p0

    return-object p0
.end method

.method private Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$d;

    invoke-direct {v1, p0, p3}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$d;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->d:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->getRuleId()I

    move-result v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->getRuleId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 7
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    const p2, 0x7f0a0cc9

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 10
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->getGameCoin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0175

    .line 11
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->getDiamond()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 14
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f0603ce

    invoke-static {p3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f06008b

    invoke-static {p3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    :goto_2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget-object p2, Lcom/guochao/faceshow/mine/view/fragment/i;->a:Lcom/guochao/faceshow/mine/view/fragment/i;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Z1(I)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string/jumbo p1, "{\"ruleId\":%s,\"time\":%s}"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AESUtil;

    move-result-object v1

    const-string v2, "6ZD95A833EC87EW5"

    invoke-virtual {v1, p1, v2}, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    const-string/jumbo v1, "tokens/game/tokenum/exchange"

    .line 5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "param"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static a2()Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;-><init>()V

    return-object v0
.end method

.method private b2()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f12016a

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private static synthetic c2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private d2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$e;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$e;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;I)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const p1, 0x7f120765

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const v0, 0x7f120161

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->V1()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3

    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0420

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01cd

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$a;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;Landroid/content/Context;IIZ)V

    const v0, 0x7f0a095c

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$b;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0332

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->a:Landroid/view/View;

    const v1, 0x7f0a0330

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0ad1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$c;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected loadData()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->loadData(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->W1()V

    :cond_0
    const-string/jumbo p1, "tokens/game/tokenum/findTokenRuleList"

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
