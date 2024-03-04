.class public Lcom/guochao/faceshow/mine/view/MyWalletActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/my_wallet"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field floatTitleLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/MyWalletActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method public static d0(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "scene"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "extData"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private l0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/adapter/ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/MyWalletActivity;)V

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public static m0(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->d0(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->m0(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public g0()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e:I

    return v0
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0080

    return v0
.end method

.method public i0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const-string v1, "#B2222222"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const-string v1, "#222222"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setSelectTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    const v0, 0x7f080318

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setStatusBarTextBlack(Z)V

    return-void
.end method

.method public initView()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scene"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, "(\u4ec5\u6d4b\u8bd5\u53ef\u89c1)\uff0c\u672c\u6b21\u8fdb\u5165\u94b1\u5305\u9875\u9762\u6ca1\u6709\u5b9a\u4e49\u573a\u666f\uff0c\u8bf7\u5c06\u8fdb\u5165\u5165\u53e3\u544a\u77e5\u5f00\u53d1..."

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "interceptClick"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->c:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "isToken"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120769

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;-><init>()V

    .line 8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-boolean v6, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->c:Z

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->d:Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget v3, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e:I

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "user_f_to_diamond"

    .line 14
    invoke-static {v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    const-string/jumbo v1, "user_f_to_money"

    .line 15
    invoke-static {v1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v1

    .line 16
    iget-boolean v3, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->c:Z

    if-nez v3, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->a:Ljava/util/List;

    const v1, 0x7f120677

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->a:Ljava/util/List;

    const v1, 0x7f1208df

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 25
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->l0()V

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z0(ZI)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f080336

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40900000    # 4.5f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    return-void
.end method

.method public k0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const-string v1, "#B2ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setSelectTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    const v0, 0x7f080336

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    .line 6
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setStatusBarTextBlack(Z)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onConsumeResponse()V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "scene"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "(\u4ec5\u6d4b\u8bd5\u53ef\u89c1)\uff0c\u672c\u6b21\u8fdb\u5165\u94b1\u5305\u9875\u9762\u6ca1\u6709\u5b9a\u4e49\u573a\u666f\uff0c\u8bf7\u5c06\u8fdb\u5165\u5165\u53e3\u544a\u77e5\u5f00\u53d1..."

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    :cond_0
    return-void
.end method

.method public onPayError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onPayResponse()V
    .locals 0

    return-void
.end method

.method public onSetupResponse(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->g:Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->onSetupResponse(Z)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onSetupResponse"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-boolean p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->c:Z

    const-string v2, "interceptClick"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->d:Ljava/lang/String;

    const-string v2, "isToken"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e:I

    const-string v2, "scene"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onSubscribeFailed()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->d(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public synthetic onSubscribeSuccess()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->e(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public synthetic startSubscribe()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method
