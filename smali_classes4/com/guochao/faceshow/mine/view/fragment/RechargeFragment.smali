.class public Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/mine/view/fragment/a;
.implements Lp9/a$e;


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

.field private b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field public g:Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

.field private h:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

.field private i:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field private j:Lcom/guochao/faceshow/views/ObservableScrollView;

.field private k:Ljava/lang/String;

.field public l:I

.field private m:I

.field public n:Z

.field public o:Lcom/guochao/faceshow/mine/model/MyWalletBean;

.field private p:Z

.field titleBar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->X1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->Y1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->m:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->h:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->p:Z

    return p1
.end method

.method private synthetic X1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->Z1(I)V

    return-void
.end method

.method private synthetic Y1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->Z1(I)V

    return-void
.end method


# virtual methods
.method public E0()V
    .locals 0

    return-void
.end method

.method public U1()Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    return-object v0
.end method

.method public V1()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->i:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object v0
.end method

.method public W1()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->p:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->MY_WALLET_DATA:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V

    invoke-interface {v1, p0, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method public Z1(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->m:I

    const v0, 0x7f0a0440

    const v1, 0x7f060340

    const v2, 0x7f06006a

    const v3, 0x7f070314

    const/high16 v4, 0x41600000    # 14.0f

    const v5, 0x7f070315

    const/high16 v6, 0x41800000    # 16.0f

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v10, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-array p1, v10, [Landroid/widget/TextView;

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->c:Landroid/widget/TextView;

    aput-object v4, p1, v8

    invoke-static {v3, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-array p1, v10, [Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->e:Landroid/widget/TextView;

    aput-object v3, p1, v8

    invoke-static {v5, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->d:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->f:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->h:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-array p1, v10, [Landroid/widget/TextView;

    .line 13
    iget-object v6, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->c:Landroid/widget/TextView;

    aput-object v6, p1, v8

    invoke-static {v5, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-array p1, v10, [Landroid/widget/TextView;

    .line 15
    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->e:Landroid/widget/TextView;

    aput-object v4, p1, v8

    invoke-static {v3, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->d:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->f:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->g:Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01cc

    return v0
.end method

.method public i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->titleBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->n:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "interceptClick"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->b:Z

    const-string v2, "isToken"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->k:Ljava/lang/String;

    const-string v2, "scene"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->l:I

    :cond_0
    const v0, 0x7f0a0cc8

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0820

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->d:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/guochao/faceshow/mine/view/fragment/g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/fragment/g;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c96

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0459

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->f:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/guochao/faceshow/mine/view/fragment/h;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/fragment/h;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->e:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->c:Landroid/widget/TextView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold([Landroid/widget/TextView;)V

    const v0, 0x7f0a0962

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->i:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 13
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->i:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    const v1, 0x7f0a0947

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->k:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->Z1(I)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->V1()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->V1()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$a;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T(Lzd/d;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_1
    const v0, 0x7f0a0a09

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/ObservableScrollView;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->j:Lcom/guochao/faceshow/views/ObservableScrollView;

    .line 20
    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/ObservableScrollView;->setScrollViewListener(Lcom/guochao/faceshow/views/ObservableScrollView$a;)V

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->i0()V

    const v0, 0x7f0a045b

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->titleBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    :cond_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp9/a;->c(Lp9/a$e;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->g:Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->a2()Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->h:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->g:Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "onSetupResponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->onSetupResponse(Z)V

    :cond_0
    return-void
.end method

.method public synthetic onCrystalsChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lp9/b;->a(Lp9/a$e;I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;->b(I)V

    :cond_0
    return-void
.end method
