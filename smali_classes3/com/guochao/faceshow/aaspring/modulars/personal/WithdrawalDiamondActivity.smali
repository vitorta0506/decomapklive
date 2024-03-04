.class public Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Z

.field private f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->d:Z

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;Lcom/guochao/faceshow/mine/model/WithdrawalBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->i0(Lcom/guochao/faceshow/mine/model/WithdrawalBean;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->showDialog()V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;

    return-object p0
.end method

.method private i0(Lcom/guochao/faceshow/mine/model/WithdrawalBean;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->TRANSFORMATION_DIAMOND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getWithdraw_id()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "withdrawId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->MY_WALLET_DATA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isLocalChina()Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->d:Z

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->k0()V

    return-void
.end method

.method private k0()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->WITHDRAWAL_DIAMOND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$f;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f060072

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->m(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f060071

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->d(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f120aea

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/WithdrawalBean;)V

    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/WithdrawalBean;)V
    .locals 5

    const p2, 0x7f0a0cc2

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a0c83

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a06cb

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f0f00f0

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p2, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->d:Z

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getPrice_China()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getPrice_America()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getPriceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getF()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;

    invoke-direct {p2, p0, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;Lcom/guochao/faceshow/mine/model/WithdrawalBean;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->d(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d5

    return v0
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f120503

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFreeze"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->g:Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->hideFooterView()V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    const v4, 0x7f0d0211

    invoke-virtual {v1, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;

    .line 6
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->g:Z

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;->c(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;->a()Landroid/view/View;

    move-result-object v0

    const/16 v1, -0x65

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addHeaderView(Landroid/view/View;I)V

    .line 8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const v3, 0x7f0d02c4

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->c:Landroid/view/View;

    const v1, 0x7f0a0330

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v1

    const v2, 0x43808000    # 257.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public l0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/WithdrawalBean;)V
    .locals 0

    return-void
.end method

.method public loadData(I)V
    .locals 0

    return-void
.end method

.method public m0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, -0x66

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addHeaderView(Landroid/view/View;I)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->e:Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0475

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->l0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/WithdrawalBean;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->initData()V

    return-void
.end method
