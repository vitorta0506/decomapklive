.class public Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

.field private b:I

.field public bgTitleLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->b:I

    return p0
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0029

    return v0
.end method

.method public initView()V
    .locals 3

    const-string v0, "OPEN_VIP"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentItem"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->b:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    const v2, 0x7f0a01a4

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->c(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V

    const v0, 0x7f1208d2

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060033

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;I)V

    const v0, 0x7f0a042c

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    const v0, 0x7f0f0632

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    const v0, 0x7f0f0255

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    :cond_0
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setStatusBarTextBlack(Z)V

    return-void
.end method

.method public loadData()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
